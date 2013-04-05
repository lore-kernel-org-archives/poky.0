Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B06E2E0154F
	for <poky@yoctoproject.org>; Fri,  5 Apr 2013 12:00:15 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Apr 2013 11:58:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,416,1363158000"; d="scan'208";a="313019420"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.201.160])
	by orsmga002.jf.intel.com with ESMTP; 05 Apr 2013 12:00:06 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>
Date: Fri,  5 Apr 2013 12:02:24 -0700
Message-Id: <a4eb5a8984d8fd6bd463c31481809d8cfd9ce539.1365188372.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1365188372.git.dvhart@linux.intel.com>
References: <cover.1365188372.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1365188372.git.dvhart@linux.intel.com>
References: <cover.1365188372.git.dvhart@linux.intel.com>
Subject: [PATCH 2/2] poky-tiny: Prefer linux-yocto-tiny_3.8
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 05 Apr 2013 19:00:15 -0000

Update the distro config to prefer the 3.8 version of the
linux-yocto-tiny recipe.

Build and boot tested on qemux86.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-yocto/conf/distro/poky-tiny.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index 347280a..755667f 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -37,7 +37,7 @@ DISTRO = "poky-tiny"
 # Distro config is evaluated after the machine config, so we have to explicitly
 # set the kernel provider to override a machine config.
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
-PREFERRED_VERSION_linux-yocto-tiny = "3.4%"
+PREFERRED_VERSION_linux-yocto-tiny = "3.8%"
 
 # We can use packagegroup-core-boot, but in the future we may need a new packagegroup-core-tiny
 #POKY_DEFAULT_EXTRA_RDEPENDS += "packagegroup-core-boot"
-- 
1.7.5.4


