Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1285AE00B23; Thu, 11 Oct 2018 21:23:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB013E0090C
	for <poky@yoctoproject.org>; Thu, 11 Oct 2018 21:23:41 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Oct 2018 21:23:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,371,1534834800"; d="scan'208";a="94553796"
Received: from anmitta2-mobl1.png.intel.com ([10.221.21.104])
	by fmsmga002.fm.intel.com with ESMTP; 11 Oct 2018 21:22:55 -0700
From: Anuj Mittal <anuj.mittal@intel.com>
To: akuster808@gmail.com,
	poky@yoctoproject.org
Date: Fri, 12 Oct 2018 12:22:50 +0800
Message-Id: <20181012042250.14882-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [sumo][meta-yocto][PATCH] linux-yocto: update genericx86* SRCREV for 4.14
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
X-List-Received-Date: Fri, 12 Oct 2018 04:23:42 -0000

Bump to kernel release v4.14.67.

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_4.14.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
index a8313e7eea..feb8d2e49c 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
@@ -8,8 +8,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "2bf00ed1aee9c26b48c26b10c731c2f8970d50c2"
-SRCREV_machine_genericx86-64 ?= "2bf00ed1aee9c26b48c26b10c731c2f8970d50c2"
+SRCREV_machine_genericx86    ?= "084af9624d268ddf4fd65b2f9e8e50ca2f22e62b"
+SRCREV_machine_genericx86-64 ?= "084af9624d268ddf4fd65b2f9e8e50ca2f22e62b"
 SRCREV_machine_edgerouter ?= "65d1c849534179bbfa494f77947f8be615e9871a"
 SRCREV_machine_beaglebone-yocto ?= "d62ddfa26a59c83f6128790b7aa2baadc04d2960"
 SRCREV_machine_mpc8315e-rdb ?= "80a106ecf737b69864e07b955eccb62f809cf120"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.14.48"
-LINUX_VERSION_genericx86-64 = "4.14.48"
+LINUX_VERSION_genericx86 = "4.14.67"
+LINUX_VERSION_genericx86-64 = "4.14.67"
 LINUX_VERSION_edgerouter = "4.14.48"
 LINUX_VERSION_beaglebone-yocto = "4.14.48"
 LINUX_VERSION_mpc8315e-rdb = "4.14.48"
-- 
2.17.1


