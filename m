Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A1C6E00D24; Tue, 14 Nov 2017 21:08:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00, DATE_IN_FUTURE_24_48,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* 2.0 DATE_IN_FUTURE_24_48 Date: is 24 to 48 hours after Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B644E00C11
	for <poky@yoctoproject.org>; Tue, 14 Nov 2017 21:08:29 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id vAF58Tei006440
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 14 Nov 2017 21:08:29 -0800 (PST)
Received: from pek-lpgbuild2.wrs.com (128.224.153.30) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Tue, 14 Nov 2017 21:08:28 -0800
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Thu, 16 Nov 2017 13:09:24 +0800
Message-ID: <20171116050924.18313-1-kexin.hao@windriver.com>
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
X-List-Received-Date: Wed, 15 Nov 2017 05:08:31 -0000
Content-Type: text/plain

Bump to the latest stable kernel for 4.4, 4.9 and 4.12.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---

This is based on the patches from Alejandro Hernandez:
  git://git.yoctoproject.org/poky-contrib aehs29/genx86_master_kernel

 .../recipes-kernel/linux/linux-yocto_4.12.bbappend           | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend | 12 ++++++------
 3 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
index 2a11ad52a415..d477903cc8a2 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -10,9 +10,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "9cc6b0ae1aad7312e85ac4134398f81c0140de33"
 SRCREV_machine_genericx86-64 ?= "9cc6b0ae1aad7312e85ac4134398f81c0140de33"
-SRCREV_machine_edgerouter ?= "16de0149674ed12d983b77a453852ac2e64584b4"
-SRCREV_machine_beaglebone-yocto ?= "16de0149674ed12d983b77a453852ac2e64584b4"
-SRCREV_machine_mpc8315e-rdb ?= "8c360c7c3eebeb9251ddd8e9cde39908677f5850"
+SRCREV_machine_edgerouter ?= "9cc6b0ae1aad7312e85ac4134398f81c0140de33"
+SRCREV_machine_beaglebone-yocto ?= "9cc6b0ae1aad7312e85ac4134398f81c0140de33"
+SRCREV_machine_mpc8315e-rdb ?= "2371bc95e9e809719cc7c535a50c930b281ea277"
 
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
@@ -23,6 +23,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.12.14"
 LINUX_VERSION_genericx86-64 = "4.12.14"
-LINUX_VERSION_edgerouter = "4.12.12"
-LINUX_VERSION_beaglebone-yocto = "4.12.12"
-LINUX_VERSION_mpc8315e-rdb = "4.12.12"
+LINUX_VERSION_edgerouter = "4.12.14"
+LINUX_VERSION_beaglebone-yocto = "4.12.14"
+LINUX_VERSION_mpc8315e-rdb = "4.12.14"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 4f41a74a6deb..ed20f3495b23 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -10,9 +10,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "f070447fb60b5b939c94583d7c05f55ec2b37acd"
 SRCREV_machine_genericx86-64 ?= "f070447fb60b5b939c94583d7c05f55ec2b37acd"
-SRCREV_machine_edgerouter ?= "b71c7b786aed26c0a1e4eca66f1d874ec017d699"
-SRCREV_machine_beaglebone-yocto ?= "b71c7b786aed26c0a1e4eca66f1d874ec017d699"
-SRCREV_machine_mpc8315e-rdb ?= "b4daa4e9d68862e559d726b0b66b7be605889b9e"
+SRCREV_machine_edgerouter ?= "f070447fb60b5b939c94583d7c05f55ec2b37acd"
+SRCREV_machine_beaglebone-yocto ?= "f070447fb60b5b939c94583d7c05f55ec2b37acd"
+SRCREV_machine_mpc8315e-rdb ?= "df06daf8e6de559934d16e88129bbba0237d0292"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -22,6 +22,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.4.93"
 LINUX_VERSION_genericx86-64 = "4.4.93"
-LINUX_VERSION_edgerouter = "4.4.87"
-LINUX_VERSION_beaglebone-yocto = "4.4.87"
-LINUX_VERSION_mpc8315e-rdb = "4.4.87"
+LINUX_VERSION_edgerouter = "4.4.93"
+LINUX_VERSION_beaglebone-yocto = "4.4.93"
+LINUX_VERSION_mpc8315e-rdb = "4.4.93"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
index f9836cebe1cf..4976d384d5d0 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -10,9 +10,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "d8520539587665c19a0afc97858069184574da66"
 SRCREV_machine_genericx86-64 ?= "d8520539587665c19a0afc97858069184574da66"
-SRCREV_machine_edgerouter ?= "480ee599fb8df712c10dcf4b7aa6398b79f7d404"
-SRCREV_machine_beaglebone-yocto ?= "480ee599fb8df712c10dcf4b7aa6398b79f7d404"
-SRCREV_machine_mpc8315e-rdb ?= "88a703b15a7564704c3dc5d3c1237e0859897655"
+SRCREV_machine_edgerouter ?= "d8520539587665c19a0afc97858069184574da66"
+SRCREV_machine_beaglebone-yocto ?= "d8520539587665c19a0afc97858069184574da66"
+SRCREV_machine_mpc8315e-rdb ?= "782fd06502f9cd1aeb6e15813f84366368737971"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -22,6 +22,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.9.61"
 LINUX_VERSION_genericx86-64 = "4.9.61"
-LINUX_VERSION_edgerouter = "4.9.49"
-LINUX_VERSION_beaglebone-yocto = "4.9.49"
-LINUX_VERSION_mpc8315e-rdb = "4.9.49"
+LINUX_VERSION_edgerouter = "4.9.61"
+LINUX_VERSION_beaglebone-yocto = "4.9.61"
+LINUX_VERSION_mpc8315e-rdb = "4.9.61"
-- 
2.9.3


