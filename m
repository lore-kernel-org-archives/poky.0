Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A7FF74C810F1
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:27:09 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 23 Dec 2010 06:27:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="586663178"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by orsmga002.jf.intel.com with ESMTP; 23 Dec 2010 06:27:08 -0800
Message-Id: <2fc157701136928229d6a29cb9b92443ee110cd7.1293114004.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293114003.git.sgw@linux.intel.com>
References: <cover.1293114003.git.sgw@linux.intel.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Old-Date: Wed, 22 Dec 2010 16:30:53 -0500
Date: Thu, 23 Dec 2010  6:27:08 -0800
To: poky@yoctoproject.org
Subject: [PATCH 09/28] linux-yocto: add dropped qemuppc configuration
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
X-List-Received-Date: Thu, 23 Dec 2010 14:27:09 -0000

The _ to - mass change mangled a config file name, which was
dropped from the update. This adds the fixed file back to the
meta branch of the kernel.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 15f7874..8ec854b 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -105,7 +105,7 @@ SRCREV_machine_pn-linux-yocto_atom-pc = "f6454fa1af4340832f8943f0b3d8e9f2de11b1b
 SRCREV_machine_pn-linux-yocto_routerstationpro = "f0d79e2ae0cbb3924c57655b8c7d6a1276c9fc05"
 SRCREV_machine_pn-linux-yocto_mpc8315e-rdb = "a0243e84c1cca7fb625ae4bd76274882ccbe4333"
 SRCREV_machine_pn-linux-yocto_beagleboard = "f6454fa1af4340832f8943f0b3d8e9f2de11b1b1"
-SRCREV_meta_pn-linux-yocto ?= "7ca94548e68a72e57715d65d6d8f723582aafa59"
+SRCREV_meta_pn-linux-yocto ?= "5955ebea1f0d2fbd67a66ed138ce2b3363adf72a"
 SRCREV_pn-linux-libc-headers-yocto ??= "f6454fa1af4340832f8943f0b3d8e9f2de11b1b1"
 SRCREV_pn-matchbox-config-gtk ??= "2081"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
-- 
1.7.2.3


