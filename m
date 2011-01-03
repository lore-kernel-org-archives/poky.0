Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id BD4184C81118
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:47 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Jan 2011 15:47:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="693216378"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 15:47:47 -0800
Message-Id: <f5b61a9ebf262d8086130e0630643b0b5af5d300.1294099429.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Jessica Zhang <jessica.zhang@intel.com>
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 04/59] more messages cleanup, fix issues: 1) download all the specified rootfs fiels, 2) add check for yocto_installer_internal, 3) error out when sysroot image file or sysroot location are empty
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
X-Original-Date: Wed, 15 Dec 2010 01:22:58 -0800
X-List-Received-Date: Mon, 03 Jan 2011 23:47:48 -0000

Signed-off-by: Jessica Zhang <jessica.zhang@intel.com>
---
 scripts/adt-installer/util                     |   16 +++---
 scripts/adt-installer/yocto_installer          |   75 ++++++++++++++----------
 scripts/adt-installer/yocto_installer_internal |   59 ++++++++++--------
 3 files changed, 84 insertions(+), 66 deletions(-)

diff --git a/scripts/adt-installer/util b/scripts/adt-installer/util
index 92261a8..b041a08 100644
--- a/scripts/adt-installer/util
+++ b/scripts/adt-installer/util
@@ -35,7 +35,7 @@ while true; do
     break
   elif [ "$YOCTOADT_INSTALL" == "N" ]; then
     echo_info "\n############################################################"
-    echo_info "# User Cancelled installation!"
+    echo_info "# User cancelled installation!"
     echo_info "############################################################\n"
     exit -1
   fi
@@ -62,19 +62,19 @@ check_result()
 {
   result="$?"
   if [ ! "$result" == "0" ]; then
-     echo_info "\n############################################################"
-     echo_info "# Meet error(s) when installing Yocto ADT. "
-     echo_info "############################################################\n"
+     echo_info "\n#############################################################################"
+     echo_info "# Meet error(s) when installing Yocto ADT! Please check log file for details. "
+     echo_info "#############################################################################\n"
     exit -1
   fi
 }
 
 config_file="yocto_installer.conf"
 if [ ! -f "$config_file" ]; then
-  echo_info "[ADT_INST] user installation configuration file is not found!\n"
-  echo_info "\n############################################################"
-  echo_info "# Meet error(s) when installing Yocto ADT. "
-  echo_info "############################################################\n"
+  echo_info "[ADT_INST] Error: Installation configuration file: yocto_installer.conf is not found!\n"
+  echo_info "\n##################################################################################"
+  echo_info "# Meet error(s) when installing Yocto ADT. Please check log file for details. "
+  echo_info "##################################################################################\n"
   exit -1
 fi
 
diff --git a/scripts/adt-installer/yocto_installer b/scripts/adt-installer/yocto_installer
index 7bfc988..f7ac2db 100755
--- a/scripts/adt-installer/yocto_installer
+++ b/scripts/adt-installer/yocto_installer
@@ -36,16 +36,16 @@ usage ()
   echo_info "#########################################################################\n"
 
   echo_info "Systemwide installation. Installation will occur under $INSTALL_FOLDER\n"
-  echo_info "#########################################################################"
+  echo_info "############################################################################"
   echo_info "# Please confirm below installation configurations from yocto_installer.conf"
-  echo_info "#########################################################################"
+  echo_info "############################################################################"
 
   echo_info "# Cross toolchains:\t\t$YOCTOADT_TARGETS"
   echo_info "# Install Qemu:\t\t\t$YOCTOADT_QEMU"
   echo_info "# Install NFS utilities:\t$YOCTOADT_NFS_UTIL"
-  echo_info "# Install bitbake + UI:\t\t$YOCTOADT_BITBAKE"
-  echo_info "# Install poky metadata:\t$YOCTOADT_METADATA"
-  echo_info "#########################################################################\n"
+  #echo_info "# Install bitbake + UI:\t\t$YOCTOADT_BITBAKE"
+  #echo_info "# Install poky metadata:\t$YOCTOADT_METADATA"
+  echo_info "############################################################################\n"
 
   confirm_install
 }
