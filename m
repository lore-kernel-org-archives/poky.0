Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AD37E00C28; Sun, 16 Jul 2017 22:55:43 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EA7DE00C22
	for <poky@yoctoproject.org>; Sun, 16 Jul 2017 22:55:41 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v6H5tetq010718
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Sun, 16 Jul 2017 22:55:41 -0700 (PDT)
Received: from pek-lpgbuild2.wrs.com (128.224.153.30) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.294.0; Sun, 16 Jul 2017 22:55:40 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Mon, 17 Jul 2017 13:55:56 +0800
Message-ID: <20170717055556.7511-1-kexin.hao@windriver.com>
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
X-List-Received-Date: Mon, 17 Jul 2017 05:55:43 -0000
Content-Type: text/plain

Bump to the latest stable kernel for 4.1, 4,4 and 4.9.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend | 12 ++++++------
 3 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
index b42b56c6a185..3f65bbd4ad40 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -9,9 +9,9 @@ KMACHINE_genericx86-64 ?= "common-pc-64"
 
 SRCREV_machine_genericx86    ?= "398d1785c6bde0085b99f00f346e199a15fbdcef"
 SRCREV_machine_genericx86-64 ?= "398d1785c6bde0085b99f00f346e199a15fbdcef"
-SRCREV_machine_edgerouter ?= "398d1785c6bde0085b99f00f346e199a15fbdcef"
-SRCREV_machine_beaglebone ?= "79414e2b0e0b7f5b86e358a907f841486f428079"
-SRCREV_machine_mpc8315e-rdb ?= "398d1785c6bde0085b99f00f346e199a15fbdcef"
+SRCREV_machine_edgerouter ?= "e2bea2e96fcbbbb9b1efc3bc7505ac42e39bb5c0"
+SRCREV_machine_beaglebone ?= "243644adea596cda2ef1280a8e57075a1247089f"
+SRCREV_machine_mpc8315e-rdb ?= "e2bea2e96fcbbbb9b1efc3bc7505ac42e39bb5c0"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.1.39"
 LINUX_VERSION_genericx86-64 = "4.1.39"
-LINUX_VERSION_edgerouter = "4.1.39"
-LINUX_VERSION_beaglebone = "4.1.39"
-LINUX_VERSION_mpc8315e-rdb = "4.1.39"
+LINUX_VERSION_edgerouter = "4.1.42"
+LINUX_VERSION_beaglebone = "4.1.42"
+LINUX_VERSION_mpc8315e-rdb = "4.1.42"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 72de36a5f3f9..135d3f2f0e56 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "268676407913f5d496cde6cbf4052eb5acaf6237"
 SRCREV_machine_genericx86-64 ?= "268676407913f5d496cde6cbf4052eb5acaf6237"
-SRCREV_machine_edgerouter ?= "268676407913f5d496cde6cbf4052eb5acaf6237"
-SRCREV_machine_beaglebone ?= "268676407913f5d496cde6cbf4052eb5acaf6237"
-SRCREV_machine_mpc8315e-rdb ?= "b413742a8985a70f4dcfd9c05feb12fcf0f8ca7d"
+SRCREV_machine_edgerouter ?= "2854678e4ccbb4bbd1bb4c243ac3e2571ef9834a"
+SRCREV_machine_beaglebone ?= "2854678e4ccbb4bbd1bb4c243ac3e2571ef9834a"
+SRCREV_machine_mpc8315e-rdb ?= "f5e6bd8e3a6d43ca08a7a06a76547ebef456d67b"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.4.71"
 LINUX_VERSION_genericx86-64 = "4.4.71"
-LINUX_VERSION_edgerouter = "4.4.71"
-LINUX_VERSION_beaglebone = "4.4.71"
-LINUX_VERSION_mpc8315e-rdb = "4.4.71"
+LINUX_VERSION_edgerouter = "4.4.76"
+LINUX_VERSION_beaglebone = "4.4.76"
+LINUX_VERSION_mpc8315e-rdb = "4.4.76"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
index 073e92ecade8..3ac21a702239 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "d2de43e42bb8a270e680aab1c8f2447bff0b3552"
 SRCREV_machine_genericx86-64 ?= "d2de43e42bb8a270e680aab1c8f2447bff0b3552"
-SRCREV_machine_edgerouter ?= "d2de43e42bb8a270e680aab1c8f2447bff0b3552"
-SRCREV_machine_beaglebone ?= "d2de43e42bb8a270e680aab1c8f2447bff0b3552"
-SRCREV_machine_mpc8315e-rdb ?= "9e97ee1670f23b2a8cff3f7a2cd7463e1cd76ee3"
+SRCREV_machine_edgerouter ?= "24572abb2cad341dd79e6aafcb9cdd1a7f8a0c1e"
+SRCREV_machine_beaglebone ?= "24572abb2cad341dd79e6aafcb9cdd1a7f8a0c1e"
+SRCREV_machine_mpc8315e-rdb ?= "2c59ae4503454e29c11c58b585a61dc4a40193cf"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.9.31"
 LINUX_VERSION_genericx86-64 = "4.9.31"
-LINUX_VERSION_edgerouter = "4.9.31"
-LINUX_VERSION_beaglebone = "4.9.31"
-LINUX_VERSION_mpc8315e-rdb = "4.9.31"
+LINUX_VERSION_edgerouter = "4.9.36"
+LINUX_VERSION_beaglebone = "4.9.36"
+LINUX_VERSION_mpc8315e-rdb = "4.9.36"
-- 
2.9.3


