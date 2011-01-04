Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8C4FB4C810DD
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 01:22:45 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 23:22:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,271,1291622400"; d="scan'208";a="693311317"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 23:22:28 -0800
Message-Id: <e9640d6d51ee895507d1cdacc6057a87d30390cf.1294126930.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294126930.git.jessica.zhang@intel.com>
References: <cover.1294126930.git.jessica.zhang@intel.com>
From: Liping Ke <liping.ke@intel.com>
Date: Mon, 3 Jan 2011 23:21:40 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] adt-intaller feature implementation, including the bitbake recipe file for creating the intaller tar file under /tmp/deploy/sdk, and the adt-installer script files and config files
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
X-List-Received-Date: Tue, 04 Jan 2011 07:22:45 -0000

Signed-off-by: Jessica Zhang <jessica.zhang@intel.com>
---
 .../installer/adt-installer/adt_installer          |  363 ++++++++++++++++++++
 .../installer/adt-installer/adt_installer.conf     |   29 ++
 .../adt-installer/opkg/conf/opkg-sdk-i586.conf     |    7 +
 .../adt-installer/opkg/conf/opkg-sdk-x86_64.conf   |    7 +
 .../adt-installer/scripts/adt_installer_internal   |  207 +++++++++++
 .../installer/adt-installer/scripts/data_define    |   35 ++
 .../installer/adt-installer/scripts/extract_rootfs |   63 ++++
 .../installer/adt-installer/scripts/util           |   99 ++++++
 .../installer/adt-installer_1.0.bb                 |   61 ++++
 9 files changed, 871 insertions(+), 0 deletions(-)
 create mode 100755 meta/recipes-devtools/installer/adt-installer/adt_installer
 create mode 100644 meta/recipes-devtools/installer/adt-installer/adt_installer.conf
 create mode 100644 meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i586.conf
 create mode 100644 meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-x86_64.conf
 create mode 100755 meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
 create mode 100644 meta/recipes-devtools/installer/adt-installer/scripts/data_define
 create mode 100755 meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
 create mode 100644 meta/recipes-devtools/installer/adt-installer/scripts/util
 create mode 100644 meta/recipes-devtools/installer/adt-installer_1.0.bb

