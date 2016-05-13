Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08D79E00AB4; Fri, 13 May 2016 09:58:47 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 935C0E00984
	for <poky@yoctoproject.org>; Fri, 13 May 2016 09:58:47 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga102.fm.intel.com with ESMTP; 13 May 2016 09:58:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,614,1455004800"; d="scan'208";a="102762385"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by fmsmga004.fm.intel.com with ESMTP; 13 May 2016 09:58:48 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 13 May 2016 16:58:46 +0000
Message-Id: <b53ebe6186f528aa2cc216ee2f285e3ff162dbdb.1463158603.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.6.6
In-Reply-To: <b6f0bedb5e16be7e642b3c7841149e5d4ea8c756.1463158603.git.alejandro.hernandez@linux.intel.com>
References: <b6f0bedb5e16be7e642b3c7841149e5d4ea8c756.1463158603.git.alejandro.hernandez@linux.intel.com>
In-Reply-To: <cover.1463158603.git.alejandro.hernandez@linux.intel.com>
References: <cover.1463158603.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 2/2] linux-yocto: Update SRCREV for genericx86* for 4.4
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
X-List-Received-Date: Fri, 13 May 2016 16:58:48 -0000

Upgrades to Linux version 4.4.10

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index e31b0c8..a7e351a 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -7,8 +7,8 @@ KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone = "standard/beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "3d2455f9da30f923c6bd69014fad4cc4ea738be6"
-SRCREV_machine_genericx86-64 ?= "3d2455f9da30f923c6bd69014fad4cc4ea738be6"
+SRCREV_machine_genericx86    ?= "fe7ff38448d530db27ac31cbb086cb6fdf94bb7f"
+SRCREV_machine_genericx86-64 ?= "fe7ff38448d530db27ac31cbb086cb6fdf94bb7f"
 SRCREV_machine_edgerouter ?= "ff4c4ef15b51f45b9106d71bf1f62fe7c02e63c2"
 SRCREV_machine_beaglebone ?= "ff4c4ef15b51f45b9106d71bf1f62fe7c02e63c2"
 SRCREV_machine_mpc8315e-rdb ?= "df00877ef9387b38b9601c82db57de2a1b23ce53"
@@ -19,5 +19,5 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.4.3"
-LINUX_VERSION_genericx86-64 = "4.4.3"
+LINUX_VERSION_genericx86 = "4.4.10"
+LINUX_VERSION_genericx86-64 = "4.4.10"
-- 
2.6.6


