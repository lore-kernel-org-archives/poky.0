Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B169E00D39; Tue, 14 Nov 2017 14:45:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7D8DE00D24
	for <poky@yoctoproject.org>; Tue, 14 Nov 2017 14:45:07 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Nov 2017 14:45:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,396,1505804400"; d="scan'208";a="173579063"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by orsmga005.jf.intel.com with ESMTP; 14 Nov 2017 14:45:06 -0800
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 14 Nov 2017 14:45:03 -0800
Message-Id: <5901475c2b62bf7367d7e371914ddd673af065a3.1510699404.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.12.3
In-Reply-To: <cover.1510699404.git.alejandro.hernandez@linux.intel.com>
References: <cover.1510699404.git.alejandro.hernandez@linux.intel.com>
In-Reply-To: <cover.1510699404.git.alejandro.hernandez@linux.intel.com>
References: <cover.1510699404.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 2/3] linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.12
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
X-List-Received-Date: Tue, 14 Nov 2017 22:45:08 -0000

- Upgrades to Linux 4.12.14

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
index 2609129e3c7..2a11ad52a41 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -8,8 +8,8 @@ KBRANCH_beaglebone-yocto = "standard/beaglebone"
 KMACHINE_beaglebone-yocto = "beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "16de0149674ed12d983b77a453852ac2e64584b4"
-SRCREV_machine_genericx86-64 ?= "16de0149674ed12d983b77a453852ac2e64584b4"
+SRCREV_machine_genericx86    ?= "9cc6b0ae1aad7312e85ac4134398f81c0140de33"
+SRCREV_machine_genericx86-64 ?= "9cc6b0ae1aad7312e85ac4134398f81c0140de33"
 SRCREV_machine_edgerouter ?= "16de0149674ed12d983b77a453852ac2e64584b4"
 SRCREV_machine_beaglebone-yocto ?= "16de0149674ed12d983b77a453852ac2e64584b4"
 SRCREV_machine_mpc8315e-rdb ?= "8c360c7c3eebeb9251ddd8e9cde39908677f5850"
@@ -21,8 +21,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.12.12"
-LINUX_VERSION_genericx86-64 = "4.12.12"
+LINUX_VERSION_genericx86 = "4.12.14"
+LINUX_VERSION_genericx86-64 = "4.12.14"
 LINUX_VERSION_edgerouter = "4.12.12"
 LINUX_VERSION_beaglebone-yocto = "4.12.12"
 LINUX_VERSION_mpc8315e-rdb = "4.12.12"
-- 
2.12.3


