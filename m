Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 358DD4C81206
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:55 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="589553099"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
Message-Id: <07bba612e1113afb0495053a111a5c37f39a0f88.1294099430.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Jessica Zhang <jessica.zhang@intel.com>
Date: Tue, 28 Dec 2010 16:17:26 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 54/59] missing files for change file names, more clean up of messaging, add comments and simplify config file entries, change code support new config file
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

Signed-off-by: Jessica Zhang <jessica.zhang@intel.com>
---
 .../installer/adt-installer/scripts/data_define    |    2 +-
 .../installer/adt-installer/scripts/extract_rootfs |    3 ++-
 .../installer/adt-installer/scripts/util           |   12 +++++++-----
 3 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/data_define b/meta/recipes-devtools/installer/adt-installer/scripts/data_define
index 0650383..f446811 100644
--- a/meta/recipes-devtools/installer/adt-installer/scripts/data_define
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/data_define
@@ -17,7 +17,7 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
-config_file="yocto_installer.conf"
+config_file="adt_installer.conf"
 source $config_file
 
 LOCAL_OPKG_LOC="./opkg/build/opkg"
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs b/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
index 976565d..0266283 100755
--- a/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
@@ -32,7 +32,7 @@ extract_rootfs()
   rm -rf $PSEUDO_LOCALSTATEDIR
 
   if [ -d "$target_sysroot" ]; then
-    echo_info "[ADT_INST] Target sysroot location: $target_sysroot, already exists! If you continue installation, this folder will be re-created."
+    echo_info "\nTarget sysroot location: $target_sysroot, already exists! If you continue installation, this folder will be re-created."
     confirm_install $4
     rm -rf "$target_sysroot"
   fi
@@ -47,6 +47,7 @@ extract_rootfs()
   PSEUDO_LOCALSTATEDIR="$target_sysroot/var/pseudo"
   export PSEUDO_LOCALSTATEDIR
 
+  echo_info "Extracting rootfs: $1, using pseudo..."
   $PSEUDO_COMMAND $PSEUDO_OPTS tar -C $2 "$TAR_OPTS" $LOCAL_DOWNLOAD/$1 &>> $YOCTOADT_INSTALL_LOG_FILE
   check_result
 }
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/util b/meta/recipes-devtools/installer/adt-installer/scripts/util
index ecd7b20..9db1242 100644
--- a/meta/recipes-devtools/installer/adt-installer/scripts/util
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/util
@@ -32,7 +32,7 @@ while true; do
   #echo_info "[ADT_INST] If you want to use silent installation, please enter S:"
   #echo_info "[ADT_INST] If you want to customize installation, please enter C:"
   #echo_info "[ADT_INST} If you want to exit current installation, please enter X:"
-  echo_info "[ADT_INST] There're two ways you can do installation: silent mode or interactive mode. To choose silent mode, which means you're opt the system to override the existing data under the specified installation directory structures if they exist without further prompt for your confirmation.  Please be cautious with this selection which may trigger your lose data that you may still need.  With the interactive mode, you have to closely monitor the installation process, since it will prompt you each step it need to override some existing data.  To choose silent mode, please enter [S], for interactive mode, please enter [I] or [X] to exit the installation."
+  echo_info "There're two ways you can do installation: silent mode or interactive mode. To choose silent mode, which means you opt for the system to override the existing data under the specified installation directories without prompting for your confirmation.  Please be cautious with this selection which may trigger your losing data.  With the interactive mode, you have to closely monitor the installation process, since it will prompt you each step it needs to override some existing data.  To choose silent mode, please enter [S], for interactive mode, please enter [I] or [X] to exit the installation."
   echo_info "[ADT_INST] Please enter your selections here:"
   read YOCTOADT_SEL
   YOCTOADT_SEL=`tr '[a-z]' '[A-Z]'<<<"$YOCTOADT_SEL"`
@@ -44,7 +44,7 @@ while true; do
     echo_info "\n############################################################"
     echo_info "# User cancelled installation!"
     echo_info "############################################################\n"
-    exit -1
+    exit 1
   fi
 done
 
@@ -72,7 +72,7 @@ while true; do
     echo_info "\n############################################################"
     echo_info "# User cancelled installation!"
     echo_info "############################################################\n"
-    exit -1
+    exit 1
   fi
 done
 }
@@ -80,16 +80,18 @@ done
 check_result()
 {
   result="$?"
-  if [ ! "$result" == "0" ]; then
+  if [  "$result" == "-1" ]; then
      echo_info "\n#############################################################################"
      echo_info "# Meet error(s) when installing Yocto ADT! Please check log file for details. "
      echo_info "#############################################################################\n"
     exit -1
+  elif [ "$result" == "1" ]; then
+    exit -1
   fi
 }
 
 # yocto adt installation log file
-YOCTOADT_INSTALL_LOG_FILE="yocto_installer.log"
+YOCTOADT_INSTALL_LOG_FILE="adt_installer.log"
 # Temp folders holding qemu/rootfs downloaded images
 # It will be put into the installation folder
 LOCAL_DOWNLOAD="./download_image"
-- 
1.7.0.4


