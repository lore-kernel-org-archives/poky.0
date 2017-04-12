Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE82EE00992; Wed, 12 Apr 2017 10:38:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34D1AE00992
	for <poky@yoctoproject.org>; Wed, 12 Apr 2017 10:38:06 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Apr 2017 10:38:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,191,1488873600"; d="scan'208";a="247818208"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by fmsmga004.fm.intel.com with ESMTP; 12 Apr 2017 10:38:04 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 12 Apr 2017 10:38:01 -0700
Message-Id: <fdfd535beb398e5fc4b5ff3101aa5ed099fb13ca.1492018669.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <358a0cabc3aadfc843f74f51955de69bbe33474f.1492018669.git.alejandro.hernandez@linux.intel.com>
References: <358a0cabc3aadfc843f74f51955de69bbe33474f.1492018669.git.alejandro.hernandez@linux.intel.com>
In-Reply-To: <cover.1492018669.git.alejandro.hernandez@linux.intel.com>
References: <cover.1492018669.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 3/3] linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.10
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
X-List-Received-Date: Wed, 12 Apr 2017 17:38:08 -0000

Updates to Linux 4.10.9

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
index 693b7de..dc2cee3 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
@@ -7,8 +7,8 @@ KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone = "standard/beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "53be19cad65e798c14be6d0365eb8f41ff38e540"
-SRCREV_machine_genericx86-64 ?= "53be19cad65e798c14be6d0365eb8f41ff38e540"
+SRCREV_machine_genericx86    ?= "fe0fb8da3d633d802776081e7ff2df73ff2983f2"
+SRCREV_machine_genericx86-64 ?= "fe0fb8da3d633d802776081e7ff2df73ff2983f2"
 SRCREV_machine_edgerouter ?= "53be19cad65e798c14be6d0365eb8f41ff38e540"
 SRCREV_machine_beaglebone ?= "53be19cad65e798c14be6d0365eb8f41ff38e540"
 SRCREV_machine_mpc8315e-rdb ?= "9f975fcf58a9f8f5bbb634ce020c4aae715fa777"
@@ -19,8 +19,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.10.5"
-LINUX_VERSION_genericx86-64 = "4.10.5"
+LINUX_VERSION_genericx86 = "4.10.9"
+LINUX_VERSION_genericx86-64 = "4.10.9"
 LINUX_VERSION_edgerouter = "4.10.5"
 LINUX_VERSION_beaglebone = "4.10.5"
 LINUX_VERSION_mpc8315e-rdb = "4.10.5"
-- 
2.10.2


