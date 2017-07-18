Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A382E00C3C; Tue, 18 Jul 2017 00:22:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A510E00C3B
	for <poky@yoctoproject.org>; Tue, 18 Jul 2017 00:22:17 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Jul 2017 00:22:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,377,1496127600"; d="scan'208";a="288199034"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by fmsmga004.fm.intel.com with ESMTP; 18 Jul 2017 00:22:15 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 18 Jul 2017 00:22:14 -0700
Message-Id: <ffede0ad7d4d61312f66015e12ebb8702d21bc9c.1500362439.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.12.3
In-Reply-To: <8c18cd4a51182f43a98fdd9f13c15f7891c6d83d.1500362439.git.alejandro.hernandez@linux.intel.com>
References: <8c18cd4a51182f43a98fdd9f13c15f7891c6d83d.1500362439.git.alejandro.hernandez@linux.intel.com>
In-Reply-To: <cover.1500362439.git.alejandro.hernandez@linux.intel.com>
References: <cover.1500362439.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 3/3] linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.9
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
X-List-Received-Date: Tue, 18 Jul 2017 07:22:18 -0000

Upgrades to Linux 4.9.36

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
index 073e92ecade..2aadfa36784 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -7,8 +7,8 @@ KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone = "standard/beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "d2de43e42bb8a270e680aab1c8f2447bff0b3552"
-SRCREV_machine_genericx86-64 ?= "d2de43e42bb8a270e680aab1c8f2447bff0b3552"
+SRCREV_machine_genericx86    ?= "24572abb2cad341dd79e6aafcb9cdd1a7f8a0c1e"
+SRCREV_machine_genericx86-64 ?= "24572abb2cad341dd79e6aafcb9cdd1a7f8a0c1e"
 SRCREV_machine_edgerouter ?= "d2de43e42bb8a270e680aab1c8f2447bff0b3552"
 SRCREV_machine_beaglebone ?= "d2de43e42bb8a270e680aab1c8f2447bff0b3552"
 SRCREV_machine_mpc8315e-rdb ?= "9e97ee1670f23b2a8cff3f7a2cd7463e1cd76ee3"
@@ -19,8 +19,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.9.31"
-LINUX_VERSION_genericx86-64 = "4.9.31"
+LINUX_VERSION_genericx86 = "4.9.36"
+LINUX_VERSION_genericx86-64 = "4.9.36"
 LINUX_VERSION_edgerouter = "4.9.31"
 LINUX_VERSION_beaglebone = "4.9.31"
 LINUX_VERSION_mpc8315e-rdb = "4.9.31"
-- 
2.12.3


