Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 94D474C81215
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:52 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="589553086"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
Message-Id: <520344614dd7905dcafad5a10cd90663b4b89cb7.1294099430.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Liping Ke <liping.ke@intel.com>
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 36/59] If qemu file already exists, user can choose download new or keep the old
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
Date: Mon, 03 Jan 2011 23:47:53 -0000
X-Original-Date: Fri, 17 Dec 2010 06:07:10 +0800
X-List-Received-Date: Mon, 03 Jan 2011 23:47:53 -0000

If user has downloaded qemu image before, the installer could let
user chooose whether to download the new qemu image or keep the old
one. It's useful if users are reinstalling the adt.

Signed-off-by: liping ke <liping.ke@intel.com>
---
 scripts/adt-installer/util            |   31 +++++++++++++++++++++++--------
 scripts/adt-installer/yocto_installer |   10 +++-------
 2 files changed, 26 insertions(+), 15 deletions(-)

diff --git a/scripts/adt-installer/util b/scripts/adt-installer/util
index b041a08..7065d6d 100644
--- a/scripts/adt-installer/util
+++ b/scripts/adt-installer/util
@@ -42,12 +42,22 @@ while true; do
 done
 }
 
-
-confirm_install_v2()
+check_result()
 {
+  result="$?"
+  if [ ! "$result" == "0" ]; then
+     echo_info "\n#############################################################################"
+     echo_info "# Meet error(s) when installing Yocto ADT! Please check log file for details. "
+     echo_info "#############################################################################\n"
+    exit -1
+  fi
+}
 
+confirm_download()
+{
 while true; do
-  echo_info -e "[ADT_INST] Do you want to go on extracting rootfs? Please enter Y/N:"
+  echo_info "[ADT_INST] File [ $1 ] to be downloaded already exists."
+  echo_info "[ADT_INST] Do you want to continue downloading? If yes, old file will be removed. Please enter Y/N:"
   read YOCTOADT_INSTALL
   YOCTOADT_INSTALL=`tr '[a-z]' '[A-Z]'<<<"$YOCTOADT_INSTALL"`
   if [ "$YOCTOADT_INSTALL" == "Y" ]; then
@@ -58,17 +68,22 @@ while true; do
 done
 }
 
-check_result()
+download_file()
 {
+if [ -f "$LOCAL_DOWNLOAD/$1" ]; then
+  confirm_download $1
   result="$?"
   if [ ! "$result" == "0" ]; then
-     echo_info "\n#############################################################################"
-     echo_info "# Meet error(s) when installing Yocto ADT! Please check log file for details. "
-     echo_info "#############################################################################\n"
-    exit -1
+    return
+  else
+    echo "[ADT_INST] Removing old existing file [$1]"
+    rm -rf "$LOCAL_DOWNLOAD/$1" 
   fi
+fi
+wget "$YOCTOADT_ROOTFS_LOC/$1" -P $LOCAL_DOWNLOAD --progress=bar:force 2>&1 | tee -a "$YOCTOADT_INSTALL_LOG_FILE" 
 }
 
+
 config_file="yocto_installer.conf"
 if [ ! -f "$config_file" ]; then
   echo_info "[ADT_INST] Error: Installation configuration file: yocto_installer.conf is not found!\n"
diff --git a/scripts/adt-installer/yocto_installer b/scripts/adt-installer/yocto_installer
index ba6e054..bad590c 100755
--- a/scripts/adt-installer/yocto_installer
+++ b/scripts/adt-installer/yocto_installer
@@ -167,12 +167,13 @@ get_qemu_image()
   fi
 
   echo_info "[ADT_INST] Downloading qemu kernel binary: $qemu_kernel"
-  wget "$YOCTOADT_ROOTFS_LOC/$qemu_kernel" -P $LOCAL_DOWNLOAD --progress=bar:force 2>&1 | tee -a "$YOCTOADT_INSTALL_LOG_FILE" 
+  download_file $qemu_kernel
   check_result
   
   for image_type in $select_rootfs; do
     echo_info "[ADT_INST] Downloading rootfs file: poky-image-$image_type-qemu$1.tar.bz2"
-    wget "$YOCTOADT_ROOTFS_LOC/poky-image-$image_type-qemu$1.tar.bz2" -P $LOCAL_DOWNLOAD --progress=bar:force 2>&1 | tee -a "$YOCTOADT_INSTALL_LOG_FILE"
+    filename="poky-image-$image_type-qemu$1.tar.bz2"
+    download_file $filename
     check_result
   done
 }
@@ -248,11 +249,6 @@ install_opkg
 if [ ! -d "$LOCAL_DOWNLOAD" ]; then
   echo_info "[ADT_INST] Creating new images downloading folder: $LOCAL_DOWNLOAD ..."
   mkdir -p $LOCAL_DOWNLOAD
-else
-  echo_info "[ADT_INST] Images downloading folder: $LOCAL_DOWNLOAD, already exists! Continue installation will override its contents!"
-  confirm_install
-  rm -rf $LOCAL_DOWNLOAD
-  mkdir -p $LOCAL_DOWNLOAD
 fi
 
 #downloading required qemu images/rootfs
-- 
1.7.0.4


