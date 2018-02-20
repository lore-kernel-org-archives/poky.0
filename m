Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61F6AE00EC8; Mon, 19 Feb 2018 16:33:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43CD1E00DA9
	for <poky@yoctoproject.org>; Mon, 19 Feb 2018 16:33:54 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Feb 2018 16:33:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,537,1511856000"; d="scan'208";a="205484329"
Received: from anmitta2-mobl1.png.intel.com ([10.221.20.104])
	by fmsmga006.fm.intel.com with ESMTP; 19 Feb 2018 16:33:53 -0800
From: Anuj Mittal <anuj.mittal@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Feb 2018 08:33:45 +0800
Message-Id: <1519086827-7192-1-git-send-email-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-yocto][PATCH 1/3] linux-yocto: update genericx86* SRCREVs for v4.12
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
X-List-Received-Date: Tue, 20 Feb 2018 00:33:56 -0000

Bump to stable kernel release 4.12.20

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
index 2375874..0740d9d 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -8,8 +8,8 @@ KBRANCH_beaglebone-yocto = "standard/beaglebone"
 KMACHINE_beaglebone-yocto = "beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "257f843ea367744620f1d92910afd2f454e31483"
-SRCREV_machine_genericx86-64 ?= "257f843ea367744620f1d92910afd2f454e31483"
+SRCREV_machine_genericx86    ?= "1c4ad569af3e23a77994235435040e322908687f"
+SRCREV_machine_genericx86-64 ?= "1c4ad569af3e23a77994235435040e322908687f"
 SRCREV_machine_edgerouter ?= "257f843ea367744620f1d92910afd2f454e31483"
 SRCREV_machine_beaglebone-yocto ?= "257f843ea367744620f1d92910afd2f454e31483"
 SRCREV_machine_mpc8315e-rdb ?= "014560874f9eb2a86138c9cc35046ff1720485e1"
@@ -21,8 +21,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.12.19"
-LINUX_VERSION_genericx86-64 = "4.12.19"
+LINUX_VERSION_genericx86 = "4.12.20"
+LINUX_VERSION_genericx86-64 = "4.12.20"
 LINUX_VERSION_edgerouter = "4.12.19"
 LINUX_VERSION_beaglebone-yocto = "4.12.19"
 LINUX_VERSION_mpc8315e-rdb = "4.12.19"
-- 
2.7.4


