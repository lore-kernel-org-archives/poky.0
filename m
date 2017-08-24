Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 798FFE00B3D; Thu, 24 Aug 2017 13:54:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17C15E0090A
	for <poky@yoctoproject.org>; Thu, 24 Aug 2017 13:54:01 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Aug 2017 13:54:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,422,1498546800"; d="scan'208";a="141718311"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by orsmga005.jf.intel.com with ESMTP; 24 Aug 2017 13:54:01 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 24 Aug 2017 13:53:59 -0700
Message-Id: <1a9852335439fd12b67287053346d51fd1b883a3.1503607951.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.12.3
In-Reply-To: <cover.1503607951.git.alejandro.hernandez@linux.intel.com>
References: <cover.1503607951.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 1/1] linux-yocto: Adds new bbappend to support 4.12 on genericx86 and genericx86-64 platforms
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
X-List-Received-Date: Thu, 24 Aug 2017 20:54:02 -0000

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend        | 15 +++++++++++++++
 1 file changed, 15 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
new file mode 100644
index 00000000000..d54dcb3b80f
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -0,0 +1,15 @@
+KBRANCH_genericx86  = "standard/base"
+KBRANCH_genericx86-64  = "standard/base"
+
+KMACHINE_genericx86 ?= "common-pc"
+KMACHINE_genericx86-64 ?= "common-pc-64"
+
+SRCREV_machine_genericx86    ?= "d09f2ce584d60ecb7890550c22a80c48b83c2e19"
+SRCREV_machine_genericx86-64 ?= "d09f2ce584d60ecb7890550c22a80c48b83c2e19"
+
+
+COMPATIBLE_MACHINE_genericx86 = "genericx86"
+COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
+
+LINUX_VERSION_genericx86 = "4.12.7"
+LINUX_VERSION_genericx86-64 = "4.12.7"
-- 
2.12.3


