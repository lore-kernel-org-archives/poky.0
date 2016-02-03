Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8FD2E00C52; Wed,  3 Feb 2016 14:13:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A0E2E00C4B
	for <poky@yoctoproject.org>; Wed,  3 Feb 2016 14:13:30 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP; 03 Feb 2016 14:13:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,392,1449561600"; d="scan'208";a="41985719"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by fmsmga004.fm.intel.com with ESMTP; 03 Feb 2016 14:13:28 -0800
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  3 Feb 2016 22:14:24 +0000
Message-Id: <978d5681e22852352222398f75fd9dd50971e7ec.1454537470.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.6.2
In-Reply-To: <cover.1454537470.git.alejandro.hernandez@linux.intel.com>
References: <cover.1454537470.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 1/3] [jethro] linux-yocto: Update SRCREV for genericx86* for 3.14, fixes CVE-2016-0728
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
X-List-Received-Date: Wed, 03 Feb 2016 22:13:33 -0000

This addresses CVE-2016-0728: KEYS: Fix keyring ref leak in join_session_keyring(), and upgrades to LINUX_VERSION 3.14.39

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
index 589ece7..310aeb8 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
@@ -7,8 +7,8 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86 ?= "af1f7f586bd32d39c057f17606991b887eadb389"
-SRCREV_machine_genericx86-64 ?= "578602a722dbfb260801f3b37c6eafd2abb2340d"
+SRCREV_machine_genericx86 ?= "d9bf859dfae6f88b88b157119c20ae4d5e51420a"
+SRCREV_machine_genericx86-64 ?= "93b2b800d85c1565af7d96f3776dc38c85ae1902"
 SRCREV_machine_edgerouter ?= "578602a722dbfb260801f3b37c6eafd2abb2340d"
 SRCREV_machine_beaglebone ?= "578602a722dbfb260801f3b37c6eafd2abb2340d"
 SRCREV_machine_mpc8315e-rdb ?= "1cb1bbaf63cecc918cf36c89819a7464af4c4b13"
@@ -18,3 +18,6 @@ COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
+
+LINUX_VERSION_genericx86 = "3.14.39"
+LINUX_VERSION_genericx86-64 = "3.14.39"
-- 
2.6.2


