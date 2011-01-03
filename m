Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 61FEB4C8086F
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:47 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Jan 2011 15:47:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="693216377"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 15:47:46 -0800
Message-Id: <e9293c9b7490391d6fe4685a861f8173b055e240.1294099429.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Jessica Zhang <jessica.zhang@intel.com>
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 03/59] Correct messages, fix bug for parsing YOCTOADT_TARGET_ARCH variable correctly
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
Date: Mon, 03 Jan 2011 23:47:47 -0000
X-Original-Date: Tue, 14 Dec 2010 19:58:39 -0800
X-List-Received-Date: Mon, 03 Jan 2011 23:47:47 -0000

Signed-off-by: Jessica Zhang <jessica.zhang@intel.com>
---
 scripts/adt-installer/util                     |   10 ++++++----
 scripts/adt-installer/yocto_installer          |   20 +++++++++-----------
 scripts/adt-installer/yocto_installer_internal |    6 +++---
 3 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/scripts/adt-installer/util b/scripts/adt-installer/util
index 9176625..92261a8 100644
--- a/scripts/adt-installer/util
+++ b/scripts/adt-installer/util
@@ -28,7 +28,7 @@ confirm_install()
 # some prompts
 
 while true; do
-  echo_info "[ADT_INST] Do you want to go on installing? Please enter Y/N:"
+  echo_info "[ADT_INST] Do you want to continue installation? Please enter Y/N:"
   read YOCTOADT_INSTALL
   YOCTOADT_INSTALL=`tr '[a-z]' '[A-Z]'<<<"$YOCTOADT_INSTALL"`
   if [ "$YOCTOADT_INSTALL" == "Y" ]; then
@@ -62,7 +62,9 @@ check_result()
 {
   result="$?"
   if [ ! "$result" == "0" ]; then
-    echo_info "Error: Terminate installation process due to errors!"
+     echo_info "\n############################################################"
+     echo_info "# Meet error(s) when installing Yocto ADT. "
+     echo_info "############################################################\n"
     exit -1
   fi
 }
@@ -71,7 +73,7 @@ config_file="yocto_installer.conf"
 if [ ! -f "$config_file" ]; then
   echo_info "[ADT_INST] user installation configuration file is not found!\n"
   echo_info "\n############################################################"
-  echo_info "# Meet error when installing Yocto ADT. "
+  echo_info "# Meet error(s) when installing Yocto ADT. "
   echo_info "############################################################\n"
   exit -1
 fi
@@ -90,7 +92,7 @@ YOCTOADT_SUPPORTED_TARGETS="x86 x86_64 arm powerpc mips"
 YOCTOADT_OPKG_CONF_FILE_32="opkg-sdk-i586.conf"
 YOCTOADT_OPKG_CONF_FILE_64="opkg-sdk-x86_64.conf"
 # yocto adt installation log file
-YOCTOADT_INSTALL_LOG_FILE="yoctoadt_installer.log"
+YOCTOADT_INSTALL_LOG_FILE="yocto_installer.log"
 # Temp folders holding qemu/rootfs downloaded images
 # It will be put into the installation folder
 LOCAL_DOWNLOAD="./download_image"
diff --git a/scripts/adt-installer/yocto_installer b/scripts/adt-installer/yocto_installer
index 4f792b8..7bfc988 100755
--- a/scripts/adt-installer/yocto_installer
+++ b/scripts/adt-installer/yocto_installer
@@ -62,8 +62,7 @@ validate_config()
       fi
     done
     if [ $found == 0 ]; then
-      echo_info "[ADT_INST] Error: selected archs defined in Host Area Item: YOCTOADT_TARGETS is not valid!"
-      echo_info "[ADT_INST] support ARCHS includes [ $YOCTOADT_SUPPORTED_TARGETS ]"
+       echo_info "[ADT_INST] Error: YOCTADT_TARGETS in yocto_installer.conf contains invalid entries: $YOCTOADT_TARGETS. Valid values are: $YOCTOADT_SUPPORTED_TARGETS"
       return 1
     fi
   done
@@ -73,7 +72,7 @@ validate_config()
     select_target_var="\$YOCTOADT_TARGET_$arch_type"
     select_target=`eval echo $select_target_var`
 
-    if [ "$select_target" == "" ]; then
+    if [ "$select_target" != "Y" ] || [ "$selected_target" != "y" ]; then
       continue;
     fi
 
@@ -95,8 +94,7 @@ validate_config()
       done
       if [ $found == 0 ]; then
 #the rootfs type listed for downloading is not valid
