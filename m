Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABECCE00BAD; Mon, 12 Jun 2017 22:01:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B5C8E00B76
	for <poky@yoctoproject.org>; Mon, 12 Jun 2017 22:01:11 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga104.jf.intel.com with ESMTP; 12 Jun 2017 22:01:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,336,1493708400"; d="scan'208";a="98744979"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by orsmga002.jf.intel.com with ESMTP; 12 Jun 2017 22:01:11 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 12 Jun 2017 22:01:07 -0700
Message-Id: <c4759c4ac83a57f43dff729c3da8a0f28f678d79.1497329974.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.12.0
In-Reply-To: <cover.1497329974.git.alejandro.hernandez@linux.intel.com>
References: <cover.1497329974.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 1/3] linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.4
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
X-List-Received-Date: Tue, 13 Jun 2017 05:01:15 -0000

Upgrades to Linux 4.4.71

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 9df178bad4a..38e5836a887 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -7,8 +7,8 @@ KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone = "standard/beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "98b9340a7858f786f5ff7d50021ef83eaad0613d"
-SRCREV_machine_genericx86-64 ?= "98b9340a7858f786f5ff7d50021ef83eaad0613d"
+SRCREV_machine_genericx86    ?= "268676407913f5d496cde6cbf4052eb5acaf6237"
+SRCREV_machine_genericx86-64 ?= "268676407913f5d496cde6cbf4052eb5acaf6237"
 SRCREV_machine_edgerouter ?= "98b9340a7858f786f5ff7d50021ef83eaad0613d"
 SRCREV_machine_beaglebone ?= "98b9340a7858f786f5ff7d50021ef83eaad0613d"
 SRCREV_machine_mpc8315e-rdb ?= "2bf69589c6d2c1aa0db7efd735b43155a743959a"
@@ -19,8 +19,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.4.67"
-LINUX_VERSION_genericx86-64 = "4.4.67"
+LINUX_VERSION_genericx86 = "4.4.71"
+LINUX_VERSION_genericx86-64 = "4.4.71"
 LINUX_VERSION_edgerouter = "4.4.67"
 LINUX_VERSION_beaglebone = "4.4.67"
 LINUX_VERSION_mpc8315e-rdb = "4.4.67"
-- 
2.12.0