diff --git a/meta/recipes-devtools/installer/adt-installer/adt_installer b/meta/recipes-devtools/installer/adt-installer/adt_installer
new file mode 100755
index 0000000..9ccb9cb
--- /dev/null
+++ b/meta/recipes-devtools/installer/adt-installer/adt_installer
@@ -0,0 +1,363 @@
+#/bin/bash
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
+  echo_info "# Yocto ADT version to be installed:\t$YOCTOADT_VERSION"
+  echo_info "# supported target architectures:\t$YOCTOADT_SUPPORTED_TARGETS"
+  echo_info "# supported target root_fs images:\t$YOCTOADT_SUPPORTED_ROOTFS"
+  echo_info "#########################################################################\n"
+
+  echo_info "Systemwide installation. Installation will occur under $INSTALL_FOLDER\n"
+  echo_info "############################################################################"
+  echo_info "# Your system installation configurations from adt_installer.conf"
+  echo_info "############################################################################"
+
+  echo_info "# Cross toolchains:\t\t$YOCTOADT_TARGETS"
+  echo_info "# Install Qemu:\t\t\t$YOCTOADT_QEMU"
+  echo_info "# Install NFS utilities:\t$YOCTOADT_NFS_UTIL"
+  #echo_info "# Install bitbake + UI:\t\t$YOCTOADT_BITBAKE"
+  #echo_info "# Install poky metadata:\t$YOCTOADT_METADATA"
+  #echo_info "############################################################################\n"
+
+    echo_info "\n##############################################################################"
+    echo_info "# Your rootfs image(s) and target sysroot selections from adt_installer.conf"
+    echo_info "##############################################################################"
+prompt=1
+for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
+  download_images $arch_type $prompt
+done
+    echo_info "############################################################################\n"
+  select_install_type
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
+       echo_info "[ADT_INST] Error: YOCTADT_TARGETS in adt_installer.conf contains invalid entries: $YOCTOADT_TARGETS. Valid values are: $YOCTOADT_SUPPORTED_TARGETS"
+       echo -e "\n#############################################################################"
+       echo -e "# Meet error(s) when installing Yocto ADT! Please check log file for details. "
+       echo -e "#############################################################################\n"
+      exit -1
+    fi
+  done
+
+  for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
+    #select_target_var="\$YOCTOADT_TARGET_$arch_type"
+    #select_target=`eval echo $select_target_var`
+
+    #if [ "$select_target" != "Y" ] || [ "$selected_target" != "y" ]; then
+    #  continue;
+    #fi
+
+    target_sysroot_image_var="\$YOCTOADT_TARGET_SYSROOT_IMAGE_$arch_type"
+    target_sysroot_image=`eval echo $target_sysroot_image_var`
+
+
+    select_rootfs_var="\$YOCTOADT_ROOTFS_$arch_type"
+    select_rootfs=`eval echo $select_rootfs_var`
+
+    if [ "$select_rootfs" == "" ] && [ "$target_sysroot_image" == "" ]; then
+       continue;
+    fi
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
+        echo_info "[ADT_INST] Error: Selected YOCTOADT_ROOTFS_$arch_type value: $image_type, is not valid! Valid values are: $YOCTOADT_SUPPORTED_ROOTFS "
+       echo -e "\n#############################################################################"
+       echo -e "# Meet error(s) when installing Yocto ADT! Please check log file for details. "
+       echo -e "#############################################################################\n"
+        exit -1
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
+      echo_info "[ADT_INST] Error: YOCTOADT_TARGET_SYSROOT_IMAGE_$arch_type selection: $target_sysroot_image is not included in YOCTOADT_ROOTFS_$arch_type selections: $select_rootfs"
+      echo -e "\n#############################################################################"
+      echo -e "# Meet error(s) when installing Yocto ADT! Please check log file for details. "
+      echo -e "#############################################################################\n"
+      exit -1
+    fi
+  done
+}
+
+
+#detect opkg installed or not, for installing sdk, we will use
+#this installed local opkg
+install_opkg()
+{
+if [ ! -x "$LOCAL_OPKG_LOC/bin/opkg-cl" ]; then
+  echo_info "OPKG is not setup, setting up opkg in local, which is required for installing yocto ADT...\n"
+
+  if [ -d $LOCAL_OPKG_LOC ]; then
+    echo_info "Deleting old OPKG folder, which doesn't contain executables... "
+    rm -rf $LOCAL_OPKG_LOC
+  fi
+
+  parent_folder=`eval echo $PWD`
+  cd $LOCAL_OPKG_FOLDER
+  check_result
+
+  opkg_source_dir=`ls -d opkg-*`
+
+  if [ $opkg_source_dir == "" ]; then
+    echo_info "[ADT_INST] Error: OPKG source directory is not found!"
+    echo -e "\n#############################################################################"
+    echo -e "# Meet error(s) when installing Yocto ADT! Please check log file for details. "
+    echo -e "#############################################################################\n"
+    exit -1
+  fi
+
+  cd $opkg_source_dir
+  check_result
+
+  echo_info "Configure opkg ...\n"
+  ./configure --prefix=$parent_folder/$LOCAL_OPKG_LOC --with-opkglibdir=$OPKG_LIBDIR --disable-curl --disable-ssl-curl --disable-gpg --disable-shave >> $parent_folder/$YOCTOADT_INSTALL_LOG_FILE
+  check_result
+
+  echo_info "Make opkg ...\n"
+  make &>> $parent_folder/$YOCTOADT_INSTALL_LOG_FILE
+  check_result
+
+  echo_info "Make Install opkg ...\n"
+  make install &>> $parent_folder/$YOCTOADT_INSTALL_LOG_FILE
+  #if meet error when installing opkg, cancel the installation
+  check_result
+
+  cd $parent_folder
+  echo_info "Successfully installed OPKG.\n"
+fi
+}
+
+confirm_download()
+{
+#avoid repeated reminding
+if [ "$override_oldfile" == 1 ]; then
+  return $pre_result
+else
+  override_oldfile=1
+fi
+
+while true; do
+  #echo_info "[ADT_INST] Files [$1] already exists. If you continue downloading, old files will be overrided."
+  #echo_info "[ADT_INST] Further prompts will not be given if there're more existing files to be downloaded."
+  #echo_info "[ADT_INST] Do you want to continue downloading? Please enter Y/N:"
+  echo_info "\nFile [$1] already exists, which means you've downloaded the qemu kernel and rootfs file(s) before.  If you choose continue downloading, old files will be overridden."
+  echo_info "[ADT_INST] Do you want to continue downloading? Please enter Y/N:"
+  read YOCTOADT_INSTALL
+  YOCTOADT_INSTALL=`tr '[a-z]' '[A-Z]'<<<"$YOCTOADT_INSTALL"`
+  if [ "$YOCTOADT_INSTALL" == "Y" ]; then
+    pre_result=0
+    return 0
+  elif [ "$YOCTOADT_INSTALL" == "N" ]; then
+    pre_result=1
+    return 1
+  fi
+done
+}
+
+download_file()
+{
+if [ -f "$LOCAL_DOWNLOAD/$1" ]; then
+  confirm_download $1
+  result="$?"
+  if [ ! "$result" == "0" ]; then
+    return
+  else
+    echo "Removing old file [$1]"
+    rm -rf "$LOCAL_DOWNLOAD/$1" 
+  fi
+fi
+echo_info "Downloading file: $1..."
+wget "$YOCTOADT_IPKG_REPO/$1" -P $LOCAL_DOWNLOAD --progress=bar:force 2>&1 | tee -a "$YOCTOADT_INSTALL_LOG_FILE" 
+}
+
+
+
+#Need two input params, $1 -- arch_type(arm powerpc x86 mips) $2 rootfs_image_type (a list of sdk sato minimal lsb)
+get_qemu_image()
+{
+  if [ "$1" == "x86" ]; then
+    qemu_kernel="bzImage-qemu$1.bin"
+  elif [ "$1" == "arm" ]; then
+    qemu_kernel="zImage-qemu$1.bin"
+  else
+    qemu_kernel="zImage-qemu$1.bin"
+  fi
+
+  #echo_info "[ADT_INST] Downloading qemu kernel binary: $qemu_kernel"
+  download_file $qemu_kernel
+  check_result
+  
+  for image_type in $select_rootfs; do
+    #echo_info "[ADT_INST] Downloading rootfs file: poky-image-$image_type-qemu$1.tar.bz2"
+    filename="poky-image-$image_type-qemu$1.tar.bz2"
+    download_file $filename
+    check_result
+  done
+}
+
+download_images()
+{
+  #select_target_var="\$YOCTOADT_TARGET_$1"
+  #select_target=`eval echo $select_target_var`
+
+  #if [ "$select_target" == "Y" ]; then
+  select_rootfs_var="\$YOCTOADT_ROOTFS_$1"
+  select_sysroot_image_var="\$YOCTOADT_TARGET_SYSROOT_IMAGE_$1"
+  select_sysroot_var="\$YOCTOADT_TARGET_SYSROOT_LOC_$1"
+  select_rootfs=`eval echo $select_rootfs_var`
+  select_sysroot_image=`eval echo $select_sysroot_image_var`
+  select_sysroot=`eval echo $select_sysroot_var`
+
+  if [ "$select_rootfs" != "" ]; then
+    if [ $2 ]; then
+    #echo_info "\n############################################################################"
+    #echo_info "# To be downloaded rootfs image details defined in adt_installer.conf"
+    #echo_info "############################################################################"
+    echo_info "# Target architecture:\t\t$1"
+    echo_info "# Root_fs images:\t\t$select_rootfs"
+    echo_info "# Target sysroot image:\t\t$select_sysroot_image"
+    echo_info "# Target sysroot loc:\t\t$select_sysroot"
+    echo_info "\n"
+    #echo_info "############################################################################\n"
+    else
+    get_qemu_image $1 $select_rootfs
+    fi
+  fi
+}
+
+
+
+
+#Main body of installer
+
+clear
+
+run_path=`dirname $0`
+cd $run_path
+
+if [ ! -f "scripts/util" ]; then
+  echo -e "[ADT_INST] Error: Script file: util, can't be found under: $run_path!"
+  echo -e "\n#############################################################################"
+  echo -e "# Meet error(s) when installing Yocto ADT! Please check log file for details. "
+  echo -e "#############################################################################\n"
+  exit -1
+fi
+
+if [ ! -f "scripts/adt_installer_internal" ]; then
+  echo -e "[ADT_INST] Error: Script file: adt_installer_internal, can't be found under: $run_path!"
+  echo -e "\n#############################################################################"
+  echo -e "# Meet error(s) when installing Yocto ADT! Please check log file for details. "
+  echo -e "#############################################################################\n"
+  exit -1
+fi
+
+config_file="adt_installer.conf"
+if [ ! -f "$config_file" ]; then
+  echo_info "[ADT_INST] Error: Installation configuration file: adt_installer.conf is not found!\n"
+  echo_info "\n##################################################################################"
+  echo_info "# Meet error(s) when installing Yocto ADT. Please check log file for details. "
+  echo_info "##################################################################################\n"
+  exit -1
+fi
+
+. scripts/data_define
+. scripts/util
+
+
+if [ -f "$YOCTOADT_INSTALL_LOG_FILE" ]; then
+  rm $YOCTOADT_INSTALL_LOG_FILE
+fi
+
+
+usage
+
+user_inst_type="$?"
+
+validate_config
+check_result
+#firstly we need to install opkg host
+install_opkg
+
+#Create folders for holding rootfs/qemu images
+if [ ! -d "$LOCAL_DOWNLOAD" ]; then
+  echo_info "Creating new images downloading folder: $LOCAL_DOWNLOAD ..."
+  mkdir -p $LOCAL_DOWNLOAD
+fi
+
+#downloading required qemu images/rootfs
+if [ "$user_inst_type" == "0" ]; then
+  override_oldfile=1
+else
+  override_oldfile=0
+fi
+
+for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
+  download_images $arch_type
+done
+
+scripts/adt_installer_internal $user_inst_type
+
+result="$?"
+#echo_info "\n############################################################"
+if [ "$result" == "0" ]; then
+  echo_info "\n############################################################"
+  echo_info "# Yocto ADT has been successfully installed."
+  echo_info "############################################################\n"
+fi
+
diff --git a/meta/recipes-devtools/installer/adt-installer/adt_installer.conf b/meta/recipes-devtools/installer/adt-installer/adt_installer.conf
new file mode 100644
index 0000000..b65fe5d
--- /dev/null
+++ b/meta/recipes-devtools/installer/adt-installer/adt_installer.conf
@@ -0,0 +1,29 @@
+# Your yocto distro repository, this should include IPKG based packages and root filesystem files where the installation is based on
+
+YOCTOADT_IPKG_REPO="http://llu-piketon.sh.intel.com/rootfs"
+
+# The following are for system wide setup
+# Target architectures that you want to setup host cross dev environment for
+# valid values are: powerpc, mips, arm, x86, x86_64 with space separation between entries
+YOCTOADT_TARGETS="arm x86"
+# Whether install qemu or not, valid entries are: Y/N
+YOCTOADT_QEMU="Y"
+# Whether install user-mode nfs or not, valid entries are: Y/N.  If you want to use Yocto Eclipse plug-in as your dev IDE, you need to select both qemu and NFS
+YOCTOADT_NFS_UTIL="Y"
+
+# These 2 values will be supported in the furture installer
+#YOCTOADT_BITBAKE="Y"
+#YOCTOADT_METADATA="Y"
+
+#The followings are for setting up specific target architecture
+#YOCTOADT_ROOTFS_$arch is for specifying what root filesystem image files you want to download from the repository. The valid values to replace $arch are: arm, x86, x86_64, powerpc, mips.  The valid image files are: minimal, sato, sdk and lsb.  If you want to download multiple images, the entries are space separated
+YOCTOADT_ROOTFS_arm="minimal sato"
+#Specify which root filesystem file to use to extract as target sysroot.  Please ensure the entry is in the list of downloaded root filesystem files that specified above in YOCTOADT_ROOTFS_$arch
+YOCTOADT_TARGET_SYSROOT_IMAGE_arm="minimal"
+#The location where the target sysroot will be setup
+YOCTOADT_TARGET_SYSROOT_LOC_arm="$HOME/test-yocto/arm"
+
+#Here's another example for setting up target arch of x86, by uncommenting it will trigger the installer to download and setup 2 sysroot environment for 2 target arches: arm and x86.  If you want to add more target arch support, you can append more entries by following these samples
+#YOCTOADT_ROOTFS_x86="sdk"
+#YOCTOADT_TARGET_SYSROOT_IMAGE_x86="sdk"
+#YOCTOADT_TARGET_SYSROOT_LOC_x86="$HOME/test-yocto/x86"
diff --git a/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i586.conf b/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i586.conf
new file mode 100644
index 0000000..21ab4d2
--- /dev/null
+++ b/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i586.conf
@@ -0,0 +1,7 @@
+arch all 1
+arch any 6
+arch noarch 11
+arch i586-nativesdk 16
+src oe http://llu-piketon.sh.intel.com/ipk_sdknew
+src oe-all http://llu-piketon.sh.intel.com/ipk_sdknew/all
+src oe-i586-nativesdk http://llu-piketon.sh.intel.com/ipk_sdknew/i586-nativesdk
diff --git a/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-x86_64.conf b/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-x86_64.conf
new file mode 100644
index 0000000..a6eee7d
--- /dev/null
+++ b/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-x86_64.conf
@@ -0,0 +1,7 @@
+arch all 1
+arch any 6
+arch noarch 11
+arch x86_64-nativesdk 16
+src oe http://llu-piketon.sh.intel.com/ipk_sdknew
+src oe-all http://llu-piketon.sh.intel.com/ipk_sdknew/all
+src oe-x86_64-nativesdk http://llu-piketon.sh.intel.com/ipk_sdknew/x86_64-nativesdk
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal b/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
new file mode 100755
index 0000000..13e89e6
--- /dev/null
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
@@ -0,0 +1,207 @@
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
+    POKY_NATIVE_SYSROOT="$INSTALL_FOLDER/sysroots/i586-pokysdk-linux/"
+    ;;
+  x86_64)
+    OPKG_CONFIG_FILE=$YOCTOADT_OPKG_CONF_FILE_64
+    POKY_NATIVE_SYSROOT="$INSTALL_FOLDER/sysroots/x86_64-pokysdk-linux/"
+    ;;
+  *)
+    echo_info "[ADT_INST] Error: Installation Machine is not supported!"
+    exit -1
+    ;;
+  esac
+}
+
+
+#let us install a qemu-native firstly
+#installation step 2
+install_native_sdk()
+{
+
+echo_info "\nStart installing selected native ADT for archs: $YOCTOADT_TARGETS..."
+
+# where the packages are installed. Currently only / is supported
+NATIVE_INSTALL_DIR="/"
+
+if [ -d "$INSTALL_FOLDER" ]; then
+  echo_info "\nNative ADT installation directory \"$INSTALL_FOLDER\" already exists! Continue installation will override its contents!"
+  confirm_install $1
+fi
+
+#Now begin to install native sdk and extract qemu rootfs which needs privilege rights
+echo_info "#######################################################################"
+echo_info "Please note from this point on installation requires sudo password ..."
+echo_info "#######################################################################"
+username='id -nu'
+#we need to make this directory firstly since opkg need to use it.
+OPKG_LOCK_DIR="$NATIVE_INSTALL_DIR/$OPKG_LIBDIR/opkg"
+if [ ! -d "$OPKG_LOCK_DIR" ]; then
+  sudo mkdir -p $OPKG_LOCK_DIR
+  echo_info "Successfully create directory $OPKG_LOCK_DIR. "
+#if user delete /opt/poky, while dangling folders there, report error
+elif [ ! -d "$INSTALL_FOLDER" ]; then
+  echo_info "\nDangling opkg cache folder $OPKG_LOCK_DIR detected. Continue installation will remove the folder!"
+  confirm_install $1
+  sudo rm -rf $OPKG_LOCK_DIR
+  sudo mkdir -p $OPKG_LOCK_DIR
+#if user are updating installing, just let him/her go, give her/him prompt
+else
+  echo_info "ADT has already been installed. Will update its contents..."
+fi
+
+#first update repository
+OPKG_CMD="sudo $LOCAL_OPKG_LOC/bin/opkg-cl"
+
+echo_info "Updating opkg..."
+$OPKG_CMD -f $OPKG_CONFIG_FILE -o $NATIVE_INSTALL_DIR update &>> $YOCTOADT_INSTALL_LOG_FILE
+echo_info "opkg update process ended..."
+check_result
+
+#install below must sdk-host packages
+OPKG_INSTALL_CMD="$OPKG_CMD --force-overwrite"
+OPKG_INSTALL_NATIVE_CMD="$OPKG_INSTALL_CMD  -f $OPKG_CONFIG_FILE -o $NATIVE_INSTALL_DIR install"
+
+echo_info "Installing pseudo nativesdk ...\n"
+$OPKG_INSTALL_NATIVE_CMD pseudo-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
+check_result
+echo_info "Installing opkg nativesdk ...\n"
+$OPKG_INSTALL_NATIVE_CMD opkg-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
+check_result
+echo_info "Installing pkgconfig nativesdk ...\n"
+$OPKG_INSTALL_NATIVE_CMD pkgconfig-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
+check_result
+
+for native_target_type in $YOCTOADT_TARGETS; do
+  native_target_type=`echo "$native_target_type" | sed -e 's/x86_64/x86-64/' -e 's/x86$/i586/'`
+  echo_info "Installing cross toolchain for $native_target_type ..."
+  echo_info "Installing binutils for $native_target_type ..."
+  $OPKG_INSTALL_NATIVE_CMD binutils-cross-canadian-$native_target_type &>> $YOCTOADT_INSTALL_LOG_FILE
+  check_result
+  echo_info "Installing gcc for $native_target_type ..."
+  $OPKG_INSTALL_NATIVE_CMD gcc-cross-canadian-$native_target_type &>> $YOCTOADT_INSTALL_LOG_FILE
+  check_result
+  echo_info "Installing gdb for $native_target_type ..."
+  $OPKG_INSTALL_NATIVE_CMD gdb-cross-canadian-$native_target_type &>> $YOCTOADT_INSTALL_LOG_FILE
+  check_result
+
+  echo_info "Installing envrionement file for $native_target_type ..."
+  $OPKG_INSTALL_NATIVE_CMD meta-environment-$native_target_type &>> $YOCTOADT_INSTALL_LOG_FILE
+  check_result
+
+done
+
+# Link the ld.so.cache file into the hosts filesystem
+if [ ! -f "$POKY_NATIVE_SYSROOT/etc/ld.so.cache" ]; then 
+echo_info "Link the ld.so.cache file into the host filesystem"
+sudo ln -s /etc/ld.so.cache $POKY_NATIVE_SYSROOT/etc/ld.so.cache
+check_result
+fi
+
+if [ "$YOCTOADT_QEMU" == "Y" ] || [ "$YOCTOADT_QEMU" = "y" ]; then
+  echo_info "\nInstalling qemu native ..."
+  $OPKG_INSTALL_NATIVE_CMD qemu-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
+  check_result
+  $OPKG_INSTALL_NATIVE_CMD qemu-helper-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
+  check_result
+fi
+
+if [ "$YOCTOADT_NFS_UTIL" == "Y" ] || [ "$YOCTOADT_NFS_UTIL" == "y" ]; then
+  echo_info "\nInstalling unfs ..."
+  $OPKG_INSTALL_NATIVE_CMD unfs-server-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
+  check_result
+fi
+
+echo_info "\nSuccessfully installed selected native ADT!"
+}
+
+#Need three input params, $1 -- arch_type(arm powerpc x86 mips) #2 -- user installation type
+#customer or scilent
+
+install_target()
+{
+
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
+    #echo_info "Extracting rootfs: $sysroot_image_name, using pseudo..."
+
+scripts/extract_rootfs $sysroot_image_name $target_sysroot $POKY_NATIVE_SYSROOT $user_inst_type
+check_result
+
+echo_info "Updating environment script with target sysroot location."
+if [ "$1" == "x86"  ]; then
+  env_filename=`ls $INSTALL_FOLDER/environment-setup-i586*`
+else
+  env_filename=`ls $INSTALL_FOLDER/environment-setup-$1*`
+fi
+if [ ! -z "$env_filename" ]; then
+  sudo sed -i -e "s%##SDKTARGETSYSROOT##%$target_sysroot%g" $env_filename
+else
+  echo_info "[ADT_INST] Error: Failed to find environment script for arch: $1"
+  return 1 
+fi
+
+
+}
+
+
+#Main part
+. scripts/data_define
+. scripts/util
+
+parse_config
+
+#secondly we will start to install native tools
+user_inst_type=$1
+install_native_sdk $user_inst_type
+check_result
+
+for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
+  install_target $arch_type
+  check_result
+done
+
+
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/data_define b/meta/recipes-devtools/installer/adt-installer/scripts/data_define
new file mode 100644
index 0000000..f446811
--- /dev/null
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/data_define
@@ -0,0 +1,35 @@
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
+config_file="adt_installer.conf"
+source $config_file
+
+LOCAL_OPKG_LOC="./opkg/build/opkg"
+LOCAL_OPKG_FOLDER="./opkg/build"
+OPKG_LIBDIR="/var/lib"
+
+# List all supported root fs types and target types,
+# it will be used in user configuration validity checking
+YOCTOADT_SUPPORTED_ROOTFS="minimal sato sdk lsb"
+YOCTOADT_SUPPORTED_TARGETS="x86 x86_64 arm powerpc mips"
+# Different host (32 bit or 64 bit) will have different opkg
+# configuration files
+YOCTOADT_OPKG_CONF_FILE_32="./opkg/conf/opkg-sdk-i586.conf"
+YOCTOADT_OPKG_CONF_FILE_64="./opkg/conf/opkg-sdk-x86_64.conf"
+INSTALL_FOLDER=/opt/poky/$YOCTOADT_VERSION
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs b/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
new file mode 100755
index 0000000..0266283
--- /dev/null
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
@@ -0,0 +1,63 @@
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
+extract_rootfs()
+{
+
+  native_sysroot=$3
+  target_sysroot=$2
+  PSEUDO_COMMAND="$native_sysroot/usr/bin/pseudo"
+  PSEUDO_OPTS="-P $natvie_sysroot/usr"
+  TAR_OPTS="-xjf"
+  PSEUDO_OPTS="-P $native_sysroot/usr"
+
+
+  rm -rf $PSEUDO_LOCALSTATEDIR
+
+  if [ -d "$target_sysroot" ]; then
+    echo_info "\nTarget sysroot location: $target_sysroot, already exists! If you continue installation, this folder will be re-created."
+    confirm_install $4
+    rm -rf "$target_sysroot"
+  fi
+
+  if [ ! -d "$target_sysroot" ]; then
+    echo_info "Creating directory $target_sysroot..."
+    mkdir -p "$target_sysroot"
+  fi
+
+  mkdir -p "$target_sysroot/var/pseudo"
+  touch "$target_sysroot/var/pseudo/pseudo.pid"
+  PSEUDO_LOCALSTATEDIR="$target_sysroot/var/pseudo"
+  export PSEUDO_LOCALSTATEDIR
+
+  echo_info "Extracting rootfs: $1, using pseudo..."
+  $PSEUDO_COMMAND $PSEUDO_OPTS tar -C $2 "$TAR_OPTS" $LOCAL_DOWNLOAD/$1 &>> $YOCTOADT_INSTALL_LOG_FILE
+  check_result
+}
+
+#Main part
+. scripts/util
+
+#Parameter detail is listed below:
+#Param 4: Silent install or customize install
+#Param 3: POKY_NATIVE_SYSROOT
+#Param 2: user defined rootfs extraction directory
+#param 1: sysroot image name
+extract_rootfs $1 $2 $3 $4
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/util b/meta/recipes-devtools/installer/adt-installer/scripts/util
new file mode 100644
index 0000000..9db1242
--- /dev/null
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/util
@@ -0,0 +1,99 @@
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
+select_install_type()
+{
+# If choosing silent install, all older installation data will be
+# overriden without user's interaction
+while true; do
+  #echo_info "[ADT_INST] Silent install means overrides all existing older"
+  #echo_info "[ADT_INST] data and the installation needs least user interaction"
+  #echo_info "[ADT_INST] If you want to use silent installation, please enter S:"
+  #echo_info "[ADT_INST] If you want to customize installation, please enter C:"
+  #echo_info "[ADT_INST} If you want to exit current installation, please enter X:"
+  echo_info "There're two ways you can do installation: silent mode or interactive mode. To choose silent mode, which means you opt for the system to override the existing data under the specified installation directories without prompting for your confirmation.  Please be cautious with this selection which may trigger your losing data.  With the interactive mode, you have to closely monitor the installation process, since it will prompt you each step it needs to override some existing data.  To choose silent mode, please enter [S], for interactive mode, please enter [I] or [X] to exit the installation."
+  echo_info "[ADT_INST] Please enter your selections here:"
+  read YOCTOADT_SEL
+  YOCTOADT_SEL=`tr '[a-z]' '[A-Z]'<<<"$YOCTOADT_SEL"`
+  if [ "$YOCTOADT_SEL" == "S" ]; then
+    return "0"
+  elif [ "$YOCTOADT_SEL" == "I" ]; then
+    return "1"
+  elif [ "$YOCTOADT_SEL" == "X" ]; then
+    echo_info "\n############################################################"
+    echo_info "# User cancelled installation!"
+    echo_info "############################################################\n"
+    exit 1
+  fi
+done
+
+
+}
+
+confirm_install()
+{
+# below are prompt, make sure user still want to install even meet
+# some prompts
+
+#User likes to enjoy silent installation, we will not break his
+#installation process here
+if [ "$1" == "0" ]; then
+  return
+fi
+
+while true; do
+  echo_info "[ADT_INST] Do you want to continue installation? Please enter Y/N:"
+  read YOCTOADT_INSTALL
+  YOCTOADT_INSTALL=`tr '[a-z]' '[A-Z]'<<<"$YOCTOADT_INSTALL"`
+  if [ "$YOCTOADT_INSTALL" == "Y" ]; then
+    break
+  elif [ "$YOCTOADT_INSTALL" == "N" ]; then
+    echo_info "\n############################################################"
+    echo_info "# User cancelled installation!"
+    echo_info "############################################################\n"
+    exit 1
+  fi
+done
+}
+
+check_result()
+{
+  result="$?"
+  if [  "$result" == "-1" ]; then
+     echo_info "\n#############################################################################"
+     echo_info "# Meet error(s) when installing Yocto ADT! Please check log file for details. "
+     echo_info "#############################################################################\n"
+    exit -1
+  elif [ "$result" == "1" ]; then
+    exit -1
+  fi
+}
+
+# yocto adt installation log file
+YOCTOADT_INSTALL_LOG_FILE="adt_installer.log"
+# Temp folders holding qemu/rootfs downloaded images
+# It will be put into the installation folder
+LOCAL_DOWNLOAD="./download_image"
+
+
diff --git a/meta/recipes-devtools/installer/adt-installer_1.0.bb b/meta/recipes-devtools/installer/adt-installer_1.0.bb
new file mode 100644
index 0000000..23eb4ec
--- /dev/null
+++ b/meta/recipes-devtools/installer/adt-installer_1.0.bb
@@ -0,0 +1,61 @@
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
+YOCTOADT_VERSION = "${SDK_VERSION}"
+
+inherit deploy
+
+SRC_URI = "http://opkg.googlecode.com/files/opkg-0.1.8.tar.gz \
+           file://adt_installer \
+           file://scripts/adt_installer_internal \
+           file://scripts/util \
+           file://scripts/data_define \
+           file://scripts/extract_rootfs \
+           file://adt_installer.conf \
+           file://opkg/conf/opkg-sdk-x86_64.conf \
+           file://opkg/conf/opkg-sdk-i586.conf \
+	  "
+SRC_URI[md5sum] = "c714ce0e4863bf1315e3b6913ffe3299"
+SRC_URI[sha256sum] = "ff94bf30bd662d49c4b5057e3a0818d062731adaa555d59abd677ec32a3c1c60"
+
+fakeroot do_deploy () {
+	cd ${WORKDIR}
+	mkdir -p ${ADT_DEPLOY}
+	rm -f ${ADT_DEPLOY}/adt-installer.tar.bz2
+	rm -rf ${ADT_DIR}
+	mkdir -p ${ADT_DIR}/opkg/build
+	cp -r opkg ${ADT_DIR}/
+	cp -r opkg-0.1.8 ${ADT_DIR}/opkg/build/
+	cp -r scripts ${ADT_DIR}/
+	cp adt_installer ${ADT_DIR}
+	cp adt_installer.conf ${ADT_DIR}
+	echo 'YOCTOADT_VERSION=${SDK_VERSION}' > ${ADT_DIR}/temp.conf
+        cat ${ADT_DIR}/adt_installer.conf >> ${ADT_DIR}/temp.conf
+        mv ${ADT_DIR}/temp.conf ${ADT_DIR}/adt_installer.conf
+	tar cfj adt_installer.tar.bz2 adt-installer
+	cp ${WORKDIR}/adt_installer.tar.bz2 ${ADT_DEPLOY}
+}
+
+do_patch[noexec] = "1"
+do_install[noexec] = "1"
+do_configure[noexec] = "1"
+do_compile[noexec] = "1"
+do_package[noexec] = "1"
+do_package_write[noexec] = "1"
+do_package_write_ipk[noexec] = "1"
+do_package_write_rpm[noexec] = "1"
+do_package_write_deb[noexec] = "1"
+do_poplulate_sysroot[noexec] = "1"
+
+addtask deploy before do_populate_sysroot after do_unpack
-- 
1.7.0.4


