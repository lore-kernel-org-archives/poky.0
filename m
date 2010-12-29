Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 50E3A4C811EB
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:55 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="589553098"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
Message-Id: <8b1cb3098643499366fb678e5933f79250e02f69.1294099430.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Jessica Zhang <jessica.zhang@intel.com>
Date: Tue, 28 Dec 2010 16:03:40 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 53/59] change file names, more clean up of messaging, add comments and simplify config file entries, change code support new config file
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
 .../{yocto_installer => adt_installer}             |   86 +++++++++++--------
 .../installer/adt-installer/adt_installer.conf     |   30 +++++++
 ...o_installer_internal => adt_installer_internal} |   23 +++---
 .../installer/adt-installer/yocto_installer.conf   |   43 ----------
 4 files changed, 90 insertions(+), 92 deletions(-)
 rename meta/recipes-devtools/installer/adt-installer/{yocto_installer => adt_installer} (76%)
 create mode 100644 meta/recipes-devtools/installer/adt-installer/adt_installer.conf
 rename meta/recipes-devtools/installer/adt-installer/scripts/{yocto_installer_internal => adt_installer_internal} (88%)
 delete mode 100644 meta/recipes-devtools/installer/adt-installer/yocto_installer.conf

diff --git a/meta/recipes-devtools/installer/adt-installer/yocto_installer b/meta/recipes-devtools/installer/adt-installer/adt_installer
similarity index 76%
rename from meta/recipes-devtools/installer/adt-installer/yocto_installer
rename to meta/recipes-devtools/installer/adt-installer/adt_installer
index c5c4920..9ccb9cb 100755
--- a/meta/recipes-devtools/installer/adt-installer/yocto_installer
+++ b/meta/recipes-devtools/installer/adt-installer/adt_installer
@@ -37,7 +37,7 @@ usage ()
 
   echo_info "Systemwide installation. Installation will occur under $INSTALL_FOLDER\n"
   echo_info "############################################################################"
-  echo_info "# Your system installation configurations from yocto_installer.conf"
+  echo_info "# Your system installation configurations from adt_installer.conf"
   echo_info "############################################################################"
 
   echo_info "# Cross toolchains:\t\t$YOCTOADT_TARGETS"
@@ -48,7 +48,7 @@ usage ()
   #echo_info "############################################################################\n"
 
     echo_info "\n##############################################################################"
-    echo_info "# Your rootfs image(s) and target sysroot selections from yocto_installer.conf"
+    echo_info "# Your rootfs image(s) and target sysroot selections from adt_installer.conf"
     echo_info "##############################################################################"
 prompt=1
 for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
@@ -70,19 +70,21 @@ validate_config()
       fi
     done
     if [ $found == 0 ]; then
-       echo_info "[ADT_INST] Error: YOCTADT_TARGETS in yocto_installer.conf contains invalid entries: $YOCTOADT_TARGETS. Valid values are: $YOCTOADT_SUPPORTED_TARGETS"
-      return 1
+       echo_info "[ADT_INST] Error: YOCTADT_TARGETS in adt_installer.conf contains invalid entries: $YOCTOADT_TARGETS. Valid values are: $YOCTOADT_SUPPORTED_TARGETS"
+       echo -e "\n#############################################################################"
+       echo -e "# Meet error(s) when installing Yocto ADT! Please check log file for details. "
+       echo -e "#############################################################################\n"
+      exit -1
     fi
   done
 
   for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
+    #select_target_var="\$YOCTOADT_TARGET_$arch_type"
+    #select_target=`eval echo $select_target_var`
 
-    select_target_var="\$YOCTOADT_TARGET_$arch_type"
-    select_target=`eval echo $select_target_var`
-
-    if [ "$select_target" != "Y" ] || [ "$selected_target" != "y" ]; then
-      continue;
-    fi
+    #if [ "$select_target" != "Y" ] || [ "$selected_target" != "y" ]; then
+    #  continue;
+    #fi
 
     target_sysroot_image_var="\$YOCTOADT_TARGET_SYSROOT_IMAGE_$arch_type"
     target_sysroot_image=`eval echo $target_sysroot_image_var`
