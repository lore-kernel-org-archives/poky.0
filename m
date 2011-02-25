Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id EDB204C80A8D
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 19:08:06 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id EDD5030522
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 20:07:54 -0500 (EST)
Message-Id: <d9dc5fe3f1c6f3104fce277a1d4ca64b8895eb47.1298592962.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1298592962.git.scott.a.garman@intel.com>
References: <cover.1298592962.git.scott.a.garman@intel.com>
Old-Date: Thu, 24 Feb 2011 15:57:32 -0800
Date: Thu, 24 Feb 2011 17:07:50 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: EDD5030522.D4C2E
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 1/2] linuxdoc-tools-native: new recipe v0.99.6
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
X-List-Received-Date: Fri, 25 Feb 2011 01:08:07 -0000

From: Scott Garman <scott.a.garman@intel.com>

This package includes utilities such as sgml2html and sgml2txt,
which are used by other packages (e.g, libuser) for building
documentation.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../linuxdoc-tools-native/disable_sgml2rtf.patch   |   49 ++++++++++++++++++++
 .../linuxdoc-tools/linuxdoc-tools-native_0.9.66.bb |   21 ++++++++
 2 files changed, 70 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_sgml2rtf.patch
 create mode 100644 meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native_0.9.66.bb

diff --git a/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_sgml2rtf.patch b/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_sgml2rtf.patch
new file mode 100644
index 0000000..0fcaceb
--- /dev/null
+++ b/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_sgml2rtf.patch
@@ -0,0 +1,49 @@
+The build of sgml2rtf is problematic due to the way it wants to
+link to a shared library version of flex. Flex only ships with a
+static lib. Rather than diverging from upstream flex, simply skip
+building this un-needed utility.
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+diff -urN linuxdoc-tools-0.9.66.orig//Makefile.in linuxdoc-tools-0.9.66/Makefile.in
+--- linuxdoc-tools-0.9.66.orig//Makefile.in	2009-11-09 11:58:25.000000000 -0800
++++ linuxdoc-tools-0.9.66/Makefile.in	2011-02-24 15:37:46.556937051 -0800
+@@ -40,7 +40,7 @@
+ pkgdata_ddir       = $(DESTDIR)$(pkgdatadir)
+ tex_ddir           = $(DESTDIR)$(texdir)
+ 
+-progs    := sgml2html sgml2info sgml2latex sgml2lyx sgml2rtf sgml2txt sgmlcheck
++progs    := sgml2html sgml2info sgml2latex sgml2lyx sgml2txt sgmlcheck
+ 
+ OPTIMIZE  = -O
+ 
+@@ -64,9 +64,9 @@
+ 	@echo "Compiling preprocessor (in sgmlpre/)..."
+ 	( cd sgmlpre ; \
+ 	  $(MAKE) CFLAGS="$(OPTIMIZE)" LEX=flex sgmlpre || exit -1 )
+-	@echo "Compiling RTF conversion tools (in rtf-fix/)..."
+-	( cd rtf-fix ; \
+-	  $(MAKE) CFLAGS="$(OPTIMIZE)" || exit -1 )
++#	@echo "Compiling RTF conversion tools (in rtf-fix/)..."
++#	( cd rtf-fix ; \
++#	  $(MAKE) CFLAGS="$(OPTIMIZE)" || exit -1 )
+ 	@echo "making man pages in genman ..."
+ 	if [ ! -d genman ]; then mkdir genman ; fi
+ 	for ii in man/* ; do \
+@@ -109,7 +109,7 @@
+ 
+ #    -- Install auxiliary programs
+ 	mkdir -p $(auxbin_ddir)
+-	for ii in sgmlpre/sgmlpre rtf-fix/rtf2rtf; do \
++	for ii in sgmlpre/sgmlpre; do \
+ 	  bn=`basename $$ii`; \
+ 	  $(INSTALL_PROGRAM) $$ii $(auxbin_ddir)/$$bn; \
+ 	done
+@@ -198,7 +198,7 @@
+ 
+ clean::
+ 	-rm -f *~ bin/*~ bin/linuxdoc
+-	for d in $(DDIRS) $(MDIRS) rtf-fix; do $(MAKE) -C $$d clean; done
++	for d in $(DDIRS) $(MDIRS); do $(MAKE) -C $$d clean; done
+ 	(cd sgmlpre ; rm -f sgmlpre.o sgmlpre)
+ 	-rm -rf genman/
+ 
diff --git a/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native_0.9.66.bb b/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native_0.9.66.bb
new file mode 100644
index 0000000..f3cd195
--- /dev/null
+++ b/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native_0.9.66.bb
@@ -0,0 +1,21 @@
+SUMMARY = "Convert LinuxDoc SGML source into other formats"
+DESCRIPTION = "Convert LinuxDoc SGML source into other formats"
+HOMEPAGE = "http://packages.debian.org/linuxdoc-tools"
+LICENSE = "GPLv3+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=5fbccc46cff2379505ca4e09c7d6ccfe"
+
+DEPENDS = "openjade-native"
+
+PR = "r0"
+
+SRC_URI = "${DEBIAN_MIRROR}/main/l/linuxdoc-tools/linuxdoc-tools_${PV}.tar.gz \
+           file://disable_sgml2rtf.patch"
+
+SRC_URI[md5sum] = "f214e79b0dd084689cd04f18722bd563"
+SRC_URI[sha256sum] = "128cabb52ef8fb2f370ee488ea92bf4d8e49859200c7c8cae807abfe860a62ec"
+
+inherit autotools native
+
+do_configure () {
+	oe_runconf
+}
-- 
1.7.1


