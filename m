Return-Path: <liping.ke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 591DE4C80A4F
	for <poky@yoctoproject.org>; Mon,  7 Mar 2011 23:06:31 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 07 Mar 2011 21:06:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,282,1297065600"; d="scan'208";a="399143247"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by azsmga001.ch.intel.com with ESMTP; 07 Mar 2011 21:06:08 -0800
Message-Id: <6e98b52547e8df1dbeeb1813e0da6524a87ebcdd.1299560576.git.liping.ke@intel.com>
In-Reply-To: <cover.1299560576.git.liping.ke@intel.com>
References: <cover.1299560576.git.liping.ke@intel.com>
Old-Date: Tue, 8 Mar 2011 12:55:08 +0800
Date: Tue, 08 Mar 2011 13:04:35 +0800
To: poky@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 1/1] adt: removed unused repo source and opkg options
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
X-List-Received-Date: Tue, 08 Mar 2011 05:06:31 -0000

From: Liping Ke <liping.ke@intel.com>

opgk option --force-overwrite is only a workaround for bug #547.
Now this bug is gone, so remove this option.

and also, the first opkg repo source is not useful, remove it.

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 .../adt-installer/opkg/conf/opkg-sdk-i686.conf     |    1 -
 .../adt-installer/opkg/conf/opkg-sdk-x86_64.conf   |    1 -
 .../adt-installer/scripts/adt_installer_internal   |    2 +-
 3 files changed, 1 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i686.conf b/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i686.conf
index 1d8c89a..9c93a72 100644
--- a/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i686.conf
+++ b/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i686.conf
@@ -2,5 +2,4 @@ arch all 1
 arch any 6
 arch noarch 11
 arch i686-nativesdk 16
-src yp http://adtrepo.yoctoproject.org/1.0/adt-ipk
 src yp-i686-nativesdk http://adtrepo.yoctoproject.org/1.0/adt-ipk/i686-nativesdk
diff --git a/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-x86_64.conf b/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-x86_64.conf
index 6b14f98..3e70aac 100644
--- a/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-x86_64.conf
+++ b/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-x86_64.conf
@@ -2,5 +2,4 @@ arch all 1
 arch any 6
 arch noarch 11
 arch x86_64-nativesdk 16
-src yp http://adtrepo.yoctoproject.org/1.0/adt-ipk
 src yp-x86_64-nativesdk http://adtrepo.yoctoproject.org/1.0/adt-ipk/x86_64-nativesdk
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal b/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
index df142ff..bc92069 100755
--- a/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
@@ -89,7 +89,7 @@ echo_info "opkg update process ended..."
 check_result
 
 #install below must sdk-host packages
-OPKG_INSTALL_CMD="$OPKG_CMD --force-overwrite"
+OPKG_INSTALL_CMD="$OPKG_CMD "
 OPKG_INSTALL_NATIVE_CMD="$OPKG_INSTALL_CMD  -f $OPKG_CONFIG_FILE -o $NATIVE_INSTALL_DIR install"
 
 echo_info "Installing pseudo nativesdk ...\n"
-- 
1.7.0.4


