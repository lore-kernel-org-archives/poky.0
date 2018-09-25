Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56F1AE00B43; Tue, 25 Sep 2018 00:30:16 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABF36E00994
	for <poky@yoctoproject.org>; Tue, 25 Sep 2018 00:30:15 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w8P7UFnR015859
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 25 Sep 2018 00:30:15 -0700 (PDT)
Received: from pek-lpggp6.wrs.com (128.224.153.40) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Tue, 25 Sep 2018 00:30:14 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 25 Sep 2018 15:23:17 +0800
Message-ID: <20180925072317.266760-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.14.4
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
X-List-Received-Date: Tue, 25 Sep 2018 07:30:16 -0000
Content-Type: text/plain

Bump to the latest stable kernel for 4.14 and 4.18.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_4.14.bbappend           | 12 ++++++------
 .../recipes-kernel/linux/linux-yocto_4.18.bbappend           | 12 ++++++------
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
index 3918cab01f03..dbfb7b09776f 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
@@ -10,9 +10,9 @@ KMACHINE_beaglebone-yocto ?= "beaglebone"
 
 SRCREV_machine_genericx86    ?= "78a16a4d8cfd58f91be412797aac248e811d083b"
 SRCREV_machine_genericx86-64 ?= "78a16a4d8cfd58f91be412797aac248e811d083b"
-SRCREV_machine_edgerouter ?= "04043b48eb792c8baa310840307d480a28a43053"
-SRCREV_machine_beaglebone-yocto ?= "d62ddfa26a59c83f6128790b7aa2baadc04d2960"
-SRCREV_machine_mpc8315e-rdb ?= "80a106ecf737b69864e07b955eccb62f809cf120"
+SRCREV_machine_edgerouter ?= "e06bfa18c727bd0e6e10cf26d9f161e4c791f52b"
+SRCREV_machine_beaglebone-yocto ?= "b8805de77dcf8f59d8368fee4921c146c1300a6a"
+SRCREV_machine_mpc8315e-rdb ?= "f88e87360b10f8fbd853a7d412982e6620f3f96d"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -22,6 +22,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.14.71"
 LINUX_VERSION_genericx86-64 = "4.14.71"
-LINUX_VERSION_edgerouter = "4.14.48"
-LINUX_VERSION_beaglebone-yocto = "4.14.48"
-LINUX_VERSION_mpc8315e-rdb = "4.14.48"
+LINUX_VERSION_edgerouter = "4.14.71"
+LINUX_VERSION_beaglebone-yocto = "4.14.71"
+LINUX_VERSION_mpc8315e-rdb = "4.14.71"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
index 4901913a1672..9910c0518652 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
@@ -10,9 +10,9 @@ KMACHINE_beaglebone-yocto ?= "beaglebone"
 
 SRCREV_machine_genericx86    ?= "0cdc8564c61958a39704d97e008120bd7c762f60"
 SRCREV_machine_genericx86-64 ?= "0cdc8564c61958a39704d97e008120bd7c762f60"
-SRCREV_machine_edgerouter ?= "eba03655e8e436ef6090100423bcea43e4911478"
-SRCREV_machine_beaglebone-yocto ?= "eba03655e8e436ef6090100423bcea43e4911478"
-SRCREV_machine_mpc8315e-rdb ?= "193513391ec14cb5402fcc4ed7bb2b49193842bb"
+SRCREV_machine_edgerouter ?= "0cdc8564c61958a39704d97e008120bd7c762f60"
+SRCREV_machine_beaglebone-yocto ?= "0cdc8564c61958a39704d97e008120bd7c762f60"
+SRCREV_machine_mpc8315e-rdb ?= "20be2231bb047b02248d7f965c1c3af0c6be3a5e"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -22,6 +22,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.18.9"
 LINUX_VERSION_genericx86-64 = "4.18.9"
-LINUX_VERSION_edgerouter = "4.18.3"
-LINUX_VERSION_beaglebone-yocto = "4.18.3"
-LINUX_VERSION_mpc8315e-rdb = "4.18.3"
+LINUX_VERSION_edgerouter = "4.18.9"
+LINUX_VERSION_beaglebone-yocto = "4.18.9"
+LINUX_VERSION_mpc8315e-rdb = "4.18.9"
-- 
2.14.4


