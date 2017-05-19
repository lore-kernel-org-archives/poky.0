Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97A4CE00B43; Fri, 19 May 2017 09:16:18 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0B6BE00826
	for <poky@yoctoproject.org>; Fri, 19 May 2017 09:16:14 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 May 2017 09:16:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,364,1491289200"; d="scan'208";a="1171750940"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by fmsmga002.fm.intel.com with ESMTP; 19 May 2017 09:16:13 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 19 May 2017 09:16:09 -0700
Message-Id: <20170519161612.29277-1-alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.12.0
Subject: [PATCH 1/4] linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.1
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
X-List-Received-Date: Fri, 19 May 2017 16:16:18 -0000

Updates to Linux 4.1.39

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
index c754933c7da..b308c8dfa1c 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -7,8 +7,8 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86    ?= "2ce56d130ddff67f43ec857cc51cd347666a0078"
-SRCREV_machine_genericx86-64 ?= "2ce56d130ddff67f43ec857cc51cd347666a0078"
+SRCREV_machine_genericx86    ?= "398d1785c6bde0085b99f00f346e199a15fbdcef"
+SRCREV_machine_genericx86-64 ?= "398d1785c6bde0085b99f00f346e199a15fbdcef"
 SRCREV_machine_edgerouter ?= "2ce56d130ddff67f43ec857cc51cd347666a0078"
 SRCREV_machine_beaglebone ?= "235de25be3f143b91dcc69479b770722c508889e"
 SRCREV_machine_mpc8315e-rdb ?= "2ce56d130ddff67f43ec857cc51cd347666a0078"
@@ -19,8 +19,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.1.38"
-LINUX_VERSION_genericx86-64 = "4.1.38"
+LINUX_VERSION_genericx86 = "4.1.39"
+LINUX_VERSION_genericx86-64 = "4.1.39"
 LINUX_VERSION_edgerouter = "4.1.38"
 LINUX_VERSION_beaglebone = "4.1.38"
 LINUX_VERSION_mpc8315e-rdb = "4.1.38"
-- 
2.12.0


