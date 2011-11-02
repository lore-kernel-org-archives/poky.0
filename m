Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A9D6E01366
	for <poky@yoctoproject.org>; Wed,  2 Nov 2011 12:25:59 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 02 Nov 2011 12:25:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,445,1315206000"; d="scan'208";a="69846591"
Received: from unknown (HELO shamshir.amr.corp.intel.com) ([10.255.15.168])
	by azsmga001.ch.intel.com with ESMTP; 02 Nov 2011 12:25:57 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  2 Nov 2011 12:25:52 -0700
Message-Id: <e5f24b1ad532a40b74e4e6453604af1d6a8d67ee.1320261024.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7
In-Reply-To: <cover.1320261024.git.josh@linux.intel.com>
References: <cover.1320261024.git.josh@linux.intel.com>
In-Reply-To: <cover.1320261024.git.josh@linux.intel.com>
References: <cover.1320261024.git.josh@linux.intel.com>
Subject: [PATCH 1/1] machine/atom-pc: enable sound
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
X-List-Received-Date: Wed, 02 Nov 2011 19:25:59 -0000

Add alsa to the MACHINE_FEATURES - looks like this was an oversight.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta-yocto/conf/machine/atom-pc.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/machine/atom-pc.conf b/meta-yocto/conf/machine/atom-pc.conf
index 4bab4c8..5b51799 100644
--- a/meta-yocto/conf/machine/atom-pc.conf
+++ b/meta-yocto/conf/machine/atom-pc.conf
@@ -6,7 +6,7 @@
 include conf/machine/include/tune-atom.inc
 
 MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 wifi \
-                    acpi"
+                    acpi alsa"
 
 KERNEL_IMAGETYPE = "bzImage"
 
-- 
1.7.7


