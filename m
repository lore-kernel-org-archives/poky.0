Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id EB3384C8121E
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:55 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="589553101"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
Message-Id: <56cc00df689ff2d3ed5902972cfdb9b1bac222ae.1294099430.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Liping Ke <liping.ke@intel.com>
Date: Thu, 30 Dec 2010 02:58:27 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 57/59] Fix several defects: sdk_version, relative path
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
X-List-Received-Date: Mon, 03 Jan 2011 23:47:56 -0000

This patch fix several bugs, including opkg file chksum number changing
problem, sdk_version automatically generating now, and we should
cd to ${WORKDIR} before do_deploy

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 .../installer/adt-installer/adt_installer.conf     |    1 -
 .../installer/adt-installer_1.0.bb                 |   29 ++++++++++---------
 2 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/meta/recipes-devtools/installer/adt-installer/adt_installer.conf b/meta/recipes-devtools/installer/adt-installer/adt_installer.conf
index 5dc9261..4b9213c 100644
--- a/meta/recipes-devtools/installer/adt-installer/adt_installer.conf
+++ b/meta/recipes-devtools/installer/adt-installer/adt_installer.conf
@@ -1,7 +1,6 @@
 # Your yocto distro repository, this should include IPKG based packages and root filesystem files where the installation is based on
 
 YOCTOADT_IPKG_REPO="http://llu-piketon.sh.intel.com/rootfs"
-YOCTOADT_VERSION="0.9+snapshot"
 
 # The following are for system wide setup
 # Target architectures that you want to setup host cross dev environment for
diff --git a/meta/recipes-devtools/installer/adt-installer_1.0.bb b/meta/recipes-devtools/installer/adt-installer_1.0.bb
index 975dfa9..d8d87b7 100644
--- a/meta/recipes-devtools/installer/adt-installer_1.0.bb
+++ b/meta/recipes-devtools/installer/adt-installer_1.0.bb
@@ -12,36 +12,37 @@ PR = "r0"
 
 ADT_DEPLOY = "${TMPDIR}/deploy/sdk/"
 ADT_DIR = "${WORKDIR}/adt-installer/"
-
-S = "${WORKDIR}"
+YOCTOADT_VERSION = "${SDK_VERSION}"
 
 inherit deploy
 
 SRC_URI = "http://opkg.googlecode.com/files/opkg-0.1.8.tar.gz \
-           file://yocto_installer \
-           file://scripts/yocto_installer_internal \
+           file://adt_installer \
+           file://scripts/adt_installer_internal \
            file://scripts/util \
            file://scripts/data_define \
            file://scripts/extract_rootfs \
-           file://yocto_installer.conf \
+           file://adt_installer.conf \
            file://opkg/conf/opkg-sdk-x86_64.conf \
            file://opkg/conf/opkg-sdk-i586.conf \
 	  "
-SRC_URI[md5sum] = "5e888dd46a252cc22686b732fbe486b3"
-SRC_URI[sha256sum] = "ded8f16f55a641672fe1344842998def5f5163d7ebbd5d58ab15c54b04927660"
+SRC_URI[md5sum] = "c714ce0e4863bf1315e3b6913ffe3299"
+SRC_URI[sha256sum] = "ff94bf30bd662d49c4b5057e3a0818d062731adaa555d59abd677ec32a3c1c60"
 
 fakeroot do_deploy () {
+	cd ${WORKDIR}
 	mkdir -p ${ADT_DEPLOY}
 	rm -f ${ADT_DEPLOY}/adt-installer.tar.bz2
 	rm -rf ${ADT_DIR}
 	mkdir -p ${ADT_DIR}/opkg/build
-	cp -r ${WORKDIR}/opkg ${ADT_DIR}/
-	cp -r ${WORKDIR}/opkg-0.1.8 ${ADT_DIR}/opkg/build
-	cp -r ${WORKDIR}/scripts ${ADT_DIR}/
-	cp yocto_installer ${ADT_DIR}
-	cp yocto_installer.conf ${ADT_DIR}
-	tar cfj ${WORKDIR}/adt_installer.tar.bz2 adt-installer
-	cp adt_installer.tar.bz2 ${ADT_DEPLOY}
+	cp -r opkg ${ADT_DIR}/
+	cp -r opkg-0.1.8 ${ADT_DIR}/opkg/build/
+	cp -r scripts ${ADT_DIR}/
+	cp adt_installer ${ADT_DIR}
+	cp adt_installer.conf ${ADT_DIR}
+	echo 'YOCTOADT_VERSION=${SDK_VERSION}' >> ${ADT_DIR}/adt_installer.conf
+	tar cfj adt_installer.tar.bz2 adt-installer
+	cp ${WORKDIR}/adt_installer.tar.bz2 ${ADT_DEPLOY}
 }
 
 do_patch[noexec] = "1"
-- 
1.7.0.4


