Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A3BCE00B8E; Mon, 11 Sep 2017 13:15:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A21ABE00B53
	for <poky@yoctoproject.org>; Mon, 11 Sep 2017 13:15:20 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Sep 2017 13:15:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,379,1500966000"; d="scan'208";a="310468557"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by fmsmga004.fm.intel.com with ESMTP; 11 Sep 2017 13:15:19 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 11 Sep 2017 13:15:17 -0700
Message-Id: <dfb8a044381d9cdbd7ac62a645d979778d8625f1.1505160890.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.12.3
In-Reply-To: <849d260d877d92bfdc00cd50ad9e7b998c5b8f0e.1505160890.git.alejandro.hernandez@linux.intel.com>
References: <849d260d877d92bfdc00cd50ad9e7b998c5b8f0e.1505160890.git.alejandro.hernandez@linux.intel.com>
In-Reply-To: <cover.1505160890.git.alejandro.hernandez@linux.intel.com>
References: <cover.1505160890.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 4/4] linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.12
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
X-List-Received-Date: Mon, 11 Sep 2017 20:15:21 -0000

Upgrades to Linux 4.12.10

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
index 965c892e790..10abbdd6af6 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -7,8 +7,8 @@ KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone = "standard/beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "d09f2ce584d60ecb7890550c22a80c48b83c2e19"
-SRCREV_machine_genericx86-64 ?= "d09f2ce584d60ecb7890550c22a80c48b83c2e19"
+SRCREV_machine_genericx86    ?= "b5c8cfda2dfe296410d51e131289fb09c69e1e7d"
+SRCREV_machine_genericx86-64 ?= "b5c8cfda2dfe296410d51e131289fb09c69e1e7d"
 SRCREV_machine_edgerouter ?= "b5c8cfda2dfe296410d51e131289fb09c69e1e7d"
 SRCREV_machine_beaglebone ?= "b5c8cfda2dfe296410d51e131289fb09c69e1e7d"
 SRCREV_machine_mpc8315e-rdb ?= "2d1d010240846d7bff15d1fcc0cb6eb8a22fc78a"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.12.7"
-LINUX_VERSION_genericx86-64 = "4.12.7"
+LINUX_VERSION_genericx86 = "4.12.10"
+LINUX_VERSION_genericx86-64 = "4.12.10"
 LINUX_VERSION_edgerouter = "4.12.10"
 LINUX_VERSION_beaglebone = "4.12.10"
 LINUX_VERSION_mpc8315e-rdb = "4.12.10"
-- 
2.12.3


