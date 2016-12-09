Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0A35E00C19; Thu,  8 Dec 2016 19:10:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A029E00BEB
	for <poky@yoctoproject.org>; Thu,  8 Dec 2016 19:10:33 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id uB93AWJZ030001
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <poky@yoctoproject.org>; Thu, 8 Dec 2016 19:10:32 -0800
Received: from pek-lpggp4.wrs.com (128.224.153.77) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 8 Dec 2016 19:10:31 -0800
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Fri, 9 Dec 2016 11:10:25 +0800
Message-ID: <20161209031025.7072-1-kexin.hao@windriver.com>
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
X-List-Received-Date: Fri, 09 Dec 2016 03:10:36 -0000
Content-Type: text/plain

Boot test for all these boards.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
Hi,

Bruce has done a update for the linux-yocto kernel yesterday. This tried to
make sure that the BSP kernel is synced with the latest linux-yocto in the
M1 release.

 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend | 12 ++++++------
 3 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 24af82e20408..5d500c8bc61e 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -9,9 +9,9 @@ KMACHINE_genericx86-64 ?= "common-pc-64"
 
 SRCREV_machine_genericx86    ?= "f4d0900b2851e829e990e0f64b09ed3b8e355fae"
 SRCREV_machine_genericx86-64 ?= "f4d0900b2851e829e990e0f64b09ed3b8e355fae"
-SRCREV_machine_edgerouter ?= "f358ce2569953d18cf6bd91d0269076938e5b091"
-SRCREV_machine_beaglebone ?= "445f514c11f2f78e052d24f0e01cdf86097b7cd1"
-SRCREV_machine_mpc8315e-rdb ?= "f358ce2569953d18cf6bd91d0269076938e5b091"
+SRCREV_machine_edgerouter ?= "fec49247816d7045aa8abe0047bcd4737af9a853"
+SRCREV_machine_beaglebone ?= "938cc4ac8d36f166c9e2e0517d6ffd6d278fe631"
+SRCREV_machine_mpc8315e-rdb ?= "fec49247816d7045aa8abe0047bcd4737af9a853"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.1.33"
 LINUX_VERSION_genericx86-64 = "4.1.33"
-LINUX_VERSION_edgerouter = "4.1.35"
-LINUX_VERSION_beaglebone = "4.1.35"
-LINUX_VERSION_mpc8315e-rdb = "4.1.35"
+LINUX_VERSION_edgerouter = "4.1.36"
+LINUX_VERSION_beaglebone = "4.1.36"
+LINUX_VERSION_mpc8315e-rdb = "4.1.36"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 06a37d50221b..f7595c3d8c25 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "ca6a08bd7f86ebef11f763d26f787f7d65270473"
 SRCREV_machine_genericx86-64 ?= "ca6a08bd7f86ebef11f763d26f787f7d65270473"
-SRCREV_machine_edgerouter ?= "4c2d50b725d6dd5e90d1151abdbcb7418938be3a"
-SRCREV_machine_beaglebone ?= "4c2d50b725d6dd5e90d1151abdbcb7418938be3a"
-SRCREV_machine_mpc8315e-rdb ?= "994786bb5b050a789f0923471429066f670eb159"
+SRCREV_machine_edgerouter ?= "35482df5d5ba0807eb8a7c40b554bd657e3f9987"
+SRCREV_machine_beaglebone ?= "35482df5d5ba0807eb8a7c40b554bd657e3f9987"
+SRCREV_machine_mpc8315e-rdb ?= "772f071dbdd4b813c921058ddf9cba207237228b"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.4.26"
 LINUX_VERSION_genericx86-64 = "4.4.26"
-LINUX_VERSION_edgerouter = "4.4.32"
-LINUX_VERSION_beaglebone = "4.4.32"
-LINUX_VERSION_mpc8315e-rdb = "4.4.32"
+LINUX_VERSION_edgerouter = "4.4.36"
+LINUX_VERSION_beaglebone = "4.4.36"
+LINUX_VERSION_mpc8315e-rdb = "4.4.36"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
index 2732e1e1ad0e..b526bdbcef69 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "1adf9d36338dc3c63cdbf6f98bcbdc7bba42a794"
 SRCREV_machine_genericx86-64 ?= "1adf9d36338dc3c63cdbf6f98bcbdc7bba42a794"
-SRCREV_machine_edgerouter ?= "21bf6ea681bcf951faceefd531c109078d7bfe73"
-SRCREV_machine_beaglebone ?= "28beb2f59f00de16b2cbdda20e9076c29f55b75a"
-SRCREV_machine_mpc8315e-rdb ?= "cd614092a36f513b071a9461041c1c1bbd75a428"
+SRCREV_machine_edgerouter ?= "6076f16536329465b62bd2037b8582a5e18f85d1"
+SRCREV_machine_beaglebone ?= "85dc85153cd7e3b72d34f967c4c0edde590c79a8"
+SRCREV_machine_mpc8315e-rdb ?= "f73222eb3bbd07a45564397a88dec554e848da7d"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.8.3"
 LINUX_VERSION_genericx86-64 = "4.8.3"
-LINUX_VERSION_edgerouter = "4.8.10"
-LINUX_VERSION_beaglebone = "4.8.10"
-LINUX_VERSION_mpc8315e-rdb = "4.8.10"
+LINUX_VERSION_edgerouter = "4.8.12"
+LINUX_VERSION_beaglebone = "4.8.12"
+LINUX_VERSION_mpc8315e-rdb = "4.8.12"
-- 
2.9.3