@@ -91,6 +93,10 @@ validate_config()
     select_rootfs_var="\$YOCTOADT_ROOTFS_$arch_type"
     select_rootfs=`eval echo $select_rootfs_var`
 
+    if [ "$select_rootfs" == "" ] && [ "$target_sysroot_image" == "" ]; then
+       continue;
+    fi
+
     for image_type in $select_rootfs; do
 #validate rootfs type defined in YOCTOADT_ROOTFS_{ARCH} is valid and in YOCTOADT_SUPPORTED_ROOTFS
       found=0
@@ -103,7 +109,10 @@ validate_config()
       if [ $found == 0 ]; then
 #the rootfs type listed for downloading is not valid
         echo_info "[ADT_INST] Error: Selected YOCTOADT_ROOTFS_$arch_type value: $image_type, is not valid! Valid values are: $YOCTOADT_SUPPORTED_ROOTFS "
-        return 1
+       echo -e "\n#############################################################################"
+       echo -e "# Meet error(s) when installing Yocto ADT! Please check log file for details. "
+       echo -e "#############################################################################\n"
+        exit -1
       fi
     done
 
@@ -118,11 +127,12 @@ validate_config()
 # the rootfs image to be extracted is not selected
     if [ $found == 0 ]; then
       echo_info "[ADT_INST] Error: YOCTOADT_TARGET_SYSROOT_IMAGE_$arch_type selection: $target_sysroot_image is not included in YOCTOADT_ROOTFS_$arch_type selections: $select_rootfs"
-      return 1
+      echo -e "\n#############################################################################"
+      echo -e "# Meet error(s) when installing Yocto ADT! Please check log file for details. "
+      echo -e "#############################################################################\n"
+      exit -1
     fi
   done
-
-  return 0
 }
 
 
@@ -146,6 +156,9 @@ if [ ! -x "$LOCAL_OPKG_LOC/bin/opkg-cl" ]; then
 
   if [ $opkg_source_dir == "" ]; then
     echo_info "[ADT_INST] Error: OPKG source directory is not found!"
+    echo -e "\n#############################################################################"
+    echo -e "# Meet error(s) when installing Yocto ADT! Please check log file for details. "
+    echo -e "#############################################################################\n"
     exit -1
   fi
 
@@ -183,7 +196,8 @@ while true; do
   #echo_info "[ADT_INST] Files [$1] already exists. If you continue downloading, old files will be overrided."
   #echo_info "[ADT_INST] Further prompts will not be given if there're more existing files to be downloaded."
   #echo_info "[ADT_INST] Do you want to continue downloading? Please enter Y/N:"
-  echo_info "[ADT_INST] File [$1] already exists, which means you've downloaded the qemu kernel and rootfs file(s) for the architecture before.  If you continue downloading, old files will be overridden.  Do you want to continue downloading? Please enter Y/N:"
+  echo_info "\nFile [$1] already exists, which means you've downloaded the qemu kernel and rootfs file(s) before.  If you choose continue downloading, old files will be overridden."
+  echo_info "[ADT_INST] Do you want to continue downloading? Please enter Y/N:"
   read YOCTOADT_INSTALL
   YOCTOADT_INSTALL=`tr '[a-z]' '[A-Z]'<<<"$YOCTOADT_INSTALL"`
   if [ "$YOCTOADT_INSTALL" == "Y" ]; then
@@ -204,12 +218,12 @@ if [ -f "$LOCAL_DOWNLOAD/$1" ]; then
   if [ ! "$result" == "0" ]; then
     return
   else
-    echo "Removing old existing file [$1]"
+    echo "Removing old file [$1]"
     rm -rf "$LOCAL_DOWNLOAD/$1" 
   fi
 fi
 echo_info "Downloading file: $1..."
-wget "$YOCTOADT_ROOTFS_LOC/$1" -P $LOCAL_DOWNLOAD --progress=bar:force 2>&1 | tee -a "$YOCTOADT_INSTALL_LOG_FILE" 
+wget "$YOCTOADT_IPKG_REPO/$1" -P $LOCAL_DOWNLOAD --progress=bar:force 2>&1 | tee -a "$YOCTOADT_INSTALL_LOG_FILE" 
 }
 
 
