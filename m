Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C0BEA4C811EC
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:48 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Jan 2011 15:47:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="693216383"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 15:47:47 -0800
Message-Id: <2580a1c59bdef3e029980e01dd3ad01a7a7f1e15.1294099429.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Liping Ke <liping.ke@intel.com>
Date: Wed, 22 Dec 2010 08:49:33 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 12/59] sudo is controlled in smaller granularity.
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
X-List-Received-Date: Mon, 03 Jan 2011 23:47:49 -0000

Now parsing configuration file is not under sudo environment.

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 scripts/adt-installer/scripts/util                 |   57 ----------------
 .../adt-installer/scripts/yocto_installer_internal |   69 ++++++--------------
 scripts/adt-installer/yocto_installer              |   56 ++++++++++++++--
 3 files changed, 70 insertions(+), 112 deletions(-)

diff --git a/scripts/adt-installer/scripts/util b/scripts/adt-installer/scripts/util
index 530cf73..99ce7e2 100644
--- a/scripts/adt-installer/scripts/util
+++ b/scripts/adt-installer/scripts/util
@@ -53,67 +53,10 @@ check_result()
   fi
 }
 
-confirm_download()
-{
-while true; do
-  echo_info "[ADT_INST] File [ $1 ] to be downloaded already exists."
-  echo_info "[ADT_INST] Do you want to continue downloading? If yes, old file will be removed. Please enter Y/N:"
-  read YOCTOADT_INSTALL
-  YOCTOADT_INSTALL=`tr '[a-z]' '[A-Z]'<<<"$YOCTOADT_INSTALL"`
-  if [ "$YOCTOADT_INSTALL" == "Y" ]; then
-    return 0
-  elif [ "$YOCTOADT_INSTALL" == "N" ]; then
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
-    echo "[ADT_INST] Removing old existing file [$1]"
-    rm -rf "$LOCAL_DOWNLOAD/$1" 
-  fi
-fi
-wget "$YOCTOADT_ROOTFS_LOC/$1" -P $LOCAL_DOWNLOAD --progress=bar:force 2>&1 | tee -a "$YOCTOADT_INSTALL_LOG_FILE" 
-}
-
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
-source $config_file
-
-LOCAL_OPKG_LOC="./opkg/build/opkg"
-LOCAL_OPKG_FOLDER="./opkg/build"
-LOCAL_OPKG_SOURCE_FILE="$LOCAL_OPKG_FOLDER/opkg-*.tar.gz"
-OPKG_LIBDIR="/var/lib"
-
-# List all supported root fs types and target types,
-# it will be used in user configuration validity checking
-YOCTOADT_SUPPORTED_ROOTFS="minimal sato sdk lsb"
-YOCTOADT_SUPPORTED_TARGETS="x86 x86_64 arm powerpc mips"
-# Different host (32 bit or 64 bit) will have different opkg
-# configuration files
-YOCTOADT_OPKG_CONF_FILE_32="./opkg/conf/opkg-sdk-i586.conf"
-YOCTOADT_OPKG_CONF_FILE_64="./opkg/conf/opkg-sdk-x86_64.conf"
 # yocto adt installation log file
 YOCTOADT_INSTALL_LOG_FILE="yocto_installer.log"
 # Temp folders holding qemu/rootfs downloaded images
 # It will be put into the installation folder
 LOCAL_DOWNLOAD="./download_image"
-INSTALL_FOLDER=/opt/poky/$YOCTOADT_VERSION
-
 
 
diff --git a/scripts/adt-installer/scripts/yocto_installer_internal b/scripts/adt-installer/scripts/yocto_installer_internal
index 68548ff..151d8f4 100755
--- a/scripts/adt-installer/scripts/yocto_installer_internal
+++ b/scripts/adt-installer/scripts/yocto_installer_internal
@@ -56,24 +56,27 @@ if [ -d "$INSTALL_FOLDER" ]; then
   confirm_install
 fi
 
+#Now begin to install native sdk and extract qemu rootfs which needs privilege rights
+echo_info "\n[ADT_INST] Please Notice Continuing installation requires sudo password ...\n"
+
 #we need to make this directory firstly since opkg need to use it.
 OPKG_LOCK_DIR="$NATIVE_INSTALL_DIR/$OPKG_LIBDIR/opkg"
 if [ ! -d "$OPKG_LOCK_DIR" ]; then
-  mkdir -p $OPKG_LOCK_DIR
+  sudo mkdir -p $OPKG_LOCK_DIR
   echo_info "[ADT_INST] Successfully create directory $OPKG_LOCK_DIR. "
 #if user delete /opt/poky, while dangling folders there, report error
 elif [ ! -d "$INSTALL_FOLDER" ]; then
   echo_info "[ADT_INST] Dangling opkg cache folder $OPKG_LOCK_DIR detected. Continue installation will remove the folder!"
   confirm_install
