Return-Path: <liping.ke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 074D14C80AA3
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 04:42:01 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 14 Mar 2011 02:42:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,314,1297065600"; d="scan'208";a="402194145"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by azsmga001.ch.intel.com with ESMTP; 14 Mar 2011 02:42:00 -0700
Message-Id: <5b2cf775035a11207f59f01eb2858c6435a8ffd0.1300095446.git.liping.ke@intel.com>
In-Reply-To: <cover.1300095446.git.liping.ke@intel.com>
References: <cover.1300095446.git.liping.ke@intel.com>
Old-Date: Mon, 14 Mar 2011 17:35:43 +0800
Date: Mon, 14 Mar 2011 17:39:31 +0800
To: poky@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 1/1] adt: fix ppc/powerpcc naming bug
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
X-List-Received-Date: Mon, 14 Mar 2011 09:42:02 -0000

From: Liping Ke <liping.ke@intel.com>

for ipk files on ppc, the name should be powerpc. So does the
environment file name. For the tar file name, it should be ppc.
This patch is to correct the arch/machine name pair.
Related Bug#864

Signed-off-by: Liping ke <liping.ke@intel.com>
---
 .../adt-installer/scripts/adt_installer_internal   |    6 ++++--
 .../installer/adt-installer/scripts/data_define    |    2 +-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal b/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
index bc92069..a77a3ff 100755
--- a/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
@@ -29,7 +29,6 @@ parse_config()
   case $INST_ARCH in 
   i[3-6]86)
     OPKG_CONFIG_FILE=$YOCTOADT_OPKG_CONF_FILE_32
-    #POKY_NATIVE_SYSROOT="$INSTALL_FOLDER/sysroots/i586-pokysdk-linux/"
     POKY_NATIVE_SYSROOT="$INSTALL_FOLDER/sysroots/$INST_ARCH-pokysdk-linux/"
     ;;
   x86_64)
@@ -106,7 +105,7 @@ $OPKG_INSTALL_NATIVE_CMD libtool-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
 check_result
 
 for native_target_type in $YOCTOADT_TARGETS; do
-  native_target_type=`echo "$native_target_type" | sed -e 's/x86_64/x86-64/' -e 's/x86$/i586/'`
+  native_target_type=`echo "$native_target_type" | sed -e 's/x86_64/x86-64/' -e's/ppc/powerpc/'  -e 's/x86$/i586/'`
   echo_info "Installing cross toolchain for $native_target_type ..."
   echo_info "Installing binutils for $native_target_type ..."
   $OPKG_INSTALL_NATIVE_CMD binutils-cross-canadian-$native_target_type &>> $YOCTOADT_INSTALL_LOG_FILE
@@ -180,9 +179,12 @@ check_result
 echo_info "Updating environment script with target sysroot location."
 if [ "$1" == "x86"  ]; then
   env_filename=`ls $INSTALL_FOLDER/environment-setup-i586*`
+elif [ "$1" == "ppc"  ]; then
+  env_filename=`ls $INSTALL_FOLDER/environment-setup-powerpc*`
 else
   env_filename=`ls $INSTALL_FOLDER/environment-setup-$1*`
 fi
+
 if [ ! -z "$env_filename" ]; then
   sudo sed -i -e "s%##SDKTARGETSYSROOT##%$target_sysroot%g" $env_filename
 else
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/data_define b/meta/recipes-devtools/installer/adt-installer/scripts/data_define
index c7bce6d..ca1d47c 100644
--- a/meta/recipes-devtools/installer/adt-installer/scripts/data_define
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/data_define
@@ -32,7 +32,7 @@ OPKG_LIBDIR="/var/lib"
 # List all supported root fs types and target types,
 # it will be used in user configuration validity checking
 YOCTOADT_SUPPORTED_ROOTFS="minimal minimal-dev sato sato-dev sato-sdk lsb lsb-dev lsb-sdk"
-YOCTOADT_SUPPORTED_TARGETS="x86 x86_64 arm powerpc mips"
+YOCTOADT_SUPPORTED_TARGETS="x86 x86_64 arm ppc mips"
 # Different host (32 bit or 64 bit) will have different opkg
 # configuration files
 YOCTOADT_OPKG_CONF_FILE_32="./opkg/conf/opkg-sdk-i686.conf"
-- 
1.7.0.4


