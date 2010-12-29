Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id ED19A4C81256
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:55 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="693216409"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
Message-Id: <35ee22889f1d62357a021c96f9dbc948e6eb15c5.1294099430.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Liping Ke <liping.ke@intel.com>
Date: Thu, 30 Dec 2010 03:33:40 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 58/59] Adjust the code according to installation configuration file changes.
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

Now no "Y" marks represent whether to install the target or not,
the corresponding code needs to be changed too.

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 .../adt-installer/scripts/adt_installer_internal   |   71 +++++++++-----------
 1 files changed, 33 insertions(+), 38 deletions(-)

diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal b/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
index e1b9e01..13e89e6 100755
--- a/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
@@ -148,47 +148,42 @@ echo_info "\nSuccessfully installed selected native ADT!"
 install_target()
 {
 
-select_target_var="\$YOCTOADT_TARGET_$1"
-select_target=`eval echo $select_target_var`
-
-if [ "$select_target" == "Y" ]; then
-
-  # rootfs extraction directory
-  target_sysroot_var="\$YOCTOADT_TARGET_SYSROOT_LOC_$1"
-  target_sysroot=`eval echo $target_sysroot_var`
-
-  target_sysroot_image_var="\$YOCTOADT_TARGET_SYSROOT_IMAGE_$1"
-  target_sysroot_image=`eval echo $target_sysroot_image_var`
-  if [ "$target_sysroot" == "" ]; then
-     echo_info "[ADT_INST] Error: YOCTOADT_TARGET_SYSROOT__LOC_$1 selection is empty, failed to create target sysroot!"
-     return 1
-  elif [ "$target_sysroot_image" == "" ]; then
-     echo_info "[ADT_INST] Error: YOCTOADT_TARGET_SYSROOT_IMAGE_$1 selection is empty, failed to create target sysroot!"
-     return 1
-  else
-    echo_info "Installing target sysroot for arch: $1, rootfs type: $target_sysroot_image, location: $target_sysroot"
-
-    sysroot_image_name="poky-image-$target_sysroot_image-qemu$1.tar.bz2"
+# rootfs extraction directory
+target_sysroot_var="\$YOCTOADT_TARGET_SYSROOT_LOC_$1"
+target_sysroot=`eval echo $target_sysroot_var`
+
+if [ "$target_sysroot" == "" ]; then
+  return 0
+fi
+
+target_sysroot_image_var="\$YOCTOADT_TARGET_SYSROOT_IMAGE_$1"
+target_sysroot_image=`eval echo $target_sysroot_image_var`
+if [ "$target_sysroot_image" == "" ]; then
+  echo_info "[ADT_INST] Error: YOCTOADT_TARGET_SYSROOT_IMAGE_$1 selection is empty, failed to create target sysroot!"
+  return 1
+fi
+
+echo_info "Installing target sysroot for arch: $1, rootfs type: $target_sysroot_image, location: $target_sysroot"
+
+sysroot_image_name="poky-image-$target_sysroot_image-qemu$1.tar.bz2"
     #echo_info "Extracting rootfs: $sysroot_image_name, using pseudo..."
 
-    scripts/extract_rootfs $sysroot_image_name $target_sysroot $POKY_NATIVE_SYSROOT $user_inst_type
-    check_result
-
-    echo_info "Updating environment script with target sysroot location."
-    if [ "$1" == "x86"  ]; then
-      env_filename=`ls $INSTALL_FOLDER/environment-setup-i586*`
-    else
-      env_filename=`ls $INSTALL_FOLDER/environment-setup-$1*`
-    fi
-    if [ ! -z "$env_filename" ]; then
-      sudo sed -i -e "s%##SDKTARGETSYSROOT##%$target_sysroot%g" $env_filename
-    else
-      echo_info "[ADT_INST] Error: Failed to find environment script for arch: $1"
-      return 1 
-    fi
-
-  fi
+scripts/extract_rootfs $sysroot_image_name $target_sysroot $POKY_NATIVE_SYSROOT $user_inst_type
+check_result
+
+echo_info "Updating environment script with target sysroot location."
+if [ "$1" == "x86"  ]; then
+  env_filename=`ls $INSTALL_FOLDER/environment-setup-i586*`
+else
+  env_filename=`ls $INSTALL_FOLDER/environment-setup-$1*`
 fi
+if [ ! -z "$env_filename" ]; then
+  sudo sed -i -e "s%##SDKTARGETSYSROOT##%$target_sysroot%g" $env_filename
+else
+  echo_info "[ADT_INST] Error: Failed to find environment script for arch: $1"
+  return 1 
+fi
+
 
 }
 
-- 
1.7.0.4


