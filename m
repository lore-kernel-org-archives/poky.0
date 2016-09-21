Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 305A5E006D8; Wed, 21 Sep 2016 09:23:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DD0CE004F1
	for <poky@yoctoproject.org>; Wed, 21 Sep 2016 09:22:51 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga105.fm.intel.com with ESMTP; 21 Sep 2016 09:22:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,374,1470726000"; d="scan'208";a="1054414810"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by orsmga002.jf.intel.com with ESMTP; 21 Sep 2016 09:22:39 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 21 Sep 2016 16:17:52 +0000
Message-Id: <3dd8d6eaefa36a48c3591a8be6a63b0f9712fc6d.1474474636.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.6.6
In-Reply-To: <cover.1474474636.git.alejandro.hernandez@linux.intel.com>
References: <cover.1474474636.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 1/1] linux-yocto: Updates genericx86* SRCREVs for linux-yocto 4.8
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
X-List-Received-Date: Wed, 21 Sep 2016 16:23:03 -0000

Upgrades to Linux 4.8-rc7

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
index efa11cb..1fa00f1 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -4,11 +4,11 @@ KBRANCH_genericx86-64  = "standard/base"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86    ?= "a7d71794e4e38d2f861c1b1dbff761ae0b0836b3"
-SRCREV_machine_genericx86-64 ?= "a7d71794e4e38d2f861c1b1dbff761ae0b0836b3"
+SRCREV_machine_genericx86    ?= "eb9c19c72d40a4bb8a6a3b7b949e41e5c31c0d94"
+SRCREV_machine_genericx86-64 ?= "eb9c19c72d40a4bb8a6a3b7b949e41e5c31c0d94"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 
-LINUX_VERSION_genericx86 = "4.8-rc4"
-LINUX_VERSION_genericx86-64 = "4.8-rc4"
+LINUX_VERSION_genericx86 = "4.8-rc7"
+LINUX_VERSION_genericx86-64 = "4.8-rc7"
-- 
2.6.6


