Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 833284C811EC
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:55 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="589553100"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
Message-Id: <0a118c52119760962185d1a99407e7c7fc815e95.1294099430.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Liping Ke <liping.ke@intel.com>
Date: Thu, 30 Dec 2010 01:51:36 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 55/59] Remove old unused renamed files
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
X-List-Received-Date: Mon, 03 Jan 2011 23:47:55 -0000

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 .../adt-installer/scripts/yocto_installer_internal |  215 --------------------
 .../installer/adt-installer/yocto_installer.conf   |   43 ----
 2 files changed, 0 insertions(+), 258 deletions(-)
 delete mode 100755 meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal
 delete mode 100644 meta/recipes-devtools/installer/adt-installer/yocto_installer.conf

diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal b/meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal
deleted file mode 100755
index 87e9e54..0000000
--- a/meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal
+++ /dev/null
@@ -1,215 +0,0 @@
-#!/bin/bash
-
-# Yocto ADT Installer
-#
-# Copyright (C) 2010 Intel Corp.
-#
-# This program is free software; you can redistribute it and/or modify
-# it under the terms of the GNU General Public License version 2 as
-# published by the Free Software Foundation.
-#
-# This program is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
-#
-# You should have received a copy of the GNU General Public License along
-# with this program; if not, write to the Free Software Foundation, Inc.,
-# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
-
-
-
-
-parse_config()
-{
-  INST_ARCH=`uname -m`
-
-  case $INST_ARCH in 
-  i[3-6]86)
-    OPKG_CONFIG_FILE=$YOCTOADT_OPKG_CONF_FILE_32
-    POKY_NATIVE_SYSROOT="$INSTALL_FOLDER/sysroots/i586-pokysdk-linux/"
-    ;;
-  x86_64)
-    OPKG_CONFIG_FILE=$YOCTOADT_OPKG_CONF_FILE_64
-    POKY_NATIVE_SYSROOT="$INSTALL_FOLDER/sysroots/x86_64-pokysdk-linux/"
-    ;;
-  *)
-    echo_info "[ADT_INST] Error: Installation Machine is not supported!"
-    exit -1
-    ;;
-  esac
-}
-
-
-#let us install a qemu-native firstly
-#installation step 2
-install_native_sdk()
-{
-
-echo_info "\nStart installing selected native ADT for archs: $YOCTOADT_TARGETS..."
-
-# where the packages are installed. Currently only / is supported
-NATIVE_INSTALL_DIR="/"
-
-if [ -d "$INSTALL_FOLDER" ]; then
-  echo_info "[ADT_INST] Native ADT installation directory \"$INSTALL_FOLDER\" already exists! Continue installation will override its contents!"
-  confirm_install $1
-fi
-
-#Now begin to install native sdk and extract qemu rootfs which needs privilege rights
-echo_info "#######################################################################"
-echo_info "Please note from this point on installation requires sudo password ..."
-echo_info "#######################################################################"
-username='id -nu'
-#we need to make this directory firstly since opkg need to use it.
-OPKG_LOCK_DIR="$NATIVE_INSTALL_DIR/$OPKG_LIBDIR/opkg"
-if [ ! -d "$OPKG_LOCK_DIR" ]; then
-  #sudo mkdir -p $OPKG_LOCK_DIR
-  su -c "mkdir -p $OPKG_LOCK_DIR" $username
-  echo_info "Successfully create directory $OPKG_LOCK_DIR. "
-#if user delete /opt/poky, while dangling folders there, report error
-elif [ ! -d "$INSTALL_FOLDER" ]; then
-  echo_info "[ADT_INST] Dangling opkg cache folder $OPKG_LOCK_DIR detected. Continue installation will remove the folder!"
-  confirm_install $1
-  #sudo rm -rf $OPKG_LOCK_DIR
-  su -c "rm -rf $OPKG_LOCK_DIR" $username
-  #sudo mkdir -p $OPKG_LOCK_DIR
-  su -c "mkdir -p $OPKG_LOCK_DIR" $username
-#if user are updating installing, just let him/her go, give her/him prompt
-else
-  echo_info "ADT has already been installed. Will update its contents..."
-fi
-
-#first update repository
-OPKG_CMD="sudo $LOCAL_OPKG_LOC/bin/opkg-cl"
-
-echo_info "Updating opkg..."
-$OPKG_CMD -f $OPKG_CONFIG_FILE -o $NATIVE_INSTALL_DIR update &>> $YOCTOADT_INSTALL_LOG_FILE
-echo_info "opkg update process ended..."
-check_result
-
-#install below must sdk-host packages
-OPKG_INSTALL_CMD="$OPKG_CMD --force-overwrite"
-OPKG_INSTALL_NATIVE_CMD="$OPKG_INSTALL_CMD  -f $OPKG_CONFIG_FILE -o $NATIVE_INSTALL_DIR install"
-
-echo_info "Installing pseudo nativesdk ...\n"
-$OPKG_INSTALL_NATIVE_CMD pseudo-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
-check_result
-echo_info "Installing opkg nativesdk ...\n"
-$OPKG_INSTALL_NATIVE_CMD opkg-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
-check_result
-echo_info "Installing pkgconfig nativesdk ...\n"
-$OPKG_INSTALL_NATIVE_CMD pkgconfig-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
-check_result
-
-for native_target_type in $YOCTOADT_TARGETS; do
-  native_target_type=`echo "$native_target_type" | sed -e 's/x86_64/x86-64/' -e 's/x86$/i586/'`
-  echo_info "Installing cross toolchain for $native_target_type ..."
-  echo_info "Installing binutils for $native_target_type ..."
-  $OPKG_INSTALL_NATIVE_CMD binutils-cross-canadian-$native_target_type &>> $YOCTOADT_INSTALL_LOG_FILE
-  check_result
-  echo_info "Installing gcc for $native_target_type ..."
-  $OPKG_INSTALL_NATIVE_CMD gcc-cross-canadian-$native_target_type &>> $YOCTOADT_INSTALL_LOG_FILE
-  check_result
-  echo_info "Installing gdb for $native_target_type ..."
-  $OPKG_INSTALL_NATIVE_CMD gdb-cross-canadian-$native_target_type &>> $YOCTOADT_INSTALL_LOG_FILE
-  check_result
-
-  echo_info "Installing envrionement file for $native_target_type ..."
-  $OPKG_INSTALL_NATIVE_CMD meta-environment-$native_target_type &>> $YOCTOADT_INSTALL_LOG_FILE
-  check_result
-
-done
-
-# Link the ld.so.cache file into the hosts filesystem
-if [ ! -f "$POKY_NATIVE_SYSROOT/etc/ld.so.cache" ]; then 
-echo_info "Link the ld.so.cache file into the host filesystem"
-#sudo ln -s /etc/ld.so.cache $POKY_NATIVE_SYSROOT/etc/ld.so.cache
-su -c " ln -s /etc/ld.so.cache $POKY_NATIVE_SYSROOT/etc/ld.so.cache" $username
-check_result
-fi
-
-if [ "$YOCTOADT_QEMU" == "Y" ] || [ "$YOCTOADT_QEMU" = "y" ]; then
-  echo_info "\nInstalling qemu native ..."
-  $OPKG_INSTALL_NATIVE_CMD qemu-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
-  check_result
-  $OPKG_INSTALL_NATIVE_CMD qemu-helper-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
-  check_result
-fi
-
-if [ "$YOCTOADT_NFS_UTIL" == "Y" ] || [ "$YOCTOADT_NFS_UTIL" == "y" ]; then
-  echo_info "\nInstalling unfs ..."
-  $OPKG_INSTALL_NATIVE_CMD unfs-server-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
-  check_result
-fi
-
-echo_info "\nSuccessfully installed selected native ADT!"
-}
-
-#Need three input params, $1 -- arch_type(arm powerpc x86 mips) #2 -- user installation type
-#customer or scilent
-
-install_target()
-{
-
-select_target_var="\$YOCTOADT_TARGET_$1"
-select_target=`eval echo $select_target_var`
-
-if [ "$select_target" == "Y" ]; then
-
-  # rootfs extraction directory
-  target_sysroot_var="\$YOCTOADT_TARGET_SYSROOT_$1"
-  target_sysroot=`eval echo $target_sysroot_var`
-
-  target_sysroot_image_var="\$YOCTOADT_TARGET_SYSROOT_IMAGE_$1"
-  target_sysroot_image=`eval echo $target_sysroot_image_var`
-  if [ "$target_sysroot" == "" ]; then
-     echo_info "[ADT_INST] Error: YOCTOADT_TARGET_SYSROOT_$1 selection is empty, failed to create target sysroot!"
-     return 1
-  elif [ "$target_sysroot_image" == "" ]; then
-     echo_info "[ADT_INST] Error: YOCTOADT_TARGET_SYSROOT_IMAGE_$1 selection is empty, failed to create target sysroot!"
-     return 1
-  else
-    echo_info "Installing target sysroot for arch: $1, rootfs type: $target_sysroot_image, location: $target_sysroot"
-
-    sysroot_image_name="poky-image-$target_sysroot_image-qemu$1.tar.bz2"
-    echo_info "Extracting rootfs: $sysroot_image_name, using pseudo..."
-
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
-fi
-
-}
-
-
-#Main part
-. scripts/data_define
-. scripts/util
-
-parse_config
-
-#secondly we will start to install native tools
-user_inst_type=$1
-install_native_sdk $user_inst_type
-
-for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
-  install_target $arch_type
-  check_result
-done
-
-
diff --git a/meta/recipes-devtools/installer/adt-installer/yocto_installer.conf b/meta/recipes-devtools/installer/adt-installer/yocto_installer.conf
deleted file mode 100644
index b88a57f..0000000
--- a/meta/recipes-devtools/installer/adt-installer/yocto_installer.conf
+++ /dev/null
@@ -1,43 +0,0 @@
-# Target ROOTFS Download site Configuration, normally it will be
-# in the same repository with those ipks.
-YOCTOADT_ROOTFS_LOC="http://llu-piketon.sh.intel.com/rootfs"
-YOCTOADT_VERSION="0.9+snapshot"
-
-#Host Area
-YOCTOADT_TARGETS="powerpc mips arm x86 x86_64"
-YOCTOADT_QEMU="Y"
-YOCTOADT_NFS_UTIL="Y"
-YOCTOADT_BITBAKE="Y"
-YOCTOADT_METADATA="Y"
-
-#Target Area
-YOCTOADT_TARGET_arm="Y"
-YOCTOADT_ROOTFS_arm="minimal sato"
-YOCTOADT_TARGET_SYSROOT_IMAGE_arm="minimal"
-YOCTOADT_TARGET_SYSROOT_arm="$HOME/test-yocto/arm"
-
-YOCTOADT_TARGET_x86="Y"
-YOCTOADT_ROOTFS_x86="sdk minimal"
-YOCTOADT_TARGET_SYSROOT_IMAGE_x86="sdk"
-YOCTOADT_TARGET_SYSROOT_x86="$HOME/test-yocto/x86"
-
-YOCTOADT_TARGET_powerpc="N"
-YOCTOADT_ROOTFS_powerpc="sdk sato minimal"
-YOCTOADT_TARGET_SYSROOT_IMAGE_powerpc="minimal"
-YOCTOADT_TARGET_SYSROOT_powerpc="$HOME/test-yocto/mips"
-
-YOCTOADT_TARGET_mips="N"
-YOCTOADT_ROOTFS_mips="sdk"
-YOCTOADT_TARGET_SYSROOT_IMAGE_mips="sdk"
-YOCTOADT_TARGET_SYSROOT_mips="$HOME/test-yocto/mips"
-
-YOCTOADT_TARGET_x86_64="N"
-YOCTOADT_ROOTFS_x86_64="sdk minimal"
-YOCTOADT_TARGET_SYSROOT_IMAGE_x86_64="sdk"
-YOCTOADT_TARGET_SYSROOT_x86_64="$HOME/test-yocto/x86_64"
-
-
-
-
-
-
-- 
1.7.0.4


