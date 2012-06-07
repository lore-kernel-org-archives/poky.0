Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 129A9E01445
	for <poky@yoctoproject.org>; Thu,  7 Jun 2012 13:04:08 -0700 (PDT)
Received: from yow-bashfiel-l1.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q57K40C6019543;
	Thu, 7 Jun 2012 13:04:05 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Thu,  7 Jun 2012 16:03:45 -0400
Message-Id: <a7640b8ff0a960296ba20474ae6c802197b00b85.1339099275.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1339099275.git.bruce.ashfield@windriver.com>
References: <cover.1339099275.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1339099275.git.bruce.ashfield@windriver.com>
References: <cover.1339099275.git.bruce.ashfield@windriver.com>
Cc: dvhart@linux.intel.com, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 5/7] linux-yocto/meta-yocto: introduce 3.4 bbappend
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
X-List-Received-Date: Thu, 07 Jun 2012 20:04:08 -0000

Creating the initial meta-yocto bbappend for the 3.4 kernel.
The routerstationpro and beaglboard are not initially marked as
compatible since full testing has not completed. Future updates
will remove this restriction.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |   14 ++++++++++++++
 1 files changed, 14 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
new file mode 100644
index 0000000..cb8c3aa
--- /dev/null
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -0,0 +1,14 @@
+KBRANCH_atom-pc  = "standard/common-pc/atom-pc"
+KBRANCH_routerstationpro = "standard/routerstationpro"
+KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
+KBRANCH_beagleboard = "standard/beagleboard"
+
+SRCREV_machine_atom-pc ?= "780ab7e11f03931295e8f0e29707f2abb688e9ad"
+SRCREV_machine_routerstationpro ?= "780ab7e11f03931295e8f0e29707f2abb688e9ad"
+SRCREV_machine_mpc8315e-rdb ?= "2d99f67fe6b4301cefd4e6f9a5ce75a9cc84686b"
+SRCREV_machine_beagleboard ?= "780ab7e11f03931295e8f0e29707f2abb688e9ad"
+
+COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
+# COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
+# COMPATIBLE_MACHINE_beagleboard = "beagleboard"
+COMPATIBLE_MACHINE_atom-pc = "atom-pc"
-- 
1.7.5.4


