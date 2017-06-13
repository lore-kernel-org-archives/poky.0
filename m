Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A39FBE00BAF; Mon, 12 Jun 2017 22:01:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 870B6E00B8B
	for <poky@yoctoproject.org>; Mon, 12 Jun 2017 22:01:12 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga104.jf.intel.com with ESMTP; 12 Jun 2017 22:01:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,336,1493708400"; d="scan'208";a="98744980"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by orsmga002.jf.intel.com with ESMTP; 12 Jun 2017 22:01:11 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 12 Jun 2017 22:01:08 -0700
Message-Id: <0cc885938dd9cd2916d63e185b63fbbf7b49babf.1497329974.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.12.0
In-Reply-To: <c4759c4ac83a57f43dff729c3da8a0f28f678d79.1497329974.git.alejandro.hernandez@linux.intel.com>
References: <c4759c4ac83a57f43dff729c3da8a0f28f678d79.1497329974.git.alejandro.hernandez@linux.intel.com>
In-Reply-To: <cover.1497329974.git.alejandro.hernandez@linux.intel.com>
References: <cover.1497329974.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 2/3] linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.9
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
X-List-Received-Date: Tue, 13 Jun 2017 05:01:15 -0000

Upgrades to 4.9.31

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
index cc56ff243bf..fbdf26ff12c 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -7,8 +7,8 @@ KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone = "standard/beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "2c31d7a45ae75159a7d991abdeb7002a4493af7f"
-SRCREV_machine_genericx86-64 ?= "2c31d7a45ae75159a7d991abdeb7002a4493af7f"
+SRCREV_machine_genericx86    ?= "d2de43e42bb8a270e680aab1c8f2447bff0b3552"
+SRCREV_machine_genericx86-64 ?= "d2de43e42bb8a270e680aab1c8f2447bff0b3552"
 SRCREV_machine_edgerouter ?= "2c31d7a45ae75159a7d991abdeb7002a4493af7f"
 SRCREV_machine_beaglebone ?= "2c31d7a45ae75159a7d991abdeb7002a4493af7f"
 SRCREV_machine_mpc8315e-rdb ?= "fd97646e9431c0f4c09021cbe3189acc25034a98"
@@ -19,8 +19,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.9.27"
-LINUX_VERSION_genericx86-64 = "4.9.27"
+LINUX_VERSION_genericx86 = "4.9.31"
+LINUX_VERSION_genericx86-64 = "4.9.31"
 LINUX_VERSION_edgerouter = "4.9.27"
 LINUX_VERSION_beaglebone = "4.9.27"
 LINUX_VERSION_mpc8315e-rdb = "4.9.27"
-- 
2.12.0


