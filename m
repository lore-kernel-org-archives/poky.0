Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34CACE00D08; Tue,  6 Dec 2016 21:52:56 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95A97E00CFC
	for <poky@yoctoproject.org>; Tue,  6 Dec 2016 21:52:54 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id uB75qrAY026155
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 6 Dec 2016 21:52:53 -0800 (PST)
Received: from pek-lpggp4.wrs.com (128.224.153.77) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 6 Dec 2016 21:52:52 -0800
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Wed, 7 Dec 2016 13:52:47 +0800
Message-ID: <20161207055247.20242-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.9.3
MIME-Version: 1.0
Subject: [PATCH] meta-yocto-bsp: bump to the latest stable linux kernel for the non-x86 BSPs
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
X-List-Received-Date: Wed, 07 Dec 2016 05:52:56 -0000
Content-Type: text/plain

Boot test for all these boards.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend | 12 ++++++------
 3 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 74b9c7c16442..24af82e20408 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -9,9 +9,9 @@ KMACHINE_genericx86-64 ?= "common-pc-64"
 
 SRCREV_machine_genericx86    ?= "f4d0900b2851e829e990e0f64b09ed3b8e355fae"
 SRCREV_machine_genericx86-64 ?= "f4d0900b2851e829e990e0f64b09ed3b8e355fae"
-SRCREV_machine_edgerouter ?= "f4d0900b2851e829e990e0f64b09ed3b8e355fae"
-SRCREV_machine_beaglebone ?= "12532e753b50997690923e03edb3ac3368817a26"
-SRCREV_machine_mpc8315e-rdb ?= "f4d0900b2851e829e990e0f64b09ed3b8e355fae"
+SRCREV_machine_edgerouter ?= "f358ce2569953d18cf6bd91d0269076938e5b091"
+SRCREV_machine_beaglebone ?= "445f514c11f2f78e052d24f0e01cdf86097b7cd1"
+SRCREV_machine_mpc8315e-rdb ?= "f358ce2569953d18cf6bd91d0269076938e5b091"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.1.33"
 LINUX_VERSION_genericx86-64 = "4.1.33"
-LINUX_VERSION_edgerouter = "4.1.33"
-LINUX_VERSION_beaglebone = "4.1.33"
-LINUX_VERSION_mpc8315e-rdb = "4.1.33"
+LINUX_VERSION_edgerouter = "4.1.35"
+LINUX_VERSION_beaglebone = "4.1.35"
+LINUX_VERSION_mpc8315e-rdb = "4.1.35"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 3f0c4dac1be9..06a37d50221b 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "ca6a08bd7f86ebef11f763d26f787f7d65270473"
 SRCREV_machine_genericx86-64 ?= "ca6a08bd7f86ebef11f763d26f787f7d65270473"
-SRCREV_machine_edgerouter ?= "ca6a08bd7f86ebef11f763d26f787f7d65270473"
-SRCREV_machine_beaglebone ?= "ca6a08bd7f86ebef11f763d26f787f7d65270473"
-SRCREV_machine_mpc8315e-rdb ?= "7fa42ad9a43ca4bb1e578e208ffeddae2d6150e2"
+SRCREV_machine_edgerouter ?= "4c2d50b725d6dd5e90d1151abdbcb7418938be3a"
+SRCREV_machine_beaglebone ?= "4c2d50b725d6dd5e90d1151abdbcb7418938be3a"
+SRCREV_machine_mpc8315e-rdb ?= "994786bb5b050a789f0923471429066f670eb159"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.4.26"
 LINUX_VERSION_genericx86-64 = "4.4.26"
-LINUX_VERSION_edgerouter = "4.4.26"
-LINUX_VERSION_beaglebone = "4.4.26"
-LINUX_VERSION_mpc8315e-rdb = "4.4.26"
+LINUX_VERSION_edgerouter = "4.4.32"
+LINUX_VERSION_beaglebone = "4.4.32"
+LINUX_VERSION_mpc8315e-rdb = "4.4.32"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
index 14fa38ba199c..2732e1e1ad0e 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "1adf9d36338dc3c63cdbf6f98bcbdc7bba42a794"
 SRCREV_machine_genericx86-64 ?= "1adf9d36338dc3c63cdbf6f98bcbdc7bba42a794"
-SRCREV_machine_edgerouter ?= "1adf9d36338dc3c63cdbf6f98bcbdc7bba42a794"
-SRCREV_machine_beaglebone ?= "1adf9d36338dc3c63cdbf6f98bcbdc7bba42a794"
-SRCREV_machine_mpc8315e-rdb ?= "4be88b03f6648004e74b68044fa2b05e81cf9a1b"
+SRCREV_machine_edgerouter ?= "21bf6ea681bcf951faceefd531c109078d7bfe73"
+SRCREV_machine_beaglebone ?= "28beb2f59f00de16b2cbdda20e9076c29f55b75a"
+SRCREV_machine_mpc8315e-rdb ?= "cd614092a36f513b071a9461041c1c1bbd75a428"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.8.3"
 LINUX_VERSION_genericx86-64 = "4.8.3"
-LINUX_VERSION_edgerouter = "4.8.3"
-LINUX_VERSION_beaglebone = "4.8.3"
-LINUX_VERSION_mpc8315e-rdb = "4.8.3"
+LINUX_VERSION_edgerouter = "4.8.10"
+LINUX_VERSION_beaglebone = "4.8.10"
+LINUX_VERSION_mpc8315e-rdb = "4.8.10"
-- 
2.9.3


