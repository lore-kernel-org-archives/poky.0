Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56607E01447
	for <poky@yoctoproject.org>; Sun, 23 Sep 2012 20:23:28 -0700 (PDT)
Received: from yow-bashfiel-l1.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q8O3NQos012607;
	Sun, 23 Sep 2012 20:23:27 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Sun, 23 Sep 2012 23:22:57 -0400
Message-Id: <adb8f33ad68de73d53cb7d4e1d9881d68152e3a7.1348456829.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1348456829.git.bruce.ashfield@windriver.com>
References: <cover.1348456829.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1348456829.git.bruce.ashfield@windriver.com>
References: <cover.1348456829.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org
Subject: [PATCH 1/1] linux-yocto/meta-yocto/3.4: update machine SRCREVs
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
X-List-Received-Date: Mon, 24 Sep 2012 03:23:28 -0000

The hardware reference BSPs are lagging the oe-core qemu BSPs. Bumping
their SRCREVs to pickup 3.4.10 and minor bug fixes.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
index e9a6d9d..b1ee952 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -3,10 +3,10 @@ KBRANCH_routerstationpro = "standard/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/beagleboard"
 
-SRCREV_machine_atom-pc ?= "0985844fa6235422c67ef269952fa4e765f252f9"
-SRCREV_machine_routerstationpro ?= "a2907c57acfb8fa71095a3ce5b20994ff859dbc5"
-SRCREV_machine_mpc8315e-rdb ?= "363a6f7e0c95aabec779a7ea3474662d191b935c"
-SRCREV_machine_beagleboard ?= "0985844fa6235422c67ef269952fa4e765f252f9"
+SRCREV_machine_atom-pc ?= "59c3ff750831338d05ab67d5efd7fc101c451aff"
+SRCREV_machine_routerstationpro ?= "009935376be574746446f4bead6f0fb7b40d6d79"
+SRCREV_machine_mpc8315e-rdb ?= "6b18b6f483716b757c7c8642fa3792235118bb63"
+SRCREV_machine_beagleboard ?= "59c3ff750831338d05ab67d5efd7fc101c451aff"
 
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
-- 
1.7.5.4


