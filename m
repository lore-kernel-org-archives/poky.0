Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D247E01090; Thu, 25 Aug 2016 08:42:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 013D4E0108B
	for <poky@yoctoproject.org>; Thu, 25 Aug 2016 08:42:11 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga102.fm.intel.com with ESMTP; 25 Aug 2016 08:42:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,576,1464678000"; d="scan'208";a="160878654"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by fmsmga004.fm.intel.com with ESMTP; 25 Aug 2016 08:42:11 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 25 Aug 2016 15:38:23 +0000
Message-Id: <27728b164c49702c1b06642b9930560fb514cdbe.1472139255.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.6.6
In-Reply-To: <cover.1472139255.git.alejandro.hernandez@linux.intel.com>
References: <cover.1472139255.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 1/2] linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.1
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
X-List-Received-Date: Thu, 25 Aug 2016 15:42:14 -0000

Upgrades to Linux 4.1.30

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
index e0d3245..6dd173b 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -7,8 +7,8 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86    ?= "44af900716206d4cae283aa74e92f4118720724a"
-SRCREV_machine_genericx86-64 ?= "44af900716206d4cae283aa74e92f4118720724a"
+SRCREV_machine_genericx86    ?= "0847ed67f89b5a8bbaaa0a7b6cfa2a99ef34834f"
+SRCREV_machine_genericx86-64 ?= "0847ed67f89b5a8bbaaa0a7b6cfa2a99ef34834f"
 SRCREV_machine_edgerouter ?= "403eda4633e9037fb715d0d1e8ae847b2bd0651a"
 SRCREV_machine_beaglebone ?= "859aecf685fcd9d30490a6da459fb76b48947075"
 SRCREV_machine_mpc8315e-rdb ?= "403eda4633e9037fb715d0d1e8ae847b2bd0651a"
@@ -19,5 +19,5 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.1.28"
-LINUX_VERSION_genericx86-64 = "4.1.28"
+LINUX_VERSION_genericx86 = "4.1.30"
+LINUX_VERSION_genericx86-64 = "4.1.30"
-- 
2.6.6


