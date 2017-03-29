Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23C80E0094C; Wed, 29 Mar 2017 12:03:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AF35E0093F
	for <poky@yoctoproject.org>; Wed, 29 Mar 2017 12:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490814211; x=1522350211;
	h=from:to:cc:subject:date:message-id;
	bh=5EkMY+X/CZt/Bcb3fWKrdrrC3XE3UZyOBEuYmEW8bJE=;
	b=T0JFN9aH/O8BSc7M3B40IqBy2xlF8dk+fM5Pkv0H6jWFX4+qoNE7UGAW
	JH95Xs6LvZlm5+sedkWXiO4ucMA3IA==;
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 Mar 2017 12:03:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,242,1486454400"; d="scan'208";a="71670731"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by orsmga004.jf.intel.com with ESMTP; 29 Mar 2017 12:03:30 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 29 Mar 2017 12:03:27 -0700
Message-Id: <8816a602b4048237263894aceddd537de364b376.1490814172.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <5e5340e1c5bcd6dd238a9b9172b8f65faa693245.1490814172.git.alejandro.hernandez@linux.intel.com>
References: <5e5340e1c5bcd6dd238a9b9172b8f65faa693245.1490814172.git.alejandro.hernandez@linux.intel.com>
In-Reply-To: <cover.1490814172.git.alejandro.hernandez@linux.intel.com>
References: <cover.1490814172.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 4/5] linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.9 Updates to Linux 4.9.17
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
X-List-Received-Date: Wed, 29 Mar 2017 19:03:39 -0000

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
index 766adb7..986be83 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -7,8 +7,8 @@ KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone = "standard/beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "95c0a80ee83f1cf8e59d733f36e8a9dfd50a0098"
-SRCREV_machine_genericx86-64 ?= "95c0a80ee83f1cf8e59d733f36e8a9dfd50a0098"
+SRCREV_machine_genericx86    ?= "e675c4ecccb9dd9dd637f104e32b7808b4d56846"
+SRCREV_machine_genericx86-64 ?= "e675c4ecccb9dd9dd637f104e32b7808b4d56846"
 SRCREV_machine_edgerouter ?= "95c0a80ee83f1cf8e59d733f36e8a9dfd50a0098"
 SRCREV_machine_beaglebone ?= "95c0a80ee83f1cf8e59d733f36e8a9dfd50a0098"
 SRCREV_machine_mpc8315e-rdb ?= "7744d762ee37396dfab60f21a2b974c5b94c47b4"
@@ -19,8 +19,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.9.13"
-LINUX_VERSION_genericx86-64 = "4.9.13"
+LINUX_VERSION_genericx86 = "4.9.17"
+LINUX_VERSION_genericx86-64 = "4.9.17"
 LINUX_VERSION_edgerouter = "4.9.13"
 LINUX_VERSION_beaglebone = "4.9.13"
 LINUX_VERSION_mpc8315e-rdb = "4.9.13"
-- 
2.10.2


