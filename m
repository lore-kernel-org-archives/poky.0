Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3BD8E4C8006D
	for <poky@yoctoproject.org>; Wed,  9 Feb 2011 00:55:45 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 08 Feb 2011 22:55:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,446,1291622400"; d="scan'208";a="600852749"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 08 Feb 2011 22:55:44 -0800
Message-Id: <4ed19cfd21e455d57569ce06dd51b1b0e8860c77.1297235725.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1297235725.git.jessica.zhang@intel.com>
References: <cover.1297235725.git.jessica.zhang@intel.com>
Old-Date: Tue, 8 Feb 2011 22:30:25 -0800
Date: Tue, 08 Feb 2011 23:16:41 -0800
To: poky@yoctoproject.org
CC: 
From: Jessica Zhang <jessica.zhang@intel.com>
Subject: [PATCH 1/1] adt-installer: change to adopt the adt public repo directory layout
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
X-List-Received-Date: Wed, 09 Feb 2011 06:55:45 -0000

From: Jessica Zhang <jessica.zhang@intel.com>

Signed-off-by: Jessica Zhang <jessica.zhang@intel.com>
---
 .../installer/adt-installer/adt_installer          |    8 ++++----
 .../installer/adt-installer/adt_installer.conf     |    2 +-
 .../adt-installer/opkg/conf/opkg-sdk-i586.conf     |    7 -------
 .../adt-installer/opkg/conf/opkg-sdk-i686.conf     |    6 ++++++
 .../adt-installer/opkg/conf/opkg-sdk-x86_64.conf   |    5 ++---
 .../adt-installer/scripts/adt_installer_internal   |    3 ++-
 .../installer/adt-installer/scripts/data_define    |    2 +-
 .../installer/adt-installer_1.0.bb                 |    2 +-
 8 files changed, 17 insertions(+), 18 deletions(-)
 delete mode 100644 meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i586.conf
 create mode 100644 meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i686.conf

diff --git a/meta/recipes-devtools/installer/adt-installer/adt_installer b/meta/recipes-devtools/installer/adt-installer/adt_installer
index d47be41..1f481de 100755
--- a/meta/recipes-devtools/installer/adt-installer/adt_installer
+++ b/meta/recipes-devtools/installer/adt-installer/adt_installer
@@ -237,20 +237,20 @@ get_qemu_image()
 {
   if [ "$1" == "x86" ]; then
     qemu_kernel="bzImage-qemu$1.bin"
-  elif [ "$1" == "arm" ]; then
-    qemu_kernel="zImage-qemu$1.bin"
+  elif [ "$1" == "mips" ]; then
+    qemu_kernel="vmlinux-qemu$1.bin"
   else
     qemu_kernel="zImage-qemu$1.bin"
   fi
 
   #echo_info "[ADT_INST] Downloading qemu kernel binary: $qemu_kernel"
-  download_file $qemu_kernel
+  download_file qemu$1/$qemu_kernel
   check_result
   
   for image_type in $select_rootfs; do
     #echo_info "[ADT_INST] Downloading rootfs file: poky-image-$image_type-qemu$1.tar.bz2"
     filename="poky-image-$image_type-qemu$1.tar.bz2"
-    download_file $filename
+    download_file qemu$1/$filename
     check_result
   done
 }
diff --git a/meta/recipes-devtools/installer/adt-installer/adt_installer.conf b/meta/recipes-devtools/installer/adt-installer/adt_installer.conf
index a31e559..db602f6 100644
--- a/meta/recipes-devtools/installer/adt-installer/adt_installer.conf
+++ b/meta/recipes-devtools/installer/adt-installer/adt_installer.conf
@@ -23,7 +23,7 @@
 
 # Your yocto distro repository, this should include IPKG based packages and root filesystem files where the installation is based on
 
-YOCTOADT_IPKG_REPO="http://"
+YOCTOADT_IPKG_REPO="http://adtrepo.yoctoproject.org/1.0/rootfs"
 
 # The following are for system wide setup
 # Target architectures that you want to setup host cross dev environment for
