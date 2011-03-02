Return-Path: <liping.ke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id F12464C80AAD
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 21:27:12 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Mar 2011 19:27:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,251,1297065600"; d="scan'208";a="396115335"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by azsmga001.ch.intel.com with ESMTP; 01 Mar 2011 19:27:11 -0800
Message-Id: <96e856cf772aefe716effc0a05675b46fad0ce85.1299094021.git.liping.ke@intel.com>
In-Reply-To: <cover.1299094021.git.liping.ke@intel.com>
References: <cover.1299094021.git.liping.ke@intel.com>
Old-Date: Thu, 3 Mar 2011 03:18:38 +0800
Date: Thu, 03 Mar 2011  3:28:52 +0800
To: poky@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 1/1] ADT: Bug fix for Suse Linux
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
X-List-Received-Date: Wed, 02 Mar 2011 03:27:13 -0000

From: Liping Ke <liping.ke@intel.com>

On Suse linux11.2, we found when using sudo, we must add -E opts
to preserver some network proxy environment settings. Otherwise,
opkg-cl can't access files behind firewall. [bug #785]
Also, we need to add absolute path when sourcing files.
Fix for [bug #786]

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 .../adt-installer/scripts/adt_installer_internal   |    2 +-
 .../installer/adt-installer/scripts/data_define    |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal b/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
index 9653284..f8b5e68 100755
--- a/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
@@ -81,7 +81,7 @@ else
 fi
 
 #first update repository
-OPKG_CMD="sudo $LOCAL_OPKG_LOC/bin/opkg-cl"
+OPKG_CMD="sudo -E $LOCAL_OPKG_LOC/bin/opkg-cl"
 
 echo_info "Updating opkg..."
 $OPKG_CMD -f $OPKG_CONFIG_FILE -o $NATIVE_INSTALL_DIR update &>> $YOCTOADT_INSTALL_LOG_FILE
diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/data_define b/meta/recipes-devtools/installer/adt-installer/scripts/data_define
index 77f8b38..e29cc30 100644
--- a/meta/recipes-devtools/installer/adt-installer/scripts/data_define
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/data_define
@@ -23,7 +23,7 @@
 # THE SOFTWARE.
 
 config_file="adt_installer.conf"
-source $config_file
+source `eval echo $PWD`/$config_file
 
 LOCAL_OPKG_LOC="./opkg/build/opkg"
 LOCAL_OPKG_FOLDER="./opkg/build"
-- 
1.7.0.4


