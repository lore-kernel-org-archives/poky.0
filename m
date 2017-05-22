Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08E34E00B74; Sun, 21 May 2017 22:45:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5555E00A38
	for <poky@yoctoproject.org>; Sun, 21 May 2017 22:45:48 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v4M5jl4L020183
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <poky@yoctoproject.org>; Sun, 21 May 2017 22:45:47 -0700
Received: from pek-lpgbuild2.wrs.com (128.224.153.30) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.294.0; Sun, 21 May 2017 22:45:46 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Mon, 22 May 2017 13:49:28 +0800
Message-ID: <20170522054928.12481-1-kexin.hao@windriver.com>
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
X-List-Received-Date: Mon, 22 May 2017 05:45:59 -0000
Content-Type: text/plain

Bump to the latest stable kernel for 4.1, 4.4, 4,9 and 4.10.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 12 ++++++------
 .../recipes-kernel/linux/linux-yocto_4.10.bbappend           | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend | 12 ++++++------
 4 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
index c754933c7dab..5979f8a720d7 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -9,9 +9,9 @@ KMACHINE_genericx86-64 ?= "common-pc-64"
 
 SRCREV_machine_genericx86    ?= "2ce56d130ddff67f43ec857cc51cd347666a0078"
 SRCREV_machine_genericx86-64 ?= "2ce56d130ddff67f43ec857cc51cd347666a0078"
-SRCREV_machine_edgerouter ?= "2ce56d130ddff67f43ec857cc51cd347666a0078"
-SRCREV_machine_beaglebone ?= "235de25be3f143b91dcc69479b770722c508889e"
-SRCREV_machine_mpc8315e-rdb ?= "2ce56d130ddff67f43ec857cc51cd347666a0078"
+SRCREV_machine_edgerouter ?= "398d1785c6bde0085b99f00f346e199a15fbdcef"
+SRCREV_machine_beaglebone ?= "79414e2b0e0b7f5b86e358a907f841486f428079"
+SRCREV_machine_mpc8315e-rdb ?= "398d1785c6bde0085b99f00f346e199a15fbdcef"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.1.38"
 LINUX_VERSION_genericx86-64 = "4.1.38"
-LINUX_VERSION_edgerouter = "4.1.38"
-LINUX_VERSION_beaglebone = "4.1.38"
-LINUX_VERSION_mpc8315e-rdb = "4.1.38"
+LINUX_VERSION_edgerouter = "4.1.39"
+LINUX_VERSION_beaglebone = "4.1.39"
+LINUX_VERSION_mpc8315e-rdb = "4.1.39"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
index 6430548c1153..e1d103190bc7 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "fe0fb8da3d633d802776081e7ff2df73ff2983f2"
 SRCREV_machine_genericx86-64 ?= "fe0fb8da3d633d802776081e7ff2df73ff2983f2"
-SRCREV_machine_edgerouter ?= "fe0fb8da3d633d802776081e7ff2df73ff2983f2"
-SRCREV_machine_beaglebone ?= "fe0fb8da3d633d802776081e7ff2df73ff2983f2"
-SRCREV_machine_mpc8315e-rdb ?= "4a84208c659563e7c2972a7a037934027662347d"
+SRCREV_machine_edgerouter ?= "d2c1ed3c0cbc0d8dcf429346f7ab2e96d470b504"
+SRCREV_machine_beaglebone ?= "d2c1ed3c0cbc0d8dcf429346f7ab2e96d470b504"
+SRCREV_machine_mpc8315e-rdb ?= "b768fff337e184ea6d714528b779f69b861d4592"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.10.9"
 LINUX_VERSION_genericx86-64 = "4.10.9"
-LINUX_VERSION_edgerouter = "4.10.9"
-LINUX_VERSION_beaglebone = "4.10.9"
-LINUX_VERSION_mpc8315e-rdb = "4.10.9"
+LINUX_VERSION_edgerouter = "4.10.15"
+LINUX_VERSION_beaglebone = "4.10.15"
+LINUX_VERSION_mpc8315e-rdb = "4.10.15"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 8f9a8d4ed111..03dfe09bfa82 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "0298d3765a5c474ff5776284d49111276510d4b4"
 SRCREV_machine_genericx86-64 ?= "0298d3765a5c474ff5776284d49111276510d4b4"
-SRCREV_machine_edgerouter ?= "0298d3765a5c474ff5776284d49111276510d4b4"
-SRCREV_machine_beaglebone ?= "0298d3765a5c474ff5776284d49111276510d4b4"
-SRCREV_machine_mpc8315e-rdb ?= "90e5792370e0ae72b69a7006f0727dda4ba7e629"
+SRCREV_machine_edgerouter ?= "98b9340a7858f786f5ff7d50021ef83eaad0613d"
+SRCREV_machine_beaglebone ?= "98b9340a7858f786f5ff7d50021ef83eaad0613d"
+SRCREV_machine_mpc8315e-rdb ?= "2bf69589c6d2c1aa0db7efd735b43155a743959a"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.4.60"
 LINUX_VERSION_genericx86-64 = "4.4.60"
-LINUX_VERSION_edgerouter = "4.4.60"
-LINUX_VERSION_beaglebone = "4.4.60"
-LINUX_VERSION_mpc8315e-rdb = "4.4.60"
+LINUX_VERSION_edgerouter = "4.4.67"
+LINUX_VERSION_beaglebone = "4.4.67"
+LINUX_VERSION_mpc8315e-rdb = "4.4.67"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
index d518826d7b9c..16f2957e4973 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "81055b89bd32414ecaf95156ce9a5fa6643e530a"
 SRCREV_machine_genericx86-64 ?= "81055b89bd32414ecaf95156ce9a5fa6643e530a"
-SRCREV_machine_edgerouter ?= "81055b89bd32414ecaf95156ce9a5fa6643e530a"
-SRCREV_machine_beaglebone ?= "81055b89bd32414ecaf95156ce9a5fa6643e530a"
-SRCREV_machine_mpc8315e-rdb ?= "c74de53c637dabeeb76e556e85ea37ec7f6ffb13"
+SRCREV_machine_edgerouter ?= "2c31d7a45ae75159a7d991abdeb7002a4493af7f"
+SRCREV_machine_beaglebone ?= "2c31d7a45ae75159a7d991abdeb7002a4493af7f"
+SRCREV_machine_mpc8315e-rdb ?= "fd97646e9431c0f4c09021cbe3189acc25034a98"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.9.21"
 LINUX_VERSION_genericx86-64 = "4.9.21"
-LINUX_VERSION_edgerouter = "4.9.21"
-LINUX_VERSION_beaglebone = "4.9.21"
-LINUX_VERSION_mpc8315e-rdb = "4.9.21"
+LINUX_VERSION_edgerouter = "4.9.27"
+LINUX_VERSION_beaglebone = "4.9.27"
+LINUX_VERSION_mpc8315e-rdb = "4.9.27"
-- 
2.9.3


