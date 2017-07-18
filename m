Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89399E00BC0; Tue, 18 Jul 2017 09:24:39 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34129E00BAB
	for <poky@yoctoproject.org>; Tue, 18 Jul 2017 09:24:38 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Jul 2017 09:24:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,378,1496127600"; d="scan'208";a="128835771"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by fmsmga006.fm.intel.com with ESMTP; 18 Jul 2017 09:24:37 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 18 Jul 2017 09:24:34 -0700
Message-Id: <8e64d021fa279cfc9a8252837f4b65e9f9c68d1c.1500394981.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.12.3
In-Reply-To: <a86c47b6cf8a52e9b23d238eda8b5a09d3523d00.1500394981.git.alejandro.hernandez@linux.intel.com>
References: <a86c47b6cf8a52e9b23d238eda8b5a09d3523d00.1500394981.git.alejandro.hernandez@linux.intel.com>
In-Reply-To: <cover.1500394981.git.alejandro.hernandez@linux.intel.com>
References: <cover.1500394981.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH v2 2/3] linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.4
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
X-List-Received-Date: Tue, 18 Jul 2017 16:24:39 -0000

Upgrades to Linux 4.4.76

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 135d3f2f0e5..7804bd784f9 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -7,8 +7,8 @@ KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone = "standard/beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "268676407913f5d496cde6cbf4052eb5acaf6237"
-SRCREV_machine_genericx86-64 ?= "268676407913f5d496cde6cbf4052eb5acaf6237"
+SRCREV_machine_genericx86    ?= "2854678e4ccbb4bbd1bb4c243ac3e2571ef9834a"
+SRCREV_machine_genericx86-64 ?= "2854678e4ccbb4bbd1bb4c243ac3e2571ef9834a"
 SRCREV_machine_edgerouter ?= "2854678e4ccbb4bbd1bb4c243ac3e2571ef9834a"
 SRCREV_machine_beaglebone ?= "2854678e4ccbb4bbd1bb4c243ac3e2571ef9834a"
 SRCREV_machine_mpc8315e-rdb ?= "f5e6bd8e3a6d43ca08a7a06a76547ebef456d67b"
@@ -19,8 +19,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.4.71"
-LINUX_VERSION_genericx86-64 = "4.4.71"
+LINUX_VERSION_genericx86 = "4.4.76"
+LINUX_VERSION_genericx86-64 = "4.4.76"
 LINUX_VERSION_edgerouter = "4.4.76"
 LINUX_VERSION_beaglebone = "4.4.76"
 LINUX_VERSION_mpc8315e-rdb = "4.4.76"
-- 
2.12.3


