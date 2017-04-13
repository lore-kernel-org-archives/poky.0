Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35E27E00992; Wed, 12 Apr 2017 18:30:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04807E00961
	for <poky@yoctoproject.org>; Wed, 12 Apr 2017 18:30:03 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v3D1U2QK025774
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 12 Apr 2017 18:30:02 -0700 (PDT)
Received: from pek-lpgbuild2.wrs.com (128.224.153.30) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.294.0; Wed, 12 Apr 2017 18:30:01 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Thu, 13 Apr 2017 09:30:54 +0800
Message-ID: <20170413013054.1766-1-kexin.hao@windriver.com>
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
X-List-Received-Date: Thu, 13 Apr 2017 01:30:07 -0000
Content-Type: text/plain

Bump to the latest stable kernel for 4.4, 4,9 and 4.10.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_4.10.bbappend           | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend | 12 ++++++------
 3 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
index 693b7de8d8ab..41a07f52003e 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "53be19cad65e798c14be6d0365eb8f41ff38e540"
 SRCREV_machine_genericx86-64 ?= "53be19cad65e798c14be6d0365eb8f41ff38e540"
-SRCREV_machine_edgerouter ?= "53be19cad65e798c14be6d0365eb8f41ff38e540"
-SRCREV_machine_beaglebone ?= "53be19cad65e798c14be6d0365eb8f41ff38e540"
-SRCREV_machine_mpc8315e-rdb ?= "9f975fcf58a9f8f5bbb634ce020c4aae715fa777"
+SRCREV_machine_edgerouter ?= "fe0fb8da3d633d802776081e7ff2df73ff2983f2"
+SRCREV_machine_beaglebone ?= "fe0fb8da3d633d802776081e7ff2df73ff2983f2"
+SRCREV_machine_mpc8315e-rdb ?= "4a84208c659563e7c2972a7a037934027662347d"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.10.5"
 LINUX_VERSION_genericx86-64 = "4.10.5"
-LINUX_VERSION_edgerouter = "4.10.5"
-LINUX_VERSION_beaglebone = "4.10.5"
-LINUX_VERSION_mpc8315e-rdb = "4.10.5"
+LINUX_VERSION_edgerouter = "4.10.9"
+LINUX_VERSION_beaglebone = "4.10.9"
+LINUX_VERSION_mpc8315e-rdb = "4.10.9"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 6c6f34506c20..124450a7494f 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "2525fc844188708834929d119cecdc2f6ae3c88a"
 SRCREV_machine_genericx86-64 ?= "2525fc844188708834929d119cecdc2f6ae3c88a"
-SRCREV_machine_edgerouter ?= "2525fc844188708834929d119cecdc2f6ae3c88a"
-SRCREV_machine_beaglebone ?= "2525fc844188708834929d119cecdc2f6ae3c88a"
-SRCREV_machine_mpc8315e-rdb ?= "40600ac2335bb4e052228e6e503cf9e44ccdd33c"
+SRCREV_machine_edgerouter ?= "0298d3765a5c474ff5776284d49111276510d4b4"
+SRCREV_machine_beaglebone ?= "0298d3765a5c474ff5776284d49111276510d4b4"
+SRCREV_machine_mpc8315e-rdb ?= "90e5792370e0ae72b69a7006f0727dda4ba7e629"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.4.56"
 LINUX_VERSION_genericx86-64 = "4.4.56"
-LINUX_VERSION_edgerouter = "4.4.56"
-LINUX_VERSION_beaglebone = "4.4.56"
-LINUX_VERSION_mpc8315e-rdb = "4.4.56"
+LINUX_VERSION_edgerouter = "4.4.60"
+LINUX_VERSION_beaglebone = "4.4.60"
+LINUX_VERSION_mpc8315e-rdb = "4.4.60"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
index 6947ce7752fc..e1d334f1f8b3 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "e675c4ecccb9dd9dd637f104e32b7808b4d56846"
 SRCREV_machine_genericx86-64 ?= "e675c4ecccb9dd9dd637f104e32b7808b4d56846"
-SRCREV_machine_edgerouter ?= "e675c4ecccb9dd9dd637f104e32b7808b4d56846"
-SRCREV_machine_beaglebone ?= "e675c4ecccb9dd9dd637f104e32b7808b4d56846"
-SRCREV_machine_mpc8315e-rdb ?= "e56a2cce501fdd9aff6d420b015a36e98fc69f01"
+SRCREV_machine_edgerouter ?= "81055b89bd32414ecaf95156ce9a5fa6643e530a"
+SRCREV_machine_beaglebone ?= "81055b89bd32414ecaf95156ce9a5fa6643e530a"
+SRCREV_machine_mpc8315e-rdb ?= "c74de53c637dabeeb76e556e85ea37ec7f6ffb13"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.9.17"
 LINUX_VERSION_genericx86-64 = "4.9.17"
-LINUX_VERSION_edgerouter = "4.9.17"
-LINUX_VERSION_beaglebone = "4.9.17"
-LINUX_VERSION_mpc8315e-rdb = "4.9.17"
+LINUX_VERSION_edgerouter = "4.9.21"
+LINUX_VERSION_beaglebone = "4.9.21"
+LINUX_VERSION_mpc8315e-rdb = "4.9.21"
-- 
2.9.3


