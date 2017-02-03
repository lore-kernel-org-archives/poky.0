Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB9D1E008D7; Fri,  3 Feb 2017 10:29:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3556E00480
	for <poky@yoctoproject.org>; Fri,  3 Feb 2017 10:29:11 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 03 Feb 2017 10:29:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,329,1477983600"; d="scan'208";a="929876409"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by orsmga003.jf.intel.com with ESMTP; 03 Feb 2017 10:29:11 -0800
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri,  3 Feb 2017 18:25:21 +0000
Message-Id: <1486146324-12587-1-git-send-email-alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.6.6
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
X-List-Received-Date: Fri, 03 Feb 2017 18:29:14 -0000

Updates to Linux 4.1.37

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 68bae2c..8f0e767 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -7,8 +7,8 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86    ?= "fec49247816d7045aa8abe0047bcd4737af9a853"
-SRCREV_machine_genericx86-64 ?= "fec49247816d7045aa8abe0047bcd4737af9a853"
+SRCREV_machine_genericx86    ?= "aadda25ee787681666f1d7961cd6c5a641da678d"
+SRCREV_machine_genericx86-64 ?= "aadda25ee787681666f1d7961cd6c5a641da678d"
 SRCREV_machine_edgerouter ?= "fec49247816d7045aa8abe0047bcd4737af9a853"
 SRCREV_machine_beaglebone ?= "938cc4ac8d36f166c9e2e0517d6ffd6d278fe631"
 SRCREV_machine_mpc8315e-rdb ?= "fec49247816d7045aa8abe0047bcd4737af9a853"
@@ -19,8 +19,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.1.36"
-LINUX_VERSION_genericx86-64 = "4.1.36"
+LINUX_VERSION_genericx86 = "4.1.37"
+LINUX_VERSION_genericx86-64 = "4.1.37"
 LINUX_VERSION_edgerouter = "4.1.36"
 LINUX_VERSION_beaglebone = "4.1.36"
 LINUX_VERSION_mpc8315e-rdb = "4.1.36"
-- 
2.6.6


