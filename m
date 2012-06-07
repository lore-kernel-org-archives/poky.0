Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 143E7E01435
	for <poky@yoctoproject.org>; Thu,  7 Jun 2012 13:04:06 -0700 (PDT)
Received: from yow-bashfiel-l1.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q57K40C2019543;
	Thu, 7 Jun 2012 13:04:01 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Thu,  7 Jun 2012 16:03:41 -0400
Message-Id: <5617a7fd39fd8bcc6cc3e98b17272d83387b182e.1339099275.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1339099275.git.bruce.ashfield@windriver.com>
References: <cover.1339099275.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1339099275.git.bruce.ashfield@windriver.com>
References: <cover.1339099275.git.bruce.ashfield@windriver.com>
Cc: dvhart@linux.intel.com, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/7] linux-yocto/meta-yocto: update to v3.0.32
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
X-List-Received-Date: Thu, 07 Jun 2012 20:04:06 -0000

Updating the kernel SRCREVs to pickup the v3.0.32 -stable release.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |    6 +++---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++----
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index 74aa294..fdd9f7d 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -4,13 +4,13 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_atom-pc = "atom-pc"
 KMACHINE_atom-pc = "atom-pc"
 KBRANCH_atom-pc = "yocto/standard/preempt-rt/base"
-SRCREV_machine_pn-linux-yocto-rt_atom-pc = "2f9d925f5681eaae7f341cc1270c739e8b329c03"
+SRCREV_machine_pn-linux-yocto-rt_atom-pc = "e67428d9966eecec4c081993dc64ceb5c0e64643"
 
 # mpc8315e-rdb support
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
 KBRANCH_mpc8315e-rdb = "yocto/standard/preempt-rt/base"
-SRCREV_machine_pn-linux-yocto-rt_mpc8315e-rdb = "2f9d925f5681eaae7f341cc1270c739e8b329c03"
+SRCREV_machine_pn-linux-yocto-rt_mpc8315e-rdb = "e67428d9966eecec4c081993dc64ceb5c0e64643"
 
 # beagleboard support - 3.0 support has not yet been completed, build failure
 #COMPATIBLE_MACHINE_beagleboard = "beagleboard"
@@ -22,4 +22,4 @@ SRCREV_machine_pn-linux-yocto-rt_mpc8315e-rdb = "2f9d925f5681eaae7f341cc1270c739
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
 KMACHINE_routerstationpro = "routerstationpro"
 KBRANCH_routerstationpro = "yocto/standard/preempt-rt/routerstationpro"
-SRCREV_machine_pn-linux-yocto-rt_routerstationpro = "855fb36f410e5ed1b42a2cb9d4f10c55e5a510c1"
+SRCREV_machine_pn-linux-yocto-rt_routerstationpro = "94b9545c58bf4dee8321b800b90958d10875fda8"
diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 4c483ca..2313034 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -6,10 +6,10 @@ KBRANCH_beagleboard = "yocto/standard/beagleboard"
 # temporary until 3.0 tree is updated to have machine mapping
 KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
 
-SRCREV_machine_atom-pc ?= "afdda882f902dd28693cd8701a7d497958290f09"
-SRCREV_machine_routerstationpro ?= "220d89fcf345ee28fb0cdcf0f33f83b3dc7c460f"
-SRCREV_machine_mpc8315e-rdb ?= "83f422f718cf15633cb4c2d309aa041c3c354f65"
-SRCREV_machine_beagleboard ?= "8fd5a8eb4067c7032389e82d54f0e54e1e27f78c"
+SRCREV_machine_atom-pc ?= "45d64709c00fce6e9b76a638c4ca6f30a8e9d25a"
+SRCREV_machine_routerstationpro ?= "21bd4a0a3b0f061e4640dd1011ebc94d122b5e40"
+SRCREV_machine_mpc8315e-rdb ?= "0c781e306559d5e9816e202a60aa2543f4eea39e"
+SRCREV_machine_beagleboard ?= "567c989c90ce5f2c62f6ef788be763150b65a0fb"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.7.5.4