-  rm -rf $OPKG_LOCK_DIR
-  mkdir -p $OPKG_LOCK_DIR
+  sudo rm -rf $OPKG_LOCK_DIR
+  sudo mkdir -p $OPKG_LOCK_DIR
 #if user are updating installing, just let him/her go, give her/him prompt
 else
   echo_info "[ADT_INST] ADT has already been installed. Will update its contents..."
 fi
 
 #first update repository
-OPKG_CMD=$LOCAL_OPKG_LOC/bin/opkg-cl
+OPKG_CMD="sudo $LOCAL_OPKG_LOC/bin/opkg-cl"
 
 echo_info "[ADT_INST] Updateing opkg..."
 $OPKG_CMD -f $OPKG_CONFIG_FILE -o $NATIVE_INSTALL_DIR update &>> $YOCTOADT_INSTALL_LOG_FILE
@@ -130,46 +133,7 @@ fi
 echo_info "\n[ADT_INST] Successfully installed selected native ADT!"
 }
 
-#Need three input params, $1 -- arch_type(arm powerpc x86 mips) $2 --- rootfs type (one of sdk sato minimal lsb)
-#$3 --- rootfs extraction dir
-
-extract_rootfs()
-{
-
-  PSEUDO_LOCALSTATEDIR="$POKY_NATIVE_SYSROOT/var/pseudo"
-  PSEUDO_COMMAND="$POKY_NATIVE_SYSROOT/usr/bin/pseudo"
-  PSEUDO_OPTS="-P $POKY_NATIVE_SYSROOT/usr"
-
-  TAR_OPTS="-xjf"
-  PSEUDO_OPTS="-P $POKY_NATIVE_SYSROOT/usr"
-
-
-  rm -rf $PSEUDO_LOCALSTATEDIR
-
-  if [ -d "$3" ]; then
-    echo_info "[ADT_INST] Target sysroot location: $3, already exists! If you continue installation, this folder will be re-created."
-    confirm_install
-    rm -rf "$3"
-  fi
-
-  if [ ! -d "$3" ]; then
-    echo_info "[ADT_INST] Creating directory $3..."
-    mkdir -p "$3"
-  fi
-
-  mkdir -p "$PSEUDO_LOCALSTATEDIR"
-  touch "$PSEUDO_LOCALSTATEDIR/pseudo.pid"
-
-  echo_info "[ADT_INST] Extracting rootfs: poky-image-$2-qemu$1.tar.bz2, using pseudo..."
-
-  $PSEUDO_COMMAND $PSEUDO_OPTS tar -C $3 "$TAR_OPTS" $PWD/$LOCAL_DOWNLOAD/poky-image-$2-qemu$1.tar.bz2 &>> $YOCTOADT_INSTALL_LOG_FILE
-  check_result
-  #echo_info "[ADT_INST] change owner for rootfs directory $3 to $4:$5"
-  chown -R $4:$5 $3
-  check_result
-  #echo_info "[ADT_INST] root_fs image successfully extracted to $3"
-}
-
+#Need three input params, $1 -- arch_type(arm powerpc x86 mips) $2:$3 user:group info
 
 install_target()
 {
@@ -192,12 +156,18 @@ if [ "$select_target" == "Y" ]; then
      echo_info "[ADT_INST] Error: YOCTOADT_TARGET_SYSROOT_IMAGE_$1 selection is empty, failed to create target sysroot!"
      return 1
   else
-     echo_info "[ADT_INST] Installing target sysroot for arch: $1, rootfs type: $target_sysroot_image, location: $target_sysroot"
+    echo_info "[ADT_INST] Installing target sysroot for arch: $1, rootfs type: $target_sysroot_image, location: $target_sysroot"
 
-  #if [[ "$target_sysroot" != "" && "$target_sysroot_image" != "" ]]; then
-    extract_rootfs $1 $target_sysroot_image $target_sysroot $2 $3
-    # Fill $target_sysroot into /opt/poky/$YOCTOADT_VERION/environment-setup-(arch)-poky-linux-gnueabi
+    sysroot_image_name="poky-image-$target_sysroot_image-qemu$1.tar.bz2"
+    echo_info "[ADT_INST] Extracting rootfs: $sysroot_image_name, using pseudo..."
 
+    sudo scripts/extract_rootfs $sysroot_image_name $target_sysroot $POKY_NATIVE_SYSROOT
+    # Fill $target_sysroot into /opt/poky/$YOCTOADT_VERION/environment-setup-(arch)-poky-linux-gnueabi
+    check_result
+    echo_info "[ADT_INST] change owner for rootfs directory $target_sysroot to $2:$3"
+    sudo chown -R $2:$3 $target_sysroot
+    check_result
+ 
     echo_info "[ADT_INST] Updating environment script with target sysroot location."
     if [ "$1" == "x86"  ]; then
       env_filename=`ls $INSTALL_FOLDER/environment-setup-i586*`
@@ -205,7 +175,7 @@ if [ "$select_target" == "Y" ]; then
       env_filename=`ls $INSTALL_FOLDER/environment-setup-$1*`
     fi
     if [ ! -z "$env_filename" ]; then
-      sed -i -e "s%##SDKTARGETSYSROOT##%$target_sysroot%g" $env_filename
+      sudo sed -i -e "s%##SDKTARGETSYSROOT##%$target_sysroot%g" $env_filename
     else
       echo_info "[ADT_INST] Error: Failed to find environment script for arch: $1"
       return 1 
@@ -218,6 +188,7 @@ fi
 
 
 #Main part
+. scripts/data_define
 . scripts/util
 
 parse_config
diff --git a/scripts/adt-installer/yocto_installer b/scripts/adt-installer/yocto_installer
index f85a773..975befc 100755
--- a/scripts/adt-installer/yocto_installer
+++ b/scripts/adt-installer/yocto_installer
@@ -142,23 +142,59 @@ if [ ! -x "$LOCAL_OPKG_LOC/bin/opkg-cl" ]; then
 
   tar zvfx opkg-*.gz &>> $parent_folder/$YOCTOADT_INSTALL_LOG_FILE
   check_result
-  cd opkg-*
+
+  opkg_untar_dir=`ls -d opkg-*`
+  cd $opkg_untar_dir
+  check_result
+
   echo_info "[ADT_INST] Configure opkg ...\n"
   ./configure --prefix=$parent_folder/$LOCAL_OPKG_LOC --with-opkglibdir=$OPKG_LIBDIR --disable-curl --disable-ssl-curl --disable-gpg --disable-shave >> $parent_folder/$YOCTOADT_INSTALL_LOG_FILE
   check_result
+
   echo_info "[ADT_INST] Make opkg ...\n"
   make &>> $parent_folder/$YOCTOADT_INSTALL_LOG_FILE
   check_result
+
   echo_info "[ADT_INST] Make Install opkg ...\n"
   make install &>> $parent_folder/$YOCTOADT_INSTALL_LOG_FILE
   #if meet error when installing opkg, cancel the installation
   check_result
-  cd $parent_folder
 
+  cd $parent_folder
   echo_info "[ADT_INST] Successfully installed OPKG.\n"
 fi
 }
 
