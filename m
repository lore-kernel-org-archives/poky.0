Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 43CDF4C811FE
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:51 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:47:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="589553077"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 03 Jan 2011 15:47:47 -0800
Message-Id: <fa6a494ef9a051cc8e27a081f5f30a508e7031f9.1294099430.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Liping Ke <liping.ke@intel.com>
Date: Fri, 24 Dec 2010 07:40:11 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 21/59] Make Silent installation as another option for avoiding bothering users.
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
X-List-Received-Date: Mon, 03 Jan 2011 23:47:51 -0000

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 .../installer/adt-installer/scripts/extract_rootfs |    8 ++--
 .../installer/adt-installer/scripts/util           |   34 ++++++++++++++++++++
 .../adt-installer/scripts/yocto_installer_internal |   11 +++---
 .../installer/adt-installer/yocto_installer        |   18 ++++++++--
 .../installer/adt-installer_1.0.bb                 |    1 +
 5 files changed, 59 insertions(+), 13 deletions(-)

diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs b/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
index 5bb8506..d0687cb 100755
--- a/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
@@ -32,7 +32,7 @@ extract_rootfs()
 
   if [ -d "$2" ]; then
     echo_info "[ADT_INST] Target sysroot location: $2, already exists! If you continue installation, this folder will be re-created."
-    confirm_install
+    confirm_install $4
     rm -rf "$2"
   fi
 
@@ -52,8 +52,8 @@ extract_rootfs()
 . scripts/util
 
 #Parameter detail is listed below:
-#Param 5: POKY_NATIVE_SYSROOT
-#Param 3 4: user and group
+#Param 4: Silent install or customize install
+#Param 3: POKY_NATIVE_SYSROOT
 #Param 2: user defined rootfs extraction directory
 #param 1: sysroot image name
-extract_rootfs $1 $2 $3
+extract_rootfs $1 $2 $3 $4
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/util b/meta/recipes-devtools/installer/adt-installer/scripts/util
index 99ce7e2..7ccd87e 100644
--- a/meta/recipes-devtools/installer/adt-installer/scripts/util
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/util
@@ -22,11 +22,45 @@ echo_info()
   echo -e $1 | tee -a $YOCTOADT_INSTALL_LOG_FILE
 }
 
