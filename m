Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 19D3F4C80861
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 14:02:47 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Mar 2011 12:02:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,259,1297065600"; d="scan'208";a="608774684"
Received: from unknown (HELO localhost) ([10.255.12.102])
	by orsmga002.jf.intel.com with ESMTP; 03 Mar 2011 12:02:46 -0800
Message-Id: <9149e85c25adae1cac22f8f70d2016030d3de1fc.1299182375.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299182375.git.sgw@linux.intel.com>
References: <cover.1299182375.git.sgw@linux.intel.com>
Old-Date: Thu, 3 Mar 2011 10:10:49 +0800
Date: Thu, 03 Mar 2011 12:02:45 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 05/10] Add libtool-nativesdk for ADT
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

We need to add libtool native sdk support in ADT installer.
This patch fix #bug  791

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 .../adt-installer/scripts/adt_installer_internal   |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal b/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
index 9653284..b5e304d 100755
--- a/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
@@ -101,6 +101,9 @@ check_result
 echo_info "Installing pkgconfig nativesdk ...\n"
 $OPKG_INSTALL_NATIVE_CMD pkgconfig-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
 check_result
+echo_info "Installing libtool nativesdk ...\n"
+$OPKG_INSTALL_NATIVE_CMD libtool-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
+check_result
 
 for native_target_type in $YOCTOADT_TARGETS; do
   native_target_type=`echo "$native_target_type" | sed -e 's/x86_64/x86-64/' -e 's/x86$/i586/'`
-- 
1.7.1.1


