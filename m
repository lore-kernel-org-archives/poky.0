Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 135B34C811AA
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:55 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="693216406"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
Message-Id: <de5a65226552c5a8832295aa478a702f365c4e54.1294099430.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Liping Ke <liping.ke@intel.com>
Date: Tue, 28 Dec 2010 07:21:49 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 50/59] Store pseudo database in target rootfs
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

When extracting and SDK image tarball using pseudo, we need to
store the pseudo database in var/pseudo with the target rootfs
instead of native sysroot. And then we have no need of using
root priviledge to create target sysroot.

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 .../installer/adt-installer/scripts/extract_rootfs |   27 +++++++++++---------
 .../adt-installer/scripts/yocto_installer_internal |   16 +++--------
 2 files changed, 20 insertions(+), 23 deletions(-)

diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs b/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
index d0687cb..8567db7 100755
--- a/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
@@ -21,28 +21,31 @@
 extract_rootfs()
 {
 
-  PSEUDO_LOCALSTATEDIR="$3/var/pseudo"
-  PSEUDO_COMMAND="$3/usr/bin/pseudo"
-  PSEUDO_OPTS="-P $3/usr"
+  native_sysroot=$3
+  target_sysroot=$2
+  PSEUDO_COMMAND="$native_sysroot/usr/bin/pseudo"
+  PSEUDO_OPTS="-P $natvie_sysroot/usr"
   TAR_OPTS="-xjf"
-  PSEUDO_OPTS="-P $3/usr"
+  PSEUDO_OPTS="-P $native_sysroot/usr"
 
 
   rm -rf $PSEUDO_LOCALSTATEDIR
 
-  if [ -d "$2" ]; then
-    echo_info "[ADT_INST] Target sysroot location: $2, already exists! If you continue installation, this folder will be re-created."
+  if [ -d "$target_sysroot" ]; then
+    echo_info "[ADT_INST] Target sysroot location: $target_sysroot, already exists! If you continue installation, this folder will be re-created."
     confirm_install $4
-    rm -rf "$2"
+    rm -rf "$target_sysroot"
   fi
 
-  if [ ! -d "$2" ]; then
-    echo_info "[ADT_INST] Creating directory $2..."
-    mkdir -p "$2"
+  if [ ! -d "$target_sysroot" ]; then
+    echo_info "[ADT_INST] Creating directory $target_sysroot..."
+    mkdir -p "$target_sysroot"
   fi
 
-  mkdir -p "$PSEUDO_LOCALSTATEDIR"
-  touch "$PSEUDO_LOCALSTATEDIR/pseudo.pid"
+  mkdir -p "$target_sysroot/var/pseudo"
+  touch "$target_sysroot/var/pseudo/pseudo.pid"
+  PSEUDO_LOCALSTATEDIR="$target_sysroot/var/pseudo"
+  export PSEUDO_LOCALSTATEDIR
 
   $PSEUDO_COMMAND $PSEUDO_OPTS tar -C $2 "$TAR_OPTS" $LOCAL_DOWNLOAD/$1 &>> $YOCTOADT_INSTALL_LOG_FILE
   check_result
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal b/meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal
index b1560dd..eec6f5f 100755
--- a/meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal
@@ -133,7 +133,8 @@ fi
 echo_info "\n[ADT_INST] Successfully installed selected native ADT!"
 }
 
-#Need three input params, $1 -- arch_type(arm powerpc x86 mips) $2:$3 user:group info
+#Need three input params, $1 -- arch_type(arm powerpc x86 mips) #2 -- user installation type
+#customer or scilent
 
 install_target()
 {
@@ -161,13 +162,9 @@ if [ "$select_target" == "Y" ]; then
     sysroot_image_name="poky-image-$target_sysroot_image-qemu$1.tar.bz2"
     echo_info "[ADT_INST] Extracting rootfs: $sysroot_image_name, using pseudo..."
 
-    sudo scripts/extract_rootfs $sysroot_image_name $target_sysroot $POKY_NATIVE_SYSROOT $user_inst_type
-    # Fill $target_sysroot into /opt/poky/$YOCTOADT_VERION/environment-setup-(arch)-poky-linux-gnueabi
+    scripts/extract_rootfs $sysroot_image_name $target_sysroot $POKY_NATIVE_SYSROOT $user_inst_type
     check_result
-    echo_info "[ADT_INST] change owner for rootfs directory $target_sysroot to $2:$3"
-    sudo chown -R $2:$3 $target_sysroot
-    check_result
- 
+
     echo_info "[ADT_INST] Updating environment script with target sysroot location."
     if [ "$1" == "x86"  ]; then
       env_filename=`ls $INSTALL_FOLDER/environment-setup-i586*`
@@ -197,11 +194,8 @@ parse_config
 user_inst_type=$1
 install_native_sdk $user_inst_type
 
-username=`id -nu`
-groupname=`id -ng`
-
 for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
-  install_target $arch_type $username $groupname $user_inst_type
+  install_target $arch_type
   check_result
 done
 
-- 
1.7.0.4