+select_install_type()
+{
+# If choosing silent install, all older installation data will be
+# overriden without user's interaction
+while true; do
+  echo_info "[ADT_INST] Silent install means overrides all existing older"
+  echo_info "[ADT_INST] data and the installation needs least user interaction"
+  echo_info "[ADT_INST] If you want to use silent installation, please enter S:"
+  echo_info "[ADT_INST] If you want to customize installation, please enter C:"
+  echo_info "[ADT_INST} If you want to exit current installation, please enter X:"
+  echo_info "[ADT_INST] Please enter your selections here:"
+  read YOCTOADT_SEL
+  YOCTOADT_SEL=`tr '[a-z]' '[A-Z]'<<<"$YOCTOADT_SEL"`
+  if [ "$YOCTOADT_SEL" == "S" ]; then
+    return "0"
+  elif [ "$YOCTOADT_SEL" == "C" ]; then
+    return "1"
+  elif [ "$YOCTOADT_SEL" == "X" ]; then
+    echo_info "\n############################################################"
+    echo_info "# User cancelled installation!"
+    echo_info "############################################################\n"
+    exit -1
+  fi
+done
+
+
+}
+
 confirm_install()
 {
 # below are prompt, make sure user still want to install even meet
 # some prompts
 
+#User likes to enjoy silent installation, we will not break his
+#installation process here
+if [ "$1" == "0" ]; then
+  return
+fi
+
 while true; do
   echo_info "[ADT_INST] Do you want to continue installation? Please enter Y/N:"
   read YOCTOADT_INSTALL
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal b/meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal
index 15d6ea3..b1560dd 100755
--- a/meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal
@@ -53,7 +53,7 @@ NATIVE_INSTALL_DIR="/"
 
 if [ -d "$INSTALL_FOLDER" ]; then
   echo_info "[ADT_INST] Native ADT installation directory \"$INSTALL_FOLDER\" already exists! Continue installation will override its contents!"
-  confirm_install
+  confirm_install $1
 fi
 
 #Now begin to install native sdk and extract qemu rootfs which needs privilege rights
@@ -67,7 +67,7 @@ if [ ! -d "$OPKG_LOCK_DIR" ]; then
 #if user delete /opt/poky, while dangling folders there, report error
 elif [ ! -d "$INSTALL_FOLDER" ]; then
   echo_info "[ADT_INST] Dangling opkg cache folder $OPKG_LOCK_DIR detected. Continue installation will remove the folder!"
-  confirm_install
+  confirm_install $1
   sudo rm -rf $OPKG_LOCK_DIR
   sudo mkdir -p $OPKG_LOCK_DIR
 #if user are updating installing, just let him/her go, give her/him prompt
@@ -161,7 +161,7 @@ if [ "$select_target" == "Y" ]; then
     sysroot_image_name="poky-image-$target_sysroot_image-qemu$1.tar.bz2"
     echo_info "[ADT_INST] Extracting rootfs: $sysroot_image_name, using pseudo..."
 
-    sudo scripts/extract_rootfs $sysroot_image_name $target_sysroot $POKY_NATIVE_SYSROOT
+    sudo scripts/extract_rootfs $sysroot_image_name $target_sysroot $POKY_NATIVE_SYSROOT $user_inst_type
     # Fill $target_sysroot into /opt/poky/$YOCTOADT_VERION/environment-setup-(arch)-poky-linux-gnueabi
     check_result
     echo_info "[ADT_INST] change owner for rootfs directory $target_sysroot to $2:$3"
@@ -194,13 +194,14 @@ fi
 parse_config
 
 #secondly we will start to install native tools
-install_native_sdk
+user_inst_type=$1
+install_native_sdk $user_inst_type
 
 username=`id -nu`
 groupname=`id -ng`
 
 for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
-  install_target $arch_type $username $groupname
+  install_target $arch_type $username $groupname $user_inst_type
   check_result
 done
 
diff --git a/meta/recipes-devtools/installer/adt-installer/yocto_installer b/meta/recipes-devtools/installer/adt-installer/yocto_installer
index 3faacce..fc08245 100755
--- a/meta/recipes-devtools/installer/adt-installer/yocto_installer
+++ b/meta/recipes-devtools/installer/adt-installer/yocto_installer
@@ -1,4 +1,4 @@
-#!/bin/bash
+#!/bin/bash -x
 # Yocto ADT Installer
 #
 # Copyright (C) 2010 Intel Corp.
@@ -47,7 +47,7 @@ usage ()
   #echo_info "# Install poky metadata:\t$YOCTOADT_METADATA"
   echo_info "############################################################################\n"
 
-  confirm_install
+  select_install_type
 }
 
 validate_config()
@@ -297,7 +297,12 @@ if [ -f "$YOCTOADT_INSTALL_LOG_FILE" ]; then
   rm $YOCTOADT_INSTALL_LOG_FILE
 fi
 
+
 usage
+
+user_inst_type="$?"
+echo "$user_inst_type"
+
 validate_config
 check_result
 #firstly we need to install opkg host
@@ -310,12 +315,17 @@ if [ ! -d "$LOCAL_DOWNLOAD" ]; then
 fi
 
 #downloading required qemu images/rootfs
-override_oldfile=0
+if [ "$user_inst_type" == "0" ]; then
+  override_oldfile=1
+else
+  override_oldfile=0
+fi
+
 for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
   download_images $arch_type
 done
 
-scripts/yocto_installer_internal $username $groupname
+scripts/yocto_installer_internal $user_inst_type
 
 result="$?"
 #echo_info "\n############################################################"
diff --git a/meta/recipes-devtools/installer/adt-installer_1.0.bb b/meta/recipes-devtools/installer/adt-installer_1.0.bb
index 00c199c..e55cad1 100644
--- a/meta/recipes-devtools/installer/adt-installer_1.0.bb
+++ b/meta/recipes-devtools/installer/adt-installer_1.0.bb
@@ -57,5 +57,6 @@ do_package_write[noexec] = "1"
 do_package_write_ipk[noexec] = "1"
 do_package_write_rpm[noexec] = "1"
 do_package_write_deb[noexec] = "1"
+do_poplulate_sysroot[noexec] = "1"
 
 addtask deploy before do_populate_sysroot after do_unpack
-- 
1.7.0.4


