Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id BD3024C8086F
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:47 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:47:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="589553062"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 03 Jan 2011 15:47:46 -0800
Message-Id: <a06769b01d7b18894ad413daa8159f74c90f6c0f.1294099429.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Liping Ke <liping.ke@intel.com>
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 01/59] Add initial yocto adt installer script
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
X-Original-Date: Fri, 10 Dec 2010 09:09:33 +0800
X-List-Received-Date: Mon, 03 Jan 2011 23:47:48 -0000

Below patches are for installing Yocto Application Development Tools.
opkg files include both 32 bit and 64 bit installation machine.
Installer entry script file is yocto_installer. A hidden .config files
are for holding parameters which are unlikely to be changed by end users

Signed-off-by: Liping Ke <liping.ke@intel.com>
Signed-off-by: Jessica Zhang<jessica.zhang@intel.com>
---
 scripts/adt-installer/.config                  |   35 ++++
 scripts/adt-installer/opkg-sdk-i586.conf       |   17 ++
 scripts/adt-installer/opkg-sdk-x86_64.conf     |   17 ++
 scripts/adt-installer/util                     |   70 +++++++
 scripts/adt-installer/yocto_installer          |  250 ++++++++++++++++++++++++
 scripts/adt-installer/yocto_installer.conf     |   32 +++
 scripts/adt-installer/yocto_installer_internal |  222 +++++++++++++++++++++
 7 files changed, 643 insertions(+), 0 deletions(-)
 create mode 100644 scripts/adt-installer/.config
 create mode 100644 scripts/adt-installer/opkg-sdk-i586.conf
 create mode 100644 scripts/adt-installer/opkg-sdk-x86_64.conf
 create mode 100644 scripts/adt-installer/util
 create mode 100755 scripts/adt-installer/yocto_installer
 create mode 100644 scripts/adt-installer/yocto_installer.conf
 create mode 100755 scripts/adt-installer/yocto_installer_internal

