Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8372BE0090C; Wed,  2 Mar 2016 15:42:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13BB3E00833
	for <poky@yoctoproject.org>; Wed,  2 Mar 2016 15:42:52 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 02 Mar 2016 15:42:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,531,1449561600"; d="scan'208";a="662801308"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by FMSMGA003.fm.intel.com with ESMTP; 02 Mar 2016 15:42:54 -0800
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  2 Mar 2016 23:42:53 +0000
Message-Id: <105b2e5e0fe6af618ad396e682c3a6dd80da71c9.1456958295.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.6.2
In-Reply-To: <cover.1456958295.git.alejandro.hernandez@linux.intel.com>
References: <cover.1456958295.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 2/2] linux-yocto: Update SRCREV for genericx86* for 4.1
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
X-List-Received-Date: Wed, 02 Mar 2016 23:42:53 -0000

Upgrades to stable LINUX_VERSION 4.1.18

Also fixes booting core-image-lsb since it needs preliminary graphics support 4.1

[YOCTO #9139]

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/conf/machine/genericx86-64.conf               | 2 ++
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 8 ++++----
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/genericx86-64.conf b/meta-yocto-bsp/conf/machine/genericx86-64.conf
index f76e35a..3a4ef2c 100644
--- a/meta-yocto-bsp/conf/machine/genericx86-64.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86-64.conf
@@ -6,3 +6,5 @@
 DEFAULTTUNE ?= "core2-64"
 require conf/machine/include/tune-core2.inc
 require conf/machine/include/genericx86-common.inc
+
+APPEND_genericx86-64 += "i915.preliminary_hw_support=1"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
index fb347a4..344dbca 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -7,8 +7,8 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86    ?= "2e0ac7b6c4e3ada23a84756287e9b7051ace939a"
-SRCREV_machine_genericx86-64 ?= "2e0ac7b6c4e3ada23a84756287e9b7051ace939a"
+SRCREV_machine_genericx86    ?= "dd6492b44151164242718855d6c9eebbf0018eac"
+SRCREV_machine_genericx86-64 ?= "dd6492b44151164242718855d6c9eebbf0018eac"
 SRCREV_machine_edgerouter ?= "79a31b9d23db126f8a6be3eb88fd683056a213f1"
 SRCREV_machine_beaglebone ?= "efb6ffb2ca96a364f916c9890ad023fc595e0e6e"
 SRCREV_machine_mpc8315e-rdb ?= "79a31b9d23db126f8a6be3eb88fd683056a213f1"
@@ -19,5 +19,5 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.1.17"
-LINUX_VERSION_genericx86-64 = "4.1.17"
+LINUX_VERSION_genericx86 = "4.1.18"
+LINUX_VERSION_genericx86-64 = "4.1.18"
-- 
2.6.2


