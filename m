Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D26FE013BB
	for <poky@yoctoproject.org>; Thu,  7 Jun 2012 13:04:06 -0700 (PDT)
Received: from yow-bashfiel-l1.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q57K40C4019543;
	Thu, 7 Jun 2012 13:04:03 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Thu,  7 Jun 2012 16:03:43 -0400
Message-Id: <a731ad8cbbb5eb7ada126247d802c76e3932de83.1339099275.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1339099275.git.bruce.ashfield@windriver.com>
References: <cover.1339099275.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1339099275.git.bruce.ashfield@windriver.com>
References: <cover.1339099275.git.bruce.ashfield@windriver.com>
Cc: dvhart@linux.intel.com, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 3/7] linux-yocto/meta-yocto: remove 2.6.37 bbappend
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

With the introduction of the 3.4 kernel, the 2.6.37 kernel recipe is
removed, so we'll also remove the meta-yocto 2.6.37 bbappend.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../linux/linux-yocto_2.6.37.bbappend              |   14 --------------
 1 files changed, 0 insertions(+), 14 deletions(-)
 delete mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
deleted file mode 100644
index 24b6cea..0000000
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
+++ /dev/null
@@ -1,14 +0,0 @@
-KMACHINE_atom-pc  = "yocto/standard/common-pc/atom-pc"
-KMACHINE_routerstationpro = "yocto/standard/routerstationpro"
-KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
-KMACHINE_beagleboard = "yocto/standard/beagleboard"
-
-SRCREV_machine_atom-pc = "fce17f046d3756045e4dfb49221d1cf60fcae329"
-SRCREV_machine_routerstationpro = "8f84c1aec0907766ab6d6ac79fcc3b7b9ce79b70"
-SRCREV_machine_mpc8315e-rdb = "bda049366dad5fc3c7ba229cd4633992581e7a1f"
-SRCREV_machine_beagleboard = "3ddb22772862a8223640fa97580569924f51bddc"
-
-COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
-COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-COMPATIBLE_MACHINE_beagleboard = "beagleboard"
-COMPATIBLE_MACHINE_atom-pc = "atom-pc"
-- 
1.7.5.4


