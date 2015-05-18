Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDABAE009E1; Mon, 18 May 2015 16:32:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E41A8E009D8
	for <poky@yoctoproject.org>; Mon, 18 May 2015 16:32:05 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP; 18 May 2015 16:32:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,455,1427785200"; d="scan'208";a="495274454"
Received: from ihoshino-mobl.amr.corp.intel.com (HELO
	swold-mobl.amr.corp.intel.com) ([10.255.86.199])
	by FMSMGA003.fm.intel.com with ESMTP; 18 May 2015 16:32:04 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 18 May 2015 16:32:03 -0700
Message-Id: <1431991923-20314-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 2.1.0
Cc: dvhart@linux.intel.com
Subject: [PATCH] meta-yocto-bsp: Add genericx86* BSP to use 3.19
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
X-List-Received-Date: Mon, 18 May 2015 23:32:06 -0000

Add the linux-yocto_3.19.bbappend to support the genericx86 BSP

Tested on a variety of machines both 32 bit and 64 bit

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend | 11 +++++++++++
 1 file changed, 11 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend
new file mode 100644
index 0000000..cd3e242
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend
@@ -0,0 +1,11 @@
+KBRANCH_genericx86  = "standard/common-pc"
+KBRANCH_genericx86-64  = "standard/common-pc-64/base"
+
+KMACHINE_genericx86 ?= "common-pc"
+KMACHINE_genericx86-64 ?= "common-pc-64"
+
+SRCREV_machine_genericx86 ?= "0befa35f40997c90936047e57fbbdd7edbf7e525"
+SRCREV_machine_genericx86-64 ?= "0befa35f40997c90936047e57fbbdd7edbf7e525"
+
+COMPATIBLE_MACHINE_genericx86 = "genericx86"
+COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-- 
2.1.0


