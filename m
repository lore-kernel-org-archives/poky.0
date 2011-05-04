Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 51CD64C8100B
	for <poky@yoctoproject.org>; Wed,  4 May 2011 05:56:30 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p44AuSZg016670
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 4 May 2011 03:56:28 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 4 May 2011 03:56:27 -0700
Message-ID: <bed529c62a7022fac612ac48cd8a805cb21f98af.1304503987.git.kai.kang@windriver.com>
In-Reply-To: <cover.1304503987.git.kai.kang@windriver.com>
References: <cover.1304503987.git.kai.kang@windriver.com>
Old-Date: Tue, 3 May 2011 16:50:40 +0800
Date: Wed, 4 May 2011 18:56:23 +0800
To: <saul.wold@intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: [PATCH 2/2] ghostscript: added to pass LSB commands check
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
X-List-Received-Date: Wed, 04 May 2011 10:56:30 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Add ghostscript to pass LSB commands check and Printing test, and
ghostscript-native is added to help cross compilation.

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 .../ghostscript-9.02-prevent_recompiling.patch     |   95 ++++++++++++++++++++
 .../ghostscript/ghostscript_9.02.bb                |   67 ++++++++++++++
 2 files changed, 162 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/ghostscript/ghostscript/ghostscript-9.02-prevent_recompiling.patch
 create mode 100644 meta/recipes-extended/ghostscript/ghostscript_9.02.bb

