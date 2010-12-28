Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C0BD24C811F8
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:49 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Jan 2011 15:47:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="693216393"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 15:47:47 -0800
Message-Id: <e2fca84fd21b6ddd4168f7e1ea37722e2f0d316b.1294099430.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Jessica Zhang <jessica.zhang@intel.com>
Date: Mon, 27 Dec 2010 17:33:15 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 26/59] Clean messaging, prompt consolidation and bug fixes
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
X-List-Received-Date: Mon, 03 Jan 2011 23:47:50 -0000

Signed-off-by: Jessica Zhang <jessica.zhang@intel.com>
---
 .../installer/adt-installer/scripts/extract_rootfs |    2 +-
 .../installer/adt-installer/scripts/util           |   13 ++--
 .../adt-installer/scripts/yocto_installer_internal |   60 +++++++++++---------
 .../installer/adt-installer/yocto_installer        |   56 +++++++++++-------
 4 files changed, 76 insertions(+), 55 deletions(-)

diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs b/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
index 8567db7..976565d 100755
--- a/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
@@ -38,7 +38,7 @@ extract_rootfs()
   fi
 
   if [ ! -d "$target_sysroot" ]; then
-    echo_info "[ADT_INST] Creating directory $target_sysroot..."
+    echo_info "Creating directory $target_sysroot..."
     mkdir -p "$target_sysroot"
   fi
 
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/util b/meta/recipes-devtools/installer/adt-installer/scripts/util
index 7ccd87e..ecd7b20 100644
--- a/meta/recipes-devtools/installer/adt-installer/scripts/util
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/util
@@ -27,17 +27,18 @@ select_install_type()
 # If choosing silent install, all older installation data will be
 # overriden without user's interaction
 while true; do
-  echo_info "[ADT_INST] Silent install means overrides all existing older"
-  echo_info "[ADT_INST] data and the installation needs least user interaction"
-  echo_info "[ADT_INST] If you want to use silent installation, please enter S:"
-  echo_info "[ADT_INST] If you want to customize installation, please enter C:"
-  echo_info "[ADT_INST} If you want to exit current installation, please enter X:"
+  #echo_info "[ADT_INST] Silent install means overrides all existing older"
+  #echo_info "[ADT_INST] data and the installation needs least user interaction"
+  #echo_info "[ADT_INST] If you want to use silent installation, please enter S:"
+  #echo_info "[ADT_INST] If you want to customize installation, please enter C:"
+  #echo_info "[ADT_INST} If you want to exit current installation, please enter X:"
+  echo_info "[ADT_INST] There're two ways you can do installation: silent mode or interactive mode. To choose silent mode, which means you're opt the system to override the existing data under the specified installation directory structures if they exist without further prompt for your confirmation.  Please be cautious with this selection which may trigger your lose data that you may still need.  With the interactive mode, you have to closely monitor the installation process, since it will prompt you each step it need to override some existing data.  To choose silent mode, please enter [S], for interactive mode, please enter [I] or [X] to exit the installation."
   echo_info "[ADT_INST] Please enter your selections here:"
   read YOCTOADT_SEL
   YOCTOADT_SEL=`tr '[a-z]' '[A-Z]'<<<"$YOCTOADT_SEL"`
   if [ "$YOCTOADT_SEL" == "S" ]; then
     return "0"
