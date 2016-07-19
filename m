Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87C85E00815; Tue, 19 Jul 2016 09:48:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD687E006E9
	for <poky@yoctoproject.org>; Tue, 19 Jul 2016 09:48:51 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga104.fm.intel.com with ESMTP; 19 Jul 2016 09:48:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,390,1464678000"; d="scan'208";a="1024916317"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by fmsmga002.fm.intel.com with ESMTP; 19 Jul 2016 09:48:51 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 19 Jul 2016 16:46:24 +0000
Message-Id: <d69467e0b41c192ce1f44feb7547cea56521c4c9.1468946763.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.6.6
In-Reply-To: <cover.1468946763.git.alejandro.hernandez@linux.intel.com>
References: <cover.1468946763.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 1/2] linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.1
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
X-List-Received-Date: Tue, 19 Jul 2016 16:48:53 -0000

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 2f1f1ea..c575853 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -7,8 +7,8 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86    ?= "9ba8c36e9ea7419d06accab5311e7fb0d56513ff"
-SRCREV_machine_genericx86-64 ?= "9ba8c36e9ea7419d06accab5311e7fb0d56513ff"
+SRCREV_machine_genericx86    ?= "75d56a13f86fc48002e4a3f9ed60546db30432b7"
+SRCREV_machine_genericx86-64 ?= "75d56a13f86fc48002e4a3f9ed60546db30432b7"
 SRCREV_machine_edgerouter ?= "403eda4633e9037fb715d0d1e8ae847b2bd0651a"
 SRCREV_machine_beaglebone ?= "859aecf685fcd9d30490a6da459fb76b48947075"
 SRCREV_machine_mpc8315e-rdb ?= "403eda4633e9037fb715d0d1e8ae847b2bd0651a"
-- 
2.6.6