-        echo_info "[ADT_INST] Error: Selected rootfs type: $image_type defined in Item: YOCTOADT_ROOTFS_$arch_type is not valid!"
-        echo_info "[ADT_INST] supported ROOTFS includes [ $YOCTOADT_SUPPORTED_ROOTFS ]"
+        echo_info "[ADT_INST] Error: Selected YOCTOADT_ROOTFS_$arch_type value: $image_type, is not valid! Valid values are: $YOCTOADT_SUPPORTED_ROOTFS "
         return 1
       fi
     done
@@ -111,7 +109,7 @@ validate_config()
     done
 # the rootfs image to be extracted is not selected
     if [ $found == 0 ]; then
-      echo_info "[ADT_INST] Error: ROOTFS image YOCTOADT_TARGET_SYSROOT_IMAGE_$arch_type to be extracted is not selected in item: YOCTOADT_ROOTFS_$arch_type"
+      echo_info "[ADT_INST] Error: YOCTOADT_TARGET_SYSROOT_IMAGE_$arch_type selection: $target_sysroot_image is not included in YOCTOADT_ROOTFS_$arch_type selections: $select_rootfs"
       return 1
     fi
   done
@@ -161,7 +159,6 @@ fi
 #Need two input params, $1 -- arch_type(arm powerpc x86 mips) $2 rootfs_image_type (a list of sdk sato minimal lsb)
 get_qemu_image()
 {
-  echo_info "[ADT_INST] Downloading selected qemu binary for ARCH_$1 ..."
   if [ "$1" == "x86" ]; then
     qemu_kernel="$YOCTOADT_ROOTFS_LOC/bzImage-qemu$1.bin"
   elif [ "$1" == "arm" ]; then
@@ -170,11 +167,12 @@ get_qemu_image()
     qemu_kernel="$YOCTOADT_ROOTFS_LOC/zImage-qemu$1.bin"
   fi
 
+  echo_info "[ADT_INST] Downloading qemu kernel binary: $qemu_kernel"
   wget $qemu_kernel -P $LOCAL_DOWNLOAD &>> $YOCTOADT_INSTALL_LOG_FILE
   check_result
   
   for image_type in $2; do
-    echo_info "[ADT_INST] Downloading selected rootfs for ARCH_$1, rootfs_$2"
+    echo_info "[ADT_INST] Downloading rootfs file: poky-image-$2-qemu$1.tar.bz2"
     wget "$YOCTOADT_ROOTFS_LOC/poky-image-$2-qemu$1.tar.bz2" -P $LOCAL_DOWNLOAD &>> $YOCTOADT_INSTALL_LOG_FILE
     check_result
   done
@@ -220,9 +218,9 @@ run_path=`dirname $0`
 cd $run_path
 
 if [ ! -f "util" ]; then
-  echo -e "[ADT_INST] Error: script file $script_file is not found!\n"
+  echo -e "[ADT_INST] Error: Script file $script_file can't be found under $run_path!\n"
   echo -e "\n############################################################"
-  echo -e "# Meet error when installing Yocto ADT. "
+  echo -e "# Meet error(s) when installing Yocto ADT. "
   echo -e "############################################################\n"
   exit -1
 fi
@@ -265,7 +263,7 @@ echo_info "\n############################################################"
 if [ "$result" == "0" ]; then
   echo_info "# Yocto ADT has been successfully installed."
 else
-  echo_info "# Meet error during installing Yocto ADT. "
+  echo_info "# Meet error(s) during installing Yocto ADT. "
 
 fi
 echo_info "############################################################\n"
diff --git a/scripts/adt-installer/yocto_installer_internal b/scripts/adt-installer/yocto_installer_internal
index 61d59e1..63e3992 100755
--- a/scripts/adt-installer/yocto_installer_internal
+++ b/scripts/adt-installer/yocto_installer_internal
@@ -83,13 +83,13 @@ check_result
 OPKG_INSTALL_CMD="./opkg/bin/opkg-cl --force-overwrite"
 OPKG_INSTALL_NATIVE_CMD="$OPKG_INSTALL_CMD  -f $OPKG_CONFIG_FILE -o $NATIVE_INSTALL_DIR install"
 
-echo_info "[ADT_INST] Install pseudo nativesdk ...\n"
+echo_info "[ADT_INST] Installing pseudo nativesdk ...\n"
 $OPKG_INSTALL_NATIVE_CMD pseudo-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
 check_result
-echo_info "[ADT_INST] Install opkg nativesdk ...\n"
+echo_info "[ADT_INST] Installing opkg nativesdk ...\n"
 $OPKG_INSTALL_NATIVE_CMD opkg-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
 check_result
-echo_info "[ADT_INST] Install pkgconfig nativesdk ...\n"
+echo_info "[ADT_INST] Installing pkgconfig nativesdk ...\n"
 $OPKG_INSTALL_NATIVE_CMD pkgconfig-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
 check_result
 
-- 
1.7.0.4


