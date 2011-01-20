Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id DD5AE4C8109B
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 18:39:12 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 62261304F2
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 19:39:08 -0500 (EST)
Message-Id: <ad31ad2706c1d04e8d7d689f190fec3e83d569a7.1295483757.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1295483757.git.scott.a.garman@intel.com>
References: <cover.1295483757.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Tue, 21 Dec 2010 14:17:58 -0800
Date: Wed, 19 Jan 2011 16:39:01 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 62261304F2.39A34
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 05/12] autotools.bbclass: libtool sysroot support changes
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
X-List-Received-Date: Thu, 20 Jan 2011 00:39:13 -0000

We do not do it for native recipes, as the native compiler should
fall back to a prefix of /usr and not solely depend on the sysroot.
Otherwise we end up staging everything in the native sysroot before
we start to build target recipes.

Also remove la mangling code, which is no longer necessary.

Commit derived from Khem Raj's OE commits.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/classes/autotools.bbclass |   25 +++++++++----------------
 1 files changed, 9 insertions(+), 16 deletions(-)

diff --git a/meta/classes/autotools.bbclass b/meta/classes/autotools.bbclass
index 324cbff..39f5036 100644
--- a/meta/classes/autotools.bbclass
+++ b/meta/classes/autotools.bbclass
@@ -38,6 +38,12 @@ def autotools_set_crosscompiling(d):
 		return " cross_compiling=yes"
 	return ""
 
+def append_libtool_sysroot(d):
+	# Only supply libtool sysroot option for non-native packages
+	if not bb.data.inherits_class('native', d):
+		return '--with-libtool-sysroot=${STAGING_DIR_HOST}'
+	return ""
+
 # EXTRA_OECONF_append = "${@autotools_set_crosscompiling(d)}"
 
 CONFIGUREOPTS = " --build=${BUILD_SYS} \
@@ -56,14 +62,13 @@ CONFIGUREOPTS = " --build=${BUILD_SYS} \
 		  --includedir=${includedir} \
 		  --oldincludedir=${oldincludedir} \
 		  --infodir=${infodir} \
-		  --mandir=${mandir}"
+		  --mandir=${mandir} \
+		  ${@append_libtool_sysroot(d)}"
 
 oe_runconf () {
 	if [ -x ${S}/configure ] ; then
 		cfgcmd="${S}/configure \
-		        ${CONFIGUREOPTS} \
-			${EXTRA_OECONF} \
-		    $@"
+		${CONFIGUREOPTS} ${EXTRA_OECONF} $@"
 		oenote "Running $cfgcmd..."
 		$cfgcmd || oefatal "oe_runconf failed" 
 	else
@@ -152,18 +157,6 @@ autotools_do_install() {
 	oe_runmake 'DESTDIR=${D}' install
 }
 
-PACKAGE_PREPROCESS_FUNCS += "autotools_prepackage_lamangler"
-
-autotools_prepackage_lamangler () {
-        for i in `find ${PKGD} -name "*.la"` ; do \
-            sed -i -e 's:${STAGING_LIBDIR}:${libdir}:g;' \
-                   -e 's:${D}::g;' \
-                   -e 's:-I${WORKDIR}\S*: :g;' \
-                   -e 's:-L${WORKDIR}\S*: :g;' \
-                   $i
-	done
-}
-
 autotools_stage_dir() {
  	sysroot_stage_dir $1 $2
 }
-- 
1.7.1


