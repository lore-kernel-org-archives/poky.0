Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 02AB64C80B71
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 18:20:22 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Dec 2010 16:20:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,190,1291622400"; d="scan'208";a="363383138"
Received: from unknown (HELO localhost) ([10.255.14.50])
	by azsmga001.ch.intel.com with ESMTP; 17 Dec 2010 16:20:22 -0800
Message-Id: <210a18897b1026f0eaa7fe2eec2efe94779e2aac.1292630935.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1292630935.git.dvhart@linux.intel.com>
References: <cover.1292630935.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Fri, 10 Dec 2010 14:53:28 -0800
To: poky@yoctoproject.org,tom.zanussi@intel.com,bruce.ashfield@intel.com
Subject: [PATCH 1/4] linux-yocto-rt: initial PREEMPT_RT recipe for the linux-yocto stable kernel
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
X-List-Received-Date: Sat, 18 Dec 2010 00:20:23 -0000

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    3 +
 .../linux/linux-yocto-rt_stablegit.bb              |   47 ++++++++++++++++++++
 2 files changed, 50 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-kernel/linux/linux-yocto-rt_stablegit.bb

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 0612b7d..efb4a5d 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -95,6 +95,9 @@ SRCREV_machine_pn-linux-yocto-stable_routerstationpro ?= "2ec2edaf256dd8500ee3d4
 SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?= "986e6eb66c26007cee7916d5d12f4756e6b5436f"
 SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
 SRCREV_meta_pn-linux-yocto-stable ?= "50ccd2b3213b6a1bacb3f898c035119802dac420"
+# preempt_rt SRCREVs
+SRCREV_machine_pn-linux-yocto-rt_qemux86-64 ?= "f49444f06875894389e640bcda6c3f6ceb1f0c3e"
+SRCREV_meta_pn-linux-yocto-rt ?= "50ccd2b3213b6a1bacb3f898c035119802dac420"
 # development SRCREVs
 SRCREV_machine_pn-linux-yocto_qemuarm = "87e00a2d47ba80b4ad1f9170cb3f6cf81f21d739"
 SRCREV_machine_pn-linux-yocto_qemumips = "7231e473dd981a28e3cea9f677ed60583e731550"
diff --git a/meta/recipes-kernel/linux/linux-yocto-rt_stablegit.bb b/meta/recipes-kernel/linux/linux-yocto-rt_stablegit.bb
new file mode 100644
index 0000000..cb182da
--- /dev/null
+++ b/meta/recipes-kernel/linux/linux-yocto-rt_stablegit.bb
@@ -0,0 +1,47 @@
+inherit kernel
+require linux-yocto.inc
+
+KMACHINE_qemux86  = "common_pc/base"
+KMACHINE_qemux86-64  = "common_pc_64"
+KMACHINE_qemuppc  = "qemu_ppc32"
+KMACHINE_qemumips = "mti_malta32_be"
+KMACHINE_qemuarm  = "arm_versatile_926ejs"
+KMACHINE_atom-pc  = "atom-pc"
+KMACHINE_routerstationpro = "routerstationpro"
+KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
+KMACHINE_beagleboard = "beagleboard"
+
+LINUX_VERSION ?= "2.6.34"
+LINUX_KERNEL_TYPE = "preempt_rt"
+LINUX_VERSION_EXTENSION ?= "-yocto-${LINUX_KERNEL_TYPE_EXTENSION}"
+
+PR = "r0"
+PV = "${LINUX_VERSION}+git${SRCPV}"
+SRCREV_FORMAT = "meta_machine"
+
+COMPATIBLE_MACHINE = "(qemux86-64)"
+
+# this performs a fixup on the SRCREV for new/undefined BSPs
+python __anonymous () {
+    import bb, re, string
+
+    rev = bb.data.getVar("SRCREV_machine", d, 1)
+    if rev == "standard":
+        bb.data.setVar("SRCREV_machine", "${SRCREV_meta}", d)
+
+    kerntype = string.replace(bb.data.expand("${LINUX_KERNEL_TYPE}", d), "_", "-")
+    bb.data.setVar("LINUX_KERNEL_TYPE_EXTENSION", kerntype, d)
+}
+
+SRC_URI = "git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;fullclone=1;branch=${KBRANCH};name=machine \
+           git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;noclone=1;branch=wrs_meta;name=meta"
+
+# Functionality flags
+KERNEL_REVISION_CHECKING ?= "t"
+KERNEL_FEATURES=features/netfilter
+
+# extra tasks
+addtask kernel_link_vmlinux after do_compile before do_install
+addtask validate_branches before do_patch after do_kernel_checkout
+
+require linux-tools.inc
-- 
1.7.2.3


