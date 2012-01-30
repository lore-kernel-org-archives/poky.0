Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5E76E00306
	for <poky@yoctoproject.org>; Mon, 30 Jan 2012 12:16:14 -0800 (PST)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(yow-bashfiel-d3.ottawa.windriver.com [128.224.147.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0UKGBNG019675;
	Mon, 30 Jan 2012 12:16:12 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Mon, 30 Jan 2012 15:16:09 -0500
Message-Id: <a418a0b035767546908156d87c6c01d1aaceaa6f.1327954069.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1327954069.git.bruce.ashfield@windriver.com>
References: <cover.1327954069.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1327954069.git.bruce.ashfield@windriver.com>
References: <cover.1327954069.git.bruce.ashfield@windriver.com>
Cc: dvhart@linux.intel.com, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/2] linux-yocto/meta-yocto: create linux-yocto 3.2 bbappend
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
X-List-Received-Date: Mon, 30 Jan 2012 20:16:15 -0000

Now that the 3.2 kernel has been introduced, we need a 3.2 bbappend for
the yocto hardware reference boards.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |   19 +++++++++++++++++++
 1 files changed, 19 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend
new file mode 100644
index 0000000..5e25910
--- /dev/null
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -0,0 +1,19 @@
+KMACHINE_atom-pc  = "atom-pc"
+KMACHINE_routerstationpro = routerstationpro"
+KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
+KMACHINE_beagleboard = "beagleboard"
+
+KBRANCH_atom-pc  = "standard/default/common-pc/atom-pc"
+KBRANCH_routerstationpro = "standard/default/routerstationpro"
+KBRANCH_mpc8315e-rdb = "standard/default/fsl-mpc8315e-rdb"
+KBRANCH_beagleboard = "standard/default/beagleboard"
+
+SRCREV_machine_atom-pc ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+SRCREV_machine_routerstationpro ?= "e015d29f374cd986e15f636b6b84b514d95d76ed"
+SRCREV_machine_mpc8315e-rdb ?= "2349967f408cc60db2b1c89fcefffc81428f9341"
+SRCREV_machine_beagleboard ?= "417fc778a86e81303bab5883b919ee422ec51c04"
+
+COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
+COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
+COMPATIBLE_MACHINE_beagleboard = "beagleboard"
+COMPATIBLE_MACHINE_atom-pc = "atom-pc"
-- 
1.7.4.1


