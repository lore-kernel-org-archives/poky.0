Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8AF4E00510; Fri,  3 Feb 2017 10:27:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 453B9E004A0
	for <poky@yoctoproject.org>; Fri,  3 Feb 2017 10:27:58 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga104.jf.intel.com with ESMTP; 03 Feb 2017 10:27:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,329,1477983600"; d="scan'208";a="55145528"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by orsmga004.jf.intel.com with ESMTP; 03 Feb 2017 10:27:57 -0800
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri,  3 Feb 2017 18:24:08 +0000
Message-Id: <1486146249-12514-2-git-send-email-alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.6.6
In-Reply-To: <1486146249-12514-1-git-send-email-alejandro.hernandez@linux.intel.com>
References: <1486146249-12514-1-git-send-email-alejandro.hernandez@linux.intel.com>
Cc: 0001-linux-yocto-Update-genericx86-SRCREVs-for-linux-yoct.patch@yoctoproject.org
Subject: [PATCH 3/4] linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.8
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
X-List-Received-Date: Fri, 03 Feb 2017 18:27:59 -0000

Updates to Linux 4.8.17

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
index 761e6e0..19a5af5 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -7,8 +7,8 @@ KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone = "standard/beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "021b4aef55b44597587a1ce5879be642b3dca155"
-SRCREV_machine_genericx86-64 ?= "021b4aef55b44597587a1ce5879be642b3dca155"
+SRCREV_machine_genericx86    ?= "9bcb4ea3fa107f1a8790c8c3408eb250e8d1d66e"
+SRCREV_machine_genericx86-64 ?= "9bcb4ea3fa107f1a8790c8c3408eb250e8d1d66e"
 SRCREV_machine_edgerouter ?= "6076f16536329465b62bd2037b8582a5e18f85d1"
 SRCREV_machine_beaglebone ?= "85dc85153cd7e3b72d34f967c4c0edde590c79a8"
 SRCREV_machine_mpc8315e-rdb ?= "f73222eb3bbd07a45564397a88dec554e848da7d"
@@ -19,8 +19,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.8.12"
-LINUX_VERSION_genericx86-64 = "4.8.12"
+LINUX_VERSION_genericx86 = "4.8.17"
+LINUX_VERSION_genericx86-64 = "4.8.17"
 LINUX_VERSION_edgerouter = "4.8.12"
 LINUX_VERSION_beaglebone = "4.8.12"
 LINUX_VERSION_mpc8315e-rdb = "4.8.12"
-- 
2.6.6


