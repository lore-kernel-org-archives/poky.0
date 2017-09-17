Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6BC0E00C60; Sat, 16 Sep 2017 23:22:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D08DEE00BE2
	for <poky@yoctoproject.org>; Sat, 16 Sep 2017 23:22:15 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v8H6MEbZ020132
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <poky@yoctoproject.org>; Sat, 16 Sep 2017 23:22:14 -0700
Received: from pek-lpgbuild2.wrs.com (128.224.153.30) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Sat, 16 Sep 2017 23:22:13 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Sun, 17 Sep 2017 14:27:37 +0800
Message-ID: <20170917062737.4658-1-kexin.hao@windriver.com>
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
X-List-Received-Date: Sun, 17 Sep 2017 06:22:16 -0000
Content-Type: text/plain

Bump to the latest stable kernel for 4.4, 4.9, 4.10 and 4.12.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_4.10.bbappend           |  6 +++---
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend           | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend | 12 ++++++------
 4 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
index 19769e68bb05..791233b845da 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "f4ba3db6e599ed41d1c676f9086ad8b97fd55046"
 SRCREV_machine_genericx86-64 ?= "f4ba3db6e599ed41d1c676f9086ad8b97fd55046"
-SRCREV_machine_edgerouter ?= "f4ba3db6e599ed41d1c676f9086ad8b97fd55046"
-SRCREV_machine_beaglebone ?= "f4ba3db6e599ed41d1c676f9086ad8b97fd55046"
-SRCREV_machine_mpc8315e-rdb ?= "e6f168eef50f35513249d120db188453768017ec"
+SRCREV_machine_edgerouter ?= "c1d8c4408b8aedd88eeb6ccc89ce834dd41b3f09"
+SRCREV_machine_beaglebone ?= "c1d8c4408b8aedd88eeb6ccc89ce834dd41b3f09"
+SRCREV_machine_mpc8315e-rdb ?= "c388fdfc9a1e06b22ca3533a023f4d67a6fc1e9b"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
index ef21c9162fa1..06ea8f89c3cb 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "16de0149674ed12d983b77a453852ac2e64584b4"
 SRCREV_machine_genericx86-64 ?= "16de0149674ed12d983b77a453852ac2e64584b4"
-SRCREV_machine_edgerouter ?= "b5c8cfda2dfe296410d51e131289fb09c69e1e7d"
-SRCREV_machine_beaglebone ?= "b5c8cfda2dfe296410d51e131289fb09c69e1e7d"
-SRCREV_machine_mpc8315e-rdb ?= "2d1d010240846d7bff15d1fcc0cb6eb8a22fc78a"
+SRCREV_machine_edgerouter ?= "16de0149674ed12d983b77a453852ac2e64584b4"
+SRCREV_machine_beaglebone ?= "16de0149674ed12d983b77a453852ac2e64584b4"
+SRCREV_machine_mpc8315e-rdb ?= "8c360c7c3eebeb9251ddd8e9cde39908677f5850"
 
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
@@ -22,6 +22,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.12.12"
 LINUX_VERSION_genericx86-64 = "4.12.12"
-LINUX_VERSION_edgerouter = "4.12.10"
-LINUX_VERSION_beaglebone = "4.12.10"
-LINUX_VERSION_mpc8315e-rdb = "4.12.10"
+LINUX_VERSION_edgerouter = "4.12.12"
+LINUX_VERSION_beaglebone = "4.12.12"
+LINUX_VERSION_mpc8315e-rdb = "4.12.12"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index f2c9e526c083..fd1b8db85d7c 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "0327f8213797c4885f86aec26cf55aeef5834180"
 SRCREV_machine_genericx86-64 ?= "0327f8213797c4885f86aec26cf55aeef5834180"
-SRCREV_machine_edgerouter ?= "0327f8213797c4885f86aec26cf55aeef5834180"
-SRCREV_machine_beaglebone ?= "0327f8213797c4885f86aec26cf55aeef5834180"
-SRCREV_machine_mpc8315e-rdb ?= "9313779872b1c0888cd94f6116fb1819908596e8"
+SRCREV_machine_edgerouter ?= "b71c7b786aed26c0a1e4eca66f1d874ec017d699"
+SRCREV_machine_beaglebone ?= "b71c7b786aed26c0a1e4eca66f1d874ec017d699"
+SRCREV_machine_mpc8315e-rdb ?= "b4daa4e9d68862e559d726b0b66b7be605889b9e"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.4.85"
 LINUX_VERSION_genericx86-64 = "4.4.85"
-LINUX_VERSION_edgerouter = "4.4.85"
-LINUX_VERSION_beaglebone = "4.4.85"
-LINUX_VERSION_mpc8315e-rdb = "4.4.85"
+LINUX_VERSION_edgerouter = "4.4.87"
+LINUX_VERSION_beaglebone = "4.4.87"
+LINUX_VERSION_mpc8315e-rdb = "4.4.87"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
index c14fefe91b76..0cdaf28d27c9 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "cf9a7dd9f41a32c10d19a51497463d6ec2991107"
 SRCREV_machine_genericx86-64 ?= "cf9a7dd9f41a32c10d19a51497463d6ec2991107"
-SRCREV_machine_edgerouter ?= "cf9a7dd9f41a32c10d19a51497463d6ec2991107"
-SRCREV_machine_beaglebone ?= "cf9a7dd9f41a32c10d19a51497463d6ec2991107"
-SRCREV_machine_mpc8315e-rdb ?= "06cc7d23e026522a996d3a26e9b013f0a5f7e6fa"
+SRCREV_machine_edgerouter ?= "480ee599fb8df712c10dcf4b7aa6398b79f7d404"
+SRCREV_machine_beaglebone ?= "480ee599fb8df712c10dcf4b7aa6398b79f7d404"
+SRCREV_machine_mpc8315e-rdb ?= "88a703b15a7564704c3dc5d3c1237e0859897655"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.9.46"
 LINUX_VERSION_genericx86-64 = "4.9.46"
-LINUX_VERSION_edgerouter = "4.9.46"
-LINUX_VERSION_beaglebone = "4.9.46"
-LINUX_VERSION_mpc8315e-rdb = "4.9.46"
+LINUX_VERSION_edgerouter = "4.9.49"
+LINUX_VERSION_beaglebone = "4.9.49"
+LINUX_VERSION_mpc8315e-rdb = "4.9.49"
-- 
2.9.3


