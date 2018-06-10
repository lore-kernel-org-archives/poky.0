Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84A14E029B8; Sun, 10 Jun 2018 00:08:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E215E00EF3
	for <poky@yoctoproject.org>; Sun, 10 Jun 2018 00:08:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w5A78Jsm021834
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Sun, 10 Jun 2018 00:08:40 -0700
Received: from pek-lpggp6.wrs.com (128.224.153.40) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.399.0;
	Sun, 10 Jun 2018 00:08:21 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Sun, 10 Jun 2018 15:06:26 +0800
Message-ID: <20180610070626.84093-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.14.3
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
X-List-Received-Date: Sun, 10 Jun 2018 07:08:51 -0000
Content-Type: text/plain

Bump to the latest stable kernel for 4.12, 4.14 and 4.15.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---

This is based on the patch [1] from Anuj Mittal.

[1] https://lists.yoctoproject.org/pipermail/poky/2018-June/011384.html

 .../recipes-kernel/linux/linux-yocto_4.12.bbappend           | 12 ++++++------
 .../recipes-kernel/linux/linux-yocto_4.14.bbappend           | 12 ++++++------
 .../recipes-kernel/linux/linux-yocto_4.15.bbappend           | 12 ++++++------
 3 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
index 4f040dcdb354..642809a3861e 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -10,9 +10,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "7e7ac3f0fda9707e94b3311a4510ae080cd86238"
 SRCREV_machine_genericx86-64 ?= "7e7ac3f0fda9707e94b3311a4510ae080cd86238"
-SRCREV_machine_edgerouter ?= "97e710ef0545c19d3c10bd81a61bdca9fe543b81"
-SRCREV_machine_beaglebone-yocto ?= "97e710ef0545c19d3c10bd81a61bdca9fe543b81"
-SRCREV_machine_mpc8315e-rdb ?= "55fcfbee2560f57a490c5724ac5b5cb49bacb01c"
+SRCREV_machine_edgerouter ?= "89e003746eee54e86bc78e1170e7029d6597b583"
+SRCREV_machine_beaglebone-yocto ?= "89e003746eee54e86bc78e1170e7029d6597b583"
+SRCREV_machine_mpc8315e-rdb ?= "7080a5fe6af338576207fff999ea2ca35e689997"
 
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
@@ -23,6 +23,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.12.24"
 LINUX_VERSION_genericx86-64 = "4.12.24"
-LINUX_VERSION_edgerouter = "4.12.21"
-LINUX_VERSION_beaglebone-yocto = "4.12.21"
-LINUX_VERSION_mpc8315e-rdb = "4.12.21"
+LINUX_VERSION_edgerouter = "4.12.24"
+LINUX_VERSION_beaglebone-yocto = "4.12.24"
+LINUX_VERSION_mpc8315e-rdb = "4.12.24"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
index 41bcf0509061..0099364154f4 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
@@ -10,9 +10,9 @@ KMACHINE_beaglebone-yocto ?= "beaglebone"
 
 SRCREV_machine_genericx86    ?= "2bf00ed1aee9c26b48c26b10c731c2f8970d50c2"
 SRCREV_machine_genericx86-64 ?= "2bf00ed1aee9c26b48c26b10c731c2f8970d50c2"
-SRCREV_machine_edgerouter ?= "f2dc94f77d19ab65a832bad6f42662c509d2ef9e"
-SRCREV_machine_beaglebone-yocto ?= "6c1a02d4a9c227eca356911715a52cf92457ec16"
-SRCREV_machine_mpc8315e-rdb ?= "7e9a0b017be7b685e094638f4bdaa33a7df8f7c0"
+SRCREV_machine_edgerouter ?= "5a43b07d1800543dd4cd416c4c930514592c152d"
+SRCREV_machine_beaglebone-yocto ?= "d62ddfa26a59c83f6128790b7aa2baadc04d2960"
+SRCREV_machine_mpc8315e-rdb ?= "80a106ecf737b69864e07b955eccb62f809cf120"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -22,6 +22,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.14.48"
 LINUX_VERSION_genericx86-64 = "4.14.48"
-LINUX_VERSION_edgerouter = "4.14.30"
-LINUX_VERSION_beaglebone-yocto = "4.14.30"
-LINUX_VERSION_mpc8315e-rdb = "4.14.30"
+LINUX_VERSION_edgerouter = "4.14.48"
+LINUX_VERSION_beaglebone-yocto = "4.14.48"
+LINUX_VERSION_mpc8315e-rdb = "4.14.48"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend
index a9f23aea7471..6e402ff31b0e 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend
@@ -10,9 +10,9 @@ KMACHINE_beaglebone-yocto ?= "beaglebone"
 
 SRCREV_machine_genericx86    ?= "51273ff79f4ad930f4a788257f58e1266cb236e3"
 SRCREV_machine_genericx86-64 ?= "51273ff79f4ad930f4a788257f58e1266cb236e3"
-SRCREV_machine_edgerouter ?= "f73fd8783a3e7529902366ba75aafb81c19ec3c9"
-SRCREV_machine_beaglebone-yocto ?= "f73fd8783a3e7529902366ba75aafb81c19ec3c9"
-SRCREV_machine_mpc8315e-rdb ?= "cc2711c4f3b83b5cd78358e7c949fdbb6076e25b"
+SRCREV_machine_edgerouter ?= "683cfd2540fcb659774458352e8fb121ec764e0e"
+SRCREV_machine_beaglebone-yocto ?= "683cfd2540fcb659774458352e8fb121ec764e0e"
+SRCREV_machine_mpc8315e-rdb ?= "0b32edc46dfe7c40bf5451e9b7533c823bb2c6c4"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -22,6 +22,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.15.18"
 LINUX_VERSION_genericx86-64 = "4.15.18"
-LINUX_VERSION_edgerouter = "4.15.13"
-LINUX_VERSION_beaglebone-yocto = "4.15.13"
-LINUX_VERSION_mpc8315e-rdb = "4.15.13"
+LINUX_VERSION_edgerouter = "4.15.18"
+LINUX_VERSION_beaglebone-yocto = "4.15.18"
+LINUX_VERSION_mpc8315e-rdb = "4.15.18"
-- 
2.14.3


