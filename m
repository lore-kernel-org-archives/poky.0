Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E080CE0148A
	for <poky@yoctoproject.org>; Sat, 19 Jan 2013 21:35:14 -0800 (PST)
Received: from yow-bashfiel-d3.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r0K5ZCnK025265;
	Sat, 19 Jan 2013 21:35:12 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Sun, 20 Jan 2013 00:35:04 -0500
Message-Id: <65b99b1c534d01e6a1365d3cb16b0a1611952b41.1358659970.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1358659970.git.bruce.ashfield@windriver.com>
References: <cover.1358659970.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1358659970.git.bruce.ashfield@windriver.com>
References: <cover.1358659970.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org
Subject: [PATCH 1/1] linux-yocto/meta-yocto: update hardware reference BSPs to 3.4.26 and LTSI
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
X-List-Received-Date: Sun, 20 Jan 2013 05:35:15 -0000

Bumping the yocto reference BSPs to pickup the latest oe-core 3.4.26, -rt
and LTSI updates.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend |    9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
index 5df39b2..3e80bf1 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -3,10 +3,11 @@ KBRANCH_routerstationpro = "standard/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/beagleboard"
 
-SRCREV_machine_atom-pc ?= "449f7f520350700858f21a5554b81cc8ad23267d"
-SRCREV_machine_routerstationpro ?= "27e8b8dabfed786aaaafd2f7104c141597830089"
-SRCREV_machine_mpc8315e-rdb ?= "524ce8107febcfd88717f54d50d36ca7c6e6e437"
-SRCREV_machine_beagleboard ?= "449f7f520350700858f21a5554b81cc8ad23267d"
+SRCREV_machine_atom-pc ?= "59c2a9eb334c2def405c9d93ed6d8d4e822d1945"
+SRCREV_machine_routerstationpro ?= "85c72b6f0775fb3f4babe266fc00b7e8e5305f01"
+SRCREV_machine_mpc8315e-rdb ?= "dd6f6f7ca0d56fce2942509024647264ff9c9caa"
+SRCREV_machine_beagleboard ?= "59c2a9eb334c2def405c9d93ed6d8d4e822d1945"
+
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.7.10.4


