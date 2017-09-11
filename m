Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB13DE00B83; Mon, 11 Sep 2017 13:15:20 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75EB4E00B01
	for <poky@yoctoproject.org>; Mon, 11 Sep 2017 13:15:20 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Sep 2017 13:15:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,379,1500966000"; d="scan'208";a="310468553"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by fmsmga004.fm.intel.com with ESMTP; 11 Sep 2017 13:15:19 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 11 Sep 2017 13:15:15 -0700
Message-Id: <76c4f309e06c886f55dbcdcb954e62702e90c7f1.1505160890.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.12.3
In-Reply-To: <849d260d877d92bfdc00cd50ad9e7b998c5b8f0e.1505160890.git.alejandro.hernandez@linux.intel.com>
References: <849d260d877d92bfdc00cd50ad9e7b998c5b8f0e.1505160890.git.alejandro.hernandez@linux.intel.com>
In-Reply-To: <cover.1505160890.git.alejandro.hernandez@linux.intel.com>
References: <cover.1505160890.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 2/4] linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.9
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
X-List-Received-Date: Mon, 11 Sep 2017 20:15:20 -0000

Upgrades to Linux 4.9.46

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
index cc65459e1b2..c14fefe91b7 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -7,8 +7,8 @@ KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone = "standard/beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "24572abb2cad341dd79e6aafcb9cdd1a7f8a0c1e"
-SRCREV_machine_genericx86-64 ?= "24572abb2cad341dd79e6aafcb9cdd1a7f8a0c1e"
+SRCREV_machine_genericx86    ?= "cf9a7dd9f41a32c10d19a51497463d6ec2991107"
+SRCREV_machine_genericx86-64 ?= "cf9a7dd9f41a32c10d19a51497463d6ec2991107"
 SRCREV_machine_edgerouter ?= "cf9a7dd9f41a32c10d19a51497463d6ec2991107"
 SRCREV_machine_beaglebone ?= "cf9a7dd9f41a32c10d19a51497463d6ec2991107"
 SRCREV_machine_mpc8315e-rdb ?= "06cc7d23e026522a996d3a26e9b013f0a5f7e6fa"
@@ -19,8 +19,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.9.36"
-LINUX_VERSION_genericx86-64 = "4.9.36"
+LINUX_VERSION_genericx86 = "4.9.46"
+LINUX_VERSION_genericx86-64 = "4.9.46"
 LINUX_VERSION_edgerouter = "4.9.46"
 LINUX_VERSION_beaglebone = "4.9.46"
 LINUX_VERSION_mpc8315e-rdb = "4.9.46"
-- 
2.12.3


