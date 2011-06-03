Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5BE1E4C804E4
	for <poky@yoctoproject.org>; Fri,  3 Jun 2011 11:23:22 -0500 (CDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p53GMjSR018121;
	Fri, 3 Jun 2011 09:22:47 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Fri,  3 Jun 2011 12:21:42 -0400
Message-Id: <f6eb98f84fbeeb60fd4eb4594734d0598b262856.1307117927.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1307117927.git.bruce.ashfield@windriver.com>
References: <cover.1307117927.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1307117927.git.bruce.ashfield@windriver.com>
References: <cover.1307117927.git.bruce.ashfield@windriver.com>
Cc: dvhart@linux.intel.com, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto/meta-yocto: update target/meta SRCREVs
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
X-List-Received-Date: Fri, 03 Jun 2011 16:23:22 -0000

Fixes bug [YOCTO #802]

This SRCREV update picks up the following changes from the
2.6.37 kernel tree:

 - fishriver: creates and uses a dedicated BSP branch
 - fishriver: usbnet fixes
 - linux-omap: merge to match the 2.6.34 upstream merge content
 - beagleboard: adds VFAT config
 - fsl-mpc8315rdb: enables the eprom

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend
index e053fe9..1c047dc 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -3,11 +3,11 @@ KMACHINE_routerstationpro = "yocto/standard/routerstationpro"
 KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
 KMACHINE_beagleboard = "yocto/standard/beagleboard"
 
-SRCREV_machine_emenlow = "5d0d346c0e4b2d837cd98dccbf043f1988e2058a"
-SRCREV_machine_atom-pc = "79d6188d99bdf63da9a0ba27c010792266e337f9"
-SRCREV_machine_routerstationpro = "d6aadb767fdcbb9886c430e90b92f49cd3a9ddcc"
-SRCREV_machine_mpc8315e-rdb = "e5c67f6a64b8b7393ca3a9c80b3ac197be0a8d5f"
-SRCREV_machine_beagleboard = "e53debfc6896bb89174ebb74154ed9b3bc72b59c"
+SRCREV_machine_emenlow = "eb2a1892c00af7fab33468a517746a8aad77524f"
+SRCREV_machine_atom-pc = "002bf30a72fa11c77094b25bead5297f842263d8"
+SRCREV_machine_routerstationpro = "a210863ce9f16d371ed955d54af97cc41c87bb0e"
+SRCREV_machine_mpc8315e-rdb = "9985e4c7445696dfd5384553b972d191bf672c76"
+SRCREV_machine_beagleboard = "30d267e93a2671718ceeccf3e4ecbae2536902e0"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.7.0.4