+confirm_download()
+{
+while true; do
+  echo_info "[ADT_INST] File [ $1 ] to be downloaded already exists."
+  echo_info "[ADT_INST] Do you want to continue downloading? If yes, old file will be removed. Please enter Y/N:"
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
+download_file()
+{
+if [ -f "$LOCAL_DOWNLOAD/$1" ]; then
+  confirm_download $1
+  result="$?"
+  if [ ! "$result" == "0" ]; then
+    return
+  else
+    echo "[ADT_INST] Removing old existing file [$1]"
+    rm -rf "$LOCAL_DOWNLOAD/$1" 
+  fi
+fi
+wget "$YOCTOADT_ROOTFS_LOC/$1" -P $LOCAL_DOWNLOAD --progress=bar:force 2>&1 | tee -a "$YOCTOADT_INSTALL_LOG_FILE" 
+}
+
 
 
 #Need two input params, $1 -- arch_type(arm powerpc x86 mips) $2 rootfs_image_type (a list of sdk sato minimal lsb)
@@ -239,8 +275,19 @@ if [ ! -f "scripts/yocto_installer_internal" ]; then
   exit -1
 fi
 
+config_file="yocto_installer.conf"
+if [ ! -f "$config_file" ]; then
+  echo_info "[ADT_INST] Error: Installation configuration file: yocto_installer.conf is not found!\n"
+  echo_info "\n##################################################################################"
+  echo_info "# Meet error(s) when installing Yocto ADT. Please check log file for details. "
+  echo_info "##################################################################################\n"
+  exit -1
+fi
+
+. scripts/data_define
 . scripts/util
 
+
 if [ -f "$YOCTOADT_INSTALL_LOG_FILE" ]; then
   rm $YOCTOADT_INSTALL_LOG_FILE
 fi
@@ -262,12 +309,9 @@ for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
   download_images $arch_type
 done
 
-#Now begin to install native sdk and extract qemu rootfs which needs privilege rights
-echo_info "[ADT_INST] Continuing installation requires sudo password ..."
-
 username=`id -nu`
 groupname=`id -ng`
-sudo scripts/yocto_installer_internal $username $groupname
+scripts/yocto_installer_internal $username $groupname
 
 result="$?"
 #echo_info "\n############################################################"
-- 
1.7.0.4


