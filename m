Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A65D84C8120D
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:53 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="589553090"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
Message-Id: <7e77b216b0697a90cb8e3c036fa845fac488e6e1.1294099430.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Liping Ke <liping.ke@intel.com>
Date: Thu, 23 Dec 2010 07:37:02 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 42/59] Remove redundant prompts
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
X-List-Received-Date: Mon, 03 Jan 2011 23:47:53 -0000

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 scripts/adt-installer/yocto_installer |   21 +++++++++++++++------
 1 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/scripts/adt-installer/yocto_installer b/scripts/adt-installer/yocto_installer
index 2038ecd..0e35576 100755
--- a/scripts/adt-installer/yocto_installer
+++ b/scripts/adt-installer/yocto_installer
@@ -167,14 +167,25 @@ fi
 
 confirm_download()
 {
+
+#avoid repeated reminding
+if [ "$override_oldfile" == 1 ]; then
+  return $pre_result
+else
+  override_oldfile=1
+fi
+
 while true; do
-  echo_info "[ADT_INST] File [ $1 ] to be downloaded already exists."
-  echo_info "[ADT_INST] Do you want to continue downloading? If yes, old file will be removed. Please enter Y/N:"
+  echo_info "[ADT_INST] Files [$1] already exists. If you continue downloading, old files will be overrided."
+  echo_info "[ADT_INST] Further prompts will not be given if there're more existing files to be downloaded."
+  echo_info "[ADT_INST] Do you want to continue downloading? Please enter Y/N:"
   read YOCTOADT_INSTALL
   YOCTOADT_INSTALL=`tr '[a-z]' '[A-Z]'<<<"$YOCTOADT_INSTALL"`
   if [ "$YOCTOADT_INSTALL" == "Y" ]; then
+    pre_result=0
     return 0
   elif [ "$YOCTOADT_INSTALL" == "N" ]; then
+    pre_result=1
     return 1
   fi
 done
@@ -234,7 +245,7 @@ download_images()
     select_sysroot=`eval echo $select_sysroot_var`
 
     echo_info "\n############################################################################"
-    echo_info "# Please confirm below installation configurations from yocto_installer.conf"
+    echo_info "# To be downloaded rootfs image details defined in yocto_installer.conf"
     echo_info "############################################################################"
     echo_info "# Target architecture:\t\t$1"
     echo_info "# Root_fs images:\t\t$select_rootfs"
@@ -242,9 +253,6 @@ download_images()
     echo_info "# Target sysroot dir:\t\t$select_sysroot"
     echo_info "############################################################################\n"
 
-    confirm_install
-
-
     get_qemu_image $1 $select_rootfs
   fi
 }
@@ -305,6 +313,7 @@ if [ ! -d "$LOCAL_DOWNLOAD" ]; then
 fi
 
 #downloading required qemu images/rootfs
+override_oldfile=0
 for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
   download_images $arch_type
 done
-- 
1.7.0.4


