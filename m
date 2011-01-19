Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id E03024C811FB
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 22:19:57 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id E5E9D304ED
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 23:19:52 -0500 (EST)
Message-Id: <0be871dec4c0b626f23f95026bf2362f434ff6b9.1295410231.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1295410231.git.scott.a.garman@intel.com>
References: <cover.1295410231.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Tue, 18 Jan 2011 19:58:02 -0800
Date: Tue, 18 Jan 2011 20:19:50 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: E5E9D304ED.0729F
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 4/9] staging.bbclass, utils.bbclass: remove la mangling code
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 19 Jan 2011 04:19:58 -0000

libtool v2.4 --with-libtool-sysroot eliminates the need for
la mangling.

Based on Khem Raj's OE commits.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/classes/staging.bbclass |   14 --------------
 meta/classes/utils.bbclass   |   15 ++-------------
 2 files changed, 2 insertions(+), 27 deletions(-)

diff --git a/meta/classes/staging.bbclass b/meta/classes/staging.bbclass
index a7f3258..438cf37 100644
--- a/meta/classes/staging.bbclass
+++ b/meta/classes/staging.bbclass
@@ -26,20 +26,6 @@ sysroot_stage_libdir() {
 	dest="$2"
 
 	sysroot_stage_dir $src $dest
-
-	olddir=`pwd`
-	cd $dest
-	las=$(find . -name \*.la -type f)
-	cd $olddir
-	echo "Found la files: $las"		 
-	for i in $las
-	do
-		sed -e 's/^installed=yes$/installed=no/' \
-		    -e '/^dependency_libs=/s,${WORKDIR}[[:alnum:]/\._+-]*/\([[:alnum:]\._+-]*\),${STAGING_LIBDIR}/\1,g' \
-		    -e "/^dependency_libs=/s,\([[:space:]']\)${libdir},\1${STAGING_LIBDIR},g" \
-		    -e "/^dependency_libs=/s,\([[:space:]']\)${base_libdir},\1${STAGING_DIR_HOST}${base_libdir},g" \
-		    -i $dest/$i
-	done
 }
 
 sysroot_stage_dirs() {
diff --git a/meta/classes/utils.bbclass b/meta/classes/utils.bbclass
index 746f46c..4d4b995 100644
--- a/meta/classes/utils.bbclass
+++ b/meta/classes/utils.bbclass
@@ -199,19 +199,8 @@ oe_libinstall() {
 		__runcmd install -m 0644 $dota $destpath/
 	fi
 	if [ -f "$dotlai" -a -n "$libtool" ]; then
-		if test -n "$staging_install"
-		then
-			# stop libtool using the final directory name for libraries
-			# in staging:
-			__runcmd rm -f $destpath/$libname.la
-			__runcmd sed -e 's/^installed=yes$/installed=no/' \
-				     -e '/^dependency_libs=/s,${WORKDIR}[[:alnum:]/\._+-]*/\([[:alnum:]\._+-]*\),${STAGING_LIBDIR}/\1,g' \
-				     -e "/^dependency_libs=/s,\([[:space:]']\)${libdir},\1${STAGING_LIBDIR},g" \
-				     $dotlai >$destpath/$libname.la
-		else
-			rm -f $destpath/$libname.la
-			__runcmd install -m 0644 $dotlai $destpath/$libname.la
-		fi
+		rm -f $destpath/$libname.la
+		__runcmd install -m 0644 $dotlai $destpath/$libname.la
 	fi
 
 	for name in $library_names; do
-- 
1.7.1


