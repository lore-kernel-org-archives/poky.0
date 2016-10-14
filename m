Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F76CE0044F; Fri, 14 Oct 2016 09:26:43 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AD44E00444
	for <poky@yoctoproject.org>; Fri, 14 Oct 2016 09:26:41 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 14 Oct 2016 09:26:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,493,1473145200"; d="scan'208";a="890047962"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by orsmga003.jf.intel.com with ESMTP; 14 Oct 2016 09:26:40 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 14 Oct 2016 16:20:56 +0000
Message-Id: <56dcba31268754a68abc26667048972554c77db7.1476461976.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.6.6
In-Reply-To: <5701c9dfc0ab84546dcaff03be057c74e2ab1ac7.1476461975.git.alejandro.hernandez@linux.intel.com>
References: <5701c9dfc0ab84546dcaff03be057c74e2ab1ac7.1476461975.git.alejandro.hernandez@linux.intel.com>
In-Reply-To: <cover.1476461975.git.alejandro.hernandez@linux.intel.com>
References: <cover.1476461975.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 2/2] linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.4 Upgrades to Linux 4.4.22
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
X-List-Received-Date: Fri, 14 Oct 2016 16:26:43 -0000

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 34cdbaf..7aba740 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -7,8 +7,8 @@ KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone = "standard/beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "7d1401a0dd9bebfe49937ca7d9785972e0cc76d0"
-SRCREV_machine_genericx86-64 ?= "7d1401a0dd9bebfe49937ca7d9785972e0cc76d0"
+SRCREV_machine_genericx86    ?= "f4e52341c304e044dbe581a35aad6b930c9410d1"
+SRCREV_machine_genericx86-64 ?= "f4e52341c304e044dbe581a35aad6b930c9410d1"
 SRCREV_machine_edgerouter ?= "f4e52341c304e044dbe581a35aad6b930c9410d1"
 SRCREV_machine_beaglebone ?= "f4e52341c304e044dbe581a35aad6b930c9410d1"
 SRCREV_machine_mpc8315e-rdb ?= "50e000bc5fce1e04a1a3aea5ffc57c3d5fd71e72"
@@ -19,8 +19,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.4.20"
-LINUX_VERSION_genericx86-64 = "4.4.20"
+LINUX_VERSION_genericx86 = "4.4.22"
+LINUX_VERSION_genericx86-64 = "4.4.22"
 LINUX_VERSION_edgerouter = "4.4.22"
 LINUX_VERSION_beaglebone = "4.4.22"
 LINUX_VERSION_mpc8315e-rdb = "4.4.22"
-- 
2.6.6