@@ -123,15 +123,14 @@ validate_config()
 install_opkg()
 {
 if [ ! -x "$LOCAL_OPKG_LOC/bin/opkg-cl" ]; then
-  echo_info "[ADT_INST]  OPKG is not setup. Setting it up is required for installing yocto ADT.\n"
-  echo_info "[ADT_INST]  We're now setting up opkg in local ...\n "
+  echo_info "[ADT_INST]  OPKG is not setup, setting up opkg in local, which is required for installing yocto ADT...\n"
   if [ ! -f opkg-*.gz ]; then
     echo_info "[ADT_INST] Error: OPKG source tarball is not found!"
     exit -1
   fi
 
   if [ -d "$LOCAL_OPKG_LOC" ]; then
-    echo_info "[ADT_INST] Delete old OPKG installation folders. "
+    echo_info "[ADT_INST] Deleting old OPKG folder, which doesn't contain executables... "
     rm -rf $LOCAL_OPKG_LOC
   fi
 
@@ -160,20 +159,20 @@ fi
 get_qemu_image()
 {
   if [ "$1" == "x86" ]; then
-    qemu_kernel="$YOCTOADT_ROOTFS_LOC/bzImage-qemu$1.bin"
+    qemu_kernel="bzImage-qemu$1.bin"
   elif [ "$1" == "arm" ]; then
-    qemu_kernel="$YOCTOADT_ROOTFS_LOC/zImage-qemu$1.bin"
+    qemu_kernel="zImage-qemu$1.bin"
   else
-    qemu_kernel="$YOCTOADT_ROOTFS_LOC/zImage-qemu$1.bin"
+    qemu_kernel="zImage-qemu$1.bin"
   fi
 
   echo_info "[ADT_INST] Downloading qemu kernel binary: $qemu_kernel"
-  wget $qemu_kernel -P $LOCAL_DOWNLOAD &>> $YOCTOADT_INSTALL_LOG_FILE
+  wget "$YOCTOADT_ROOTFS_LOC/$qemu_kernel" -P $LOCAL_DOWNLOAD &>> $YOCTOADT_INSTALL_LOG_FILE
   check_result
   
-  for image_type in $2; do
-    echo_info "[ADT_INST] Downloading rootfs file: poky-image-$2-qemu$1.tar.bz2"
-    wget "$YOCTOADT_ROOTFS_LOC/poky-image-$2-qemu$1.tar.bz2" -P $LOCAL_DOWNLOAD &>> $YOCTOADT_INSTALL_LOG_FILE
+  for image_type in $select_rootfs; do
+    echo_info "[ADT_INST] Downloading rootfs file: poky-image-$image_type-qemu$1.tar.bz2"
+    wget "$YOCTOADT_ROOTFS_LOC/poky-image-$image_type-qemu$1.tar.bz2" -P $LOCAL_DOWNLOAD &>> $YOCTOADT_INSTALL_LOG_FILE
     check_result
   done
 }
@@ -191,14 +190,14 @@ download_images()
     select_sysroot_image=`eval echo $select_sysroot_image_var`
     select_sysroot=`eval echo $select_sysroot_var`
 
-    echo_info "\n#########################################################################"
+    echo_info "\n############################################################################"
     echo_info "# Please confirm below installation configurations from yocto_installer.conf"
-    echo_info "#########################################################################"
+    echo_info "############################################################################"
     echo_info "# Target architecture:\t\t$1"
-    echo_info "# Downloading rootfs images:\t$select_rootfs"
-    echo_info "# Extract sysroot image:\t$select_sysroot_image"
-    echo_info "# Install sysroot dir:\t\t$select_sysroot"
-    echo_info "#########################################################################\n"
+    echo_info "# Root_fs images:\t\t$select_rootfs"
+    echo_info "# Target sysroot image:\t\t$select_sysroot_image"
+    echo_info "# Target sysroot dir:\t\t$select_sysroot"
+    echo_info "############################################################################\n"
 
     confirm_install
 
@@ -218,13 +217,20 @@ run_path=`dirname $0`
 cd $run_path
 
 if [ ! -f "util" ]; then
-  echo -e "[ADT_INST] Error: Script file $script_file can't be found under $run_path!\n"
-  echo -e "\n############################################################"
-  echo -e "# Meet error(s) when installing Yocto ADT. "
-  echo -e "############################################################\n"
+  echo -e "[ADT_INST] Error: Script file: util, can't be found under: $run_path!"
+  echo -e "\n#############################################################################"
+  echo -e "# Meet error(s) when installing Yocto ADT! Please check log file for details. "
+  echo -e "#############################################################################\n"
   exit -1
 fi
 
+if [ ! -f "yocto_installer_internal" ]; then
+  echo -e "[ADT_INST] Error: Script file: yocto_installer_internal, can't be found under: $run_path!"
+  echo -e "\n#############################################################################"
+  echo -e "# Meet error(s) when installing Yocto ADT! Please check log file for details. "
+  echo -e "#############################################################################\n"
+  exit -1
+fi
 
 . util
 
@@ -240,10 +246,10 @@ install_opkg
 
 #Create folders for holding rootfs/qemu images
 if [ ! -d "$LOCAL_DOWNLOAD" ]; then
-  echo_info "[ADT_INST] create new folders $LOCAL_DOWNLOAD for downloading images!"
+  echo_info "[ADT_INST] Creating new images downloading folder: $LOCAL_DOWNLOAD ..."
   mkdir -p $LOCAL_DOWNLOAD
 else
-  echo_info "[ADT_INST] $LOCAL_DOWNLOAD already exists, continue installation will override its contents!"
+  echo_info "[ADT_INST] Images downloading folder: $LOCAL_DOWNLOAD, already exists! Continue installation will override its contents!"
   confirm_install
   rm -rf $LOCAL_DOWNLOAD
   mkdir -p $LOCAL_DOWNLOAD
@@ -257,14 +263,19 @@ done
 #Now begin to install native sdk and extract qemu rootfs which needs privilege rights
 echo_info "[ADT_INST] Continuing installation requires sudo password ..."
 
-sudo ./yocto_installer_internal
+username=`id -nu`
+groupname=`id -ng`
+sudo ./yocto_installer_internal $username $groupname
+
 result="$?"
-echo_info "\n############################################################"
+#echo_info "\n############################################################"
 if [ "$result" == "0" ]; then
+  echo_info "\n############################################################"
   echo_info "# Yocto ADT has been successfully installed."
-else
-  echo_info "# Meet error(s) during installing Yocto ADT. "
+  echo_info "############################################################\n"
+#else
+#  echo_info "# Meet error(s) during installing Yocto ADT! Please  "
 
 fi
-echo_info "############################################################\n"
+#echo_info "############################################################\n"
 
diff --git a/scripts/adt-installer/yocto_installer_internal b/scripts/adt-installer/yocto_installer_internal
index 63e3992..c395e1b 100755
--- a/scripts/adt-installer/yocto_installer_internal
+++ b/scripts/adt-installer/yocto_installer_internal
@@ -46,14 +46,13 @@ parse_config()
 install_native_sdk()
 {
 
-echo_info "\n[ADT_INST] Begin to install selected native ADT for archs [$YOCTOADT_TARGETS]!"
+echo_info "\n[ADT_INST] Start installing selected native ADT for archs: $YOCTOADT_TARGETS..."
 
 # where the packages are installed. Currently only / is supported
 NATIVE_INSTALL_DIR="/"
 
 if [ -d "$INSTALL_FOLDER" ]; then
-  echo_info "[ADT_INST] Folder \"$INSTALL_FOLDER\" allready exists! Continous installation will override its contents."
-  echo_info "[ADT_INST] If you continue installation, this folder might be overriden."
+  echo_info "[ADT_INST] Native ADT installation directory \"$INSTALL_FOLDER\" already exists! Continue installation will override its contents!"
   confirm_install
 fi
 
@@ -64,19 +63,19 @@ if [ ! -d "$OPKG_LOCK_DIR" ]; then
   echo_info "[ADT_INST] Successfully create directory $OPKG_LOCK_DIR. "
 #if user delete /opt/poky, while dangling folders there, report error
 elif [ ! -d "$INSTALL_FOLDER" ]; then
-  echo_info "[ADT_INST] Dangling opkg cache folder $OPKG_LOCK_DIR detected. Continous installation will remove the folder"
+  echo_info "[ADT_INST] Dangling opkg cache folder $OPKG_LOCK_DIR detected. Continue installation will remove the folder!"
   confirm_install
   rm -rf $OPKG_LOCK_DIR
   mkdir -p $OPKG_LOCK_DIR
 #if user are updating installing, just let him/her go, give her/him prompt
 else
-  echo_info "[ADT_INST] ADT has been installed before. It's update install..."
+  echo_info "[ADT_INST] ADT has already been installed. Will update its contents..."
 fi
 
 #first update repository
-echo_info "[ADT_INST] opkg update process beginning..."
+echo_info "[ADT_INST] Updateing opkg..."
 ./opkg/bin/opkg-cl -f $OPKG_CONFIG_FILE -o $NATIVE_INSTALL_DIR update &>> $YOCTOADT_INSTALL_LOG_FILE
-echo_info "[ADT_INST] opkg update process ended..."
+#echo_info "[ADT_INST] opkg update process ended..."
 check_result
 
 #install below must sdk-host packages
@@ -112,7 +111,7 @@ for native_target_type in $YOCTOADT_TARGETS; do
 
 done
 
-if [ "$YOCTOADT_QEMU" == "Y" ]; then
+if [ "$YOCTOADT_QEMU" == "Y" ] || [ "$YOCTOADT_QEMU" = "y" ]; then
   echo_info "\n[ADT_INST] Installing qemu native ..."
   $OPKG_INSTALL_NATIVE_CMD qemu-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
   check_result
@@ -120,13 +119,13 @@ if [ "$YOCTOADT_QEMU" == "Y" ]; then
   check_result
 fi
 
-if [ "$YOCTOADT_NFS_UTIL" == "Y" ]; then
+if [ "$YOCTOADT_NFS_UTIL" == "Y" ] || [ "$YOCTOADT_NFS_UTIL" == "y" ]; then
   echo_info "\n[ADT_INST] Installing unfs ..."
   $OPKG_INSTALL_NATIVE_CMD unfs-server-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
   check_result
 fi
 
-echo_info "\n[ADT_INST]All selected native ADT installed successfully!"
+echo_info "\n[ADT_INST] Successfully installed selected native ADT!"
 }
 
 #Need three input params, $1 -- arch_type(arm powerpc x86 mips) $2 --- rootfs type (one of sdk sato minimal lsb)
@@ -146,25 +145,27 @@ extract_rootfs()
   rm -rf $PSEUDO_LOCALSTATEDIR
 
   if [ -d "$3" ]; then
-    echo_info "[ADT_INST] $3 already exists! Continous installation will override its contents!"
-    echo_info "[ADT_INST] If you continue installation, this folder will be removed."
+    echo_info "[ADT_INST] Target sysroot location: $3, already exists! If you continue installation, this folder will be re-created."
     confirm_install
     rm -rf "$3"
   fi
 
-  mkdir -p "$PSEUDO_LOCALSTATEDIR"
-  touch "$PSEUDO_LOCALSTATEDIR/pseudo.pid"
-
-  echo_info "[ADT_INST] Extracting rootfs tarball using pseudo..."
-
   if [ ! -d "$3" ]; then
-    echo_info "[ADT_INST] Creating directory $3"
+    echo_info "[ADT_INST] Creating directory $3..."
     mkdir -p "$3"
   fi
 
+  mkdir -p "$PSEUDO_LOCALSTATEDIR"
+  touch "$PSEUDO_LOCALSTATEDIR/pseudo.pid"
+
+  echo_info "[ADT_INST] Extracting rootfs: poky-image-$2-qemu$1.tar.bz2, using pseudo..."
+
   $PSEUDO_COMMAND $PSEUDO_OPTS tar -C $3 "$TAR_OPTS" $PWD/$LOCAL_DOWNLOAD/poky-image-$2-qemu$1.tar.bz2 &>> $YOCTOADT_INSTALL_LOG_FILE
   check_result
-  echo_info "[ADT_INST] root_fs image successfully extracted to $3"
+  #echo_info "[ADT_INST] change owner for rootfs directory $3 to $4:$5"
+  chown -R $4:$5 $3
+  check_result
+  #echo_info "[ADT_INST] root_fs image successfully extracted to $3"
 }
 
 
