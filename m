Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D46FE00E18; Sun, 28 Jan 2018 17:05:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7920E00DA9
	for <poky@yoctoproject.org>; Sun, 28 Jan 2018 17:05:01 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Jan 2018 17:05:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,428,1511856000"; d="scan'208";a="199361397"
Received: from andromeda02.png.intel.com ([10.221.183.11])
	by fmsmga005.fm.intel.com with ESMTP; 28 Jan 2018 17:05:01 -0800
From: Anuj Mittal <anuj.mittal@intel.com>
To: poky@yoctoproject.org
Date: Mon, 29 Jan 2018 08:59:33 +0800
Message-Id: <1517187574-39232-2-git-send-email-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1517187574-39232-1-git-send-email-anuj.mittal@intel.com>
References: <1517187574-39232-1-git-send-email-anuj.mittal@intel.com>
Subject: [PATCH 2/3] linux-yocto: update genericx86* SRCREVs for v4.4
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
X-List-Received-Date: Mon, 29 Jan 2018 01:05:03 -0000

Bump to stable kernel release 4.4.113.

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index ed20f34..fa271e3 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -8,8 +8,8 @@ KBRANCH_beaglebone-yocto = "standard/beaglebone"
 KMACHINE_beaglebone-yocto = "beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "f070447fb60b5b939c94583d7c05f55ec2b37acd"
-SRCREV_machine_genericx86-64 ?= "f070447fb60b5b939c94583d7c05f55ec2b37acd"
+SRCREV_machine_genericx86    ?= "4d31a8b7661509ff1044abcf9050750cc2478e20"
+SRCREV_machine_genericx86-64 ?= "4d31a8b7661509ff1044abcf9050750cc2478e20"
 SRCREV_machine_edgerouter ?= "f070447fb60b5b939c94583d7c05f55ec2b37acd"
 SRCREV_machine_beaglebone-yocto ?= "f070447fb60b5b939c94583d7c05f55ec2b37acd"
 SRCREV_machine_mpc8315e-rdb ?= "df06daf8e6de559934d16e88129bbba0237d0292"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.4.93"
-LINUX_VERSION_genericx86-64 = "4.4.93"
+LINUX_VERSION_genericx86 = "4.4.113"
+LINUX_VERSION_genericx86-64 = "4.4.113"
 LINUX_VERSION_edgerouter = "4.4.93"
 LINUX_VERSION_beaglebone-yocto = "4.4.93"
 LINUX_VERSION_mpc8315e-rdb = "4.4.93"
-- 
2.7.4