-  elif [ "$YOCTOADT_SEL" == "C" ]; then
+  elif [ "$YOCTOADT_SEL" == "I" ]; then
     return "1"
   elif [ "$YOCTOADT_SEL" == "X" ]; then
     echo_info "\n############################################################"
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal b/meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal
index 9cad757..87e9e54 100755
--- a/meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal
@@ -46,7 +46,7 @@ parse_config()
 install_native_sdk()
 {
 
-echo_info "\n[ADT_INST] Start installing selected native ADT for archs: $YOCTOADT_TARGETS..."
+echo_info "\nStart installing selected native ADT for archs: $YOCTOADT_TARGETS..."
 
 # where the packages are installed. Currently only / is supported
 NATIVE_INSTALL_DIR="/"
@@ -57,72 +57,80 @@ if [ -d "$INSTALL_FOLDER" ]; then
 fi
 
 #Now begin to install native sdk and extract qemu rootfs which needs privilege rights
-echo_info "\n[ADT_INST] Please Notice Continuing installation requires sudo password ...\n"
-
+echo_info "#######################################################################"
+echo_info "Please note from this point on installation requires sudo password ..."
+echo_info "#######################################################################"
+username='id -nu'
 #we need to make this directory firstly since opkg need to use it.
 OPKG_LOCK_DIR="$NATIVE_INSTALL_DIR/$OPKG_LIBDIR/opkg"
 if [ ! -d "$OPKG_LOCK_DIR" ]; then
-  sudo mkdir -p $OPKG_LOCK_DIR
-  echo_info "[ADT_INST] Successfully create directory $OPKG_LOCK_DIR. "
+  #sudo mkdir -p $OPKG_LOCK_DIR
+  su -c "mkdir -p $OPKG_LOCK_DIR" $username
+  echo_info "Successfully create directory $OPKG_LOCK_DIR. "
 #if user delete /opt/poky, while dangling folders there, report error
 elif [ ! -d "$INSTALL_FOLDER" ]; then
   echo_info "[ADT_INST] Dangling opkg cache folder $OPKG_LOCK_DIR detected. Continue installation will remove the folder!"
   confirm_install $1
-  sudo rm -rf $OPKG_LOCK_DIR
-  sudo mkdir -p $OPKG_LOCK_DIR
+  #sudo rm -rf $OPKG_LOCK_DIR
+  su -c "rm -rf $OPKG_LOCK_DIR" $username
+  #sudo mkdir -p $OPKG_LOCK_DIR
+  su -c "mkdir -p $OPKG_LOCK_DIR" $username
 #if user are updating installing, just let him/her go, give her/him prompt
 else
-  echo_info "[ADT_INST] ADT has already been installed. Will update its contents..."
+  echo_info "ADT has already been installed. Will update its contents..."
 fi
 
 #first update repository
 OPKG_CMD="sudo $LOCAL_OPKG_LOC/bin/opkg-cl"
 
-echo_info "[ADT_INST] Updateing opkg..."
+echo_info "Updating opkg..."
 $OPKG_CMD -f $OPKG_CONFIG_FILE -o $NATIVE_INSTALL_DIR update &>> $YOCTOADT_INSTALL_LOG_FILE
-#echo_info "[ADT_INST] opkg update process ended..."
+echo_info "opkg update process ended..."
 check_result
 
 #install below must sdk-host packages
 OPKG_INSTALL_CMD="$OPKG_CMD --force-overwrite"
 OPKG_INSTALL_NATIVE_CMD="$OPKG_INSTALL_CMD  -f $OPKG_CONFIG_FILE -o $NATIVE_INSTALL_DIR install"
 
-echo_info "[ADT_INST] Installing pseudo nativesdk ...\n"
+echo_info "Installing pseudo nativesdk ...\n"
 $OPKG_INSTALL_NATIVE_CMD pseudo-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
 check_result
-echo_info "[ADT_INST] Installing opkg nativesdk ...\n"
+echo_info "Installing opkg nativesdk ...\n"
 $OPKG_INSTALL_NATIVE_CMD opkg-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
 check_result
-echo_info "[ADT_INST] Installing pkgconfig nativesdk ...\n"
+echo_info "Installing pkgconfig nativesdk ...\n"
 $OPKG_INSTALL_NATIVE_CMD pkgconfig-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
 check_result
 
 for native_target_type in $YOCTOADT_TARGETS; do
   native_target_type=`echo "$native_target_type" | sed -e 's/x86_64/x86-64/' -e 's/x86$/i586/'`
-  echo_info "[ADT_INST] Installing cross toolchain for $native_target_type ..."
-  echo_info "[ADT_INST] Installing binutils for $native_target_type ..."
+  echo_info "Installing cross toolchain for $native_target_type ..."
+  echo_info "Installing binutils for $native_target_type ..."
   $OPKG_INSTALL_NATIVE_CMD binutils-cross-canadian-$native_target_type &>> $YOCTOADT_INSTALL_LOG_FILE
   check_result
-  echo_info "[ADT_INST] Installing gcc for $native_target_type ..."
+  echo_info "Installing gcc for $native_target_type ..."
   $OPKG_INSTALL_NATIVE_CMD gcc-cross-canadian-$native_target_type &>> $YOCTOADT_INSTALL_LOG_FILE
   check_result
-  echo_info "[ADT_INST] Installing gdb for $native_target_type ..."
+  echo_info "Installing gdb for $native_target_type ..."
   $OPKG_INSTALL_NATIVE_CMD gdb-cross-canadian-$native_target_type &>> $YOCTOADT_INSTALL_LOG_FILE
   check_result
 
-  echo_info "[ADT_INST] Installing envrionement file for $native_target_type ..."
+  echo_info "Installing envrionement file for $native_target_type ..."
   $OPKG_INSTALL_NATIVE_CMD meta-environment-$native_target_type &>> $YOCTOADT_INSTALL_LOG_FILE
   check_result
 
 done
 
 # Link the ld.so.cache file into the hosts filesystem
-echo_info "[ADT_INST] Link the ld.so.cache file into the host filesystem"
-sudo ln -s /etc/ld.so.cache $POKY_NATIVE_SYSROOT/etc/ld.so.cache
+if [ ! -f "$POKY_NATIVE_SYSROOT/etc/ld.so.cache" ]; then 
+echo_info "Link the ld.so.cache file into the host filesystem"
+#sudo ln -s /etc/ld.so.cache $POKY_NATIVE_SYSROOT/etc/ld.so.cache
+su -c " ln -s /etc/ld.so.cache $POKY_NATIVE_SYSROOT/etc/ld.so.cache" $username
 check_result
+fi
 
 if [ "$YOCTOADT_QEMU" == "Y" ] || [ "$YOCTOADT_QEMU" = "y" ]; then
-  echo_info "\n[ADT_INST] Installing qemu native ..."
+  echo_info "\nInstalling qemu native ..."
   $OPKG_INSTALL_NATIVE_CMD qemu-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
   check_result
   $OPKG_INSTALL_NATIVE_CMD qemu-helper-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
@@ -130,12 +138,12 @@ if [ "$YOCTOADT_QEMU" == "Y" ] || [ "$YOCTOADT_QEMU" = "y" ]; then
 fi
 
 if [ "$YOCTOADT_NFS_UTIL" == "Y" ] || [ "$YOCTOADT_NFS_UTIL" == "y" ]; then
-  echo_info "\n[ADT_INST] Installing unfs ..."
+  echo_info "\nInstalling unfs ..."
   $OPKG_INSTALL_NATIVE_CMD unfs-server-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
   check_result
 fi
 
-echo_info "\n[ADT_INST] Successfully installed selected native ADT!"
+echo_info "\nSuccessfully installed selected native ADT!"
 }
 
 #Need three input params, $1 -- arch_type(arm powerpc x86 mips) #2 -- user installation type