@@ -182,14 +183,20 @@ if [ "$select_target" == "Y" ]; then
 
   target_sysroot_image_var="\$YOCTOADT_TARGET_SYSROOT_IMAGE_$1"
   target_sysroot_image=`eval echo $target_sysroot_image_var`
-
-  echo_info "[ADT_INST] Installing target sysroot for arch: $1, rootfs type: $target_sysroot_image, location: $target_sysroot"
-
-  if [[ "$target_sysroot" != "" && "$target_sysroot_image" != "" ]]; then
-    extract_rootfs $1 $target_sysroot_image $target_sysroot
+  if [ "$target_sysroot" == "" ]; then
+     echo_info "[ADT_INST] Error: YOCTOADT_TARGET_SYSROOT_$1 selection is empty, failed to create target sysroot!"
+     return 1
+  elif [ "$target_sysroot_image" == "" ]; then
+     echo_info "[ADT_INST] Error: YOCTOADT_TARGET_SYSROOT_IMAGE_$1 selection is empty, failed to create target sysroot!"
+     return 1
+  else
+     echo_info "[ADT_INST] Installing target sysroot for arch: $1, rootfs type: $target_sysroot_image, location: $target_sysroot"
+
+  #if [[ "$target_sysroot" != "" && "$target_sysroot_image" != "" ]]; then
+    extract_rootfs $1 $target_sysroot_image $target_sysroot $2 $3
     # Fill $target_sysroot into /opt/poky/$YOCTOADT_VERION/environment-setup-(arch)-poky-linux-gnueabi
 
-    echo_info "[ADT_INST] Re-generate environment script file according to rootfs location."
+    echo_info "[ADT_INST] Updating environment script with target sysroot location."
     if [ "$1" == "x86"  ]; then
       env_filename=`ls $INSTALL_FOLDER/environment-setup-i586*`
     else
@@ -217,7 +224,7 @@ parse_config
 install_native_sdk
 
 for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
-  install_target $arch_type
+  install_target $arch_type $1 $2
   check_result
 done
 
-- 
1.7.0.4


