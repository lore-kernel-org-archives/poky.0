Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0456E00CF2; Wed, 21 Sep 2016 12:02:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B2BDE00CF4
	for <poky@yoctoproject.org>; Wed, 21 Sep 2016 12:01:13 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga102.fm.intel.com with ESMTP; 21 Sep 2016 12:01:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,375,1470726000"; d="scan'208";a="11910462"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by orsmga005.jf.intel.com with ESMTP; 21 Sep 2016 12:01:11 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 21 Sep 2016 18:56:24 +0000
Message-Id: <d190b97464bba4bbd8c50746e85965013be4a640.1474484159.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.6.6
In-Reply-To: <05cbf0c40cbd39ef60f47c9032264c302097434a.1474484159.git.alejandro.hernandez@linux.intel.com>
References: <05cbf0c40cbd39ef60f47c9032264c302097434a.1474484159.git.alejandro.hernandez@linux.intel.com>
In-Reply-To: <cover.1474484159.git.alejandro.hernandez@linux.intel.com>
References: <cover.1474484159.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 2/2] linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.4 Upgrades to Linux 4.4.20
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
X-List-Received-Date: Wed, 21 Sep 2016 19:02:17 -0000

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 4a7f7e2..503f90d 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -7,8 +7,8 @@ KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone = "standard/beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "0a0c93f29c0d65c00abdd2f6d1eb89134fae9525"
-SRCREV_machine_genericx86-64 ?= "0a0c93f29c0d65c00abdd2f6d1eb89134fae9525"
+SRCREV_machine_genericx86    ?= "7d1401a0dd9bebfe49937ca7d9785972e0cc76d0"
+SRCREV_machine_genericx86-64 ?= "7d1401a0dd9bebfe49937ca7d9785972e0cc76d0"
 SRCREV_machine_edgerouter ?= "628bf627561c6285d99fb978e11d4c15fc29324b"
 SRCREV_machine_beaglebone ?= "628bf627561c6285d99fb978e11d4c15fc29324b"
 SRCREV_machine_mpc8315e-rdb ?= "94ac8da44990afd2d43c0ccd713420fb1cfa0792"
@@ -19,5 +19,5 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.4.18"
-LINUX_VERSION_genericx86-64 = "4.4.18"
+LINUX_VERSION_genericx86 = "4.4.20"
+LINUX_VERSION_genericx86-64 = "4.4.20"
-- 
2.6.6


