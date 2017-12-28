Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82A87E00DBA; Wed, 27 Dec 2017 19:00:00 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1E5FE00DAB
	for <poky@yoctoproject.org>; Wed, 27 Dec 2017 18:59:59 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Dec 2017 18:59:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,468,1508828400"; 
   d="scan'208";a="6272970"
Received: from anujm-desk.png.intel.com ([172.30.199.130])
	by orsmga006.jf.intel.com with ESMTP; 27 Dec 2017 18:59:58 -0800
From: Anuj Mittal <anuj.mittal@intel.com>
To: poky@yoctoproject.org
Date: Thu, 28 Dec 2017 10:59:44 +0800
Message-Id: <1514429985-19328-3-git-send-email-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1514429985-19328-1-git-send-email-anuj.mittal@intel.com>
References: <1514429985-19328-1-git-send-email-anuj.mittal@intel.com>
Cc: saul.wold@intel.com
Subject: [PATCH 2/3] linux-yocto: update genericx86* SRCREVs for v4.9
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
X-List-Received-Date: Thu, 28 Dec 2017 03:00:00 -0000

Bump to stable kernel release v4.9.65.

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
index 27cdac6..19e3743 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -8,8 +8,8 @@ KBRANCH_beaglebone-yocto = "standard/beaglebone"
 KMACHINE_beaglebone-yocto = "beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "480ee599fb8df712c10dcf4b7aa6398b79f7d404"
-SRCREV_machine_genericx86-64 ?= "480ee599fb8df712c10dcf4b7aa6398b79f7d404"
+SRCREV_machine_genericx86    ?= "5174e51fa08d0942ddcf8b19540e90ec10eeb621"
+SRCREV_machine_genericx86-64 ?= "5174e51fa08d0942ddcf8b19540e90ec10eeb621"
 SRCREV_machine_edgerouter ?= "5174e51fa08d0942ddcf8b19540e90ec10eeb621"
 SRCREV_machine_beaglebone-yocto ?= "5174e51fa08d0942ddcf8b19540e90ec10eeb621"
 SRCREV_machine_mpc8315e-rdb ?= "98afa8ec2086fb2262d43040094e6c786d3847ba"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.9.49"
-LINUX_VERSION_genericx86-64 = "4.9.49"
+LINUX_VERSION_genericx86 = "4.9.65"
+LINUX_VERSION_genericx86-64 = "4.9.65"
 LINUX_VERSION_edgerouter = "4.9.65"
 LINUX_VERSION_beaglebone-yocto = "4.9.65"
 LINUX_VERSION_mpc8315e-rdb = "4.9.65"
-- 
2.7.4


