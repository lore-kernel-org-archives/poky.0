Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A7D3E00995; Wed, 12 Apr 2017 10:38:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FA4AE00985
	for <poky@yoctoproject.org>; Wed, 12 Apr 2017 10:38:06 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Apr 2017 10:38:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,191,1488873600"; d="scan'208";a="247818207"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by fmsmga004.fm.intel.com with ESMTP; 12 Apr 2017 10:38:04 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 12 Apr 2017 10:38:00 -0700
Message-Id: <74be542857b5c458006b803229e07dc4ba83a2e8.1492018669.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <358a0cabc3aadfc843f74f51955de69bbe33474f.1492018669.git.alejandro.hernandez@linux.intel.com>
References: <358a0cabc3aadfc843f74f51955de69bbe33474f.1492018669.git.alejandro.hernandez@linux.intel.com>
In-Reply-To: <cover.1492018669.git.alejandro.hernandez@linux.intel.com>
References: <cover.1492018669.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 2/3] linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.9
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
X-List-Received-Date: Wed, 12 Apr 2017 17:38:06 -0000

Updates to Linux 4.9.21

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
index 6947ce7..86904fc 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -7,8 +7,8 @@ KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone = "standard/beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "e675c4ecccb9dd9dd637f104e32b7808b4d56846"
-SRCREV_machine_genericx86-64 ?= "e675c4ecccb9dd9dd637f104e32b7808b4d56846"
+SRCREV_machine_genericx86    ?= "81055b89bd32414ecaf95156ce9a5fa6643e530a"
+SRCREV_machine_genericx86-64 ?= "81055b89bd32414ecaf95156ce9a5fa6643e530a"
 SRCREV_machine_edgerouter ?= "e675c4ecccb9dd9dd637f104e32b7808b4d56846"
 SRCREV_machine_beaglebone ?= "e675c4ecccb9dd9dd637f104e32b7808b4d56846"
 SRCREV_machine_mpc8315e-rdb ?= "e56a2cce501fdd9aff6d420b015a36e98fc69f01"
@@ -19,8 +19,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.9.17"
-LINUX_VERSION_genericx86-64 = "4.9.17"
+LINUX_VERSION_genericx86 = "4.9.21"
+LINUX_VERSION_genericx86-64 = "4.9.21"
 LINUX_VERSION_edgerouter = "4.9.17"
 LINUX_VERSION_beaglebone = "4.9.17"
 LINUX_VERSION_mpc8315e-rdb = "4.9.17"
-- 
2.10.2


