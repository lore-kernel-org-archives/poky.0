Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BF12E00D47; Wed, 25 May 2016 11:32:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B90FE00D42
	for <poky@yoctoproject.org>; Wed, 25 May 2016 11:32:55 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga104.fm.intel.com with ESMTP; 25 May 2016 11:32:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,364,1459839600"; d="scan'208";a="988674505"
Received: from spmorimo-mobl3.amr.corp.intel.com (HELO localhost)
	([10.254.125.102])
	by fmsmga002.fm.intel.com with ESMTP; 25 May 2016 11:32:50 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org,
	alejandro.hernandez@intel.com
Date: Wed, 25 May 2016 13:32:46 -0500
Message-Id: <c0baa496ca22df97c145543192b836869fcb99df.1464119315.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <cover.1464119315.git.tom.zanussi@linux.intel.com>
References: <cover.1464119315.git.tom.zanussi@linux.intel.com>
Subject: [PATCH 1/4] meta-yocto-bsp: Switch linux-yocto 4.4 genericx86* BSPs to standard/intel
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
X-List-Received-Date: Wed, 25 May 2016 18:32:58 -0000

There is now a dedicated standard/intel branch for Intel platforms, so
have the genericx86* BSPs use it.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index e31b0c8..cb3d1aa 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -1,5 +1,5 @@
-KBRANCH_genericx86  = "standard/base"
-KBRANCH_genericx86-64  = "standard/base"
+KBRANCH_genericx86  = "standard/intel"
+KBRANCH_genericx86-64  = "standard/intel"
 
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
@@ -7,8 +7,8 @@ KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone = "standard/beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "3d2455f9da30f923c6bd69014fad4cc4ea738be6"
-SRCREV_machine_genericx86-64 ?= "3d2455f9da30f923c6bd69014fad4cc4ea738be6"
+SRCREV_machine_genericx86    ?= "578ff2a88676d20439dbf3877768370d06a22d8f"
+SRCREV_machine_genericx86-64 ?= "578ff2a88676d20439dbf3877768370d06a22d8f"
 SRCREV_machine_edgerouter ?= "ff4c4ef15b51f45b9106d71bf1f62fe7c02e63c2"
 SRCREV_machine_beaglebone ?= "ff4c4ef15b51f45b9106d71bf1f62fe7c02e63c2"
 SRCREV_machine_mpc8315e-rdb ?= "df00877ef9387b38b9601c82db57de2a1b23ce53"
-- 
1.9.3