diff --git a/meta/recipes-extended/ghostscript/ghostscript/ghostscript-9.02-prevent_recompiling.patch b/meta/recipes-extended/ghostscript/ghostscript/ghostscript-9.02-prevent_recompiling.patch
new file mode 100644
index 0000000..def8596
--- /dev/null
+++ b/meta/recipes-extended/ghostscript/ghostscript/ghostscript-9.02-prevent_recompiling.patch
@@ -0,0 +1,95 @@
+Just use commands provided by ghostscript-native, preventing recompile them when
+compile ghostscript.
+Way to enable cross compile.
+
+Upstream-status: Pending
+
+Signed-off-by: Kang Kai <kai.kang@windriver.com>
+
+--- a/base/unix-aux.mak.orig	2011-05-03 15:35:55.196887997 +0800
++++ b/base/unix-aux.mak	2011-05-03 15:37:57.766888003 +0800
+@@ -57,45 +57,45 @@ $(GLOBJ)gp_sysv.$(OBJ): $(GLSRC)gp_sysv.
+ 
+ # -------------------------- Auxiliary programs --------------------------- #
+ 
+-$(ECHOGS_XE): $(GLSRC)echogs.c $(AK) $(stdpre_h)
+-	$(CCAUX) $(I_)$(GLSRCDIR)$(_I) $(O_)$(ECHOGS_XE) $(GLSRC)echogs.c
+-
+-# On the RS/6000 (at least), compiling genarch.c with gcc with -O
+-# produces a buggy executable.
+-$(GENARCH_XE): $(GLSRC)genarch.c $(AK) $(GENARCH_DEPS)
+-	$(CCAUX) $(I_)$(GLSRCDIR)$(_I) $(O_)$(GENARCH_XE) $(GLSRC)genarch.c
+-
+-$(GENCONF_XE): $(GLSRC)genconf.c $(AK) $(GENCONF_DEPS)
+-	$(CCAUX) $(I_)$(GLSRCDIR)$(_I) $(O_)$(GENCONF_XE) $(GLSRC)genconf.c
+-
+-$(GENDEV_XE): $(GLSRC)gendev.c $(AK) $(GENDEV_DEPS)
+-	$(CCAUX) $(I_)$(GLSRCDIR)$(_I) $(O_)$(GENDEV_XE) $(GLSRC)gendev.c
+-
+-$(GENHT_XE): $(GLSRC)genht.c $(AK) $(GENHT_DEPS)
+-	$(CCAUX) $(GENHT_CFLAGS) $(O_)$(GENHT_XE) $(GLSRC)genht.c
+-
+-# To get GS to use the system zlib, you remove/hide the gs/zlib directory
+-# which means that the mkromfs build can't find the zlib source it needs.
+-# So it's split into two targets, one using the zlib source directly.....
+-MKROMFS_OBJS_0=$(MKROMFS_ZLIB_OBJS) $(GLOBJ)gscdefs.$(OBJ) $(GLOBJ)gsmisc.$(OBJ) \
+- $(GLOBJ)gpmisc.$(OBJ) $(GLOBJ)gslibctx.$(OBJ) $(GLOBJ)gp_getnv.$(OBJ) \
+- $(GLOBJ)gp_unix.$(OBJ) $(GLOBJ)gp_unifs.$(OBJ) $(GLOBJ)gp_unifn.$(OBJ) \
+- $(GLOBJ)gp_stdia.$(OBJ) $(GLOBJ)gsutil.$(OBJ)
+-
+-$(MKROMFS_XE)_0: $(GLSRC)mkromfs.c $(MKROMFS_COMMON_DEPS) $(MKROMFS_OBJS_0)
+-	$(CCAUX) $(GENOPT) $(CFLAGS) $(I_)$(GLSRCDIR)$(_I) $(I_)$(GLOBJ)$(_I) $(I_)$(ZSRCDIR)$(_I) $(GLSRC)mkromfs.c $(O_)$(MKROMFS_XE)_0 $(MKROMFS_OBJS_0) -lm $(EXTRALIBS)
+-
+-# .... and one using the zlib library linked via the command line
+-MKROMFS_OBJS_1=$(GLOBJ)gscdefs.$(OBJ) $(GLOBJ)gsmisc.$(OBJ) \
+- $(GLOBJ)gpmisc.$(OBJ) $(GLOBJ)gslibctx.$(OBJ) $(GLOBJ)gp_getnv.$(OBJ) \
+- $(GLOBJ)gp_unix.$(OBJ) $(GLOBJ)gp_unifs.$(OBJ) $(GLOBJ)gp_unifn.$(OBJ) \
+- $(GLOBJ)gp_stdia.$(OBJ) $(GLOBJ)gsutil.$(OBJ)
+-
+-$(MKROMFS_XE)_1: $(GLSRC)mkromfs.c $(MKROMFS_COMMON_DEPS) $(MKROMFS_OBJS_1)
+-	$(CCAUX) $(GENOPT) $(CFLAGS) $(I_)$(GLSRCDIR)$(_I) $(I_)$(GLOBJ)$(_I) $(I_)$(ZSRCDIR)$(_I) $(GLSRC)mkromfs.c $(O_)$(MKROMFS_XE)_1 $(MKROMFS_OBJS_1) -lm $(EXTRALIBS)
+-
+-$(MKROMFS_XE): $(MKROMFS_XE)_$(SHARE_ZLIB)
+-	$(CP_) $(MKROMFS_XE)_$(SHARE_ZLIB) $(MKROMFS_XE)
++#$(ECHOGS_XE): $(GLSRC)echogs.c $(AK) $(stdpre_h)
++#	$(CCAUX) $(I_)$(GLSRCDIR)$(_I) $(O_)$(ECHOGS_XE) $(GLSRC)echogs.c
++#
++## On the RS/6000 (at least), compiling genarch.c with gcc with -O
++## produces a buggy executable.
++#$(GENARCH_XE): $(GLSRC)genarch.c $(AK) $(GENARCH_DEPS)
++#	$(CCAUX) $(I_)$(GLSRCDIR)$(_I) $(O_)$(GENARCH_XE) $(GLSRC)genarch.c
++#
++#$(GENCONF_XE): $(GLSRC)genconf.c $(AK) $(GENCONF_DEPS)
++#	$(CCAUX) $(I_)$(GLSRCDIR)$(_I) $(O_)$(GENCONF_XE) $(GLSRC)genconf.c
++#
++#$(GENDEV_XE): $(GLSRC)gendev.c $(AK) $(GENDEV_DEPS)
++#	$(CCAUX) $(I_)$(GLSRCDIR)$(_I) $(O_)$(GENDEV_XE) $(GLSRC)gendev.c
++#
++#$(GENHT_XE): $(GLSRC)genht.c $(AK) $(GENHT_DEPS)
++#	$(CCAUX) $(GENHT_CFLAGS) $(O_)$(GENHT_XE) $(GLSRC)genht.c
++#
++## To get GS to use the system zlib, you remove/hide the gs/zlib directory
++## which means that the mkromfs build can't find the zlib source it needs.
++## So it's split into two targets, one using the zlib source directly.....
++#MKROMFS_OBJS_0=$(MKROMFS_ZLIB_OBJS) $(GLOBJ)gscdefs.$(OBJ) $(GLOBJ)gsmisc.$(OBJ) \
++# $(GLOBJ)gpmisc.$(OBJ) $(GLOBJ)gslibctx.$(OBJ) $(GLOBJ)gp_getnv.$(OBJ) \
++# $(GLOBJ)gp_unix.$(OBJ) $(GLOBJ)gp_unifs.$(OBJ) $(GLOBJ)gp_unifn.$(OBJ) \
++# $(GLOBJ)gp_stdia.$(OBJ) $(GLOBJ)gsutil.$(OBJ)
++#
++#$(MKROMFS_XE)_0: $(GLSRC)mkromfs.c $(MKROMFS_COMMON_DEPS) $(MKROMFS_OBJS_0)
++#	$(CCAUX) $(GENOPT) $(CFLAGS) $(I_)$(GLSRCDIR)$(_I) $(I_)$(GLOBJ)$(_I) $(I_)$(ZSRCDIR)$(_I) $(GLSRC)mkromfs.c $(O_)$(MKROMFS_XE)_0 $(MKROMFS_OBJS_0) -lm $(EXTRALIBS)
++#
++## .... and one using the zlib library linked via the command line
++#MKROMFS_OBJS_1=$(GLOBJ)gscdefs.$(OBJ) $(GLOBJ)gsmisc.$(OBJ) \
++# $(GLOBJ)gpmisc.$(OBJ) $(GLOBJ)gslibctx.$(OBJ) $(GLOBJ)gp_getnv.$(OBJ) \
++# $(GLOBJ)gp_unix.$(OBJ) $(GLOBJ)gp_unifs.$(OBJ) $(GLOBJ)gp_unifn.$(OBJ) \
++# $(GLOBJ)gp_stdia.$(OBJ) $(GLOBJ)gsutil.$(OBJ)
++#
++#$(MKROMFS_XE)_1: $(GLSRC)mkromfs.c $(MKROMFS_COMMON_DEPS) $(MKROMFS_OBJS_1)
++#	$(CCAUX) $(GENOPT) $(CFLAGS) $(I_)$(GLSRCDIR)$(_I) $(I_)$(GLOBJ)$(_I) $(I_)$(ZSRCDIR)$(_I) $(GLSRC)mkromfs.c $(O_)$(MKROMFS_XE)_1 $(MKROMFS_OBJS_1) -lm $(EXTRALIBS)
++#
++#$(MKROMFS_XE): $(MKROMFS_XE)_$(SHARE_ZLIB)
++#	$(CP_) $(MKROMFS_XE)_$(SHARE_ZLIB) $(MKROMFS_XE)
+ 
+ # Query the environment to construct gconfig_.h.
+ # The "else true;" is required because Ultrix's implementation of sh -e
diff --git a/meta/recipes-extended/ghostscript/ghostscript_9.02.bb b/meta/recipes-extended/ghostscript/ghostscript_9.02.bb
new file mode 100644
index 0000000..dcdedad
--- /dev/null
+++ b/meta/recipes-extended/ghostscript/ghostscript_9.02.bb
@@ -0,0 +1,67 @@
+SUMMARY = "The GPL Ghostscript PostScript/PDF interpreter"
+DESCRIPTION = "Ghostscript is used for PostScript/PDF preview and printing.  Usually as \
+a back-end to a program such as ghostview, it can display PostScript and PDF \
+documents in an X11 environment. \
+\
+Furthermore, it can render PostScript and PDF files as graphics to be printed \
+on non-PostScript printers. Supported printers include common \
+dot-matrix, inkjet and laser models. \
+\
+Package gsfonts contains a set of standard fonts for Ghostscript. \
+"
+HOMEPAGE = "http://www.ghostscript.com"
+SECTION = "console/utils"
+
+LICENSE = "GPLv3"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=d151214b3131251dfc9d858593acbd24"
+
+PR = "r0"
+
+DEPENDS = "tiff ${PN}-native"
+DEPENDS_virtclass-native = ""
+
+SRC_URI = "http://downloads.ghostscript.com/public/ghostscript-${PV}.tar.bz2 \
+           file://ghostscript-9.02-prevent_recompiling.patch \
+           "
+
+SRC_URI[md5sum] = "f67151444bd56a7904579fc75a083dd6"
+SRC_URI[sha256sum] = "03ea2cad13a36f8f9160912012b79619a826e7148fada6d3531feb25409ee05a"
+
+EXTRA_OECONF = "--with-system-libtiff --without-jbig2dec --without-jasper --x-includes=${STAGING_DIR_HOST}/usr/include/X11 --x-libraries=${STAGING_DIR_HOST}/usr/lib"
+
+inherit autotools
+
+do_configure () {
+    oe_runconf
+
+    # copy tools from the native ghostscript build
+    mkdir -p obj soobj
+    for i in genarch genconf mkromfs echogs gendev genht; do
+        cp ${STAGING_BINDIR_NATIVE}/ghostscript-${PV}/$i obj/$i
+        cp ${STAGING_BINDIR_NATIVE}/ghostscript-${PV}/$i soobj/$i
+    done
+}
+
+python do_patch_virtclass-native () {
+    pass
+}
+
+do_configure_virtclass-native () {
+    oe_runconf
+}
+
+do_compile_virtclass-native () {
+    mkdir -p obj
+    for i in genarch genconf mkromfs echogs gendev genht; do
+        oe_runmake obj/$i
+    done
+}
+
+do_install_virtclass-native () {
+    install -d ${D}${bindir}/ghostscript-${PV}
+    for i in genarch genconf mkromfs echogs gendev genht; do
+        install -m 755 obj/$i ${D}${bindir}/ghostscript-${PV}/$i
+    done
+}
+
+BBCLASSEXTEND = "native"
-- 
1.7.1


