Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 803ED4C81200
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:49 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Jan 2011 15:47:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="693216391"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 15:47:47 -0800
Message-Id: <f47a388a609a47579548d7c3e29094fc8af2c79f.1294099430.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Liping Ke <liping.ke@intel.com>
Date: Fri, 24 Dec 2010 06:39:53 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 20/59] Add just installer scripts code according to bb file logic
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

in bb file, do_unpack will help us to untar the tarball so no need
to repeat the task again in installer script.

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 .../installer/adt-installer/scripts/data_define    |    1 -
 .../installer/adt-installer/yocto_installer        |   19 ++++++++-----------
 .../installer/adt-installer_1.0.bb                 |    3 ++-
 3 files changed, 10 insertions(+), 13 deletions(-)

diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/data_define b/meta/recipes-devtools/installer/adt-installer/scripts/data_define
index 0f8e48b..0650383 100644
--- a/meta/recipes-devtools/installer/adt-installer/scripts/data_define
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/data_define
@@ -22,7 +22,6 @@ source $config_file
 
 LOCAL_OPKG_LOC="./opkg/build/opkg"
 LOCAL_OPKG_FOLDER="./opkg/build"
-LOCAL_OPKG_SOURCE_FILE="$LOCAL_OPKG_FOLDER/opkg-*.tar.gz"
 OPKG_LIBDIR="/var/lib"
 
 # List all supported root fs types and target types,
diff --git a/meta/recipes-devtools/installer/adt-installer/yocto_installer b/meta/recipes-devtools/installer/adt-installer/yocto_installer
index 0e35576..3faacce 100755
--- a/meta/recipes-devtools/installer/adt-installer/yocto_installer
+++ b/meta/recipes-devtools/installer/adt-installer/yocto_installer
@@ -125,26 +125,23 @@ install_opkg()
 if [ ! -x "$LOCAL_OPKG_LOC/bin/opkg-cl" ]; then
   echo_info "[ADT_INST]  OPKG is not setup, setting up opkg in local, which is required for installing yocto ADT...\n"
 
-  if [ ! -f $LOCAL_OPKG_SOURCE_FILE ]; then
-    echo_info "[ADT_INST] Error: OPKG source tarball is not found!"
-    exit -1
-  fi
-
   if [ -d $LOCAL_OPKG_LOC ]; then
     echo_info "[ADT_INST] Deleting old OPKG folder, which doesn't contain executables... "
     rm -rf $LOCAL_OPKG_LOC
   fi
 
-  echo_info "[ADT_INST] Untar opkg source tarball ...\n"
-
   parent_folder=`eval echo $PWD`
   cd $LOCAL_OPKG_FOLDER
-
-  tar zvfx opkg-*.gz &>> $parent_folder/$YOCTOADT_INSTALL_LOG_FILE
   check_result
 
-  opkg_untar_dir=`ls -d opkg-*`
-  cd $opkg_untar_dir
+  opkg_source_dir=`ls -d opkg-*`
+
+  if [ $opkg_source_dir == "" ]; then
+    echo_info "[ADT_INST] Error: OPKG source directory is not found!"
+    exit -1
+  fi
+
+  cd $opkg_source_dir
   check_result
 
   echo_info "[ADT_INST] Configure opkg ...\n"
diff --git a/meta/recipes-devtools/installer/adt-installer_1.0.bb b/meta/recipes-devtools/installer/adt-installer_1.0.bb
index fa10be3..00c199c 100644
--- a/meta/recipes-devtools/installer/adt-installer_1.0.bb
+++ b/meta/recipes-devtools/installer/adt-installer_1.0.bb
@@ -49,6 +49,7 @@ fakeroot do_deploy () {
 }
 
 do_patch[noexec] = "1"
+do_install[noexec] = "1"
 do_configure[noexec] = "1"
 do_compile[noexec] = "1"
 do_package[noexec] = "1"
@@ -57,4 +58,4 @@ do_package_write_ipk[noexec] = "1"
 do_package_write_rpm[noexec] = "1"
 do_package_write_deb[noexec] = "1"
 
-addtask deploy before do_populate_sysroot after do_install
+addtask deploy before do_populate_sysroot after do_unpack
-- 
1.7.0.4


