Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id BEC394C8124C
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:55 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="693216408"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
Message-Id: <547fbbad8f63dc81f3e83f469c1a094b16a2f833.1294099430.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Liping Ke <liping.ke@intel.com>
Date: Thu, 30 Dec 2010 01:54:42 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 56/59] Remove unused rename file
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

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 .../installer/adt-installer/yocto_installer        |  349 --------------------
 1 files changed, 0 insertions(+), 349 deletions(-)
 delete mode 100755 meta/recipes-devtools/installer/adt-installer/yocto_installer

diff --git a/meta/recipes-devtools/installer/adt-installer/yocto_installer b/meta/recipes-devtools/installer/adt-installer/yocto_installer
deleted file mode 100755
index c5c4920..0000000
--- a/meta/recipes-devtools/installer/adt-installer/yocto_installer
+++ /dev/null
@@ -1,349 +0,0 @@
-#/bin/bash
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
-usage ()
-{
-
-  INST_ARCH=`uname -m`
-  INST_OS=`uname -o| tr '[A-Z]' '[a-z]'`
-  INST_KR=`uname -r| tr '[A-Z]' '[a-z]'`
-
-  echo_info "#########################################################################"
-  echo_info "# Welcome to Yocto Application Developement Tools (ADT) Installer"
-  echo_info "# "
-  echo_info "# Host Machine:\t\t\t\t"$INST_ARCH
-  echo_info "# OS info:\t\t\t\t$INST_KR"  
-  echo_info "# Yocto ADT version to be installed:\t$YOCTOADT_VERSION"
-  echo_info "# supported target architectures:\t$YOCTOADT_SUPPORTED_TARGETS"
-  echo_info "# supported target root_fs images:\t$YOCTOADT_SUPPORTED_ROOTFS"
-  echo_info "#########################################################################\n"
-
-  echo_info "Systemwide installation. Installation will occur under $INSTALL_FOLDER\n"
-  echo_info "############################################################################"
-  echo_info "# Your system installation configurations from yocto_installer.conf"
-  echo_info "############################################################################"
-
-  echo_info "# Cross toolchains:\t\t$YOCTOADT_TARGETS"
-  echo_info "# Install Qemu:\t\t\t$YOCTOADT_QEMU"
-  echo_info "# Install NFS utilities:\t$YOCTOADT_NFS_UTIL"
-  #echo_info "# Install bitbake + UI:\t\t$YOCTOADT_BITBAKE"
-  #echo_info "# Install poky metadata:\t$YOCTOADT_METADATA"
-  #echo_info "############################################################################\n"
-
-    echo_info "\n##############################################################################"
-    echo_info "# Your rootfs image(s) and target sysroot selections from yocto_installer.conf"
-    echo_info "##############################################################################"
-prompt=1
-for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
-  download_images $arch_type $prompt
-done
-    echo_info "############################################################################\n"
-  select_install_type
-}
-
-validate_config()
-{
-
-  for selected_arch_type in $YOCTOADT_TARGETS; do
-    found=0
-    for supported_arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
-      if [ "$selected_arch_type" == "$supported_arch_type" ]; then
-        found=1
-        break
-      fi
-    done
-    if [ $found == 0 ]; then
-       echo_info "[ADT_INST] Error: YOCTADT_TARGETS in yocto_installer.conf contains invalid entries: $YOCTOADT_TARGETS. Valid values are: $YOCTOADT_SUPPORTED_TARGETS"
-      return 1
-    fi
-  done
-
-  for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
-
-    select_target_var="\$YOCTOADT_TARGET_$arch_type"
-    select_target=`eval echo $select_target_var`
-
-    if [ "$select_target" != "Y" ] || [ "$selected_target" != "y" ]; then
-      continue;
-    fi
-
-    target_sysroot_image_var="\$YOCTOADT_TARGET_SYSROOT_IMAGE_$arch_type"
-    target_sysroot_image=`eval echo $target_sysroot_image_var`
-
-
-    select_rootfs_var="\$YOCTOADT_ROOTFS_$arch_type"
-    select_rootfs=`eval echo $select_rootfs_var`
-
-    for image_type in $select_rootfs; do
-#validate rootfs type defined in YOCTOADT_ROOTFS_{ARCH} is valid and in YOCTOADT_SUPPORTED_ROOTFS
-      found=0
-      for supported_rootfs_type in $YOCTOADT_SUPPORTED_ROOTFS; do
-        if [ "$image_type" == "$supported_rootfs_type" ]; then
-          found=1
-          break
-        fi
-      done
-      if [ $found == 0 ]; then
-#the rootfs type listed for downloading is not valid
-        echo_info "[ADT_INST] Error: Selected YOCTOADT_ROOTFS_$arch_type value: $image_type, is not valid! Valid values are: $YOCTOADT_SUPPORTED_ROOTFS "
-        return 1
-      fi
-    done
-
-    found=0
-    for image_type in $select_rootfs; do
-#validate that rootfs to be extracted must be in the item: YOCTOADT_ROOTFS_${ARCH}
-      if [ "$target_sysroot_image" == "$image_type" ]; then
-        found=1
-        break
-      fi
-    done
-# the rootfs image to be extracted is not selected
-    if [ $found == 0 ]; then
-      echo_info "[ADT_INST] Error: YOCTOADT_TARGET_SYSROOT_IMAGE_$arch_type selection: $target_sysroot_image is not included in YOCTOADT_ROOTFS_$arch_type selections: $select_rootfs"
-      return 1
-    fi
-  done
-
-  return 0
-}
-
-
-#detect opkg installed or not, for installing sdk, we will use
-#this installed local opkg
-install_opkg()
-{
-if [ ! -x "$LOCAL_OPKG_LOC/bin/opkg-cl" ]; then
-  echo_info "OPKG is not setup, setting up opkg in local, which is required for installing yocto ADT...\n"
-
-  if [ -d $LOCAL_OPKG_LOC ]; then
-    echo_info "Deleting old OPKG folder, which doesn't contain executables... "
-    rm -rf $LOCAL_OPKG_LOC
-  fi
-
-  parent_folder=`eval echo $PWD`
-  cd $LOCAL_OPKG_FOLDER
-  check_result
-
-  opkg_source_dir=`ls -d opkg-*`
-
-  if [ $opkg_source_dir == "" ]; then
-    echo_info "[ADT_INST] Error: OPKG source directory is not found!"
-    exit -1
-  fi
-
-  cd $opkg_source_dir
-  check_result
-
-  echo_info "Configure opkg ...\n"
-  ./configure --prefix=$parent_folder/$LOCAL_OPKG_LOC --with-opkglibdir=$OPKG_LIBDIR --disable-curl --disable-ssl-curl --disable-gpg --disable-shave >> $parent_folder/$YOCTOADT_INSTALL_LOG_FILE
-  check_result
-
-  echo_info "Make opkg ...\n"
-  make &>> $parent_folder/$YOCTOADT_INSTALL_LOG_FILE
-  check_result
-
-  echo_info "Make Install opkg ...\n"
-  make install &>> $parent_folder/$YOCTOADT_INSTALL_LOG_FILE
-  #if meet error when installing opkg, cancel the installation
-  check_result
-
-  cd $parent_folder
-  echo_info "Successfully installed OPKG.\n"
-fi
-}
-
-confirm_download()
-{
-#avoid repeated reminding
-if [ "$override_oldfile" == 1 ]; then
-  return $pre_result
-else
-  override_oldfile=1
-fi
-
-while true; do
-  #echo_info "[ADT_INST] Files [$1] already exists. If you continue downloading, old files will be overrided."
-  #echo_info "[ADT_INST] Further prompts will not be given if there're more existing files to be downloaded."
-  #echo_info "[ADT_INST] Do you want to continue downloading? Please enter Y/N:"
-  echo_info "[ADT_INST] File [$1] already exists, which means you've downloaded the qemu kernel and rootfs file(s) for the architecture before.  If you continue downloading, old files will be overridden.  Do you want to continue downloading? Please enter Y/N:"
-  read YOCTOADT_INSTALL
-  YOCTOADT_INSTALL=`tr '[a-z]' '[A-Z]'<<<"$YOCTOADT_INSTALL"`
-  if [ "$YOCTOADT_INSTALL" == "Y" ]; then
-    pre_result=0
-    return 0
-  elif [ "$YOCTOADT_INSTALL" == "N" ]; then
-    pre_result=1
-    return 1
-  fi
-done
-}
-
-download_file()
-{
-if [ -f "$LOCAL_DOWNLOAD/$1" ]; then
-  confirm_download $1
-  result="$?"
-  if [ ! "$result" == "0" ]; then
-    return
-  else
-    echo "Removing old existing file [$1]"
-    rm -rf "$LOCAL_DOWNLOAD/$1" 
-  fi
-fi
-echo_info "Downloading file: $1..."
-wget "$YOCTOADT_ROOTFS_LOC/$1" -P $LOCAL_DOWNLOAD --progress=bar:force 2>&1 | tee -a "$YOCTOADT_INSTALL_LOG_FILE" 
-}
-
-
-
-#Need two input params, $1 -- arch_type(arm powerpc x86 mips) $2 rootfs_image_type (a list of sdk sato minimal lsb)
-get_qemu_image()
-{
-  if [ "$1" == "x86" ]; then
-    qemu_kernel="bzImage-qemu$1.bin"
-  elif [ "$1" == "arm" ]; then
-    qemu_kernel="zImage-qemu$1.bin"
-  else
-    qemu_kernel="zImage-qemu$1.bin"
-  fi
-
-  #echo_info "[ADT_INST] Downloading qemu kernel binary: $qemu_kernel"
-  download_file $qemu_kernel
-  check_result
-  
-  for image_type in $select_rootfs; do
-    #echo_info "[ADT_INST] Downloading rootfs file: poky-image-$image_type-qemu$1.tar.bz2"
-    filename="poky-image-$image_type-qemu$1.tar.bz2"
-    download_file $filename
-    check_result
-  done
-}
-
-download_images()
-{
-  select_target_var="\$YOCTOADT_TARGET_$1"
-  select_target=`eval echo $select_target_var`
-
-  if [ "$select_target" == "Y" ]; then
-    select_rootfs_var="\$YOCTOADT_ROOTFS_$1"
-    select_sysroot_image_var="\$YOCTOADT_TARGET_SYSROOT_IMAGE_$1"
-    select_sysroot_var="\$YOCTOADT_TARGET_SYSROOT_$1"
-    select_rootfs=`eval echo $select_rootfs_var`
-    select_sysroot_image=`eval echo $select_sysroot_image_var`
-    select_sysroot=`eval echo $select_sysroot_var`
-
-    if [ $2 ]; then
-    #echo_info "\n############################################################################"
-    #echo_info "# To be downloaded rootfs image details defined in yocto_installer.conf"
-    #echo_info "############################################################################"
-    echo_info "# Target architecture:\t\t$1"
-    echo_info "# Root_fs images:\t\t$select_rootfs"
-    echo_info "# Target sysroot image:\t\t$select_sysroot_image"
-    echo_info "# Target sysroot dir:\t\t$select_sysroot"
-    echo_info "\n"
-    #echo_info "############################################################################\n"
-    else
-    get_qemu_image $1 $select_rootfs
-    fi
-  fi
-}
-
-
-
-
-#Main body of installer
-
-clear
-
-run_path=`dirname $0`
-cd $run_path
-
-if [ ! -f "scripts/util" ]; then
-  echo -e "[ADT_INST] Error: Script file: util, can't be found under: $run_path!"
-  echo -e "\n#############################################################################"
-  echo -e "# Meet error(s) when installing Yocto ADT! Please check log file for details. "
-  echo -e "#############################################################################\n"
-  exit -1
-fi
-
-if [ ! -f "scripts/yocto_installer_internal" ]; then
-  echo -e "[ADT_INST] Error: Script file: yocto_installer_internal, can't be found under: $run_path!"
-  echo -e "\n#############################################################################"
-  echo -e "# Meet error(s) when installing Yocto ADT! Please check log file for details. "
-  echo -e "#############################################################################\n"
-  exit -1
-fi
-
-config_file="yocto_installer.conf"
-if [ ! -f "$config_file" ]; then
-  echo_info "[ADT_INST] Error: Installation configuration file: yocto_installer.conf is not found!\n"
-  echo_info "\n##################################################################################"
-  echo_info "# Meet error(s) when installing Yocto ADT. Please check log file for details. "
-  echo_info "##################################################################################\n"
-  exit -1
-fi
-
-. scripts/data_define
-. scripts/util
-
-
-if [ -f "$YOCTOADT_INSTALL_LOG_FILE" ]; then
-  rm $YOCTOADT_INSTALL_LOG_FILE
-fi
-
-
-usage
-
-user_inst_type="$?"
-echo "$user_inst_type"
-
-validate_config
-check_result
-#firstly we need to install opkg host
-install_opkg
-
-#Create folders for holding rootfs/qemu images
-if [ ! -d "$LOCAL_DOWNLOAD" ]; then
-  echo_info "Creating new images downloading folder: $LOCAL_DOWNLOAD ..."
-  mkdir -p $LOCAL_DOWNLOAD
-fi
-
-#downloading required qemu images/rootfs
-if [ "$user_inst_type" == "0" ]; then
-  override_oldfile=1
-else
-  override_oldfile=0
-fi
-
-for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
-  download_images $arch_type
-done
-
-scripts/yocto_installer_internal $user_inst_type
-
-result="$?"
-#echo_info "\n############################################################"
-if [ "$result" == "0" ]; then
-  echo_info "\n############################################################"
-  echo_info "# Yocto ADT has been successfully installed."
-  echo_info "############################################################\n"
-fi
-
-- 
1.7.0.4


