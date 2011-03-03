Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 565FD4C80A84
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 14:02:47 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 03 Mar 2011 12:02:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,259,1297065600"; d="scan'208";a="893505474"
Received: from unknown (HELO localhost) ([10.255.12.102])
	by fmsmga001.fm.intel.com with ESMTP; 03 Mar 2011 12:02:46 -0800
Message-Id: <06ae5cd63b3b42d8dafe953ffbce93c321f11ac3.1299182375.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299182375.git.sgw@linux.intel.com>
References: <cover.1299182375.git.sgw@linux.intel.com>
Old-Date: Thu, 3 Mar 2011 03:18:38 +0800
Date: Thu, 03 Mar 2011 12:02:46 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 06/10] ADT: Bug fix for Suse Linux
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
X-List-Received-Date: Thu, 03 Mar 2011 20:02:47 -0000

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
index b5e304d..df142ff 100755
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
1.7.1.1


