Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id D1FCE4C80039
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 05:12:39 -0600 (CST)
Received: by wwb31 with SMTP id 31so6483570wwb.11
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 03:12:39 -0800 (PST)
Received: by 10.216.181.199 with SMTP id l49mr937220wem.68.1295349158992;
	Tue, 18 Jan 2011 03:12:38 -0800 (PST)
Received: from localhost (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id n11sm2911181wej.19.2011.01.18.03.12.38
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 18 Jan 2011 03:12:38 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: poky@yoctoproject.org
Date: Tue, 18 Jan 2011 12:11:37 +0100
Message-Id: <1295349098-29677-2-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.6.6.1
In-Reply-To: <1295349098-29677-1-git-send-email-koen@dominion.thruhere.net>
References: <1295349098-29677-1-git-send-email-koen@dominion.thruhere.net>
Subject: [PATCH v2 2/3] distutils(-common-base) bbclass: sync with OE
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
X-List-Received-Date: Tue, 18 Jan 2011 11:12:40 -0000

When using python recipes imported from OE (e.g. python-cheetah) parsing only succeeds when python has already been built due to the PYTHON_DIR references.

This commit syncs the classes with OE to make it work, but keeps the *.pyo removal from yocto.

Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
---
 meta/classes/distutils-common-base.bbclass |   23 +++++++----------------
 meta/classes/distutils.bbclass             |   20 ++++++++++----------
 2 files changed, 17 insertions(+), 26 deletions(-)

diff --git a/meta/classes/distutils-common-base.bbclass b/meta/classes/distutils-common-base.bbclass
index 01bf9ea..f66a5cd 100644
--- a/meta/classes/distutils-common-base.bbclass
+++ b/meta/classes/distutils-common-base.bbclass
@@ -1,19 +1,10 @@
+inherit python-dir
+
 EXTRA_OEMAKE = ""
 
 export STAGING_INCDIR
 export STAGING_LIBDIR
 
-def python_dir(d):
-	import os, bb
-	staging_incdir = bb.data.getVar( "STAGING_INCDIR", d, 1 )
-	for majmin in "2.6 2.5 2.4 2.3".split():
-		if os.path.exists( "%s/python%s" % ( staging_incdir, majmin ) ): return "python%s" % majmin
-	if not "python-native" in bb.data.getVar( "DEPENDS", d, 1 ).split():
-		raise "No Python in STAGING_INCDIR. Forgot to build python-native ?"
-	return "INVALID"
-
-PYTHON_DIR = "${@python_dir(d)}"
-
 PACKAGES = "${PN}-dev ${PN}-dbg ${PN}-doc ${PN}"
 
 FILES_${PN} = "${bindir}/* ${libdir}/* ${libdir}/${PYTHON_DIR}/*"
@@ -21,10 +12,10 @@ FILES_${PN} = "${bindir}/* ${libdir}/* ${libdir}/${PYTHON_DIR}/*"
 FILES_${PN}-dev += "\
   ${datadir}/pkgconfig \
   ${libdir}/pkgconfig \
-  ${libdir}/${PYTHON_DIR}/site-packages/*.la \
+  ${PYTHON_SITEPACKAGES_DIR}/*.la \
 "
-FILES_${PN}-dbg = "\
-  ${libdir}/${PYTHON_DIR}/site-packages/.debug \
-  ${libdir}/${PYTHON_DIR}/site-packages/*/.debug \
-  ${libdir}/${PYTHON_DIR}/site-packages/*/*/.debug \
+FILES_${PN}-dbg += "\
+  ${PYTHON_SITEPACKAGES_DIR}/.debug \
+  ${PYTHON_SITEPACKAGES_DIR}/*/.debug \
+  ${PYTHON_SITEPACKAGES_DIR}/*/*/.debug \
 "
diff --git a/meta/classes/distutils.bbclass b/meta/classes/distutils.bbclass
index 245ef7d..7e6fbc0 100644
--- a/meta/classes/distutils.bbclass
+++ b/meta/classes/distutils.bbclass
@@ -16,9 +16,7 @@ distutils_do_compile() {
 }
 
 distutils_stage_headers() {
-        install -d ${STAGING_DIR_HOST}${libdir}/${PYTHON_DIR}/site-packages
-        STAGING_INCDIR=${STAGING_INCDIR} \
-        STAGING_LIBDIR=${STAGING_LIBDIR} \
+        install -d ${STAGING_DIR_HOST}${PYTHON_SITEPACKAGES_DIR}
         BUILD_SYS=${BUILD_SYS} HOST_SYS=${HOST_SYS} \
         ${STAGING_BINDIR_NATIVE}/python setup.py install_headers ${DISTUTILS_STAGE_HEADERS_ARGS} || \
         oefatal "python setup.py install_headers execution failed."
@@ -27,18 +25,18 @@ distutils_stage_headers() {
 distutils_stage_all() {
         STAGING_INCDIR=${STAGING_INCDIR} \
         STAGING_LIBDIR=${STAGING_LIBDIR} \
-        install -d ${STAGING_DIR_HOST}${libdir}/${PYTHON_DIR}/site-packages
-        PYTHONPATH=${STAGING_DIR_HOST}${libdir}/${PYTHON_DIR}/site-packages \
+        install -d ${STAGING_DIR_HOST}${PYTHON_SITEPACKAGES_DIR}
+        PYTHONPATH=${STAGING_DIR_HOST}${PYTHON_SITEPACKAGES_DIR} \
         BUILD_SYS=${BUILD_SYS} HOST_SYS=${HOST_SYS} \
         ${STAGING_BINDIR_NATIVE}/python setup.py install ${DISTUTILS_STAGE_ALL_ARGS} || \
         oefatal "python setup.py install (stage) execution failed."
 }
 
 distutils_do_install() {
-        install -d ${D}${libdir}/${PYTHON_DIR}/site-packages
+        install -d ${D}${PYTHON_SITEPACKAGES_DIR}
         STAGING_INCDIR=${STAGING_INCDIR} \
         STAGING_LIBDIR=${STAGING_LIBDIR} \
-        PYTHONPATH=${D}/${libdir}/${PYTHON_DIR}/site-packages \
+        PYTHONPATH=${D}/${PYTHON_SITEPACKAGES_DIR} \
         BUILD_SYS=${BUILD_SYS} HOST_SYS=${HOST_SYS} \
         ${STAGING_BINDIR_NATIVE}/python setup.py install ${DISTUTILS_INSTALL_ARGS} || \
         oefatal "python setup.py install execution failed."
@@ -59,15 +57,17 @@ distutils_do_install() {
             done
         fi
 
-        rm -f ${D}${libdir}/${PYTHON_DIR}/site-packages/easy-install.pth
-
+        rm -f ${D}${PYTHON_SITEPACKAGES_DIR}/easy-install.pth
+        
         #
         # FIXME: Bandaid against wrong datadir computation
         #
         if test -e ${D}${datadir}/share; then
             mv -f ${D}${datadir}/share/* ${D}${datadir}/
         fi
-      
+
+        # These are generated files, on really slow systems the storage/speed trade off
+        # might be worth it, but in general it isn't 
         find ${D}${libdir}/${PYTHON_DIR}/site-packages -iname '*.pyo' -exec rm {} \;
 }
 
-- 
1.6.6.1


