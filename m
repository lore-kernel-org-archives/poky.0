Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70C05E00DDA; Thu, 26 May 2016 13:20:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04F6EE0084A
	for <poky@yoctoproject.org>; Thu, 26 May 2016 13:20:18 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP; 26 May 2016 13:20:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,369,1459839600"; d="scan'208";a="111163438"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by fmsmga004.fm.intel.com with ESMTP; 26 May 2016 13:20:17 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 26 May 2016 20:19:49 +0000
Message-Id: <0e09103036e2e0d9e02f9e23c3984ff292627926.1464293956.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.6.6
In-Reply-To: <cover.1464293956.git.alejandro.hernandez@linux.intel.com>
References: <cover.1464293956.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 1/2] linux-yocto: Update SRCREV for genericx86* for 4.1
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
X-List-Received-Date: Thu, 26 May 2016 20:20:22 -0000

Upgrades to Linux version 4.1.24

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 215a4de..670e641 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -7,8 +7,8 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86    ?= "d03753ddb28a1141e550a67c99ac95789a424fc5"
-SRCREV_machine_genericx86-64 ?= "d03753ddb28a1141e550a67c99ac95789a424fc5"
+SRCREV_machine_genericx86    ?= "ecc983477682203619da0e456fa4a8689ac41097"
+SRCREV_machine_genericx86-64 ?= "ecc983477682203619da0e456fa4a8689ac41097"
 SRCREV_machine_edgerouter ?= "79a31b9d23db126f8a6be3eb88fd683056a213f1"
 SRCREV_machine_beaglebone ?= "efb6ffb2ca96a364f916c9890ad023fc595e0e6e"
 SRCREV_machine_mpc8315e-rdb ?= "79a31b9d23db126f8a6be3eb88fd683056a213f1"
@@ -19,5 +19,5 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.1.22"
-LINUX_VERSION_genericx86-64 = "4.1.22"
+LINUX_VERSION_genericx86 = "4.1.24"
+LINUX_VERSION_genericx86-64 = "4.1.24"
-- 
2.6.6


