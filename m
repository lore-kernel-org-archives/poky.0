Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 016ACE01445
	for <poky@yoctoproject.org>; Thu,  7 Jun 2012 13:04:08 -0700 (PDT)
Received: from yow-bashfiel-l1.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q57K40C7019543;
	Thu, 7 Jun 2012 13:04:06 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Thu,  7 Jun 2012 16:03:46 -0400
Message-Id: <0f670d7af2333038887cd539590d8d9ebd1500fc.1339099275.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1339099275.git.bruce.ashfield@windriver.com>
References: <cover.1339099275.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1339099275.git.bruce.ashfield@windriver.com>
References: <cover.1339099275.git.bruce.ashfield@windriver.com>
Cc: dvhart@linux.intel.com, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 6/7] linux-yocto/meta-yocto/3.2: fri2 and chiefriver machine updates
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
X-List-Received-Date: Thu, 07 Jun 2012 20:04:09 -0000

Picking up the oe-core commit:

    Bumping the 3.2 SRCREVs to pickup the following configuration changes for
    the new chiefriver BSP and the existing fri2 machines:

     5b4c9dc fri2: update base config
     cdfbb50 fri2: add usb-mass-storage to standard and preempt-rt
     3c1af06 fri2 update: drop NETDEVICE, e1xxx, usb-mass-storage, add iwlwifi feature
     26a4d79 iwlagn: Correct a comment typo
     ade9c57 iwlwifi: Add a feature for iwlwifi
     571b6cb fri2: Configuration update (usb, wifi, i2c)
     b257485 meta: add tmp/rc6 feature
     24c6494 chiefriver: create initial BSP infrastructure

    All branches are also updated with the following fix:

      1ce6700 efi: Add patch to fix 32bit EFI service mapping (rhbz 726701)

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend
index dfb019b..fa160f8 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -3,10 +3,10 @@ KBRANCH_routerstationpro = "standard/default/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/default/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/default/beagleboard"
 
-SRCREV_machine_atom-pc ?= "624509ef194d14aa498ed6f1620093b8e40e3a30"
-SRCREV_machine_routerstationpro ?= "6eb6f908bbca493bbce4b7c460f8bf07272a78a9"
-SRCREV_machine_mpc8315e-rdb ?= "bd08c2cdee3c980060ee6d3206ece374570f74d2"
-SRCREV_machine_beagleboard ?= "ab826acad523e8858dcf867847a732c7288b5dc7"
+SRCREV_machine_atom-pc ?= "41074a778d251a77e036fd8a99915cd4da6cd8f7"
+SRCREV_machine_routerstationpro ?= "94abc0d75d0a99c40c53402570cd9c569539fee9"
+SRCREV_machine_mpc8315e-rdb ?= "a04e94f4dae9cf6d32d059cf9e0308abe7341a3a"
+SRCREV_machine_beagleboard ?= "40bde7a43ef3cd85729ab02464a7ecdf71e522a6"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.7.5.4


