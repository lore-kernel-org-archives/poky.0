Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02709E00E23; Thu,  1 Feb 2018 17:36:59 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8145E00E11
	for <poky@yoctoproject.org>; Thu,  1 Feb 2018 17:36:57 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w121arHP026131
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 1 Feb 2018 17:36:53 -0800 (PST)
Received: from pek-lpgbuild2.wrs.com (128.224.153.30) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Thu, 1 Feb 2018 17:36:52 -0800
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Fri, 2 Feb 2018 09:35:21 +0800
Message-ID: <20180202013521.24041-1-kexin.hao@windriver.com>
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
X-List-Received-Date: Fri, 02 Feb 2018 01:36:59 -0000
Content-Type: text/plain

Bump to the latest stable kernel for 4.4, 4.9 and 4.12.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend           | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend | 12 ++++++------
 3 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
index 1c0a3d6a0261..237587478b92 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -10,9 +10,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "257f843ea367744620f1d92910afd2f454e31483"
 SRCREV_machine_genericx86-64 ?= "257f843ea367744620f1d92910afd2f454e31483"
-SRCREV_machine_edgerouter ?= "558fe84d691abbb8c8f5e149aa29ef4a478d0128"
-SRCREV_machine_beaglebone-yocto ?= "558fe84d691abbb8c8f5e149aa29ef4a478d0128"
-SRCREV_machine_mpc8315e-rdb ?= "f3c9a151c503869e39cea788b504b26b21e83ea4"
+SRCREV_machine_edgerouter ?= "257f843ea367744620f1d92910afd2f454e31483"
+SRCREV_machine_beaglebone-yocto ?= "257f843ea367744620f1d92910afd2f454e31483"
+SRCREV_machine_mpc8315e-rdb ?= "014560874f9eb2a86138c9cc35046ff1720485e1"
 
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
@@ -23,6 +23,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.12.19"
 LINUX_VERSION_genericx86-64 = "4.12.19"
-LINUX_VERSION_edgerouter = "4.12.18"
-LINUX_VERSION_beaglebone-yocto = "4.12.18"
-LINUX_VERSION_mpc8315e-rdb = "4.12.18"
+LINUX_VERSION_edgerouter = "4.12.19"
+LINUX_VERSION_beaglebone-yocto = "4.12.19"
+LINUX_VERSION_mpc8315e-rdb = "4.12.19"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index fa271e3e6d89..8b2c03747a37 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -10,9 +10,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "4d31a8b7661509ff1044abcf9050750cc2478e20"
 SRCREV_machine_genericx86-64 ?= "4d31a8b7661509ff1044abcf9050750cc2478e20"
-SRCREV_machine_edgerouter ?= "f070447fb60b5b939c94583d7c05f55ec2b37acd"
-SRCREV_machine_beaglebone-yocto ?= "f070447fb60b5b939c94583d7c05f55ec2b37acd"
-SRCREV_machine_mpc8315e-rdb ?= "df06daf8e6de559934d16e88129bbba0237d0292"
+SRCREV_machine_edgerouter ?= "4d31a8b7661509ff1044abcf9050750cc2478e20"
+SRCREV_machine_beaglebone-yocto ?= "4d31a8b7661509ff1044abcf9050750cc2478e20"
+SRCREV_machine_mpc8315e-rdb ?= "70120c0a6b0f88122799705114a99a15bf0113ce"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -22,6 +22,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.4.113"
 LINUX_VERSION_genericx86-64 = "4.4.113"
-LINUX_VERSION_edgerouter = "4.4.93"
-LINUX_VERSION_beaglebone-yocto = "4.4.93"
-LINUX_VERSION_mpc8315e-rdb = "4.4.93"
+LINUX_VERSION_edgerouter = "4.4.113"
+LINUX_VERSION_beaglebone-yocto = "4.4.113"
+LINUX_VERSION_mpc8315e-rdb = "4.4.113"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
index c0f8a4d1f7dd..96b60bb3fc99 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -10,9 +10,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "f7a6d45fff853173bfbf61706aeffcd1d1e99467"
 SRCREV_machine_genericx86-64 ?= "f7a6d45fff853173bfbf61706aeffcd1d1e99467"
-SRCREV_machine_edgerouter ?= "5174e51fa08d0942ddcf8b19540e90ec10eeb621"
-SRCREV_machine_beaglebone-yocto ?= "5174e51fa08d0942ddcf8b19540e90ec10eeb621"
-SRCREV_machine_mpc8315e-rdb ?= "98afa8ec2086fb2262d43040094e6c786d3847ba"
+SRCREV_machine_edgerouter ?= "f7a6d45fff853173bfbf61706aeffcd1d1e99467"
+SRCREV_machine_beaglebone-yocto ?= "f7a6d45fff853173bfbf61706aeffcd1d1e99467"
+SRCREV_machine_mpc8315e-rdb ?= "195a857a0e42150b940dfcbdf857be66e05dd003"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -22,6 +22,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.9.78"
 LINUX_VERSION_genericx86-64 = "4.9.78"
-LINUX_VERSION_edgerouter = "4.9.65"
-LINUX_VERSION_beaglebone-yocto = "4.9.65"
-LINUX_VERSION_mpc8315e-rdb = "4.9.65"
+LINUX_VERSION_edgerouter = "4.9.78"
+LINUX_VERSION_beaglebone-yocto = "4.9.78"
+LINUX_VERSION_mpc8315e-rdb = "4.9.78"
-- 
2.9.3


