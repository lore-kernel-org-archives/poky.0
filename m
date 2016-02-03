Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C94C7E00C51; Wed,  3 Feb 2016 14:13:33 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C0B0E00C4C
	for <poky@yoctoproject.org>; Wed,  3 Feb 2016 14:13:32 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP; 03 Feb 2016 14:13:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,392,1449561600"; d="scan'208";a="41985722"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by fmsmga004.fm.intel.com with ESMTP; 03 Feb 2016 14:13:28 -0800
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  3 Feb 2016 22:14:25 +0000
Message-Id: <bfd2167af1eb6c7c50c05d90d86cd3497df5e740.1454537470.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.6.2
In-Reply-To: <978d5681e22852352222398f75fd9dd50971e7ec.1454537470.git.alejandro.hernandez@linux.intel.com>
References: <978d5681e22852352222398f75fd9dd50971e7ec.1454537470.git.alejandro.hernandez@linux.intel.com>
In-Reply-To: <cover.1454537470.git.alejandro.hernandez@linux.intel.com>
References: <cover.1454537470.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 2/3] [jethro] linux-yocto: Update SRCREV for genericx86* for 3.19, fixes CVE-2016-0728
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
X-List-Received-Date: Wed, 03 Feb 2016 22:13:33 -0000

This addresses CVE-2016-0728: KEYS: Fix keyring ref leak in join_session_keyring()

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend
index c87f840..396af14 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend
@@ -7,8 +7,8 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86 ?= "e152349de59b43b2a75f2c332b44171df461d5a0"
-SRCREV_machine_genericx86-64 ?= "e152349de59b43b2a75f2c332b44171df461d5a0"
+SRCREV_machine_genericx86 ?= "1583bf79b946cd5581d84d8c369b819a5ecb94b4"
+SRCREV_machine_genericx86-64 ?= "1583bf79b946cd5581d84d8c369b819a5ecb94b4"
 SRCREV_machine_edgerouter ?= "e152349de59b43b2a75f2c332b44171df461d5a0"
 SRCREV_machine_beaglebone ?= "e152349de59b43b2a75f2c332b44171df461d5a0"
 SRCREV_machine_mpc8315e-rdb ?= "2893f3e8ece72f6f47329714d6afe4c9c545bbf9"
-- 
2.6.2


