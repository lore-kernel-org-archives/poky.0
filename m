Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91B74E00E96; Thu,  7 Jun 2018 23:36:30 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4342FE00E8F
	for <poky@yoctoproject.org>; Thu,  7 Jun 2018 23:36:30 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Jun 2018 23:36:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,489,1520924400"; d="scan'208";a="235717506"
Received: from anmitta2-mobl1.png.intel.com ([10.221.16.144])
	by fmsmga006.fm.intel.com with ESMTP; 07 Jun 2018 23:36:29 -0700
From: Anuj Mittal <anuj.mittal@intel.com>
To: poky@yoctoproject.org
Date: Fri,  8 Jun 2018 14:36:25 +0800
Message-Id: <20180608063625.15021-3-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180608063625.15021-1-anuj.mittal@intel.com>
References: <20180608063625.15021-1-anuj.mittal@intel.com>
Subject: [meta-yocto][PATCH 3/3] linux-yocto: update genericx86* SRCREVs for 4.15
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
X-List-Received-Date: Fri, 08 Jun 2018 06:36:30 -0000

Bump to kernel release 4.15.18.

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_4.15.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend
index c0c6ad9..a9f23ae 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend
@@ -8,8 +8,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "f73fd8783a3e7529902366ba75aafb81c19ec3c9"
-SRCREV_machine_genericx86-64 ?= "f73fd8783a3e7529902366ba75aafb81c19ec3c9"
+SRCREV_machine_genericx86    ?= "51273ff79f4ad930f4a788257f58e1266cb236e3"
+SRCREV_machine_genericx86-64 ?= "51273ff79f4ad930f4a788257f58e1266cb236e3"
 SRCREV_machine_edgerouter ?= "f73fd8783a3e7529902366ba75aafb81c19ec3c9"
 SRCREV_machine_beaglebone-yocto ?= "f73fd8783a3e7529902366ba75aafb81c19ec3c9"
 SRCREV_machine_mpc8315e-rdb ?= "cc2711c4f3b83b5cd78358e7c949fdbb6076e25b"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.15.13"
-LINUX_VERSION_genericx86-64 = "4.15.13"
+LINUX_VERSION_genericx86 = "4.15.18"
+LINUX_VERSION_genericx86-64 = "4.15.18"
 LINUX_VERSION_edgerouter = "4.15.13"
 LINUX_VERSION_beaglebone-yocto = "4.15.13"
 LINUX_VERSION_mpc8315e-rdb = "4.15.13"
-- 
2.17.1


