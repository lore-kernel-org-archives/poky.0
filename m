Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93286E00CC2; Tue, 25 Oct 2016 15:58:09 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9B93E00CEA
	for <poky@yoctoproject.org>; Tue, 25 Oct 2016 15:57:53 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP; 25 Oct 2016 15:57:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,399,1473145200"; d="scan'208";a="777649331"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by FMSMGA003.fm.intel.com with ESMTP; 25 Oct 2016 15:57:51 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 25 Oct 2016 22:51:48 +0000
Message-Id: <0860af3f26425eca7c46c98c5a57c8d9eab2733b.1477435842.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.6.6
In-Reply-To: <72cc163f4f24d4efc0bc575c1274dbeda00ec4f7.1477435842.git.alejandro.hernandez@linux.intel.com>
References: <72cc163f4f24d4efc0bc575c1274dbeda00ec4f7.1477435842.git.alejandro.hernandez@linux.intel.com>
In-Reply-To: <cover.1477435842.git.alejandro.hernandez@linux.intel.com>
References: <cover.1477435842.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 2/3] linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.1
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
X-List-Received-Date: Tue, 25 Oct 2016 22:58:09 -0000

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
index e6607c7..35edc35 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -7,8 +7,8 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86    ?= "a38cb202738a2b055ac216b3699cc9377edea45a"
-SRCREV_machine_genericx86-64 ?= "a38cb202738a2b055ac216b3699cc9377edea45a"
+SRCREV_machine_genericx86    ?= "f4d0900b2851e829e990e0f64b09ed3b8e355fae"
+SRCREV_machine_genericx86-64 ?= "f4d0900b2851e829e990e0f64b09ed3b8e355fae"
 SRCREV_machine_edgerouter ?= "a38cb202738a2b055ac216b3699cc9377edea45a"
 SRCREV_machine_beaglebone ?= "3e064525c427e128d08ea599ea3247e2963b54a5"
 SRCREV_machine_mpc8315e-rdb ?= "a38cb202738a2b055ac216b3699cc9377edea45a"
-- 
2.6.6


