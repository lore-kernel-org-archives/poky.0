Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E2A1E00DD8; Thu, 26 May 2016 13:20:22 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30950E00DC6
	for <poky@yoctoproject.org>; Thu, 26 May 2016 13:20:20 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP; 26 May 2016 13:20:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,369,1459839600"; d="scan'208";a="111163440"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by fmsmga004.fm.intel.com with ESMTP; 26 May 2016 13:20:17 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 26 May 2016 20:19:50 +0000
Message-Id: <4745b54cab60cb6c3e9efff71a0a00927ed8c742.1464293956.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.6.6
In-Reply-To: <0e09103036e2e0d9e02f9e23c3984ff292627926.1464293956.git.alejandro.hernandez@linux.intel.com>
References: <0e09103036e2e0d9e02f9e23c3984ff292627926.1464293956.git.alejandro.hernandez@linux.intel.com>
In-Reply-To: <cover.1464293956.git.alejandro.hernandez@linux.intel.com>
References: <cover.1464293956.git.alejandro.hernandez@linux.intel.com>
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
X-List-Received-Date: Thu, 26 May 2016 20:20:22 -0000

Upgrades to Linux version 4.4.11

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index c87a3e0..e2bdc40 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -7,8 +7,8 @@ KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone = "standard/beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "fe7ff38448d530db27ac31cbb086cb6fdf94bb7f"
-SRCREV_machine_genericx86-64 ?= "fe7ff38448d530db27ac31cbb086cb6fdf94bb7f"
+SRCREV_machine_genericx86    ?= "628bf627561c6285d99fb978e11d4c15fc29324b"
+SRCREV_machine_genericx86-64 ?= "628bf627561c6285d99fb978e11d4c15fc29324b"
 SRCREV_machine_edgerouter ?= "628bf627561c6285d99fb978e11d4c15fc29324b"
 SRCREV_machine_beaglebone ?= "628bf627561c6285d99fb978e11d4c15fc29324b"
 SRCREV_machine_mpc8315e-rdb ?= "94ac8da44990afd2d43c0ccd713420fb1cfa0792"
@@ -19,5 +19,5 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.4.10"
-LINUX_VERSION_genericx86-64 = "4.4.10"
+LINUX_VERSION_genericx86 = "4.4.11"
+LINUX_VERSION_genericx86-64 = "4.4.11"
-- 
2.6.6


