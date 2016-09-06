Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5B29E00D44; Tue,  6 Sep 2016 09:30:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AC70E00D35
	for <poky@yoctoproject.org>; Tue,  6 Sep 2016 09:30:27 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga101.fm.intel.com with ESMTP; 06 Sep 2016 09:30:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,292,1470726000"; 
   d="scan'208";a="5597858"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by orsmga004.jf.intel.com with ESMTP; 06 Sep 2016 09:30:27 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue,  6 Sep 2016 16:26:13 +0000
Message-Id: <5a2b13336e94c9635377b1736640f1bad46bb909.1473179138.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.6.6
In-Reply-To: <cover.1473179138.git.alejandro.hernandez@linux.intel.com>
References: <cover.1473179138.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 1/1] linux-yocto: Adds new bbappend for genericx86 and genericx86-64 BSPs to support kernel 4.8
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
X-List-Received-Date: Tue, 06 Sep 2016 16:30:32 -0000

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/conf/machine/genericx86-64.conf             |  2 ++
 meta-yocto-bsp/conf/machine/genericx86.conf                |  2 ++
 .../recipes-kernel/linux/linux-yocto_4.8.bbappend          | 14 ++++++++++++++
 3 files changed, 18 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend

diff --git a/meta-yocto-bsp/conf/machine/genericx86-64.conf b/meta-yocto-bsp/conf/machine/genericx86-64.conf
index f76e35a..ceee247 100644
--- a/meta-yocto-bsp/conf/machine/genericx86-64.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86-64.conf
@@ -6,3 +6,5 @@
 DEFAULTTUNE ?= "core2-64"
 require conf/machine/include/tune-core2.inc
 require conf/machine/include/genericx86-common.inc
+
+PREFERRED_VERSION_linux-yocto_genericx86-64 ?= "4.8%"
diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
index 798b62ec..04a7e0b 100644
--- a/meta-yocto-bsp/conf/machine/genericx86.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86.conf
@@ -8,3 +8,5 @@ require conf/machine/include/tune-core2.inc
 require conf/machine/include/genericx86-common.inc
 
 MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "gma500-gfx-check"
+
+PREFERRED_VERSION_linux-yocto_genericx86 ?= "4.8%"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
new file mode 100644
index 0000000..efa11cb
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -0,0 +1,14 @@
+KBRANCH_genericx86  = "standard/base"
+KBRANCH_genericx86-64  = "standard/base"
+
+KMACHINE_genericx86 ?= "common-pc"
+KMACHINE_genericx86-64 ?= "common-pc-64"
+
+SRCREV_machine_genericx86    ?= "a7d71794e4e38d2f861c1b1dbff761ae0b0836b3"
+SRCREV_machine_genericx86-64 ?= "a7d71794e4e38d2f861c1b1dbff761ae0b0836b3"
+
+COMPATIBLE_MACHINE_genericx86 = "genericx86"
+COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
+
+LINUX_VERSION_genericx86 = "4.8-rc4"
+LINUX_VERSION_genericx86-64 = "4.8-rc4"
-- 
2.6.6


