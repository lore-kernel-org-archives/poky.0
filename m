Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09A29E00405; Mon, 23 Jan 2017 15:00:59 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D81D5E003C1
	for <poky@yoctoproject.org>; Mon, 23 Jan 2017 15:00:53 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga104.fm.intel.com with ESMTP; 23 Jan 2017 15:00:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,275,1477983600"; d="scan'208";a="51716023"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by orsmga004.jf.intel.com with ESMTP; 23 Jan 2017 15:00:53 -0800
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 23 Jan 2017 22:57:28 +0000
Message-Id: <885b6ce8d2821fa9eec911b85e7ce1c513c8531a.1485212205.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.6.6
In-Reply-To: <cover.1485212205.git.alejandro.hernandez@linux.intel.com>
References: <cover.1485212205.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 1/4] linux-yocto: Adds new bbappend for genericx86 and genericx86-64 BSPs to support kernel 4.9
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
X-List-Received-Date: Mon, 23 Jan 2017 23:00:59 -0000

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/conf/machine/genericx86-64.conf             |  2 +-
 meta-yocto-bsp/conf/machine/genericx86.conf                |  2 +-
 .../recipes-kernel/linux/linux-yocto_4.9.bbappend          | 14 ++++++++++++++
 3 files changed, 16 insertions(+), 2 deletions(-)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend

diff --git a/meta-yocto-bsp/conf/machine/genericx86-64.conf b/meta-yocto-bsp/conf/machine/genericx86-64.conf
index d843fd2..a33b3e4 100644
--- a/meta-yocto-bsp/conf/machine/genericx86-64.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86-64.conf
@@ -7,6 +7,6 @@ DEFAULTTUNE ?= "core2-64"
 require conf/machine/include/tune-core2.inc
 require conf/machine/include/genericx86-common.inc
 
-PREFERRED_VERSION_linux-yocto_genericx86-64 ?= "4.8%"
+PREFERRED_VERSION_linux-yocto_genericx86-64 ?= "4.9%"
 
 SERIAL_CONSOLES_CHECK = "ttyS0"
diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
index 04a7e0b..a12f8ff 100644
--- a/meta-yocto-bsp/conf/machine/genericx86.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86.conf
@@ -9,4 +9,4 @@ require conf/machine/include/genericx86-common.inc
 
 MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "gma500-gfx-check"
 
-PREFERRED_VERSION_linux-yocto_genericx86 ?= "4.8%"
+PREFERRED_VERSION_linux-yocto_genericx86 ?= "4.9%"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
new file mode 100644
index 0000000..4024bc1
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -0,0 +1,14 @@
+KBRANCH_genericx86  = "standard/base"
+KBRANCH_genericx86-64  = "standard/base"
+
+KMACHINE_genericx86 ?= "common-pc"
+KMACHINE_genericx86-64 ?= "common-pc-64"
+
+SRCREV_machine_genericx86    ?= "6fdf2bca12625c67b64f39e08b1b4ae7c610f8bd"
+SRCREV_machine_genericx86-64 ?= "6fdf2bca12625c67b64f39e08b1b4ae7c610f8bd"
+
+COMPATIBLE_MACHINE_genericx86 = "genericx86"
+COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
+
+LINUX_VERSION_genericx86 = "4.9.4"
+LINUX_VERSION_genericx86-64 = "4.9.4"
-- 
2.6.6


