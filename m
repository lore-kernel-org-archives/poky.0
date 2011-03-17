Return-Path: <liping.ke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 11EBA4C805BB
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 00:24:22 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 Mar 2011 22:24:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,197,1299484800"; d="scan'208";a="403908379"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by azsmga001.ch.intel.com with ESMTP; 16 Mar 2011 22:24:22 -0700
Message-Id: <b3e74215fa3fa767422ae20ecd9973e6893ea5a4.1300338196.git.liping.ke@intel.com>
In-Reply-To: <cover.1300338196.git.liping.ke@intel.com>
References: <cover.1300338196.git.liping.ke@intel.com>
Old-Date: Thu, 17 Mar 2011 12:59:42 +0800
Date: Thu, 17 Mar 2011 13:21:27 +0800
To: poky@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 1/1] ADT: bug fix for nameing and do_patch sequence
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
X-List-Received-Date: Thu, 17 Mar 2011 05:24:23 -0000

From: Liping Ke <liping.ke@intel.com>

This patch is for fixing the x86-64 image name bug and also,
do_patch must be down before do_deploy.

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 .../installer/adt-installer/adt_installer          |   13 ++++++++-----
 .../adt-installer/scripts/adt_installer_internal   |    6 +++---
 .../installer/adt-installer_1.0.bb                 |    2 +-
 3 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/meta/recipes-devtools/installer/adt-installer/adt_installer b/meta/recipes-devtools/installer/adt-installer/adt_installer
index b1b4970..d7a40c2 100755
--- a/meta/recipes-devtools/installer/adt-installer/adt_installer
+++ b/meta/recipes-devtools/installer/adt-installer/adt_installer
@@ -236,12 +236,15 @@ wget "$YOCTOADT_IPKG_REPO/$1" -P $LOCAL_DOWNLOAD --progress=bar:force 2>&1 | tee
 #Need two input params, $1 -- arch_type(arm powerpc x86 mips) $2 rootfs_image_type (a list of sdk sato minimal lsb)
 get_qemu_image()
 {
-  if [ "$1" == "x86" ]; then
-    qemu_kernel="bzImage-qemu$1.bin"
+ 
+  local target=`echo "$1" | sed -e 's/x86_64/x86-64/'`
+
+  if [ "$1" == "x86" ] || [ "$1" == "x86_64" ]; then
+    qemu_kernel="bzImage-qemu$target.bin"
   elif [ "$1" == "mips" ]; then
-    qemu_kernel="vmlinux-qemu$1.bin"
+    qemu_kernel="vmlinux-qemu$target.bin"
   else
-    qemu_kernel="zImage-qemu$1.bin"
+    qemu_kernel="zImage-qemu$target.bin"
   fi
 
   #echo_info "[ADT_INST] Downloading qemu kernel binary: $qemu_kernel"
@@ -250,7 +253,7 @@ get_qemu_image()
   
   for image_type in $select_rootfs; do
     #echo_info "[ADT_INST] Downloading rootfs file: poky-image-$image_type-qemu$1.tar.bz2"
-    filename="poky-image-$image_type-qemu$1.tar.bz2"
+    filename="poky-image-$image_type-qemu$target.tar.bz2"
     download_file qemu$1/$filename
     check_result
   done
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal b/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
index e1d4e63..65b1b54 100755
--- a/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
@@ -170,7 +170,9 @@ fi
 
 echo_info "Installing target sysroot for arch: $1, rootfs type: $target_sysroot_image, location: $target_sysroot"
 
-sysroot_image_name="poky-image-$target_sysroot_image-qemu$1.tar.bz2"
+
+qemu_type=`echo "$1" | sed -e 's/x86_64/x86-64/'`
+sysroot_image_name="poky-image-$target_sysroot_image-qemu$qemu_type.tar.bz2"
     #echo_info "Extracting rootfs: $sysroot_image_name, using pseudo..."
 
 scripts/extract_rootfs $sysroot_image_name $target_sysroot $POKY_NATIVE_SYSROOT $user_inst_type
@@ -179,8 +181,6 @@ check_result
 echo_info "Updating environment script with target sysroot location."
 if [ "$1" == "x86"  ]; then
   env_filename=`ls $INSTALL_FOLDER/environment-setup-i586*`
-elif [ "$1" == "ppc"  ]; then
-  env_filename=`ls $INSTALL_FOLDER/environment-setup-powerpc*`
 else
   env_filename=`ls $INSTALL_FOLDER/environment-setup-$1*`
 fi
diff --git a/meta/recipes-devtools/installer/adt-installer_1.0.bb b/meta/recipes-devtools/installer/adt-installer_1.0.bb
index ff7afe6..7e82c92 100644
--- a/meta/recipes-devtools/installer/adt-installer_1.0.bb
+++ b/meta/recipes-devtools/installer/adt-installer_1.0.bb
@@ -82,4 +82,4 @@ do_package_write_rpm[noexec] = "1"
 do_package_write_deb[noexec] = "1"
 do_poplulate_sysroot[noexec] = "1"
 
-addtask deploy before do_populate_sysroot after do_unpack
+addtask deploy before do_populate_sysroot after do_patch
-- 
1.7.0.4


