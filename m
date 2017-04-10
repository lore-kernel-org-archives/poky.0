Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 967EFE00A71; Mon, 10 Apr 2017 00:37:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65D0EE009AA
	for <poky@yoctoproject.org>; Mon, 10 Apr 2017 00:37:14 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v3A7bEon011931
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 10 Apr 2017 00:37:14 -0700 (PDT)
Received: from pek-lpgbuild2.wrs.com (128.224.153.30) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.294.0; Mon, 10 Apr 2017 00:37:13 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Mon, 10 Apr 2017 15:37:52 +0800
Message-ID: <20170410073752.10837-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.9.3
MIME-Version: 1.0
Subject: [PATCH] meta-yocto-bsp: bump to the latest linux stable kernel for the non-x86 BSPs
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
X-List-Received-Date: Mon, 10 Apr 2017 07:37:18 -0000
Content-Type: text/plain

Bump to the latest stable kernel for 4.4, 4,9 and 4.10.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_4.10.bbappend           | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend | 12 ++++++------
 3 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
index d11100a6763e..693b7de8d8ab 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "53be19cad65e798c14be6d0365eb8f41ff38e540"
 SRCREV_machine_genericx86-64 ?= "53be19cad65e798c14be6d0365eb8f41ff38e540"
-SRCREV_machine_edgerouter ?= "827a1164b155110c65f028a13a6c5699be93bbc3"
-SRCREV_machine_beaglebone ?= "827a1164b155110c65f028a13a6c5699be93bbc3"
-SRCREV_machine_mpc8315e-rdb ?= "fc1a68a9046707a9709075afc99eb3b5a2237c4b"
+SRCREV_machine_edgerouter ?= "53be19cad65e798c14be6d0365eb8f41ff38e540"
+SRCREV_machine_beaglebone ?= "53be19cad65e798c14be6d0365eb8f41ff38e540"
+SRCREV_machine_mpc8315e-rdb ?= "9f975fcf58a9f8f5bbb634ce020c4aae715fa777"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.10.5"
 LINUX_VERSION_genericx86-64 = "4.10.5"
-LINUX_VERSION_edgerouter = "4.10.2"
-LINUX_VERSION_beaglebone = "4.10.2"
-LINUX_VERSION_mpc8315e-rdb = "4.10.2"
+LINUX_VERSION_edgerouter = "4.10.5"
+LINUX_VERSION_beaglebone = "4.10.5"
+LINUX_VERSION_mpc8315e-rdb = "4.10.5"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 22af3949c61a..6c6f34506c20 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "2525fc844188708834929d119cecdc2f6ae3c88a"
 SRCREV_machine_genericx86-64 ?= "2525fc844188708834929d119cecdc2f6ae3c88a"
-SRCREV_machine_edgerouter ?= "cebe1ad56aebd89e0de29412e19433fb441bf13c"
-SRCREV_machine_beaglebone ?= "cebe1ad56aebd89e0de29412e19433fb441bf13c"
-SRCREV_machine_mpc8315e-rdb ?= "06c0dbdcba374ca7f92a53d69292d6bb7bc9b0f3"
+SRCREV_machine_edgerouter ?= "2525fc844188708834929d119cecdc2f6ae3c88a"
+SRCREV_machine_beaglebone ?= "2525fc844188708834929d119cecdc2f6ae3c88a"
+SRCREV_machine_mpc8315e-rdb ?= "40600ac2335bb4e052228e6e503cf9e44ccdd33c"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.4.56"
 LINUX_VERSION_genericx86-64 = "4.4.56"
-LINUX_VERSION_edgerouter = "4.4.53"
-LINUX_VERSION_beaglebone = "4.4.53"
-LINUX_VERSION_mpc8315e-rdb = "4.4.53"
+LINUX_VERSION_edgerouter = "4.4.56"
+LINUX_VERSION_beaglebone = "4.4.56"
+LINUX_VERSION_mpc8315e-rdb = "4.4.56"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
index 986be837277f..6947ce7752fc 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "e675c4ecccb9dd9dd637f104e32b7808b4d56846"
 SRCREV_machine_genericx86-64 ?= "e675c4ecccb9dd9dd637f104e32b7808b4d56846"
-SRCREV_machine_edgerouter ?= "95c0a80ee83f1cf8e59d733f36e8a9dfd50a0098"
-SRCREV_machine_beaglebone ?= "95c0a80ee83f1cf8e59d733f36e8a9dfd50a0098"
-SRCREV_machine_mpc8315e-rdb ?= "7744d762ee37396dfab60f21a2b974c5b94c47b4"
+SRCREV_machine_edgerouter ?= "e675c4ecccb9dd9dd637f104e32b7808b4d56846"
+SRCREV_machine_beaglebone ?= "e675c4ecccb9dd9dd637f104e32b7808b4d56846"
+SRCREV_machine_mpc8315e-rdb ?= "e56a2cce501fdd9aff6d420b015a36e98fc69f01"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.9.17"
 LINUX_VERSION_genericx86-64 = "4.9.17"
-LINUX_VERSION_edgerouter = "4.9.13"
-LINUX_VERSION_beaglebone = "4.9.13"
-LINUX_VERSION_mpc8315e-rdb = "4.9.13"
+LINUX_VERSION_edgerouter = "4.9.17"
+LINUX_VERSION_beaglebone = "4.9.17"
+LINUX_VERSION_mpc8315e-rdb = "4.9.17"
-- 
2.9.3


