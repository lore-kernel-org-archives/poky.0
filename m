Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB7D0E00B58; Thu, 15 Jun 2017 23:18:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A947E00A9B
	for <poky@yoctoproject.org>; Thu, 15 Jun 2017 23:18:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v5G6IQIW012910
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <poky@yoctoproject.org>; Thu, 15 Jun 2017 23:18:27 -0700
Received: from pek-lpgbuild2.wrs.com (128.224.153.30) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.294.0; Thu, 15 Jun 2017 23:18:26 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Fri, 16 Jun 2017 14:24:25 +0800
Message-ID: <20170616062425.29919-1-kexin.hao@windriver.com>
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
X-List-Received-Date: Fri, 16 Jun 2017 06:18:31 -0000
Content-Type: text/plain

Bump to the latest stable kernel for 4.4, 4,9 and 4.10.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_4.10.bbappend           | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend | 12 ++++++------
 3 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
index 9b94b6007e55..6884731810cc 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "6648a34e00c55a0634b39e661dd6ba14dd106473"
 SRCREV_machine_genericx86-64 ?= "6648a34e00c55a0634b39e661dd6ba14dd106473"
-SRCREV_machine_edgerouter ?= "d2c1ed3c0cbc0d8dcf429346f7ab2e96d470b504"
-SRCREV_machine_beaglebone ?= "d2c1ed3c0cbc0d8dcf429346f7ab2e96d470b504"
-SRCREV_machine_mpc8315e-rdb ?= "b768fff337e184ea6d714528b779f69b861d4592"
+SRCREV_machine_edgerouter ?= "6648a34e00c55a0634b39e661dd6ba14dd106473"
+SRCREV_machine_beaglebone ?= "6648a34e00c55a0634b39e661dd6ba14dd106473"
+SRCREV_machine_mpc8315e-rdb ?= "5ae8cb247756593767d1bb3828bbb9f2a9b72341"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.10.17"
 LINUX_VERSION_genericx86-64 = "4.10.17"
-LINUX_VERSION_edgerouter = "4.10.15"
-LINUX_VERSION_beaglebone = "4.10.15"
-LINUX_VERSION_mpc8315e-rdb = "4.10.15"
+LINUX_VERSION_edgerouter = "4.10.17"
+LINUX_VERSION_beaglebone = "4.10.17"
+LINUX_VERSION_mpc8315e-rdb = "4.10.17"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 38e5836a8878..72de36a5f3f9 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "268676407913f5d496cde6cbf4052eb5acaf6237"
 SRCREV_machine_genericx86-64 ?= "268676407913f5d496cde6cbf4052eb5acaf6237"
-SRCREV_machine_edgerouter ?= "98b9340a7858f786f5ff7d50021ef83eaad0613d"
-SRCREV_machine_beaglebone ?= "98b9340a7858f786f5ff7d50021ef83eaad0613d"
-SRCREV_machine_mpc8315e-rdb ?= "2bf69589c6d2c1aa0db7efd735b43155a743959a"
+SRCREV_machine_edgerouter ?= "268676407913f5d496cde6cbf4052eb5acaf6237"
+SRCREV_machine_beaglebone ?= "268676407913f5d496cde6cbf4052eb5acaf6237"
+SRCREV_machine_mpc8315e-rdb ?= "b413742a8985a70f4dcfd9c05feb12fcf0f8ca7d"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.4.71"
 LINUX_VERSION_genericx86-64 = "4.4.71"
-LINUX_VERSION_edgerouter = "4.4.67"
-LINUX_VERSION_beaglebone = "4.4.67"
-LINUX_VERSION_mpc8315e-rdb = "4.4.67"
+LINUX_VERSION_edgerouter = "4.4.71"
+LINUX_VERSION_beaglebone = "4.4.71"
+LINUX_VERSION_mpc8315e-rdb = "4.4.71"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
index fbdf26ff12c4..073e92ecade8 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "d2de43e42bb8a270e680aab1c8f2447bff0b3552"
 SRCREV_machine_genericx86-64 ?= "d2de43e42bb8a270e680aab1c8f2447bff0b3552"
-SRCREV_machine_edgerouter ?= "2c31d7a45ae75159a7d991abdeb7002a4493af7f"
-SRCREV_machine_beaglebone ?= "2c31d7a45ae75159a7d991abdeb7002a4493af7f"
-SRCREV_machine_mpc8315e-rdb ?= "fd97646e9431c0f4c09021cbe3189acc25034a98"
+SRCREV_machine_edgerouter ?= "d2de43e42bb8a270e680aab1c8f2447bff0b3552"
+SRCREV_machine_beaglebone ?= "d2de43e42bb8a270e680aab1c8f2447bff0b3552"
+SRCREV_machine_mpc8315e-rdb ?= "9e97ee1670f23b2a8cff3f7a2cd7463e1cd76ee3"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.9.31"
 LINUX_VERSION_genericx86-64 = "4.9.31"
-LINUX_VERSION_edgerouter = "4.9.27"
-LINUX_VERSION_beaglebone = "4.9.27"
-LINUX_VERSION_mpc8315e-rdb = "4.9.27"
+LINUX_VERSION_edgerouter = "4.9.31"
+LINUX_VERSION_beaglebone = "4.9.31"
+LINUX_VERSION_mpc8315e-rdb = "4.9.31"
-- 
2.9.3


