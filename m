Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 220EEE00E8F; Thu,  7 Jun 2018 23:36:29 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F38FE00E89
	for <poky@yoctoproject.org>; Thu,  7 Jun 2018 23:36:28 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Jun 2018 23:36:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,489,1520924400"; d="scan'208";a="235717502"
Received: from anmitta2-mobl1.png.intel.com ([10.221.16.144])
	by fmsmga006.fm.intel.com with ESMTP; 07 Jun 2018 23:36:27 -0700
From: Anuj Mittal <anuj.mittal@intel.com>
To: poky@yoctoproject.org
Date: Fri,  8 Jun 2018 14:36:23 +0800
Message-Id: <20180608063625.15021-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-yocto][PATCH 1/3] linux-yocto: update genericx86* SRCREVs for 4.12
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
X-List-Received-Date: Fri, 08 Jun 2018 06:36:29 -0000

Bump to kernel release 4.12.24.

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
index e28360b..4f040dc 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -8,8 +8,8 @@ KBRANCH_beaglebone-yocto = "standard/beaglebone"
 KMACHINE_beaglebone-yocto = "beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "97e710ef0545c19d3c10bd81a61bdca9fe543b81"
-SRCREV_machine_genericx86-64 ?= "97e710ef0545c19d3c10bd81a61bdca9fe543b81"
+SRCREV_machine_genericx86    ?= "7e7ac3f0fda9707e94b3311a4510ae080cd86238"
+SRCREV_machine_genericx86-64 ?= "7e7ac3f0fda9707e94b3311a4510ae080cd86238"
 SRCREV_machine_edgerouter ?= "97e710ef0545c19d3c10bd81a61bdca9fe543b81"
 SRCREV_machine_beaglebone-yocto ?= "97e710ef0545c19d3c10bd81a61bdca9fe543b81"
 SRCREV_machine_mpc8315e-rdb ?= "55fcfbee2560f57a490c5724ac5b5cb49bacb01c"
@@ -21,8 +21,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.12.21"
-LINUX_VERSION_genericx86-64 = "4.12.21"
+LINUX_VERSION_genericx86 = "4.12.24"
+LINUX_VERSION_genericx86-64 = "4.12.24"
 LINUX_VERSION_edgerouter = "4.12.21"
 LINUX_VERSION_beaglebone-yocto = "4.12.21"
 LINUX_VERSION_mpc8315e-rdb = "4.12.21"
-- 
2.17.1


