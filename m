Return-Path: <liping.ke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4C3F04C80A79
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 02:53:18 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Feb 2011 00:53:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,215,1297065600"; d="scan'208";a="393375116"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by azsmga001.ch.intel.com with ESMTP; 24 Feb 2011 00:53:17 -0800
Message-Id: <be12658535c42549fb75f8c49e5b0e8a18aab150.1298594898.git.liping.ke@intel.com>
In-Reply-To: <cover.1298594898.git.liping.ke@intel.com>
References: <cover.1298594898.git.liping.ke@intel.com>
Old-Date: Fri, 25 Feb 2011 08:31:44 +0800
Date: Fri, 25 Feb 2011  8:56:00 +0800
To: poky@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 1/1] ADT: Fix several bugs for adt installer
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
X-List-Received-Date: Thu, 24 Feb 2011 08:53:18 -0000

From: Liping Ke <liping.ke@intel.com>

Two bugs are found
1) image download file path is not correct. So even if file is downloaded
   already, it can't be detected.
2) sdk image now is renamed as sato-sdk, we need to change the name
   accordingly.

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 .../installer/adt-installer/adt_installer          |    9 +++++----
 .../installer/adt-installer/scripts/data_define    |    2 +-
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/meta/recipes-devtools/installer/adt-installer/adt_installer b/meta/recipes-devtools/installer/adt-installer/adt_installer
index 1f481de..cca576f 100755
--- a/meta/recipes-devtools/installer/adt-installer/adt_installer
+++ b/meta/recipes-devtools/installer/adt-installer/adt_installer
@@ -216,17 +216,18 @@ done
 
 download_file()
 {
-if [ -f "$LOCAL_DOWNLOAD/$1" ]; then
-  confirm_download $1
+local filename=`echo ${1##*/}`
+if [ -f "$LOCAL_DOWNLOAD/$filename" ]; then
+  confirm_download $filename
   result="$?"
   if [ ! "$result" == "0" ]; then
     return
   else
     echo "Removing old file [$1]"
-    rm -rf "$LOCAL_DOWNLOAD/$1" 
+    rm -rf "$LOCAL_DOWNLOAD/$filename" 
   fi
 fi
-echo_info "Downloading file: $1..."
+echo_info "Downloading file: $filename..."
 wget "$YOCTOADT_IPKG_REPO/$1" -P $LOCAL_DOWNLOAD --progress=bar:force 2>&1 | tee -a "$YOCTOADT_INSTALL_LOG_FILE" 
 }
 
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/data_define b/meta/recipes-devtools/installer/adt-installer/scripts/data_define
index 2895c4f..f9a6a4f 100644
--- a/meta/recipes-devtools/installer/adt-installer/scripts/data_define
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/data_define
@@ -31,7 +31,7 @@ OPKG_LIBDIR="/var/lib"
 
 # List all supported root fs types and target types,
 # it will be used in user configuration validity checking
-YOCTOADT_SUPPORTED_ROOTFS="minimal sato sdk lsb"
+YOCTOADT_SUPPORTED_ROOTFS="minimal sato sato-sdk lsb"
 YOCTOADT_SUPPORTED_TARGETS="x86 x86_64 arm powerpc mips"
 # Different host (32 bit or 64 bit) will have different opkg
 # configuration files
-- 
1.7.0.4


