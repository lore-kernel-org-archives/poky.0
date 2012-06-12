Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8669E01304
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 13:42:16 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id EC7FF2FE86
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 16:42:11 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Jun 2012 13:41:15 -0700
Message-Id: <6ce0b095547e0ba1f7749bdc4b130983f352d631.1339533508.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: EC7FF2FE86.3B15F
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 25/31] groff: Fix build on Fedora 17
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
X-List-Received-Date: Tue, 12 Jun 2012 20:42:17 -0000

From: "Song.Li" <Song.Li@windriver.com>

Generally distros keep perl at /usr/bin/perl
But Fedora 17 also has /bin/perl,
this causes groff_1.20.1 build to put perl
interpreter path as /bin/perl
But we set perl location for target as /usr/bin/perl

This mismatch of perl path causes failure of rootfs image creation
like this:

| error: Failed dependencies:
|       bin/perl is needed by groff-1.20.1-r1.ppc603e

Signed-off-by: Song.Li <song.li@windriver.com>

Sync up with the do_install_append_virtclass-native chunk.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/recipes-extended/groff/groff_1.20.1.bb |   24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/meta/recipes-extended/groff/groff_1.20.1.bb b/meta/recipes-extended/groff/groff_1.20.1.bb
index 6cb72bf..ef22548 100644
--- a/meta/recipes-extended/groff/groff_1.20.1.bb
+++ b/meta/recipes-extended/groff/groff_1.20.1.bb
@@ -4,7 +4,7 @@ formatting commands and produces formatted output."
 SECTION = "base"
 HOMEPAGE = "ftp://ftp.gnu.org/gnu/groff/"
 LICENSE = "GPLv2"
-PR = "r1"
+PR = "r2"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
 
@@ -18,6 +18,10 @@ DEPENDS_virtclass-native = ""
 
 inherit autotools
 
+PERLPATH = "${bindir}/perl"
+PERLPATH_virtclass-native = "/usr/bin/env perl"
+PERLPATH_virtclass-nativesdk = "/usr/bin/env perl"
+
 EXTRA_OECONF = "--without-x"
 PARALLEL_MAKE = ""
 
@@ -34,7 +38,25 @@ do_configure_prepend() {
 	fi
 }
 
+do_install_append() {
+	# Some distros have both /bin/perl and /usr/bin/perl, but we set perl location
+	# for target as /usr/bin/perl, so fix it to /usr/bin/perl.
+	for i in afmtodit mmroff; do
+		if [ -f ${D}${bindir}/$i ]; then
+			sed -i -e '1s,#!.*perl,#! ${PERLPATH},' ${D}${bindir}/$i
+		fi
+	done
+}
+
 do_install_append_virtclass-native() {
+	# Some distros have both /bin/perl and /usr/bin/perl, but we set perl location
+	# for target as /usr/bin/perl, so fix it to /usr/bin/perl.
+	for i in afmtodit mmroff; do
+		if [ -f ${D}${bindir}/$i ]; then
+			sed -i -e '1s,#!.*perl,#! ${PERLPATH},' ${D}${bindir}/$i
+		fi
+	done
+
 	create_cmdline_wrapper ${D}/${bindir}/groff \
 		-F${STAGING_DIR_NATIVE}${datadir_native}/groff/${PV}/font \
 		-M${STAGING_DIR_NATIVE}${datadir_native}/groff/${PV}/tmac
-- 
1.7.9.5