diff --git a/scripts/adt-installer/.config b/scripts/adt-installer/.config
new file mode 100644
index 0000000..8c997c3
--- /dev/null
+++ b/scripts/adt-installer/.config
@@ -0,0 +1,35 @@
+# General yocto adt installation configuration,
+# normal user needn't change this section
+
+YOCTOADT_VERION="1.0"
+
+# List all supported root fs types and target types,
+# it will be used in user configuration validity checking
+YOCTOADT_SUPPORTED_ROOTFS="minimal sato sdk lsb"
+YOCTOADT_SUPPORTED_TARGETS="x86 x86_64 arm powerpc mips"
+
+
+# Different host (32 bit or 64 bit) will have different opkg
+# configuration files
+YOCTOADT_OPKG_CONF_FILE_32="opkg-sdk-i586.conf"
+YOCTOADT_OPKG_CONF_FILE_64="opkg-sdk-x86_64.conf"
+
+# yocto adt installation log file
+YOCTOADT_INSTALL_LOG_FILE="yoctoadt_installer.log"
+
+# Target ROOTFS Download site Configuration, normally it will be
+# in the same repository with those ipks.
+YOCTOADT_ROOTFS_LOC="http://llu-piketon.sh.intel.com/rootfs"
+
+# Temp folders holding qemu/rootfs downloaded images
+# It will be put into the installation folder
+LOCAL_DOWNLOAD="./download_image"
+
+# following are for testing in my machine. it will be moved when
+# going into code repository
+export http_proxy=""
+export HTTP_PROXY=""
+export HTTPS_PROXY=""
+export https_proxy=""
+export ftp_proxy=""
+export FTP_PROXY=""
diff --git a/scripts/adt-installer/opkg-sdk-i586.conf b/scripts/adt-installer/opkg-sdk-i586.conf
new file mode 100644
index 0000000..b1d82fe
--- /dev/null
+++ b/scripts/adt-installer/opkg-sdk-i586.conf
@@ -0,0 +1,17 @@
+arch all 1
+arch any 6
+arch noarch 11
+arch i586-nativesdk 16
+arch i586-i586-canadian 21
+arch i586-arm-canadian 26
+arch i586-powerpc-canadian 31
+arch i586-mips-canadian 36
+arch i586-x86_64-canadian 41
+src oe http://llu-piketon.sh.intel.com/ipk_sdk
+src oe-all http://llu-piketon.sh.intel.com/ipk_sdk/all
+src oe-i586-nativesdk http://llu-piketon.sh.intel.com/ipk_sdk/i586-nativesdk
+src oe-i586-i586-canadian http://llu-piketon.sh.intel.com/ipk_sdk/i586-i586-canadian
+src oe-i586-arm-canadian http://llu-piketon.sh.intel.com/ipk_sdk/i586-arm-canadian
+src oe-i586-powerpc-canadian http://llu-piketon.sh.intel.com/ipk_sdk/i586-powerpc-canadian
+src oe-i586-mips-canadian http://llu-piketon.sh.intel.com/ipk_sdk/i586-mips-canadian
+src oe-i586-x86_64-canadian http://llu-piketon.sh.intel.com/ipk_sdk/i586-x86_64-canadian
diff --git a/scripts/adt-installer/opkg-sdk-x86_64.conf b/scripts/adt-installer/opkg-sdk-x86_64.conf
new file mode 100644
index 0000000..4e36c8a
--- /dev/null
+++ b/scripts/adt-installer/opkg-sdk-x86_64.conf
@@ -0,0 +1,17 @@
+arch all 1
+arch any 6
+arch noarch 11
+arch x86_64-nativesdk 16
+arch x86_64-i586-canadian 21
+arch x86_64-arm-canadian 26
+arch x86_64-powerpc-canadian 31
+arch x86_64-mips-canadian 36
+arch x86_64-x86_64-canadian 41
+src oe http://llu-piketon.sh.intel.com/ipk_sdk
+src oe-all http://llu-piketon.sh.intel.com/ipk_sdk/all
+src oe-x86_64-nativesdk http://llu-piketon.sh.intel.com/ipk_sdk/x86_64-nativesdk
+src oe-x86_64-i586-canadian http://llu-piketon.sh.intel.com/ipk_sdk/x86_64-i586-canadian
+src oe-x86_64-arm-canadian http://llu-piketon.sh.intel.com/ipk_sdk/x86_64-arm-canadian
+src oe-x86_64-powerpc-canadian http://llu-piketon.sh.intel.com/ipk_sdk/x86_64-powerpc-canadian
+src oe-x86_64-mips-canadian http://llu-piketon.sh.intel.com/ipk_sdk/x86_64-mips-canadian
+src oe-x86_64-x86_64-canadian http://llu-piketon.sh.intel.com/ipk_sdk/x86_64-x86_64-canadian
diff --git a/scripts/adt-installer/util b/scripts/adt-installer/util
new file mode 100644
index 0000000..612f574
--- /dev/null
+++ b/scripts/adt-installer/util
@@ -0,0 +1,70 @@
+#!/bin/bash
+
+# Yocto ADT Installer
+#
+# Copyright (C) 2010 Intel Corp.
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+
+echo_info()
+{
+  echo -e $1 | tee -a $YOCTOADT_INSTALL_LOG_FILE
+}
+
+confirm_install()
+{
+# below are prompt, make sure user still want to install even meet
+# some prompts
+
+while true; do
+  echo_info "[ADT_INST] Do you want to go on installing? Please enter Y/N:"
+  read YOCTOADT_INSTALL
+  YOCTOADT_INSTALL=`tr '[a-z]' '[A-Z]'<<<"$YOCTOADT_INSTALL"`
+  if [ "$YOCTOADT_INSTALL" == "Y" ]; then
+    break
+  elif [ "$YOCTOADT_INSTALL" == "N" ]; then
+    exit -1
+  fi
+done
+}
+
+
+confirm_install_v2()
+{
+
+while true; do
+  echo_info -e "[ADT_INST] Do you want to go on extracting rootfs? Please enter Y/N:"
+  read YOCTOADT_INSTALL
+  YOCTOADT_INSTALL=`tr '[a-z]' '[A-Z]'<<<"$YOCTOADT_INSTALL"`
+  if [ "$YOCTOADT_INSTALL" == "Y" ]; then
+    return 0
+  elif [ "$YOCTOADT_INSTALL" == "N" ]; then
+    return 1
+  fi
+done
+}
+
+check_result()
+{
+  result="$?"
+  if [ ! "$result" == "0" ]; then
+    echo_info "Error: Terminate installation process due to errors!"
+    exit -1
+  fi
+}
+
+
+
+LOCAL_OPKG_LOC="./opkg"
+OPKG_LIBDIR="/var/lib"
diff --git a/scripts/adt-installer/yocto_installer b/scripts/adt-installer/yocto_installer
new file mode 100755
index 0000000..cf2c565
--- /dev/null
+++ b/scripts/adt-installer/yocto_installer
@@ -0,0 +1,250 @@
+#!/bin/bash
+# Yocto ADT Installer
+#
+# Copyright (C) 2010 Intel Corp.
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+
+
+
+usage ()
+{
+
+  INST_ARCH=`uname -m`
+  INST_OS=`uname -o| tr '[A-Z]' '[a-z]'`
+  INST_KR=`uname -r| tr '[A-Z]' '[a-z]'`
+
+  echo_info "#########################################################################"
+  echo_info "# Welcome to Yocto Application Developement Tools (ADT) Installer"
+  echo_info "# "
+  echo_info "# Host Machine:\t\t\t\t"$INST_ARCH
+  echo_info "# OS info:\t\t\t\t$INST_KR"  
+  echo_info "# Yocto ADT version to be installed:\t$YOCTOADT_VERION"
+  echo_info "# supported target architectures:\t$YOCTOADT_SUPPORTED_TARGETS"
+  echo_info "# supported target root_fs images:\t$YOCTOADT_SUPPORTED_ROOTFS"
+  echo_info "#########################################################################\n"
+
+  echo_info "Systemwide installation. Installation will occur under /opt/poky\n"
+  echo_info "#########################################################################"
+  echo_info "#Please confirm below installation configurations from yocto_installer.conf"
+  echo_info "#########################################################################"
+
+  echo_info "# Cross toolchains:\t\t$YOCTOADT_TARGETS"
+  echo_info "# Install Qemu:\t\t\t$YOCTOADT_QEMU"
+  echo_info "# Install NFS utilities:\t$YOCTOADT_NFS_UTIL"
+  echo_info "# Install bitbake + UI:\t\t$YOCTOADT_BITBAKE"
+  echo_info "# Install poky metadata:\t$YOCTOADT_METADATA"
+  echo_info "#########################################################################\n"
+
+  confirm_install
+}
+
+validate_config()
+{
+
+  for selected_arch_type in $YOCTOADT_TARGETS; do
+    found=0
+    for supported_arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
+      if [ "$selected_arch_type" == "$supported_arch_type" ]; then
+        found=1
+        break
+      fi
+    done
+    if [ $found == 0 ]; then
+      echo_info "[ADT_INST] selected archs defined in Host Area Item: YOCTOADT_TARGETS is not valid!"
+      return 1
+    fi
+  done
+
+  for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
+
+    select_target_var="\$YOCTOADT_TARGET_$arch_type"
+    select_target=`eval echo $select_target_var`
+
+    if [ "$select_target" == "" ]; then
+      continue;
+    fi
+
+    target_sysroot_image_var="\$YOCTOADT_TARGET_SYSROOT_IMAGE_$arch_type"
+    target_sysroot_image=`eval echo $target_sysroot_image_var`
+
+
+    select_rootfs_var="\$YOCTOADT_ROOTFS_$arch_type"
+    select_rootfs=`eval echo $select_rootfs_var`
+
+    for image_type in $select_rootfs; do
+#validate rootfs type defined in YOCTOADT_ROOTFS_{ARCH} is valid and in YOCTOADT_SUPPORTED_ROOTFS
+      found=0
+      for supported_rootfs_type in $YOCTOADT_SUPPORTED_ROOTFS; do
+        if [ "$image_type" == "$supported_rootfs_type" ]; then
+          found=1
+          break
+        fi
+      done
+      if [ $found == 0 ]; then
+#the rootfs type listed for downloading is not valid
+        echo_info "[ADT_INST] selected rootfs type: $image_type defined in Item: YOCTOADT_ROOTFS_$arch_type is not valid!"
+        return 1
+      fi
+    done
+
+    found=0
+    for image_type in $select_rootfs; do
+#validate that rootfs to be extracted must be in the item: YOCTOADT_ROOTFS_${ARCH}
+      if [ "$target_sysroot_image" == "$image_type" ]; then
+        found=1
+        break
+      fi
+    done
+# the rootfs image to be extracted is not selected
+    if [ $found == 0 ]; then
+      echo_info "[ADT_INST] ROOTFS image YOCTOADT_TARGET_SYSROOT_IMAGE_$arch_type to be extracted is not selected in item: YOCTOADT_ROOTFS_$arch_type"
+      return 1
+    fi
+  done
+
+  return 0
+}
+
+
+#detect opkg installed or not, for installing sdk, we will use
+#this installed local opkg
+install_opkg()
+{
+if [ ! -x "$LOCAL_OPKG_LOC/bin/opkg-cl" ]; then
+  echo_info "[ADT_INST]  OPKG is not setup. Setting it up is required for installing yocto ADT.\n"
+  echo_info "[ADT_INST]  We're now setting up opkg in local ...\n "
+  if [ ! -f opkg-*.gz ]; then
+    echo_info "[ADT_INST] Error: OPKG source tarball is not found!"
+    exit -1
+  fi
+
+  if [ -d "$LOCAL_OPKG_LOC" ]; then
+    echo_info "[ADT_INST] Delete old OPKG installation folders. "
+    rm -rf $LOCAL_OPKG_LOC
+  fi
+
+  echo_info "[ADT_INST] Untar opkg source tarball ...\n"  
+  tar zvfx opkg-*.gz >> $YOCTOADT_INSTALL_LOG_FILE
+  check_result
+  cd opkg-*
+  echo_info "[ADT_INST] Configure opkg ...\n"
+  ./configure --prefix=${PWD}/../$LOCAL_OPKG_LOC --with-opkglibdir=$OPKG_LIBDIR --disable-curl --disable-ssl-curl --disable-gpg --disable-shave >> $YOCTOADT_INSTALL_LOG_FILE
+  check_result
+  echo_info "[ADT_INST] Make opkg ...\n"
+  make >> $YOCTOADT_INSTALL_LOG_FILE
+  check_result
+  echo_info "[ADT_INST] Make Install opkg ...\n"
+  make install >> $YOCTOADT_INSTALL_LOG_FILE
+  #if meet error when installing opkg, cancel the installation
+  check_result
+  cd ..
+  echo_info "[ADT_INST] Successfully installed OPKG.\n"
+fi
+}
+
+
+
+#Need two input params, $1 -- arch_type(arm powerpc x86 mips) $2 rootfs_image_type (a list of sdk sato minimal lsb)
+get_qemu_image()
+{
+  echo_info "[ADT_INST] Downloading selected qemu binary for ARCH_$1 ..."
+  wget "$YOCTOADT_ROOTFS_LOC/bzImage-qemu$1.bin" -P $LOCAL_DOWNLOAD >> $YOCTOADT_INSTALL_LOG_FILE
+  check_result
+  
+  for image_type in $2; do
+    echo_info "[ADT_INST] Downloading selected rootfs for ARCH_$1, rootfs_$2"
+    wget "$YOCTOADT_ROOTFS_LOC/poky-image-$2-qemu$1.tar.bz2" -P $LOCAL_DOWNLOAD >> $YOCTOADT_INSTALL_LOG_FILE
+    check_result
+  done
+}
+
+download_images()
+{
+  select_target_var="\$YOCTOADT_TARGET_$1"
+  select_target=`eval echo $select_target_var`
+
+  if [ "$select_target" == "Y" ]; then
+    select_rootfs_var="\$YOCTOADT_ROOTFS_$1"
+    select_sysroot_image_var="\$YOCTOADT_TARGET_SYSROOT_IMAGE_$1"
+    select_sysroot_var="\$YOCTOADT_TARGET_SYSROOT_$1"
+    select_rootfs=`eval echo $select_rootfs_var`
+    select_sysroot_image=`eval echo $select_sysroot_image_var`
+    select_sysroot=`eval echo $select_sysroot_var`
+
+    echo_info "#########################################################################"
+    echo_info "#Please confirm below installation configurations from yocto_installer.conf"
+    echo_info "#########################################################################"
+    echo_info "# Target architecture:\t\t$1"
+    echo_info "# Downloading rootfs images:\t$select_rootfs"
+    echo_info "# Extract sysroot image:\t$select_sysroot_image"
+    echo_info "# Install sysroot dir:\t\t$select_sysroot"
+    echo_info "#########################################################################\n"
+
+    confirm_install
+
+    get_qemu_image $1 $select_rootfs
+  fi
+}
+
+
+
+
+#Main body of installer
+
+clear
+source .config
+source yocto_installer.conf
+
+. util
+
+if [ -f "$YOCTOADT_INSTALL_LOG_FILE" ]; then
+  rm $YOCTOADT_INSTALL_LOG_FILE
+fi
+
+usage
+validate_config
+check_result
+#firstly we need to install opkg host
+install_opkg
+
+#Create folders for holding rootfs/qemu images
+if [ ! -d "$LOCAL_DOWNLOAD" ]; then
+  echo_info "[ADT_INST] create new folders $LOCAL_DOWNLOAD for downloading images!"
+  mkdir -p $LOCAL_DOWNLOAD
+else
+  echo_info "[ADT_INST] $LOCAL_DOWNLOAD already exists, continue installation will override its contents!"
+  confirm_install
+  rm -rf $LOCAL_DOWNLOAD
+  mkdir -p $LOCAL_DOWNLOAD
+fi
+
+#downloading required qemu images/rootfs
+for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
+  download_images $arch_type
+done
+
+#Now begin to install native sdk and extract qemu rootfs which needs privilege rights
+echo_info "[ADT_INST] Continuing installation requires sudo password ..."
+
+sudo ./yocto_installer_internal
+result="$?"
+echo_info "\n############################################################"
+if [ "$result" == "0" ]; then
+  echo_info "# Yocto ADT has been successfully installed."
+else
+  echo_info "# Meet error when installing Yocto ADT. "
+fi
+echo_info "############################################################\n"
+
diff --git a/scripts/adt-installer/yocto_installer.conf b/scripts/adt-installer/yocto_installer.conf
new file mode 100644
index 0000000..162ae3a
--- /dev/null
+++ b/scripts/adt-installer/yocto_installer.conf
@@ -0,0 +1,32 @@
+#Host Area
+YOCTOADT_TARGETS="powerpc mips arm x86 x86_64"
+YOCTOADT_QEMU="Y"
+YOCTOADT_NFS_UTIL="Y"
+YOCTOADT_BITBAKE="Y"
+YOCTOADT_METADATA="Y"
+
+#Target Area
+YOCTOADT_TARGET_arm="N"
+YOCTOADT_ROOTFS_arm="sato sdk"
+YOCTOADT_TARGET_SYSROOT_IMAGE_arm="sato"
+YOCTOADT_TARGET_SYSROOT_arm="$HOME/test-yocto/arm"
+
+YOCTOADT_TARGET_x86="Y"
+YOCTOADT_ROOTFS_x86="sdk minimal"
+YOCTOADT_TARGET_SYSROOT_IMAGE_x86="sdk"
+YOCTOADT_TARGET_SYSROOT_x86="$HOME/test-yocto/x86"
+
+YOCTOADT_TARGET_powerpc="N"
+YOCTOADT_ROOTFS_powerpc="sdk sato minimal"
+YOCTOADT_TARGET_SYSROOT_IMAGE_powerpc="minimal"
+YOCTOADT_TARGET_SYSROOT_powerpc="$HOME/test-yocto/mips"
+
+YOCTOADT_TARGET_mips="N"
+YOCTOADT_ROOTFS_mips="sdk"
+YOCTOADT_TARGET_SYSROOT_IMAGE_mips="sdk"
+YOCTOADT_TARGET_SYSROOT_mips="$HOME/test-yocto/mips"
+
+
+
+
+
diff --git a/scripts/adt-installer/yocto_installer_internal b/scripts/adt-installer/yocto_installer_internal
new file mode 100755
index 0000000..93d927a
--- /dev/null
+++ b/scripts/adt-installer/yocto_installer_internal
@@ -0,0 +1,222 @@
+#!/bin/bash
+
+# Yocto ADT Installer
+#
+# Copyright (C) 2010 Intel Corp.
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+
+
+
+
+parse_config()
+{
+  INST_ARCH=`uname -m`
+
+  case $INST_ARCH in 
+  i[3-6]86)
+    OPKG_CONFIG_FILE=$YOCTOADT_OPKG_CONF_FILE_32
+    POKY_NATIVE_SYSROOT="/opt/poky/sysroots/i586-pokysdk-linux/"
+    ;;
+  x86_64)
+    OPKG_CONFIG_FILE=$YOCTOADT_OPKG_CONF_FILE_64
+    POKY_NATIVE_SYSROOT="/opt/poky/sysroots/x86_64-pokysdk-linux/"
+    ;;
+  *)
+    echo_info "[ADT_INST] Installation Machine is not supported!"
+    exit -1
+    ;;
+  esac
+}
+
+
+
+
+#let us install a qemu-native firstly
+#installation step 2
+install_native_sdk()
+{
+
+echo_info "\n[ADT_INST] Begin to install selected native ADT for archs [$YOCTOADT_TARGETS]!"
+
+# where the packages are installed. Currently only / is supported
+NATIVE_INSTALL_DIR="/"
+
+if [ -d "/opt/poky" ]; then
+  echo_info "[ADT_INST] Folder \"/opt/poky\" already exists! Continous installation will override its contents."
+  echo_info "[ADT_INST] If you continue installation, this folder might be overriden."
+  confirm_install
+fi
+
+#we need to make this directory firstly since opkg need to use it.
+OPKG_LOCK_DIR="$NATIVE_INSTALL_DIR/$OPKG_LIBDIR/opkg"
+if [ ! -d "$OPKG_LOCK_DIR" ]; then
+  mkdir -p $OPKG_LOCK_DIR
+  echo_info "[ADT_INST] Successfully create directory $OPKG_LOCK_DIR. "
+#if user delete /opt/poky, while dangling folders there, report error
+elif [ ! -d "/opt/poky" ]; then
+  echo_info "[ADT_INST] Dangling opkg cache folder $OPKG_LOCK_DIR detected. Continous installation will remove the folder"
+  confirm_install
+  rm -rf $OPKG_LOCK_DIR
+  mkdir -p $OPKG_LOCK_DIR
+#if user are updating installing, just let him/her go, give her/him prompt
+else
+  echo_info "[ADT_INST] ADT has been installed before. It's update install..."
+fi
+
+#first update repository
+echo_info "[ADT_INST] opkg update process beginning..."
+./opkg/bin/opkg-cl -f $OPKG_CONFIG_FILE -o $NATIVE_INSTALL_DIR update >> $YOCTOADT_INSTALL_LOG_FILE
+echo_info "[ADT_INST] opkg update process ended..."
+check_result
+
+#install below must sdk-host packages
+OPKG_INSTALL_CMD="./opkg/bin/opkg-cl --force-overwrite"
+OPKG_INSTALL_NATIVE_CMD="$OPKG_INSTALL_CMD  -f $OPKG_CONFIG_FILE -o $NATIVE_INSTALL_DIR install"
+
+echo_info "[ADT_INST] Install pseudo nativesdk ...\n"
+$OPKG_INSTALL_NATIVE_CMD pseudo-nativesdk >> $YOCTOADT_INSTALL_LOG_FILE
+check_result
+echo_info "[ADT_INST] Install opkg nativesdk ...\n"
+$OPKG_INSTALL_NATIVE_CMD opkg-nativesdk >> $YOCTOADT_INSTALL_LOG_FILE
+check_result
+echo_info "[ADT_INST] Install pkgconfig nativesdk ...\n"
+$OPKG_INSTALL_NATIVE_CMD pkgconfig-nativesdk >> $YOCTOADT_INSTALL_LOG_FILE
+check_result
+
+for native_target_type in $YOCTOADT_TARGETS; do
+  native_target_type=`echo "$native_target_type" | sed -e 's/x86_64/x86-64/' -e 's/x86$/i586/'`
+  echo_info "[ADT_INST] Installing cross toolchain for $native_target_type ..."
+  echo_info "[ADT_INST] Installing binutils for $native_target_type ..."
+  $OPKG_INSTALL_NATIVE_CMD binutils-cross-canadian-$native_target_type >> $YOCTOADT_INSTALL_LOG_FILE
+  check_result
+  echo_info "[ADT_INST] Installing gcc for $native_target_type ..."
+  $OPKG_INSTALL_NATIVE_CMD gcc-cross-canadian-$native_target_type >> $YOCTOADT_INSTALL_LOG_FILE
+  check_result
+  echo_info "[ADT_INST] Installing gdb for $native_target_type ..."
+  $OPKG_INSTALL_NATIVE_CMD gdb-cross-canadian-$native_target_type >> $YOCTOADT_INSTALL_LOG_FILE
+  check_result
+
+  echo_info "[ADT_INST] Installing envrionement file for $native_target_type ..."
+  $OPKG_INSTALL_NATIVE_CMD meta-environment-$native_target_type >> $YOCTOADT_INSTALL_LOG_FILE
+  check_result
+
+
+done
+
+if [ "$YOCTOADT_QEMU" == "Y" ]; then
+  echo_info "\n[ADT_INST] Installing qemu native ..."
+  $OPKG_INSTALL_NATIVE_CMD qemu-nativesdk >> $YOCTOADT_INSTALL_LOG_FILE
+  check_result
+  $OPKG_INSTALL_NATIVE_CMD qemu-helper-nativesdk >> $YOCTOADT_INSTALL_LOG_FILE
+  check_result
+fi
+
+if [ "$YOCTOADT_NFS_UTIL" == "Y" ]; then
+  echo_info "\n[ADT_INST] Installing unfs ..."
+  $OPKG_INSTALL_NATIVE_CMD unfs-server-nativesdk >> $YOCTOADT_INSTALL_LOG_FILE
+  check_result
+fi
+
+echo_info "\n[ADT_INST]All selected native ADT installed successfully!"
+}
+
+#Need three input params, $1 -- arch_type(arm powerpc x86 mips) $2 --- rootfs type (one of sdk sato minimal lsb)
+#$3 --- rootfs extraction dir
+
+extract_rootfs()
+{
+
+  PSEUDO_LOCALSTATEDIR="$POKY_NATIVE_SYSROOT/var/pseudo"
+  PSEUDO_COMMAND="$POKY_NATIVE_SYSROOT/usr/bin/pseudo"
+  PSEUDO_OPTS="-P $POKY_NATIVE_SYSROOT/usr"
+
+  TAR_OPTS="-xjf"
+  PSEUDO_OPTS="-P $POKY_NATIVE_SYSROOT/usr"
+
+
+  rm -rf $PSEUDO_LOCALSTATEDIR
+
+  if [ -d "$3" ]; then
+    echo_info "[ADT_INST] $3 already exists! Continous installation will override its contents!"
+    echo_info "[ADT_INST] If you continue installation, this folder will be removed."
+    confirm_install
+    rm -rf "$3"
+  fi
+
+  mkdir -p "$PSEUDO_LOCALSTATEDIR"
+  touch "$PSEUDO_LOCALSTATEDIR/pseudo.pid"
+
+  echo_info "[ADT_INST] Extracting rootfs tarball using pseudo..."
+
+  if [ ! -d "$3" ]; then
+    echo_info "[ADT_INST] Creating directory $3"
+    mkdir -p "$3"
+  fi
+
+  $PSEUDO_COMMAND $PSEUDO_OPTS tar -C $3 "$TAR_OPTS" $PWD/$LOCAL_DOWNLOAD/poky-image-$2-qemu$1.tar.bz2 >> $YOCTOADT_INSTALL_LOG_FILE
+  check_result
+  echo_info "[ADT_INST] root_fs image successfully extracted to $3"
+}
+
+
+install_target()
+{
+
+select_target_var="\$YOCTOADT_TARGET_$1"
+select_target=`eval echo $select_target_var`
+
+if [ "$select_target" == "Y" ]; then
+
+  # rootfs extraction directory
+  target_sysroot_var="\$YOCTOADT_TARGET_SYSROOT_$1"
+  target_sysroot=`eval echo $target_sysroot_var`
+
+  target_sysroot_image_var="\$YOCTOADT_TARGET_SYSROOT_IMAGE_$1"
+  target_sysroot_image=`eval echo $target_sysroot_image_var`
+
+  echo_info "[ADT_INST] Installing target sysroot for arch: $1, rootfs type: $target_sysroot_image, location: $target_sysroot"
+
+  if [[ "$target_sysroot" != "" && "$target_sysroot_image" != "" ]]; then
+    extract_rootfs $1 $target_sysroot_image $target_sysroot
+    # Fill $target_sysroot into /opt/poky/environment-setup-(arch)-poky-linux-gnueabi
+
+    echo_info "[ADT_INST] Re-generate environment script file according to rootfs location."
+    if [ "$1" == "x86"  ]; then
+      env_filename=`ls /opt/poky/environment-setup-i586*`
+    else
+      env_filename=`ls /opt/poky/environment-setup-$1*`
+    fi
+    sed -i -e "s%##SDKTARGETSYSROOT##%$target_sysroot%g" $env_filename
+  fi
+fi
+
+}
+
+
+#Main part
+. util
+source .config
+source yocto_installer.conf
+
+parse_config
+
+#secondly we will start to install native tools
+install_native_sdk
+
+for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
+  install_target $arch_type
+done
+
+
-- 
1.7.0.4


