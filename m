Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 330624C80578
	for <poky@yoctoproject.org>; Tue, 10 May 2011 00:25:42 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 09 May 2011 22:25:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; d="scan'208";a="744876423"
Received: from unknown (HELO localhost) ([10.255.12.75])
	by orsmga001.jf.intel.com with ESMTP; 09 May 2011 22:25:41 -0700
Message-Id: <5c24804728524d8b994c9f001cfe1ebbf7f05c83.1305004683.git.sgw@linux.intel.com>
In-Reply-To: <cover.1305004683.git.sgw@linux.intel.com>
References: <cover.1305004683.git.sgw@linux.intel.com>
Old-Date: Mon, 9 May 2011 14:13:44 -0400
Date: Mon, 09 May 2011 22:25:41 -0700
To: poky@yoctoproject.org
From: Saul Wold <sgw@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/1] linux-yocto: move non-core machines to meta-yocto
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 May 2011 05:25:42 -0000

From: Bruce Ashfield <bruce.ashfield@windriver.com>

The non-qemu compatibility references have been removed from
the main linux-yocto recipe. This change restores them in the
meta-yocto layer.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
Acked-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-yocto/conf/layer.conf                         |    3 ++-
 .../linux/linux-yocto-stable_git.bbappend          |   12 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |   12 ++++++++++++
 3 files changed, 26 insertions(+), 1 deletions(-)
 create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto-stable_git.bbappend
 create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend

diff --git a/meta-yocto/conf/layer.conf b/meta-yocto/conf/layer.conf
index f11d8ed..68786b2 100644
--- a/meta-yocto/conf/layer.conf
+++ b/meta-yocto/conf/layer.conf
@@ -2,7 +2,8 @@
 BBPATH := "${BBPATH}:${LAYERDIR}"
 
 # We have a packages directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb"
+BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+            ${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "yocto"
 BBFILE_PATTERN_yocto := "^${LAYERDIR}/"
diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto-stable_git.bbappend
new file mode 100644
index 0000000..ea0287d
--- /dev/null
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto-stable_git.bbappend
@@ -0,0 +1,12 @@
+KMACHINE_atom-pc  = "atom-pc"
+KMACHINE_routerstationpro = "routerstationpro"
+KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
+KMACHINE_beagleboard = "beagleboard"
+
+SRCREV_machine_atom-pc = "72ca49ab08b8eb475cec82a10049503602325791"
+SRCREV_machine_routerstationpro = "49745cd45c92a89e70c6e2334caa80818c134562"
+SRCREV_machine_mpc8315e-rdb = "a1c0ed6bf4060c10874b2a8547d81b3169dcf16a"
+SRCREV_machine_beagleboard = "ef7f944e773950d4016b7643f9ecf052bbe250cd"
+
+COMPATIBLE_MACHINE += "(atom-pc|routerstationpro|mpc8315e-rdb|beagleboard)"
+
diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend
new file mode 100644
index 0000000..e4aa7fd
--- /dev/null
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -0,0 +1,12 @@
+KMACHINE_atom-pc  = "yocto/standard/common-pc/atom-pc"
+KMACHINE_routerstationpro = "yocto/standard/routerstationpro"
+KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
+KMACHINE_beagleboard = "yocto/standard/beagleboard"
+
+SRCREV_machine_emenlow = "c3bbcb676f929c4fc0511a6e66494b8770d015a1"
+SRCREV_machine_atom-pc = "b906f358fd404a1e74a961f25079274e0d933ee1"
+SRCREV_machine_routerstationpro = "95ca94d2e71ca2db6822a37a7f575fa79c3d05d0"
+SRCREV_machine_mpc8315e-rdb = "53c800c244e73d81d2832f6da306eeae3b09e5dc"
+SRCREV_machine_beagleboard = "b906f358fd404a1e74a961f25079274e0d933ee1"
+
+COMPATIBLE_MACHINE = "(mpc8315e-rdb|routerstationpro|beagleboard)"
-- 
1.7.1.1


