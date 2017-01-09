Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 588EDE007C2; Mon,  9 Jan 2017 13:19:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B8FFE007AA
	for <poky@yoctoproject.org>; Mon,  9 Jan 2017 13:19:14 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga101.jf.intel.com with ESMTP; 09 Jan 2017 13:19:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,341,1477983600"; d="scan'208";a="47230569"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga004.jf.intel.com with ESMTP; 09 Jan 2017 13:19:14 -0800
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.38])
	by linux.intel.com (Postfix) with ESMTP id 20D966A4080;
	Mon,  9 Jan 2017 13:18:19 -0800 (PST)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon,  9 Jan 2017 22:56:45 +0200
Message-Id: <1483995405-20030-1-git-send-email-ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] mpc8315e-rdb: move wks file to wic/ directory
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
X-List-Received-Date: Mon, 09 Jan 2017 21:19:16 -0000

Moved mpc8315e-rdb.wks from scripts/lib/wic/canned-wks/ to
layer wic/ directory to gather all wks files for reference
BSPs in one place.

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 meta-yocto-bsp/wic/mpc8315e-rdb.wks | 4 ++++
 1 file changed, 4 insertions(+)
 create mode 100644 meta-yocto-bsp/wic/mpc8315e-rdb.wks

diff --git a/meta-yocto-bsp/wic/mpc8315e-rdb.wks b/meta-yocto-bsp/wic/mpc8315e-rdb.wks
new file mode 100644
index 0000000..d0cb607
--- /dev/null
+++ b/meta-yocto-bsp/wic/mpc8315e-rdb.wks
@@ -0,0 +1,4 @@
+# short-description: Create SD card image for MPC8315E-RDB
+# long-description: Create a partitioned SD card image for Freescale MPC8315E-RDB reference hardware.
+part /boot --source bootimg-partition --ondisk sdb --fstype=ext3 --label boot
+part / --source rootfs --ondisk sdb --fstype=ext3 --label root
-- 
2.1.4


