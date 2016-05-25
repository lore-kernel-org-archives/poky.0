Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 944F4E00D4C; Wed, 25 May 2016 11:32:57 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 407FAE00D43
	for <poky@yoctoproject.org>; Wed, 25 May 2016 11:32:54 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 25 May 2016 11:32:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,364,1459839600"; d="scan'208";a="962277581"
Received: from spmorimo-mobl3.amr.corp.intel.com (HELO localhost)
	([10.254.125.102])
	by orsmga001.jf.intel.com with ESMTP; 25 May 2016 11:32:53 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org,
	alejandro.hernandez@intel.com
Date: Wed, 25 May 2016 13:32:47 -0500
Message-Id: <ee718a85337cb95d561de68eb84dbaec7fc450f1.1464119315.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <c0baa496ca22df97c145543192b836869fcb99df.1464119315.git.tom.zanussi@linux.intel.com>
References: <c0baa496ca22df97c145543192b836869fcb99df.1464119315.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1464119315.git.tom.zanussi@linux.intel.com>
References: <cover.1464119315.git.tom.zanussi@linux.intel.com>
Subject: [PATCH 2/4] meta-yocto-bsp: Switch linux-yocto 4.1 genericx86* BSPs to standard/intel
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
X-List-Received-Date: Wed, 25 May 2016 18:32:57 -0000

There is now a dedicated standard/intel branch for Intel platforms, so
have the genericx86* BSPs use it.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
index b20a18b..6029693 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -1,5 +1,5 @@
-KBRANCH_genericx86  = "standard/base"
-KBRANCH_genericx86-64  = "standard/base"
+KBRANCH_genericx86  = "standard/intel"
+KBRANCH_genericx86-64  = "standard/intel"
 KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone = "standard/beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
@@ -7,8 +7,8 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86    ?= "304caa9480f19875e717faf3cad8cb7ecd758733"
-SRCREV_machine_genericx86-64 ?= "304caa9480f19875e717faf3cad8cb7ecd758733"
+SRCREV_machine_genericx86    ?= "d03753ddb28a1141e550a67c99ac95789a424fc5"
+SRCREV_machine_genericx86-64 ?= "d03753ddb28a1141e550a67c99ac95789a424fc5"
 SRCREV_machine_edgerouter ?= "79a31b9d23db126f8a6be3eb88fd683056a213f1"
 SRCREV_machine_beaglebone ?= "efb6ffb2ca96a364f916c9890ad023fc595e0e6e"
 SRCREV_machine_mpc8315e-rdb ?= "79a31b9d23db126f8a6be3eb88fd683056a213f1"
-- 
1.9.3