@@ -162,15 +170,15 @@ if [ "$select_target" == "Y" ]; then
      echo_info "[ADT_INST] Error: YOCTOADT_TARGET_SYSROOT_IMAGE_$1 selection is empty, failed to create target sysroot!"
      return 1
   else
-    echo_info "[ADT_INST] Installing target sysroot for arch: $1, rootfs type: $target_sysroot_image, location: $target_sysroot"
+    echo_info "Installing target sysroot for arch: $1, rootfs type: $target_sysroot_image, location: $target_sysroot"
 
     sysroot_image_name="poky-image-$target_sysroot_image-qemu$1.tar.bz2"
-    echo_info "[ADT_INST] Extracting rootfs: $sysroot_image_name, using pseudo..."
+    echo_info "Extracting rootfs: $sysroot_image_name, using pseudo..."
 
     scripts/extract_rootfs $sysroot_image_name $target_sysroot $POKY_NATIVE_SYSROOT $user_inst_type
     check_result
 
-    echo_info "[ADT_INST] Updating environment script with target sysroot location."
+    echo_info "Updating environment script with target sysroot location."
     if [ "$1" == "x86"  ]; then
       env_filename=`ls $INSTALL_FOLDER/environment-setup-i586*`
     else
diff --git a/meta/recipes-devtools/installer/adt-installer/yocto_installer b/meta/recipes-devtools/installer/adt-installer/yocto_installer
index d15d2f7..c5c4920 100755
--- a/meta/recipes-devtools/installer/adt-installer/yocto_installer
+++ b/meta/recipes-devtools/installer/adt-installer/yocto_installer
@@ -1,4 +1,4 @@
-#!/bin/bash
+#/bin/bash
 # Yocto ADT Installer
 #
 # Copyright (C) 2010 Intel Corp.
