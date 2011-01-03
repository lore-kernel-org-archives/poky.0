Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 110234C811EB
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:56 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="693216410"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
Message-Id: <ca36bb08a50647e46c4811df0484756102851cee.1294099430.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Jessica Zhang <jessica.zhang@intel.com>
Date: Mon, 3 Jan 2011 14:51:19 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 59/59] Move version info to the beginning of conf file and fix a minor typo in adt_installer.conf
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

Signed-off-by: Jessica Zhang <jessica.zhang@intel.com>
---
 .../installer/adt-installer/adt_installer.conf     |    2 +-
 .../installer/adt-installer_1.0.bb                 |    4 +++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-devtools/installer/adt-installer/adt_installer.conf b/meta/recipes-devtools/installer/adt-installer/adt_installer.conf
index 4b9213c..b65fe5d 100644
--- a/meta/recipes-devtools/installer/adt-installer/adt_installer.conf
+++ b/meta/recipes-devtools/installer/adt-installer/adt_installer.conf
@@ -23,7 +23,7 @@ YOCTOADT_TARGET_SYSROOT_IMAGE_arm="minimal"
 #The location where the target sysroot will be setup
 YOCTOADT_TARGET_SYSROOT_LOC_arm="$HOME/test-yocto/arm"
 
-#Here's another example for setting up target arch of x86, but uncommenting it will trigger the installer to download and setup 2 sysroot environment for 2 target arches: arm and x86.  If you want to add more target arch support, you can append more entries by following these samples
+#Here's another example for setting up target arch of x86, by uncommenting it will trigger the installer to download and setup 2 sysroot environment for 2 target arches: arm and x86.  If you want to add more target arch support, you can append more entries by following these samples
 #YOCTOADT_ROOTFS_x86="sdk"
 #YOCTOADT_TARGET_SYSROOT_IMAGE_x86="sdk"
 #YOCTOADT_TARGET_SYSROOT_LOC_x86="$HOME/test-yocto/x86"
diff --git a/meta/recipes-devtools/installer/adt-installer_1.0.bb b/meta/recipes-devtools/installer/adt-installer_1.0.bb
index d8d87b7..23eb4ec 100644
--- a/meta/recipes-devtools/installer/adt-installer_1.0.bb
+++ b/meta/recipes-devtools/installer/adt-installer_1.0.bb
@@ -40,7 +40,9 @@ fakeroot do_deploy () {
 	cp -r scripts ${ADT_DIR}/
 	cp adt_installer ${ADT_DIR}
 	cp adt_installer.conf ${ADT_DIR}
-	echo 'YOCTOADT_VERSION=${SDK_VERSION}' >> ${ADT_DIR}/adt_installer.conf
+	echo 'YOCTOADT_VERSION=${SDK_VERSION}' > ${ADT_DIR}/temp.conf
+        cat ${ADT_DIR}/adt_installer.conf >> ${ADT_DIR}/temp.conf
+        mv ${ADT_DIR}/temp.conf ${ADT_DIR}/adt_installer.conf
 	tar cfj adt_installer.tar.bz2 adt-installer
 	cp ${WORKDIR}/adt_installer.tar.bz2 ${ADT_DEPLOY}
 }
-- 
1.7.0.4


