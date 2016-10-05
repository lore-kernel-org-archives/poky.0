Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06D94E00C98; Wed,  5 Oct 2016 15:13:37 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C537BE00C72
	for <poky@yoctoproject.org>; Wed,  5 Oct 2016 15:13:32 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 05 Oct 2016 15:13:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,451,1473145200"; d="scan'208";a="1049999151"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by fmsmga001.fm.intel.com with ESMTP; 05 Oct 2016 15:13:31 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  5 Oct 2016 22:08:13 +0000
Message-Id: <3128b285e0102dff358f8f58244afcf220a232df.1475705107.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.6.6
In-Reply-To: <cover.1475705107.git.alejandro.hernandez@linux.intel.com>
References: <cover.1475705107.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 1/1] linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.8
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
X-List-Received-Date: Wed, 05 Oct 2016 22:13:37 -0000

Upgrades to Linux 4.8

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
index 1626bd1..f42b274 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -7,8 +7,8 @@ KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone = "standard/beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "eb9c19c72d40a4bb8a6a3b7b949e41e5c31c0d94"
-SRCREV_machine_genericx86-64 ?= "eb9c19c72d40a4bb8a6a3b7b949e41e5c31c0d94"
+SRCREV_machine_genericx86    ?= "67813e7efa3a4614e209c2f058d92ef9a636441a"
+SRCREV_machine_genericx86-64 ?= "67813e7efa3a4614e209c2f058d92ef9a636441a"
 SRCREV_machine_edgerouter ?= "eb9c19c72d40a4bb8a6a3b7b949e41e5c31c0d94"
 SRCREV_machine_beaglebone ?= "eb9c19c72d40a4bb8a6a3b7b949e41e5c31c0d94"
 SRCREV_machine_mpc8315e-rdb ?= "b5c48c7a5d6473373fe7f1e2e8d7b0cf57929908"
@@ -19,8 +19,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.8-rc7"
-LINUX_VERSION_genericx86-64 = "4.8-rc7"
+LINUX_VERSION_genericx86 = "4.8"
+LINUX_VERSION_genericx86-64 = "4.8"
 LINUX_VERSION_edgerouter = "4.8-rc7"
 LINUX_VERSION_beaglebone = "4.8-rc7"
 LINUX_VERSION_mpc8315e-rdb = "4.8-rc7"
-- 
2.6.6


