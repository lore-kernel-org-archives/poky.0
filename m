Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30F73E00826; Wed,  1 Mar 2017 15:54:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [134.134.136.24 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67A0EE0095F
	for <poky@yoctoproject.org>; Wed,  1 Mar 2017 15:54:52 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Mar 2017 15:54:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,228,1484035200"; d="scan'208";a="71746573"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by fmsmga006.fm.intel.com with ESMTP; 01 Mar 2017 15:54:51 -0800
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  1 Mar 2017 23:51:38 +0000
Message-Id: <8602e3913d450d92c1157969af30269038fe82ba.1488411849.git.alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <cover.1488411848.git.alejandro.hernandez@linux.intel.com>
References: <cover.1488411848.git.alejandro.hernandez@linux.intel.com>
In-Reply-To: <cover.1488411848.git.alejandro.hernandez@linux.intel.com>
References: <cover.1488411848.git.alejandro.hernandez@linux.intel.com>
Subject: [PATCH 4/4] linux-yocto: Update genericx86* SRCREVs for linux-yocto 4.9
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
X-List-Received-Date: Wed, 01 Mar 2017 23:54:53 -0000

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
index bd8f173..b730934 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -7,8 +7,8 @@ KBRANCH_edgerouter = "standard/edgerouter"
 KBRANCH_beaglebone = "standard/beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
-SRCREV_machine_genericx86    ?= "4700f2f8b9dbaad5ae441b682d04b09e811135fc"
-SRCREV_machine_genericx86-64 ?= "4700f2f8b9dbaad5ae441b682d04b09e811135fc"
+SRCREV_machine_genericx86    ?= "95c0a80ee83f1cf8e59d733f36e8a9dfd50a0098"
+SRCREV_machine_genericx86-64 ?= "95c0a80ee83f1cf8e59d733f36e8a9dfd50a0098"
 SRCREV_machine_edgerouter ?= "c85c54f5bf53b98afe8105e91bffcdb6c60afe8f"
 SRCREV_machine_beaglebone ?= "c85c54f5bf53b98afe8105e91bffcdb6c60afe8f"
 SRCREV_machine_mpc8315e-rdb ?= "6b67f448d63917f5ea306eb293cd9844077e4a61"
@@ -19,8 +19,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone = "beaglebone"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.9.6"
-LINUX_VERSION_genericx86-64 = "4.9.6"
+LINUX_VERSION_genericx86 = "4.9.13"
+LINUX_VERSION_genericx86-64 = "4.9.13"
 LINUX_VERSION_edgerouter = "4.9.8"
 LINUX_VERSION_beaglebone = "4.9.8"
 LINUX_VERSION_mpc8315e-rdb = "4.9.8"
-- 
2.10.2