diff --git a/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i586.conf b/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i586.conf
deleted file mode 100644
index 36e585c..0000000
--- a/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i586.conf
+++ /dev/null
@@ -1,7 +0,0 @@
-arch all 1
-arch any 6
-arch noarch 11
-arch i586-nativesdk 16
-src oe http://
-src oe-all http://
-src oe-i586-nativesdk http://
diff --git a/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i686.conf b/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i686.conf
new file mode 100644
index 0000000..1d8c89a
--- /dev/null
+++ b/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i686.conf
@@ -0,0 +1,6 @@
+arch all 1
+arch any 6
+arch noarch 11
+arch i686-nativesdk 16
+src yp http://adtrepo.yoctoproject.org/1.0/adt-ipk
+src yp-i686-nativesdk http://adtrepo.yoctoproject.org/1.0/adt-ipk/i686-nativesdk
diff --git a/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-x86_64.conf b/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-x86_64.conf
index 3ab4930..6b14f98 100644
--- a/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-x86_64.conf
+++ b/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-x86_64.conf
@@ -2,6 +2,5 @@ arch all 1
 arch any 6
 arch noarch 11
 arch x86_64-nativesdk 16
-src oe http://
-src oe-all http://
-src oe-x86_64-nativesdk http://
+src yp http://adtrepo.yoctoproject.org/1.0/adt-ipk
+src yp-x86_64-nativesdk http://adtrepo.yoctoproject.org/1.0/adt-ipk/x86_64-nativesdk
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal b/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
index 78e5c97..9653284 100755
--- a/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
@@ -29,7 +29,8 @@ parse_config()
   case $INST_ARCH in 
   i[3-6]86)
     OPKG_CONFIG_FILE=$YOCTOADT_OPKG_CONF_FILE_32
-    POKY_NATIVE_SYSROOT="$INSTALL_FOLDER/sysroots/i586-pokysdk-linux/"
+    #POKY_NATIVE_SYSROOT="$INSTALL_FOLDER/sysroots/i586-pokysdk-linux/"
+    POKY_NATIVE_SYSROOT="$INSTALL_FOLDER/sysroots/$INST_ARCH-pokysdk-linux/"
     ;;
   x86_64)
     OPKG_CONFIG_FILE=$YOCTOADT_OPKG_CONF_FILE_64
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/data_define b/meta/recipes-devtools/installer/adt-installer/scripts/data_define
index e975077..2895c4f 100644
--- a/meta/recipes-devtools/installer/adt-installer/scripts/data_define
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/data_define
@@ -35,6 +35,6 @@ YOCTOADT_SUPPORTED_ROOTFS="minimal sato sdk lsb"
 YOCTOADT_SUPPORTED_TARGETS="x86 x86_64 arm powerpc mips"
 # Different host (32 bit or 64 bit) will have different opkg
 # configuration files
-YOCTOADT_OPKG_CONF_FILE_32="./opkg/conf/opkg-sdk-i586.conf"
+YOCTOADT_OPKG_CONF_FILE_32="./opkg/conf/opkg-sdk-i686.conf"
 YOCTOADT_OPKG_CONF_FILE_64="./opkg/conf/opkg-sdk-x86_64.conf"
 INSTALL_FOLDER=/opt/poky/$YOCTOADT_VERSION
diff --git a/meta/recipes-devtools/installer/adt-installer_1.0.bb b/meta/recipes-devtools/installer/adt-installer_1.0.bb
index 226e375..e865971 100644
--- a/meta/recipes-devtools/installer/adt-installer_1.0.bb
+++ b/meta/recipes-devtools/installer/adt-installer_1.0.bb
@@ -47,7 +47,7 @@ SRC_URI = "http://opkg.googlecode.com/files/opkg-0.1.8.tar.gz \
            file://scripts/extract_rootfs \
            file://adt_installer.conf \
            file://opkg/conf/opkg-sdk-x86_64.conf \
-           file://opkg/conf/opkg-sdk-i586.conf \
+           file://opkg/conf/opkg-sdk-i686.conf \
 	  "
 SRC_URI[md5sum] = "c714ce0e4863bf1315e3b6913ffe3299"
 SRC_URI[sha256sum] = "ff94bf30bd662d49c4b5057e3a0818d062731adaa555d59abd677ec32a3c1c60"
-- 
1.7.0.4


