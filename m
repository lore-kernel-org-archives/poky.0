Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id F18BC4C80AAD
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 22:15:12 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3S3FB7d016824
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 27 Apr 2011 20:15:11 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 27 Apr 2011 20:15:10 -0700
Message-ID: <d25d70746d257a64dd61989167710975393c6fbc.1303960219.git.kai.kang@windriver.com>
In-Reply-To: <cover.1303960219.git.kai.kang@windriver.com>
References: <cover.1303960219.git.kai.kang@windriver.com>
Old-Date: Wed, 27 Apr 2011 15:44:45 +0800
Date: Thu, 28 Apr 2011 11:15:59 +0800
To: <saul.wold@intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: [PATCH 1/3] groff: update to 1.20.1
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
X-List-Received-Date: Thu, 28 Apr 2011 03:15:13 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Update groff to 1.20.1, add SUMMARY and LICENSE info
From OE 70bf94cd8669f549ca90581e9592d409b6e24e2e
Fixes [Yocto 879]

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 .../groff-1.18.1.4/groff-1.18.1.4-remove-mom.patch |   35 ---------------
 .../groff/groff-1.18.1.4/man-local.patch           |   32 --------------
 .../groff/groff-1.18.1.4/mdoc-local.patch          |   31 -------------
 meta/recipes-extended/groff/groff_1.18.1.4.bb      |   46 --------------------
 meta/recipes-extended/groff/groff_1.20.1.bb        |   36 +++++++++++++++
 5 files changed, 36 insertions(+), 144 deletions(-)
 delete mode 100644 meta/recipes-extended/groff/groff-1.18.1.4/groff-1.18.1.4-remove-mom.patch
 delete mode 100644 meta/recipes-extended/groff/groff-1.18.1.4/man-local.patch
 delete mode 100644 meta/recipes-extended/groff/groff-1.18.1.4/mdoc-local.patch
 delete mode 100644 meta/recipes-extended/groff/groff_1.18.1.4.bb
 create mode 100644 meta/recipes-extended/groff/groff_1.20.1.bb

