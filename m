Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 053614C80B70
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:53 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="589553095"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
Message-Id: <dff080757567d4e031071f83657695b2781b8e77.1294099430.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Liping Ke <liping.ke@intel.com>
Date: Fri, 24 Dec 2010 05:47:52 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 45/59] Add installer scripts tarball generating bb file
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
X-List-Received-Date: Mon, 03 Jan 2011 23:47:54 -0000

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 .../installer/adt-installer_1.0.bb                 |   60 ++++++++++++++++++++
 1 files changed, 60 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-devtools/installer/adt-installer_1.0.bb

diff --git a/meta/recipes-devtools/installer/adt-installer_1.0.bb b/meta/recipes-devtools/installer/adt-installer_1.0.bb
new file mode 100644
index 0000000..fa10be3
--- /dev/null
+++ b/meta/recipes-devtools/installer/adt-installer_1.0.bb
@@ -0,0 +1,60 @@
+DESCRIPTION = "Meta package for creating sdk installer tarball"
+LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
+                    file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+LICENSE = "MIT"
+
+ALLOW_EMPTY = "1"
+
+PACKAGES = ""
+PACKAGE_ARCH = "all"
+
+PR = "r0"
+
+ADT_DEPLOY = "${TMPDIR}/deploy/sdk/"
+ADT_DIR = "${WORKDIR}/adt-installer/"
+
+S = "${WORKDIR}"
+
+inherit deploy
+
+SRC_URI = "http://opkg.googlecode.com/files/opkg-0.1.8.tar.gz \
+           file://yocto_installer \
+           file://scripts/yocto_installer_internal \
+           file://scripts/util \
+           file://scripts/data_define \
+           file://scripts/extract_rootfs \
+           file://yocto_installer.conf \
+           file://opkg/conf/opkg-sdk-x86_64.conf \
+           file://opkg/conf/opkg-sdk-i586.conf \
+	  "
+SRC_URI[md5sum] = "5e888dd46a252cc22686b732fbe486b3"
+SRC_URI[sha256sum] = "ded8f16f55a641672fe1344842998def5f5163d7ebbd5d58ab15c54b04927660"
+
+fakeroot do_deploy () {
+	mkdir -p ${ADT_DEPLOY}
+	rm -f ${ADT_DEPLOY}/adt-installer.tar.bz2
+	rm -rf ${ADT_DIR}
+	mkdir -p ${ADT_DIR}
+	mkdir -p ${WORKDIR}/opkg/conf
+	mkdir -p ${WORKDIR}/opkg/build
+	mkdir -p ${WORKDIR}/scripts
+	mkdir -p ${WORKDIR}/build
+	cp -r ${WORKDIR}/opkg ${ADT_DIR}/
+	cp -r ${WORKDIR}/opkg-0.1.8 ${ADT_DIR}/opkg/build
+	cp -r ${WORKDIR}/scripts ${ADT_DIR}/
+	cp yocto_installer ${ADT_DIR}
+	cp yocto_installer.conf ${ADT_DIR}
+	tar cfj ${WORKDIR}/adt_installer.tar.bz2 adt-installer
+	cp adt_installer.tar.bz2 ${ADT_DEPLOY}
+}
+
+do_patch[noexec] = "1"
+do_configure[noexec] = "1"
+do_compile[noexec] = "1"
+do_package[noexec] = "1"
+do_package_write[noexec] = "1"
+do_package_write_ipk[noexec] = "1"
+do_package_write_rpm[noexec] = "1"
+do_package_write_deb[noexec] = "1"
+
+addtask deploy before do_populate_sysroot after do_install
-- 
1.7.0.4