@@ -37,7 +37,7 @@ usage ()
 
   echo_info "Systemwide installation. Installation will occur under $INSTALL_FOLDER\n"
   echo_info "############################################################################"
-  echo_info "# Please confirm below installation configurations from yocto_installer.conf"
+  echo_info "# Your system installation configurations from yocto_installer.conf"
   echo_info "############################################################################"
 
   echo_info "# Cross toolchains:\t\t$YOCTOADT_TARGETS"
@@ -45,8 +45,16 @@ usage ()
   echo_info "# Install NFS utilities:\t$YOCTOADT_NFS_UTIL"
   #echo_info "# Install bitbake + UI:\t\t$YOCTOADT_BITBAKE"
   #echo_info "# Install poky metadata:\t$YOCTOADT_METADATA"
-  echo_info "############################################################################\n"
+  #echo_info "############################################################################\n"
 
+    echo_info "\n##############################################################################"
+    echo_info "# Your rootfs image(s) and target sysroot selections from yocto_installer.conf"
+    echo_info "##############################################################################"
+prompt=1
+for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
+  download_images $arch_type $prompt
+done
+    echo_info "############################################################################\n"
   select_install_type
 }
 
@@ -123,10 +131,10 @@ validate_config()
 install_opkg()
 {
 if [ ! -x "$LOCAL_OPKG_LOC/bin/opkg-cl" ]; then
-  echo_info "[ADT_INST]  OPKG is not setup, setting up opkg in local, which is required for installing yocto ADT...\n"
+  echo_info "OPKG is not setup, setting up opkg in local, which is required for installing yocto ADT...\n"
 
   if [ -d $LOCAL_OPKG_LOC ]; then
-    echo_info "[ADT_INST] Deleting old OPKG folder, which doesn't contain executables... "
+    echo_info "Deleting old OPKG folder, which doesn't contain executables... "
     rm -rf $LOCAL_OPKG_LOC
   fi
 
@@ -144,27 +152,26 @@ if [ ! -x "$LOCAL_OPKG_LOC/bin/opkg-cl" ]; then
   cd $opkg_source_dir
   check_result
 
-  echo_info "[ADT_INST] Configure opkg ...\n"
+  echo_info "Configure opkg ...\n"
   ./configure --prefix=$parent_folder/$LOCAL_OPKG_LOC --with-opkglibdir=$OPKG_LIBDIR --disable-curl --disable-ssl-curl --disable-gpg --disable-shave >> $parent_folder/$YOCTOADT_INSTALL_LOG_FILE
   check_result
 
-  echo_info "[ADT_INST] Make opkg ...\n"
+  echo_info "Make opkg ...\n"
   make &>> $parent_folder/$YOCTOADT_INSTALL_LOG_FILE
   check_result
 
-  echo_info "[ADT_INST] Make Install opkg ...\n"
+  echo_info "Make Install opkg ...\n"
   make install &>> $parent_folder/$YOCTOADT_INSTALL_LOG_FILE
   #if meet error when installing opkg, cancel the installation
   check_result
 
   cd $parent_folder
-  echo_info "[ADT_INST] Successfully installed OPKG.\n"
+  echo_info "Successfully installed OPKG.\n"
 fi
 }
 
 confirm_download()
 {
-
 #avoid repeated reminding
 if [ "$override_oldfile" == 1 ]; then
   return $pre_result
@@ -173,9 +180,10 @@ else
 fi
 
 while true; do
-  echo_info "[ADT_INST] Files [$1] already exists. If you continue downloading, old files will be overrided."
-  echo_info "[ADT_INST] Further prompts will not be given if there're more existing files to be downloaded."
-  echo_info "[ADT_INST] Do you want to continue downloading? Please enter Y/N:"
+  #echo_info "[ADT_INST] Files [$1] already exists. If you continue downloading, old files will be overrided."
+  #echo_info "[ADT_INST] Further prompts will not be given if there're more existing files to be downloaded."
+  #echo_info "[ADT_INST] Do you want to continue downloading? Please enter Y/N:"
+  echo_info "[ADT_INST] File [$1] already exists, which means you've downloaded the qemu kernel and rootfs file(s) for the architecture before.  If you continue downloading, old files will be overridden.  Do you want to continue downloading? Please enter Y/N:"
   read YOCTOADT_INSTALL
   YOCTOADT_INSTALL=`tr '[a-z]' '[A-Z]'<<<"$YOCTOADT_INSTALL"`
   if [ "$YOCTOADT_INSTALL" == "Y" ]; then
@@ -196,10 +204,11 @@ if [ -f "$LOCAL_DOWNLOAD/$1" ]; then
   if [ ! "$result" == "0" ]; then
     return
   else
-    echo "[ADT_INST] Removing old existing file [$1]"
+    echo "Removing old existing file [$1]"
     rm -rf "$LOCAL_DOWNLOAD/$1" 
   fi
 fi
+echo_info "Downloading file: $1..."
 wget "$YOCTOADT_ROOTFS_LOC/$1" -P $LOCAL_DOWNLOAD --progress=bar:force 2>&1 | tee -a "$YOCTOADT_INSTALL_LOG_FILE" 
 }
 