diff --git a/meta/recipes-extended/groff/groff-1.18.1.4/groff-1.18.1.4-remove-mom.patch b/meta/recipes-extended/groff/groff-1.18.1.4/groff-1.18.1.4-remove-mom.patch
deleted file mode 100644
index 90ad8e3..0000000
--- a/meta/recipes-extended/groff/groff-1.18.1.4/groff-1.18.1.4-remove-mom.patch
+++ /dev/null
@@ -1,35 +0,0 @@
----
- groff-1.18.1.4/Makefile.in |    7 +------
- 1 file changed, 1 insertion(+), 6 deletions(-)
-
---- a/Makefile.in
-+++ b/Makefile.in
-@@ -460,27 +460,22 @@ OTHERDIRS=\
-   src/roff/grog \
-   src/roff/nroff \
-   contrib/mm \
-   contrib/pic2graph \
-   contrib/eqn2graph \
--  contrib/groffer \
--  contrib/mom \
--  doc
-+  contrib/groffer
- ALLDIRS=$(INCDIRS) $(LIBDIRS) $(PROGDIRS) \
-   $(DEVDIRS) $(OTHERDEVDIRS) $(TTYDEVDIRS) $(OTHERDIRS)
- EXTRADIRS=\
-   font/devps/generate \
-   font/devdvi/generate \
-   font/devlj4/generate \
--  src/xditview \
-   doc
- NOMAKEDIRS=\
-   arch/djgpp \
-   contrib/mm/examples \
-   contrib/mm/mm \
--  contrib/mom/examples \
--  contrib/mom/momdoc \
-   src/libs/snprintf
- DISTDIRS=\
-   $(INCDIRS) $(LIBDIRS) $(PROGDIRS) $(DEVDIRS) $(OTHERDEVDIRS) \
-   $(ALLTTYDEVDIRS) $(OTHERDIRS) $(EXTRADIRS) $(NOMAKEDIRS)
- TARGETS=all install install_bin install_data clean distclean mostlyclean \
diff --git a/meta/recipes-extended/groff/groff-1.18.1.4/man-local.patch b/meta/recipes-extended/groff/groff-1.18.1.4/man-local.patch
deleted file mode 100644
index 34b4248..0000000
--- a/meta/recipes-extended/groff/groff-1.18.1.4/man-local.patch
+++ /dev/null
@@ -1,32 +0,0 @@
-Index: groff-1.18.1.4/tmac/man.local
-===================================================================
---- groff-1.18.1.4.orig/tmac/man.local	2000-10-26 22:15:17.000000000 +0800
-+++ groff-1.18.1.4/tmac/man.local	2010-08-24 14:17:52.070006664 +0800
-@@ -1,2 +1,27 @@
- .\" This file is loaded after an-old.tmac.
- .\" Put any local modifications to an-old.tmac here.
-+.
-+.if n \{\
-+.  \" Debian: Map \(oq to ' rather than ` in nroff mode for devices other
-+.  \" than utf8.
-+.  if !'\*[.T]'utf8' \
-+.    tr \[oq]'
-+.
-+.  \" Debian: Disable the use of SGR (ANSI colour) escape sequences by
-+.  \" grotty.
-+.  if '\V[GROFF_SGR]'' \
-+.    output x X tty: sgr 0
-+.
-+.  \" Debian: Map \- to the Unicode HYPHEN-MINUS character, to make
-+.  \" searching in man pages easier.
-+.  if '\*[.T]'utf8' \
-+.    char \- \N'45'
-+.
-+.  \" Debian: Many UTF-8 man pages use "-" instead of "\-" for dashes such
-+.  \" as those in command-line options. This is a bug in those pages, but
-+.  \" too many fonts are missing the Unicode HYPHEN character, so we render
-+.  \" this as the ASCII-compatible HYPHEN-MINUS instead.
-+.  if '\*[.T]'utf8' \
-+.    char - \N'45'
-+.\}
-+
diff --git a/meta/recipes-extended/groff/groff-1.18.1.4/mdoc-local.patch b/meta/recipes-extended/groff/groff-1.18.1.4/mdoc-local.patch
deleted file mode 100644
index 140a544..0000000
--- a/meta/recipes-extended/groff/groff-1.18.1.4/mdoc-local.patch
+++ /dev/null
@@ -1,31 +0,0 @@
-Index: groff-1.18.1.4/tmac/mdoc.local
-===================================================================
---- groff-1.18.1.4.orig/tmac/mdoc.local	2001-03-23 08:17:51.000000000 +0800
-+++ groff-1.18.1.4/tmac/mdoc.local	2010-08-24 14:20:22.014006846 +0800
-@@ -1,2 +1,26 @@
- .\" This file is loaded after doc.tmac.
- .\" Put any local modifications to doc.tmac here.
-+.
-+.if n \{\
-+.  \" Debian: Map \(oq to ' rather than ` in nroff mode for devices other
-+.  \" than utf8.
-+.  if !'\*[.T]'utf8' \
-+.    tr \[oq]'
-+.
-+.  \" Debian: Disable the use of SGR (ANSI colour) escape sequences by
-+.  \" grotty.
-+.  if '\V[GROFF_SGR]'' \
-+.    output x X tty: sgr 0
-+.
-+.  \" Debian: Map \- to the Unicode HYPHEN-MINUS character, to make
-+.  \" searching in man pages easier.
-+.  if '\*[.T]'utf8' \
-+.    char \- \N'45'
-+.
-+.  \" Debian: Many UTF-8 man pages use "-" instead of "\-" for dashes such
-+.  \" as those in command-line options. This is a bug in those pages, but
-+.  \" too many fonts are missing the Unicode HYPHEN character, so we render
-+.  \" this as the ASCII-compatible HYPHEN-MINUS instead.
-+.  if '\*[.T]'utf8' \
-+.    char - \N'45'
-+.\}
diff --git a/meta/recipes-extended/groff/groff_1.18.1.4.bb b/meta/recipes-extended/groff/groff_1.18.1.4.bb
deleted file mode 100644
index cf3adea..0000000
--- a/meta/recipes-extended/groff/groff_1.18.1.4.bb
+++ /dev/null
@@ -1,46 +0,0 @@
-SUMMARY = "GNU Troff software"
-DESCRIPTION = "The groff (GNU troff) software is a typesetting package which reads plain text mixed with \
-formatting commands and produces formatted output."
-SECTION = "console/utils"
-PRIORITY = "required"
-HOMEPAGE = "ftp://ftp.gnu.org/gnu/groff/"
-LICENSE = "GPLv2"
-PR = "r1"
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=e43fc16fccd8519fba405f0a0ff6e8a3"
-
-SRC_URI = "${GNU_MIRROR}/groff/groff-${PV}.tar.gz \
-          file://groff-1.18.1.4-remove-mom.patch;striplevel=1 \
-          file://man-local.patch \
-          file://mdoc-local.patch" 
-
-inherit autotools
-
-EXTRA_OECONF="--without-x --prefix=${D} --exec-prefix=${D} --bindir=${D}${bindir} --datadir=${D}${datadir} --mandir=${D}${datadir}/man --infodir=${D}${datadir}info --with-appresdir=${D}${datadir}"
-
-SRC_URI[md5sum] = "ceecb81533936d251ed015f40e5f7287"
-SRC_URI[sha256sum] = "ff3c7c3b6cae5e8cc5062a144de5eff0022e8e970e1774529cc2d5dde46ce50d"
-PARALLEL_MAKE = ""
-
-
-do_configure (){
-	oe_runconf
-}
-
-do_install_prepend() {
-  install -m 0755 -d ${D}
-}
-
-
-do_install_append() {
-     mkdir -p ${D}${sysconfdir}/groff
-     cp -rf ${D}${datadir}/groff/site-tmac/* ${D}${sysconfdir}/groff/
-     cp -rf ${D}${datadir}/groff/site-tmac/* ${D}${datadir}/groff/${PV}/tmac/
-}
-
-pkg_postinst_${PN}() {
-    ln -s ${bindir}/tbl ${bindir}/gtbl
-    echo "export GROFF_FONT_PATH=/usr/share/groff/${PV}/font" >> ${sysconfdir}/profile
-    echo "export GROFF_TMAC_PATH=/usr/share/groff/${PV}/tmac" >> ${sysconfdir}/profile
-}
-
diff --git a/meta/recipes-extended/groff/groff_1.20.1.bb b/meta/recipes-extended/groff/groff_1.20.1.bb
new file mode 100644
index 0000000..e0e198f
--- /dev/null
+++ b/meta/recipes-extended/groff/groff_1.20.1.bb
@@ -0,0 +1,36 @@
+SUMMARY = "GNU Troff software"
+DESCRIPTION = "The groff (GNU troff) software is a typesetting package which reads plain text mixed with \
+formatting commands and produces formatted output."
+SECTION = "base"
+HOMEPAGE = "ftp://ftp.gnu.org/gnu/groff/"
+LICENSE = "GPLv2"
+PR = "r0"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
+
+SRC_URI = "${GNU_MIRROR}/groff/groff-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "48fa768dd6fdeb7968041dd5ae8e2b02"
+SRC_URI[sha256sum] = "b645878135cb620c6c417c5601bfe96172245af12045540d7344938b4c2cd805"
+
+DEPENDS = "groff-native"
+DEPENDS_virtclass-native = ""
+
+inherit autotools
+
+PARALLEL_MAKE = ""
+
+do_configure_prepend() {
+	if [ "${BUILD_SYS}" != "${HOST_SYS}" ]; then
+		sed -i \
+		    -e '/^GROFFBIN=/s:=.*:=${STAGING_BINDIR_NATIVE}/groff:' \
+		    -e '/^TROFFBIN=/s:=.*:=${STAGING_BINDIR_NATIVE}/troff:' \
+		    -e '/^GROFF_BIN_PATH=/s:=.*:=${STAGING_BINDIR_NATIVE}:' \
+		    -e '/^GROFF_BIN_DIR=/s:=.*:=${STAGING_BINDIR_NATIVE}:' \
+		    ${S}/contrib/*/Makefile.sub \
+		    ${S}/doc/Makefile.in \
+		    ${S}/doc/Makefile.sub
+	fi
+}
+
+BBCLASSEXTEND = "native"
-- 
1.7.1


