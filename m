Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C12F3E00D5F; Sat, 23 Dec 2017 04:41:03 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51681E00D48
	for <poky@yoctoproject.org>; Sat, 23 Dec 2017 04:41:02 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id vBNCf1Og013396
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 23 Dec 2017 04:41:01 -0800 (PST)
Received: from pek-lpgbuild2.wrs.com (128.224.153.30) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Sat, 23 Dec 2017 04:41:00 -0800
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Sat, 23 Dec 2017 20:40:02 +0800
Message-ID: <20171223124002.5899-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.9.3
MIME-Version: 1.0
Cc: saul.wold@intel.com
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
X-List-Received-Date: Sat, 23 Dec 2017 12:41:03 -0000
Content-Type: text/plain

Bump to the latest stable kernel for 4.4, 4.9 and 4.12.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend           | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend | 12 ++++++------
 3 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
index 2609129e3c7b..dc316ba7d748 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -10,9 +10,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "16de0149674ed12d983b77a453852ac2e64584b4"
 SRCREV_machine_genericx86-64 ?= "16de0149674ed12d983b77a453852ac2e64584b4"
-SRCREV_machine_edgerouter ?= "16de0149674ed12d983b77a453852ac2e64584b4"
-SRCREV_machine_beaglebone-yocto ?= "16de0149674ed12d983b77a453852ac2e64584b4"
-SRCREV_machine_mpc8315e-rdb ?= "8c360c7c3eebeb9251ddd8e9cde39908677f5850"
+SRCREV_machine_edgerouter ?= "558fe84d691abbb8c8f5e149aa29ef4a478d0128"
+SRCREV_machine_beaglebone-yocto ?= "558fe84d691abbb8c8f5e149aa29ef4a478d0128"
+SRCREV_machine_mpc8315e-rdb ?= "f3c9a151c503869e39cea788b504b26b21e83ea4"
 
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
@@ -23,6 +23,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.12.12"
 LINUX_VERSION_genericx86-64 = "4.12.12"
-LINUX_VERSION_edgerouter = "4.12.12"
-LINUX_VERSION_beaglebone-yocto = "4.12.12"
-LINUX_VERSION_mpc8315e-rdb = "4.12.12"
+LINUX_VERSION_edgerouter = "4.12.18"
+LINUX_VERSION_beaglebone-yocto = "4.12.18"
+LINUX_VERSION_mpc8315e-rdb = "4.12.18"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 5725c879df40..4411c755ce45 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -10,9 +10,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "b71c7b786aed26c0a1e4eca66f1d874ec017d699"
 SRCREV_machine_genericx86-64 ?= "b71c7b786aed26c0a1e4eca66f1d874ec017d699"
-SRCREV_machine_edgerouter ?= "b71c7b786aed26c0a1e4eca66f1d874ec017d699"
-SRCREV_machine_beaglebone-yocto ?= "b71c7b786aed26c0a1e4eca66f1d874ec017d699"
-SRCREV_machine_mpc8315e-rdb ?= "b4daa4e9d68862e559d726b0b66b7be605889b9e"
+SRCREV_machine_edgerouter ?= "f070447fb60b5b939c94583d7c05f55ec2b37acd"
+SRCREV_machine_beaglebone-yocto ?= "f070447fb60b5b939c94583d7c05f55ec2b37acd"
+SRCREV_machine_mpc8315e-rdb ?= "df06daf8e6de559934d16e88129bbba0237d0292"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -22,6 +22,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.4.87"
 LINUX_VERSION_genericx86-64 = "4.4.87"
-LINUX_VERSION_edgerouter = "4.4.87"
-LINUX_VERSION_beaglebone-yocto = "4.4.87"
-LINUX_VERSION_mpc8315e-rdb = "4.4.87"
+LINUX_VERSION_edgerouter = "4.4.93"
+LINUX_VERSION_beaglebone-yocto = "4.4.93"
+LINUX_VERSION_mpc8315e-rdb = "4.4.93"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
index 63538de73540..27cdac6566ea 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -10,9 +10,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "480ee599fb8df712c10dcf4b7aa6398b79f7d404"
 SRCREV_machine_genericx86-64 ?= "480ee599fb8df712c10dcf4b7aa6398b79f7d404"
-SRCREV_machine_edgerouter ?= "480ee599fb8df712c10dcf4b7aa6398b79f7d404"
-SRCREV_machine_beaglebone-yocto ?= "480ee599fb8df712c10dcf4b7aa6398b79f7d404"
-SRCREV_machine_mpc8315e-rdb ?= "88a703b15a7564704c3dc5d3c1237e0859897655"
+SRCREV_machine_edgerouter ?= "5174e51fa08d0942ddcf8b19540e90ec10eeb621"
+SRCREV_machine_beaglebone-yocto ?= "5174e51fa08d0942ddcf8b19540e90ec10eeb621"
+SRCREV_machine_mpc8315e-rdb ?= "98afa8ec2086fb2262d43040094e6c786d3847ba"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -22,6 +22,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.9.49"
 LINUX_VERSION_genericx86-64 = "4.9.49"
-LINUX_VERSION_edgerouter = "4.9.49"
-LINUX_VERSION_beaglebone-yocto = "4.9.49"
-LINUX_VERSION_mpc8315e-rdb = "4.9.49"
+LINUX_VERSION_edgerouter = "4.9.65"
+LINUX_VERSION_beaglebone-yocto = "4.9.65"
+LINUX_VERSION_mpc8315e-rdb = "4.9.65"
-- 
2.9.3


