Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 600ADE01271
	for <poky@yoctoproject.org>; Fri,  2 Sep 2011 20:07:57 -0700 (PDT)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(dhcp-146-223.ottawa.windriver.com [128.224.146.223])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p8337LDn012790;
	Fri, 2 Sep 2011 20:07:22 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Fri,  2 Sep 2011 23:06:54 -0400
Message-Id: <227658350facad588eb7be2e3a167bd57148435c.1315019063.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1315019063.git.bruce.ashfield@windriver.com>
References: <cover.1315019063.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1315019063.git.bruce.ashfield@windriver.com>
References: <cover.1315019063.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto/meta-yocto: update SRCREV for v3.0.4
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
X-List-Received-Date: Sat, 03 Sep 2011 03:07:57 -0000

Updating the kernel SRCREVs to pickup the latest meta and BSP
changes.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |    4 ++--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   11 ++++++-----
 2 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index a575105..ab0f24c 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -4,13 +4,13 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_atom-pc = "atom-pc"
 KMACHINE_atom-pc = "atom-pc"
 KBRANCH_atom-pc = "yocto/standard/preempt-rt/base"
-SRCREV_machine_pn-linux-yocto-rt_atom-pc = "7e1e5b6c8a13c615feb0d7b6d37988a094aae98f"
+SRCREV_machine_pn-linux-yocto-rt_atom-pc = "0b805cce57f61a244eb3b8fce460b14f1be442b3"
 
 # mpc8315e-rdb support
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
 KBRANCH_mpc8315e-rdb = "yocto/standard/preempt-rt/base"
-SRCREV_machine_pn-linux-yocto-rt_mpc8315e-rdb = "7e1e5b6c8a13c615feb0d7b6d37988a094aae98f"
+SRCREV_machine_pn-linux-yocto-rt_mpc8315e-rdb = "0b805cce57f61a244eb3b8fce460b14f1be442b3"
 
 # beagleboard support - 3.0 support has not yet been completed, build failure
 #COMPATIBLE_MACHINE_beagleboard = "beagleboard"
diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 52ff1a2..1ae9c12 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -3,11 +3,12 @@ KMACHINE_routerstationpro = "yocto/standard/routerstationpro"
 KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
 KMACHINE_beagleboard = "yocto/standard/beagleboard"
 
-SRCREV_machine_emenlow ?= "985f4b7b1df7e4dbfd73af8312f544a9fcd537e7"
-SRCREV_machine_atom-pc ?= "ead7d8334e4c075906d029789333f43e54f6257a"
-SRCREV_machine_routerstationpro ?= "81d3603cf9354533f8a747b9cf9be721cb70d4fb"
-SRCREV_machine_mpc8315e-rdb ?= "59503eebe7ad5951973be8bc66eeeb98cf98193a"
-SRCREV_machine_beagleboard ?= "73d4dce6a853bab7e943a5d7eee67e593f259ecf"
+
+SRCREV_machine_emenlow ?= "9948ca260f316afa99c0d87d8ddb2736bf1d3709"
+SRCREV_machine_atom-pc ?= "1e18e44adbe79b846e382370eb29bc4b8cd5a1a0"
+SRCREV_machine_routerstationpro ?= "ed0e03a8b04388a982141919da805392b7ca1c91"
+SRCREV_machine_mpc8315e-rdb ?= "58ffdb8000e34d2ba7c3ef278b26680b0886e8b5"
+SRCREV_machine_beagleboard ?= "2bba211297d10047637b8f49abd2c5415480ce4d"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 # COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.7.4.1


