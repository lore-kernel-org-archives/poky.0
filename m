Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19346E00CC2; Tue, 25 Oct 2016 15:58:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 207C5E00CF0
	for <poky@yoctoproject.org>; Tue, 25 Oct 2016 15:57:53 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP; 25 Oct 2016 15:57:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,399,1473145200"; d="scan'208";a="777649333"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by FMSMGA003.fm.intel.com with ESMTP; 25 Oct 2016 15:57:51 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 25 Oct 2016 22:51:49 +0000
Message-Id: <c8ea687eebe277b776a6e10954b539e5d391a371.1477435842.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.6.6
In-Reply-To: <72cc163f4f24d4efc0bc575c1274dbeda00ec4f7.1477435842.git.alejandro.hernandez@linux.intel.com>
References: <72cc163f4f24d4efc0bc575c1274dbeda00ec4f7.1477435842.git.alejandro.hernandez@linux.intel.com>
In-Reply-To: <cover.1477435842.git.alejandro.hernandez@linux.intel.com>
References: <cover.1477435842.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 3/3] linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.4
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
X-List-Received-Date: Tue, 25 Oct 2016 22:58:11 -0000

Upgrades to Linux 4.4.26

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 7aba740..49c16b0 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -7,8 +7,8 @@ KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone = "standard/beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "f4e52341c304e044dbe581a35aad6b930c9410d1"
-SRCREV_machine_genericx86-64 ?= "f4e52341c304e044dbe581a35aad6b930c9410d1"
+SRCREV_machine_genericx86    ?= "ca6a08bd7f86ebef11f763d26f787f7d65270473"
+SRCREV_machine_genericx86-64 ?= "ca6a08bd7f86ebef11f763d26f787f7d65270473"
 SRCREV_machine_edgerouter ?= "f4e52341c304e044dbe581a35aad6b930c9410d1"
 SRCREV_machine_beaglebone ?= "f4e52341c304e044dbe581a35aad6b930c9410d1"
 SRCREV_machine_mpc8315e-rdb ?= "50e000bc5fce1e04a1a3aea5ffc57c3d5fd71e72"
@@ -19,8 +19,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.4.22"
-LINUX_VERSION_genericx86-64 = "4.4.22"
+LINUX_VERSION_genericx86 = "4.4.26"
+LINUX_VERSION_genericx86-64 = "4.4.26"
 LINUX_VERSION_edgerouter = "4.4.22"
 LINUX_VERSION_beaglebone = "4.4.22"
 LINUX_VERSION_mpc8315e-rdb = "4.4.22"
-- 
2.6.6


