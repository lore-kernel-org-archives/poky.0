Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50902E01443
	for <poky@yoctoproject.org>; Thu,  7 Jun 2012 13:04:07 -0700 (PDT)
Received: from yow-bashfiel-l1.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q57K40C5019543;
	Thu, 7 Jun 2012 13:04:04 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Thu,  7 Jun 2012 16:03:44 -0400
Message-Id: <f6f1869c8fbe921718e5f8c31849951e1fa105ef.1339099275.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1339099275.git.bruce.ashfield@windriver.com>
References: <cover.1339099275.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1339099275.git.bruce.ashfield@windriver.com>
References: <cover.1339099275.git.bruce.ashfield@windriver.com>
Cc: dvhart@linux.intel.com, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 4/7] linux-yocto/meta-yocto: add machine aliases for yocto BSPs
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
X-List-Received-Date: Thu, 07 Jun 2012 20:04:07 -0000

To avoid mapping machine names to kernel machine names in recipes,
we can define multiple KMACHINE names for a single in tree board.
This allows the tools to match a board description to multiple
different MACHINEs.

As a result, we can remove the explicit KMACHINE mappings from
the linux-yocto recipes and allow the KMACHINE=${MACHINE} default
to handle mappings. Individual recipes an bbappends can override
this as required.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    3 ---
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    5 -----
 2 files changed, 0 insertions(+), 8 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 2313034..d0608bc 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -3,9 +3,6 @@ KBRANCH_routerstationpro = "yocto/standard/routerstationpro"
 KBRANCH_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "yocto/standard/beagleboard"
 
-# temporary until 3.0 tree is updated to have machine mapping
-KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
-
 SRCREV_machine_atom-pc ?= "45d64709c00fce6e9b76a638c4ca6f30a8e9d25a"
 SRCREV_machine_routerstationpro ?= "21bd4a0a3b0f061e4640dd1011ebc94d122b5e40"
 SRCREV_machine_mpc8315e-rdb ?= "0c781e306559d5e9816e202a60aa2543f4eea39e"
diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend
index 815650a..dfb019b 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -1,8 +1,3 @@
-KMACHINE_atom-pc  = "atom-pc"
-KMACHINE_routerstationpro = "routerstationpro"
-KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
-KMACHINE_beagleboard = "beagleboard"
-
 KBRANCH_atom-pc  = "standard/default/common-pc/atom-pc"
 KBRANCH_routerstationpro = "standard/default/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/default/fsl-mpc8315e-rdb"
-- 
1.7.5.4


