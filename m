Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 2C4EBE00498
	for <poky@yoctoproject.org>; Tue, 26 Feb 2013 21:11:30 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r1R5BTWE000797
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 26 Feb 2013 21:11:29 -0800 (PST)
Received: from yow-bashfiel-d3.corp.ad.wrs.com (128.224.145.220) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.328.9; Tue, 26 Feb 2013 21:11:28 -0800
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Wed, 27 Feb 2013 00:11:26 -0500
Message-ID: <a5975972bcef095c09be5b30830a268a73eb78e0.1361941712.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1361941712.git.bruce.ashfield@windriver.com>
References: <cover.1361941712.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 1/1] meta-yocto/linux-yocto: update qemu BSPs to 3.8 kernel
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
X-List-Received-Date: Wed, 27 Feb 2013 05:11:30 -0000
Content-Type: text/plain

Change linux-yocto preferred version to 3.8 for the qemu BSPs. The
non-qemu default stays at 3.4 until the hardware reference platforms
can be validated on the 3.8 kernel.

At the same time, we remove the 3.0 linux-yocto bbappends, since they
have been removed in the core layers and will cause dangling append
problems if left in place.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |   25 --------------------
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   15 ------------
 .../recipes-kernel/linux/linux-yocto_3.8.bbappend  |   14 +++++++++++
 meta-yocto/conf/distro/poky.conf                   |   10 ++++----
 4 files changed, 19 insertions(+), 45 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.0.bbappend
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
deleted file mode 100644
index 274eb82..0000000
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ /dev/null
@@ -1,25 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-# atom-pc support
-COMPATIBLE_MACHINE_atom-pc = "atom-pc"
-KMACHINE_atom-pc = "atom-pc"
-KBRANCH_atom-pc = "yocto/standard/preempt-rt/base"
-SRCREV_machine_pn-linux-yocto-rt_atom-pc = "bbd5bfe49403fdcca294ca4b163d5f7195ea3a8e"
-
-# mpc8315e-rdb support
-COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
-KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
-KBRANCH_mpc8315e-rdb = "yocto/standard/preempt-rt/base"
-SRCREV_machine_pn-linux-yocto-rt_mpc8315e-rdb = "bbd5bfe49403fdcca294ca4b163d5f7195ea3a8e"
-
-# beagleboard support - 3.0 support has not yet been completed, build failure
-#COMPATIBLE_MACHINE_beagleboard = "beagleboard"
-#KMACHINE_beagleboard = "beagleboard"
-#KBRANCH_beagleboard = "yocto/standard/preempt-rt/base"
-#SRCREV_machine_pn-linux-yocto-rt_beagleboard = 
-
-# routerstationpro support - preempt-rt kernel build failure
-COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-KMACHINE_routerstationpro = "routerstationpro"
-KBRANCH_routerstationpro = "yocto/standard/preempt-rt/routerstationpro"
-SRCREV_machine_pn-linux-yocto-rt_routerstationpro = "634ba79510753eecd27a39a315f690f1c9d46efe"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.0.bbappend
deleted file mode 100644
index 9641336..0000000
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ /dev/null
@@ -1,15 +0,0 @@
-KBRANCH_atom-pc  = "yocto/standard/common-pc/atom-pc"
-KBRANCH_routerstationpro = "yocto/standard/routerstationpro"
-KBRANCH_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
-KBRANCH_beagleboard = "yocto/standard/beagleboard"
-
-SRCREV_machine_atom-pc ?= "834c2a69c87ee7211932f8ec5102a472828abcb1"
-SRCREV_machine_routerstationpro ?= "1c17c082b6ee565acc176cde5be835ac4269817b"
-SRCREV_machine_mpc8315e-rdb ?= "f2312437b52dda4499310aacb4c561ba8b8cbeb7"
-SRCREV_machine_beagleboard ?= "3ab688a78cac7b2e32afc83376a53370f2bd13b7"
-
-
-COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
-COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-COMPATIBLE_MACHINE_beagleboard = "beagleboard"
-COMPATIBLE_MACHINE_atom-pc = "atom-pc"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
new file mode 100644
index 0000000..479a386
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
@@ -0,0 +1,14 @@
+KBRANCH_atom-pc  = "standard/common-pc/atom-pc"
+KBRANCH_routerstationpro = "standard/routerstationpro"
+KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
+KBRANCH_beagleboard = "standard/beagleboard"
+
+#SRCREV_machine_atom-pc ?= "b170394a475b96ecc92cbc9e4b002bed0a9f69c5"
+#SRCREV_machine_routerstationpro ?= "b170394a475b96ecc92cbc9e4b002bed0a9f69c5"
+#SRCREV_machine_mpc8315e-rdb ?= "82bb8c34e0eb5e3d3b35d3c5631d9df147b659dd"
+#SRCREV_machine_beagleboard ?= "b170394a475b96ecc92cbc9e4b002bed0a9f69c5"
+
+COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
+COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
+COMPATIBLE_MACHINE_beagleboard = "beagleboard"
+COMPATIBLE_MACHINE_atom-pc = "atom-pc"
diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index c7afc97..ee54f15 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -14,11 +14,11 @@ LAYER_CONF_VERSION ?= "6"
 DISTRO_FEATURES_append = " largefile opengl multiarch"
 
 PREFERRED_VERSION_linux-yocto ?= "3.4%"
-PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.4%"
-PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "3.4%"
-PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.4%"
-PREFERRED_VERSION_linux-yocto_qemumips ?= "3.4%"
-PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.4%"
+PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.8%"
+PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "3.8%"
+PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.8%"
+PREFERRED_VERSION_linux-yocto_qemumips ?= "3.8%"
+PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.8%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${TARGET_ARCH}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
-- 
1.7.10.4


