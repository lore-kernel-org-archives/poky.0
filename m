Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCFCDE007E8; Thu,  8 Dec 2016 09:27:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9CF6E00777
	for <poky@yoctoproject.org>; Thu,  8 Dec 2016 09:27:08 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga101.jf.intel.com with ESMTP; 08 Dec 2016 09:27:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,320,1477983600"; d="scan'208";a="38297866"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by orsmga004.jf.intel.com with ESMTP; 08 Dec 2016 09:27:06 -0800
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  8 Dec 2016 17:25:20 +0000
Message-Id: <dd1f3283240e28f438cec50b18175c3f0e54371a.1481217795.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.6.6
In-Reply-To: <7dfa3f0c8b92808d19b85609c0dce2b91c58da62.1481217795.git.alejandro.hernandez@linux.intel.com>
References: <7dfa3f0c8b92808d19b85609c0dce2b91c58da62.1481217795.git.alejandro.hernandez@linux.intel.com>
In-Reply-To: <cover.1481217795.git.alejandro.hernandez@linux.intel.com>
References: <cover.1481217795.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 2/3] linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.4
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
X-List-Received-Date: Thu, 08 Dec 2016 17:27:11 -0000

Updates to Linux 4.4.36 
- Includes CVE-2016-8655

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 06a37d5..5ae4492 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -7,8 +7,8 @@ KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone = "standard/beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "ca6a08bd7f86ebef11f763d26f787f7d65270473"
-SRCREV_machine_genericx86-64 ?= "ca6a08bd7f86ebef11f763d26f787f7d65270473"
+SRCREV_machine_genericx86    ?= "35482df5d5ba0807eb8a7c40b554bd657e3f9987"
+SRCREV_machine_genericx86-64 ?= "35482df5d5ba0807eb8a7c40b554bd657e3f9987"
 SRCREV_machine_edgerouter ?= "4c2d50b725d6dd5e90d1151abdbcb7418938be3a"
 SRCREV_machine_beaglebone ?= "4c2d50b725d6dd5e90d1151abdbcb7418938be3a"
 SRCREV_machine_mpc8315e-rdb ?= "994786bb5b050a789f0923471429066f670eb159"
@@ -19,8 +19,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.4.26"
-LINUX_VERSION_genericx86-64 = "4.4.26"
+LINUX_VERSION_genericx86 = "4.4.36"
+LINUX_VERSION_genericx86-64 = "4.4.36"
 LINUX_VERSION_edgerouter = "4.4.32"
 LINUX_VERSION_beaglebone = "4.4.32"
 LINUX_VERSION_mpc8315e-rdb = "4.4.32"
-- 
2.6.6


