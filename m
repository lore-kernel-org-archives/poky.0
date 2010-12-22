Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id BA6C24C811EC
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:52 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="693216401"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
Message-Id: <d5be8693221820b055e1ada28ad8a8b47c740498.1294099430.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Liping Ke <liping.ke@intel.com>
Date: Wed, 22 Dec 2010 09:31:45 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 41/59] Remove the param passing for readability
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
X-List-Received-Date: Mon, 03 Jan 2011 23:47:52 -0000

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 .../adt-installer/scripts/yocto_installer_internal |    5 ++++-
 scripts/adt-installer/yocto_installer              |    2 --
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/scripts/adt-installer/scripts/yocto_installer_internal b/scripts/adt-installer/scripts/yocto_installer_internal
index 151d8f4..15d6ea3 100755
--- a/scripts/adt-installer/scripts/yocto_installer_internal
+++ b/scripts/adt-installer/scripts/yocto_installer_internal
@@ -196,8 +196,11 @@ parse_config
 #secondly we will start to install native tools
 install_native_sdk
 
+username=`id -nu`
+groupname=`id -ng`
+
 for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
-  install_target $arch_type $1 $2
+  install_target $arch_type $username $groupname
   check_result
 done
 
diff --git a/scripts/adt-installer/yocto_installer b/scripts/adt-installer/yocto_installer
index 975befc..2038ecd 100755
--- a/scripts/adt-installer/yocto_installer
+++ b/scripts/adt-installer/yocto_installer
@@ -309,8 +309,6 @@ for arch_type in $YOCTOADT_SUPPORTED_TARGETS; do
   download_images $arch_type
 done
 
-username=`id -nu`
-groupname=`id -ng`
 scripts/yocto_installer_internal $username $groupname
 
 result="$?"
-- 
1.7.0.4


