Return-Path: <yanok@emcraft.com>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id D9E764C80FFA
	for <poky@pokylinux.org>; Wed, 11 May 2011 18:42:58 -0500 (CDT)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 41DCF188B582;
	Thu, 12 May 2011 01:42:57 +0200 (CEST)
X-Auth-Info: ltc/ttE+IpacdI8DR53RdfeqyedoTI8sfs27BpXmNzM=
Received: from mail.denx.de (host-82-135-33-74.customer.m-online.net
	[82.135.33.74])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 3BADC1C000AD;
	Thu, 12 May 2011 01:42:57 +0200 (CEST)
Received: from pollux.denx.de (pollux [192.168.1.1])
	by mail.denx.de (Postfix) with ESMTP id ECDC342FDAE1;
	Thu, 12 May 2011 01:42:56 +0200 (CEST)
Received: by pollux.denx.de (Postfix, from userid 547)
	id 7C01518015018; Thu, 12 May 2011 01:42:56 +0200 (CEST)
From: Ilya Yanok <yanok@emcraft.com>
To: poky@pokylinux.org
Date: Thu, 12 May 2011 01:42:50 +0200
Message-Id: <1305157370-3264-1-git-send-email-yanok@emcraft.com>
X-Mailer: git-send-email 1.7.4.4
Cc: Ilya Yanok <yanok@emcraft.com>
Subject: [RFC][PATCH] qt4: add target qmake to qt4-tools package
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
X-List-Received-Date: Wed, 11 May 2011 23:42:59 -0000

Target qmake is needed to build Qt program natively on target.

Signed-off-by: Ilya Yanok <yanok@emcraft.com>
---

Hello everybody,

I've just found that we don't have qmake in any target package. Still
qmake is necessary to build Qt applications natively on the target.

This patch tries to address this by calling qmake and make in the qmake
subdirectory after the main build. I'm not sure if it's a perfect
solution though. Any comments are welcome.

BTW, also I've found that qt4-tools and qt4-embedded-tools packages
contain the same files (I'm not sure if the actual programs are the
same but at least filenames are). Isn't it a problem?

Regards, Ilya.

 meta/recipes-qt/qt4/qt-4.6.3.inc |    2 ++
 meta/recipes-qt/qt4/qt-4.7.2.inc |    2 ++
 meta/recipes-qt/qt4/qt4.inc      |    7 ++-----
 3 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/meta/recipes-qt/qt4/qt-4.6.3.inc b/meta/recipes-qt/qt4/qt-4.6.3.inc
index 37a15f1..8f8fcc3 100644
--- a/meta/recipes-qt/qt4/qt-4.6.3.inc
+++ b/meta/recipes-qt/qt4/qt-4.6.3.inc
@@ -54,4 +54,6 @@ do_compile() {
 
 	unset CFLAGS CXXFLAGS
 	oe_runmake ${EXTRA_ENV}
+	# build qmake for target
+	(cd qmake; QMAKESPEC=${S}/mkspecs/${TARGET_OS}-oe-g++ ../bin/qmake; oe_runmake ${EXTRA_ENV})
 }
diff --git a/meta/recipes-qt/qt4/qt-4.7.2.inc b/meta/recipes-qt/qt4/qt-4.7.2.inc
index 0f75a46..e07d7da 100644
--- a/meta/recipes-qt/qt4/qt-4.7.2.inc
+++ b/meta/recipes-qt/qt4/qt-4.7.2.inc
@@ -56,4 +56,6 @@ do_compile() {
     install -m 0755 ${STAGING_BINDIR_NATIVE}/lrelease4 ${S}/bin/lrelease
 
     oe_runmake ${EXTRA_ENV}
+    # build qmake for target
+    (cd qmake; QMAKESPEC=${S}/mkspecs/${TARGET_OS}-oe-g++ ../bin/qmake; oe_runmake ${EXTRA_ENV})
 }
diff --git a/meta/recipes-qt/qt4/qt4.inc b/meta/recipes-qt/qt4/qt4.inc
index b86f89f..8a6e91a 100644
--- a/meta/recipes-qt/qt4/qt4.inc
+++ b/meta/recipes-qt/qt4/qt4.inc
@@ -124,8 +124,8 @@ RRECOMMENDS_${QT_BASE_NAME}-examples += " \
             ${QT_BASE_NAME}-plugin-sqldriver-sqlite \
             ${QT_BASE_NAME}-plugin-imageformat-jpeg"
 
-FILES_${QT_BASE_NAME}-tools                = "${bindir}/uic* ${bindir}/moc ${bindir}/rcc ${bindir}/qttracereplay ${bindir}/qdoc*"
-FILES_${QT_BASE_NAME}-tools-dbg            = "${bindir}/.debug/uic* ${bindir}/.debug/moc ${bindir}/.debug/rcc ${bindir}/.debug/qttracereplay ${bindir}/.debug/qdoc*"
+FILES_${QT_BASE_NAME}-tools                = "${bindir}/uic* ${bindir}/moc ${bindir}/rcc ${bindir}/qttracereplay ${bindir}/qdoc* ${bindir}/qmake"
+FILES_${QT_BASE_NAME}-tools-dbg            = "${bindir}/.debug/uic* ${bindir}/.debug/moc ${bindir}/.debug/rcc ${bindir}/.debug/qttracereplay ${bindir}/.debug/qdoc* ${bindir}/.debug/qmake"
 FILES_${QT_BASE_NAME}-assistant            = "${bindir}/*assistant* ${bindir}/qcollectiongenerator ${bindir}/qhelpconverter ${bindir}/qhelpgenerator"
 FILES_${QT_BASE_NAME}-assistant-dbg        = "${bindir}/.debug/*assistant* ${bindir}/.debug/qcollectiongenerator ${bindir}/.debug/qhelpconverter ${bindir}/.debug/qhelpgenerator"
 FILES_${QT_BASE_NAME}-common               = "${bindir}/qtconfig"
@@ -264,9 +264,6 @@ python populate_packages_prepend() {
 do_install() {
 	oe_runmake install INSTALL_ROOT=${D}
 
-	# These are host binaries, we should only use them in staging
-	rm -rf ${D}/${bindir}/qmake
-
 	# fix pkgconfig, libtool and prl files
 	sed -i -e s#-L${S}/lib##g \
 			-e s#-L${STAGING_LIBDIR}##g \
-- 
1.7.4.4


