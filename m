Return-Path: <liping.ke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 806244C80581
	for <poky@yoctoproject.org>; Mon,  7 Mar 2011 00:23:06 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 Mar 2011 22:23:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,275,1297065600"; d="scan'208";a="717042496"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by orsmga001.jf.intel.com with ESMTP; 06 Mar 2011 22:22:59 -0800
Message-Id: <16f2153b0710caccdb68aad83b839f93bcf1e4cd.1299478629.git.liping.ke@intel.com>
In-Reply-To: <cover.1299478629.git.liping.ke@intel.com>
References: <cover.1299478629.git.liping.ke@intel.com>
Old-Date: Mon, 7 Mar 2011 13:10:42 +0800
Date: Mon, 07 Mar 2011 14:21:34 +0800
To: poky@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 1/1] adt: Update to svn r596 to fix symbolic link issues
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
X-List-Received-Date: Mon, 07 Mar 2011 06:23:06 -0000

From: Liping Ke <liping.ke@intel.com>

See the longlinksfix patch for details but symlinks over 100 chars long
were broken in sdk tarballs and its due to problems in the inbuilt tar in
libbb in opkg. svn r596 has already fixed the problem.

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    1 +
 .../installer/adt-installer/adt_installer          |    2 +-
 .../installer/adt-installer_1.0.bb                 |    8 ++++----
 3 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 2f33630..0f8433b 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -140,6 +140,7 @@ OPKGSRCREV = "596"
 SRCREV_pn-opkg ??= "${OPKGSRCREV}"
 SRCREV_pn-opkg-native ??= "${OPKGSRCREV}"
 SRCREV_pn-opkg-nativesdk ??= "${OPKGSRCREV}"
+SRCREV_pn-adt-installer ??= "${OPKGSRCREV}"
 SRCREV_pn-opkg-nogpg ??= "${OPKGSRCREV}"
 SRCREV_pn-opkg-nogpg-native ??= "${OPKGSRCREV}"
 SRCREV_pn-opkg-nogpg-nativesdk ??= "${OPKGSRCREV}"
diff --git a/meta/recipes-devtools/installer/adt-installer/adt_installer b/meta/recipes-devtools/installer/adt-installer/adt_installer
index 2448d2b..b1b4970 100755
--- a/meta/recipes-devtools/installer/adt-installer/adt_installer
+++ b/meta/recipes-devtools/installer/adt-installer/adt_installer
@@ -170,7 +170,7 @@ if [ ! -x "$LOCAL_OPKG_LOC/bin/opkg-cl" ]; then
   check_result
 
   echo_info "Configure opkg ...\n"
-  ./configure --prefix=$parent_folder/$LOCAL_OPKG_LOC --with-opkglibdir=$OPKG_LIBDIR --disable-curl --disable-ssl-curl --disable-gpg --disable-shave >> $parent_folder/$YOCTOADT_INSTALL_LOG_FILE
+  ./autogen.sh --prefix=$parent_folder/$LOCAL_OPKG_LOC --with-opkglibdir=$OPKG_LIBDIR --disable-curl --disable-ssl-curl --disable-gpg --disable-shave >> $parent_folder/$YOCTOADT_INSTALL_LOG_FILE
   check_result
 
   echo_info "Make opkg ...\n"
diff --git a/meta/recipes-devtools/installer/adt-installer_1.0.bb b/meta/recipes-devtools/installer/adt-installer_1.0.bb
index e865971..50290f9 100644
--- a/meta/recipes-devtools/installer/adt-installer_1.0.bb
+++ b/meta/recipes-devtools/installer/adt-installer_1.0.bb
@@ -39,7 +39,8 @@ YOCTOADT_VERSION = "${SDK_VERSION}"
 
 inherit deploy
 
-SRC_URI = "http://opkg.googlecode.com/files/opkg-0.1.8.tar.gz \
+PV = "0.1.8+svnr${SRCPV}"
+SRC_URI = "svn://opkg.googlecode.com/svn;module=trunk;proto=http \
            file://adt_installer \
            file://scripts/adt_installer_internal \
            file://scripts/util \
@@ -49,8 +50,6 @@ SRC_URI = "http://opkg.googlecode.com/files/opkg-0.1.8.tar.gz \
            file://opkg/conf/opkg-sdk-x86_64.conf \
            file://opkg/conf/opkg-sdk-i686.conf \
 	  "
-SRC_URI[md5sum] = "c714ce0e4863bf1315e3b6913ffe3299"
-SRC_URI[sha256sum] = "ff94bf30bd662d49c4b5057e3a0818d062731adaa555d59abd677ec32a3c1c60"
 
 fakeroot do_deploy () {
 	cd ${WORKDIR}
@@ -59,7 +58,8 @@ fakeroot do_deploy () {
 	rm -rf ${ADT_DIR}
 	mkdir -p ${ADT_DIR}/opkg/build
 	cp -r opkg ${ADT_DIR}/
-	cp -r opkg-0.1.8 ${ADT_DIR}/opkg/build/
+	cp -r trunk ${ADT_DIR}/opkg/build/
+	mv ${ADT_DIR}/opkg/build/trunk ${ADT_DIR}/opkg/build/opkg-svn
 	cp -r scripts ${ADT_DIR}/
 	cp adt_installer ${ADT_DIR}
 	cp adt_installer.conf ${ADT_DIR}
-- 
1.7.0.4


