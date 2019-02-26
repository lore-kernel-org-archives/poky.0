Return-Path: <naveen.kumar.saini@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C7FEE00D01; Tue, 26 Feb 2019 02:36:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00, DATE_IN_PAST_06_12, 
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.5 DATE_IN_PAST_06_12 Date: is 6 to 12 hours before Received: date
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FAFCE00D00
	for <poky@yoctoproject.org>; Tue, 26 Feb 2019 02:36:17 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Feb 2019 02:36:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.58,415,1544515200"; d="scan'208";a="322187185"
Received: from optimus-prime.png.intel.com ([172.30.199.130])
	by fmsmga006.fm.intel.com with ESMTP; 26 Feb 2019 02:36:15 -0800
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: poky@yoctoproject.org
Date: Tue, 26 Feb 2019 10:37:17 +0800
Message-Id: <20190226023717.15760-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.0
Subject: [meta-yocto-bsp][PATCH 2/2] linux-yocto: update genericx86* SRCREV for 4.19
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
X-List-Received-Date: Tue, 26 Feb 2019 10:36:18 -0000

Bump to kernel release v4.19.19

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_4.19.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
index 8e708cb664..6025230c73 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
@@ -8,8 +8,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
-SRCREV_machine_genericx86-64 ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
+SRCREV_machine_genericx86    ?= "11e0e616ed095bb8012e1b4a231254c9656a0193"
+SRCREV_machine_genericx86-64 ?= "11e0e616ed095bb8012e1b4a231254c9656a0193"
 SRCREV_machine_edgerouter ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
 SRCREV_machine_beaglebone-yocto ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
 SRCREV_machine_mpc8315e-rdb ?= "8b60f968823256f5d2889c4520d70299ca21411b"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.19.14"
-LINUX_VERSION_genericx86-64 = "4.19.14"
+LINUX_VERSION_genericx86 = "4.19.19"
+LINUX_VERSION_genericx86-64 = "4.19.19"
 LINUX_VERSION_edgerouter = "4.19.14"
 LINUX_VERSION_beaglebone-yocto = "4.19.14"
 LINUX_VERSION_mpc8315e-rdb = "4.19.14"
-- 
2.17.0


