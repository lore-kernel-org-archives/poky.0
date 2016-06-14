Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13D17E00C1F; Tue, 14 Jun 2016 10:12:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCCC4E00BFF
	for <poky@yoctoproject.org>; Tue, 14 Jun 2016 10:12:48 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 14 Jun 2016 10:12:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,471,1459839600"; d="scan'208";a="975543602"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by orsmga001.jf.intel.com with ESMTP; 14 Jun 2016 10:12:47 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 14 Jun 2016 17:11:37 +0000
Message-Id: <e428d656e5de0419217672d8c7b5894cb6f88f21.1465924256.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.6.6
In-Reply-To: <cover.1465924256.git.alejandro.hernandez@linux.intel.com>
References: <cover.1465924256.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 1/2] linux-yocto: Update SRCREV for genericx86* for 4.1 Upgrades to Linux version 4.1.26
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
X-List-Received-Date: Tue, 14 Jun 2016 17:12:52 -0000

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
index a39a577..2f1f1ea 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -7,8 +7,8 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86    ?= "403eda4633e9037fb715d0d1e8ae847b2bd0651a"
-SRCREV_machine_genericx86-64 ?= "403eda4633e9037fb715d0d1e8ae847b2bd0651a"
+SRCREV_machine_genericx86    ?= "9ba8c36e9ea7419d06accab5311e7fb0d56513ff"
+SRCREV_machine_genericx86-64 ?= "9ba8c36e9ea7419d06accab5311e7fb0d56513ff"
 SRCREV_machine_edgerouter ?= "403eda4633e9037fb715d0d1e8ae847b2bd0651a"
 SRCREV_machine_beaglebone ?= "859aecf685fcd9d30490a6da459fb76b48947075"
 SRCREV_machine_mpc8315e-rdb ?= "403eda4633e9037fb715d0d1e8ae847b2bd0651a"
@@ -19,5 +19,5 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.1.22"
-LINUX_VERSION_genericx86-64 = "4.1.22"
+LINUX_VERSION_genericx86 = "4.1.26"
+LINUX_VERSION_genericx86-64 = "4.1.26"
-- 
2.6.6