@@ -239,25 +253,26 @@ get_qemu_image()
 
 download_images()
 {
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
     if [ $2 ]; then
     #echo_info "\n############################################################################"
-    #echo_info "# To be downloaded rootfs image details defined in yocto_installer.conf"
+    #echo_info "# To be downloaded rootfs image details defined in adt_installer.conf"
     #echo_info "############################################################################"
     echo_info "# Target architecture:\t\t$1"
     echo_info "# Root_fs images:\t\t$select_rootfs"
     echo_info "# Target sysroot image:\t\t$select_sysroot_image"
-    echo_info "# Target sysroot dir:\t\t$select_sysroot"
+    echo_info "# Target sysroot loc:\t\t$select_sysroot"
     echo_info "\n"
     #echo_info "############################################################################\n"
     else
@@ -284,17 +299,17 @@ if [ ! -f "scripts/util" ]; then
   exit -1
 fi
 
-if [ ! -f "scripts/yocto_installer_internal" ]; then
-  echo -e "[ADT_INST] Error: Script file: yocto_installer_internal, can't be found under: $run_path!"
+if [ ! -f "scripts/adt_installer_internal" ]; then
+  echo -e "[ADT_INST] Error: Script file: adt_installer_internal, can't be found under: $run_path!"
   echo -e "\n#############################################################################"
   echo -e "# Meet error(s) when installing Yocto ADT! Please check log file for details. "
   echo -e "#############################################################################\n"
   exit -1
 fi
 
-config_file="yocto_installer.conf"
+config_file="adt_installer.conf"
 if [ ! -f "$config_file" ]; then
-  echo_info "[ADT_INST] Error: Installation configuration file: yocto_installer.conf is not found!\n"
+  echo_info "[ADT_INST] Error: Installation configuration file: adt_installer.conf is not found!\n"
   echo_info "\n##################################################################################"
   echo_info "# Meet error(s) when installing Yocto ADT. Please check log file for details. "
   echo_info "##################################################################################\n"
@@ -313,7 +328,6 @@ fi
 usage
 
 user_inst_type="$?"
-echo "$user_inst_type"
 
 validate_config
 check_result
@@ -337,7 +351,7 @@ for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
   download_images $arch_type
 done
 
-scripts/yocto_installer_internal $user_inst_type
+scripts/adt_installer_internal $user_inst_type
 
 result="$?"
 #echo_info "\n############################################################"
diff --git a/meta/recipes-devtools/installer/adt-installer/adt_installer.conf b/meta/recipes-devtools/installer/adt-installer/adt_installer.conf
new file mode 100644
index 0000000..5dc9261
--- /dev/null
+++ b/meta/recipes-devtools/installer/adt-installer/adt_installer.conf
@@ -0,0 +1,30 @@
+# Your yocto distro repository, this should include IPKG based packages and root filesystem files where the installation is based on
+
+YOCTOADT_IPKG_REPO="http://llu-piketon.sh.intel.com/rootfs"
+YOCTOADT_VERSION="0.9+snapshot"
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
+#Here's another example for setting up target arch of x86, but uncommenting it will trigger the installer to download and setup 2 sysroot environment for 2 target arches: arm and x86.  If you want to add more target arch support, you can append more entries by following these samples
+#YOCTOADT_ROOTFS_x86="sdk"
+#YOCTOADT_TARGET_SYSROOT_IMAGE_x86="sdk"
+#YOCTOADT_TARGET_SYSROOT_LOC_x86="$HOME/test-yocto/x86"
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal b/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
similarity index 88%
rename from meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal
rename to meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
index 87e9e54..e1b9e01 100755
--- a/meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
@@ -52,7 +52,7 @@ echo_info "\nStart installing selected native ADT for archs: $YOCTOADT_TARGETS..
 NATIVE_INSTALL_DIR="/"
 
 if [ -d "$INSTALL_FOLDER" ]; then
-  echo_info "[ADT_INST] Native ADT installation directory \"$INSTALL_FOLDER\" already exists! Continue installation will override its contents!"
+  echo_info "\nNative ADT installation directory \"$INSTALL_FOLDER\" already exists! Continue installation will override its contents!"
   confirm_install $1
 fi
 
@@ -64,17 +64,14 @@ username='id -nu'
 #we need to make this directory firstly since opkg need to use it.
 OPKG_LOCK_DIR="$NATIVE_INSTALL_DIR/$OPKG_LIBDIR/opkg"
 if [ ! -d "$OPKG_LOCK_DIR" ]; then
-  #sudo mkdir -p $OPKG_LOCK_DIR
-  su -c "mkdir -p $OPKG_LOCK_DIR" $username
+  sudo mkdir -p $OPKG_LOCK_DIR
   echo_info "Successfully create directory $OPKG_LOCK_DIR. "
 #if user delete /opt/poky, while dangling folders there, report error
 elif [ ! -d "$INSTALL_FOLDER" ]; then
-  echo_info "[ADT_INST] Dangling opkg cache folder $OPKG_LOCK_DIR detected. Continue installation will remove the folder!"
+  echo_info "\nDangling opkg cache folder $OPKG_LOCK_DIR detected. Continue installation will remove the folder!"
   confirm_install $1
-  #sudo rm -rf $OPKG_LOCK_DIR
-  su -c "rm -rf $OPKG_LOCK_DIR" $username
-  #sudo mkdir -p $OPKG_LOCK_DIR
-  su -c "mkdir -p $OPKG_LOCK_DIR" $username
+  sudo rm -rf $OPKG_LOCK_DIR
+  sudo mkdir -p $OPKG_LOCK_DIR
 #if user are updating installing, just let him/her go, give her/him prompt
 else
   echo_info "ADT has already been installed. Will update its contents..."
@@ -124,8 +121,7 @@ done
 # Link the ld.so.cache file into the hosts filesystem
 if [ ! -f "$POKY_NATIVE_SYSROOT/etc/ld.so.cache" ]; then 
 echo_info "Link the ld.so.cache file into the host filesystem"
-#sudo ln -s /etc/ld.so.cache $POKY_NATIVE_SYSROOT/etc/ld.so.cache
-su -c " ln -s /etc/ld.so.cache $POKY_NATIVE_SYSROOT/etc/ld.so.cache" $username
+sudo ln -s /etc/ld.so.cache $POKY_NATIVE_SYSROOT/etc/ld.so.cache
 check_result
 fi
 
@@ -158,13 +154,13 @@ select_target=`eval echo $select_target_var`
 if [ "$select_target" == "Y" ]; then
 
   # rootfs extraction directory
-  target_sysroot_var="\$YOCTOADT_TARGET_SYSROOT_$1"
+  target_sysroot_var="\$YOCTOADT_TARGET_SYSROOT_LOC_$1"
   target_sysroot=`eval echo $target_sysroot_var`
 
   target_sysroot_image_var="\$YOCTOADT_TARGET_SYSROOT_IMAGE_$1"
   target_sysroot_image=`eval echo $target_sysroot_image_var`
   if [ "$target_sysroot" == "" ]; then
-     echo_info "[ADT_INST] Error: YOCTOADT_TARGET_SYSROOT_$1 selection is empty, failed to create target sysroot!"
+     echo_info "[ADT_INST] Error: YOCTOADT_TARGET_SYSROOT__LOC_$1 selection is empty, failed to create target sysroot!"
      return 1
   elif [ "$target_sysroot_image" == "" ]; then
      echo_info "[ADT_INST] Error: YOCTOADT_TARGET_SYSROOT_IMAGE_$1 selection is empty, failed to create target sysroot!"
@@ -173,7 +169,7 @@ if [ "$select_target" == "Y" ]; then
     echo_info "Installing target sysroot for arch: $1, rootfs type: $target_sysroot_image, location: $target_sysroot"
 
     sysroot_image_name="poky-image-$target_sysroot_image-qemu$1.tar.bz2"
-    echo_info "Extracting rootfs: $sysroot_image_name, using pseudo..."
+    #echo_info "Extracting rootfs: $sysroot_image_name, using pseudo..."
 
     scripts/extract_rootfs $sysroot_image_name $target_sysroot $POKY_NATIVE_SYSROOT $user_inst_type
     check_result
@@ -206,6 +202,7 @@ parse_config
 #secondly we will start to install native tools
 user_inst_type=$1
 install_native_sdk $user_inst_type
+check_result
 
 for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
   install_target $arch_type
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