@@ -216,12 +225,12 @@ get_qemu_image()
     qemu_kernel="zImage-qemu$1.bin"
   fi
 
-  echo_info "[ADT_INST] Downloading qemu kernel binary: $qemu_kernel"
+  #echo_info "[ADT_INST] Downloading qemu kernel binary: $qemu_kernel"
   download_file $qemu_kernel
   check_result
   
   for image_type in $select_rootfs; do
-    echo_info "[ADT_INST] Downloading rootfs file: poky-image-$image_type-qemu$1.tar.bz2"
+    #echo_info "[ADT_INST] Downloading rootfs file: poky-image-$image_type-qemu$1.tar.bz2"
     filename="poky-image-$image_type-qemu$1.tar.bz2"
     download_file $filename
     check_result
@@ -241,16 +250,19 @@ download_images()
     select_sysroot_image=`eval echo $select_sysroot_image_var`
     select_sysroot=`eval echo $select_sysroot_var`
 
-    echo_info "\n############################################################################"
-    echo_info "# To be downloaded rootfs image details defined in yocto_installer.conf"
-    echo_info "############################################################################"
+    if [ $2 ]; then
+    #echo_info "\n############################################################################"
+    #echo_info "# To be downloaded rootfs image details defined in yocto_installer.conf"
+    #echo_info "############################################################################"
     echo_info "# Target architecture:\t\t$1"
     echo_info "# Root_fs images:\t\t$select_rootfs"
     echo_info "# Target sysroot image:\t\t$select_sysroot_image"
     echo_info "# Target sysroot dir:\t\t$select_sysroot"
-    echo_info "############################################################################\n"
-
+    echo_info "\n"
+    #echo_info "############################################################################\n"
+    else
     get_qemu_image $1 $select_rootfs
+    fi
   fi
 }
 
@@ -310,7 +322,7 @@ install_opkg
 
 #Create folders for holding rootfs/qemu images
 if [ ! -d "$LOCAL_DOWNLOAD" ]; then
-  echo_info "[ADT_INST] Creating new images downloading folder: $LOCAL_DOWNLOAD ..."
+  echo_info "Creating new images downloading folder: $LOCAL_DOWNLOAD ..."
   mkdir -p $LOCAL_DOWNLOAD
 fi
 
-- 
1.7.0.4


