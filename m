Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EF3FE00D85; Wed,  3 Aug 2016 13:32:37 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6579BE00D54
	for <poky@yoctoproject.org>; Wed,  3 Aug 2016 13:32:34 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 03 Aug 2016 13:32:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,467,1464678000"; d="scan'208";a="859233092"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by orsmga003.jf.intel.com with ESMTP; 03 Aug 2016 13:32:32 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  3 Aug 2016 20:29:33 +0000
Message-Id: <b0bcf2d648d8083b35853b74b904858fbf2c7140.1470256124.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.6.6
In-Reply-To: <49ce54e9e97e99028fc9385c0b8ad2418d1c394b.1470256124.git.alejandro.hernandez@linux.intel.com>
References: <49ce54e9e97e99028fc9385c0b8ad2418d1c394b.1470256124.git.alejandro.hernandez@linux.intel.com>
In-Reply-To: <cover.1470256124.git.alejandro.hernandez@linux.intel.com>
References: <cover.1470256124.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 2/2] linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.4
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
X-List-Received-Date: Wed, 03 Aug 2016 20:32:37 -0000

Upgrades to linux version 4.4.15

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 381463f..2c351c3 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -7,8 +7,8 @@ KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone = "standard/beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "0e30a74f2cbbab0c7014561fe4eab1c9d8bfe560"
-SRCREV_machine_genericx86-64 ?= "0e30a74f2cbbab0c7014561fe4eab1c9d8bfe560"
+SRCREV_machine_genericx86    ?= "ddab242999407fadae68e7ee5381b0ec6679d443"
+SRCREV_machine_genericx86-64 ?= "ddab242999407fadae68e7ee5381b0ec6679d443"
 SRCREV_machine_edgerouter ?= "628bf627561c6285d99fb978e11d4c15fc29324b"
 SRCREV_machine_beaglebone ?= "628bf627561c6285d99fb978e11d4c15fc29324b"
 SRCREV_machine_mpc8315e-rdb ?= "94ac8da44990afd2d43c0ccd713420fb1cfa0792"
@@ -19,5 +19,5 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.4.13"
-LINUX_VERSION_genericx86-64 = "4.4.13"
+LINUX_VERSION_genericx86 = "4.4.15"
+LINUX_VERSION_genericx86-64 = "4.4.15"
-- 
2.6.6


