Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3B02C4C81118
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:48 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:47:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="589553065"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 03 Jan 2011 15:47:47 -0800
Message-Id: <d339f7b0893420fc4f94d5ed3e0aabdd72b8ef46.1294099429.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Liping Ke <liping.ke@intel.com>
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 05/59] Redirect downloading information to both screen and log file
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
Date: Mon, 03 Jan 2011 23:47:48 -0000
X-Original-Date: Fri, 17 Dec 2010 02:11:41 +0800
X-List-Received-Date: Mon, 03 Jan 2011 23:47:48 -0000

Since now wget output all information to stderr, and we need
to redirect to stdout and then use "tee" to redirect it to
both stdout and logfile.

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 scripts/adt-installer/yocto_installer |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/adt-installer/yocto_installer b/scripts/adt-installer/yocto_installer
index f7ac2db..39e57fd 100755
--- a/scripts/adt-installer/yocto_installer
+++ b/scripts/adt-installer/yocto_installer
@@ -167,12 +167,12 @@ get_qemu_image()
   fi
 
   echo_info "[ADT_INST] Downloading qemu kernel binary: $qemu_kernel"
-  wget "$YOCTOADT_ROOTFS_LOC/$qemu_kernel" -P $LOCAL_DOWNLOAD &>> $YOCTOADT_INSTALL_LOG_FILE
+  wget "$YOCTOADT_ROOTFS_LOC/$qemu_kernel" -P $LOCAL_DOWNLOAD 2>&1 | tee -a "$YOCTOADT_INSTALL_LOG_FILE" 
   check_result
   
   for image_type in $select_rootfs; do
     echo_info "[ADT_INST] Downloading rootfs file: poky-image-$image_type-qemu$1.tar.bz2"
-    wget "$YOCTOADT_ROOTFS_LOC/poky-image-$image_type-qemu$1.tar.bz2" -P $LOCAL_DOWNLOAD &>> $YOCTOADT_INSTALL_LOG_FILE
+    wget "$YOCTOADT_ROOTFS_LOC/poky-image-$image_type-qemu$1.tar.bz2" -P $LOCAL_DOWNLOAD 2>&1 | tee -a "$YOCTOADT_INSTALL_LOG_FILE"
     check_result
   done
 }
-- 
1.7.0.4


