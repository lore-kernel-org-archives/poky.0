Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D5774C80BEF
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 17:25:37 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 18 Jan 2011 15:25:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,340,1291622400"; d="scan'208";a="648426209"
Received: from unknown (HELO localhost) ([10.255.14.100])
	by fmsmga002.fm.intel.com with ESMTP; 18 Jan 2011 15:25:37 -0800
Message-Id: <add1e081633e2cf43292a9d5c232bc4efa5ef119.1295393078.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1295393078.git.dvhart@linux.intel.com>
References: <cover.1295393078.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Old-Date: Mon, 20 Dec 2010 15:02:40 -0800
Date: Tue, 18 Jan 2011 15:25:33 -0800
To: poky@yoctoproject.org
Subject: [PATCH 1/5] meta-rt: Initial PREEMPT_RT layer and kernel recipes
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
X-List-Received-Date: Tue, 18 Jan 2011 23:25:37 -0000

The meta-rt layer provides a preempt_rt kernel recipe
using the linux-yocto-stable git tree. It overrides
the virtual/kernel provider and defines the compatible
machines and per-machine SRCREVs. The initial layer
supports only qemux86-64.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@intel.com>
Cc: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-rt/conf/layer.conf                            |   22 +++++++++++
 meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb |   39 ++++++++++++++++++++
 2 files changed, 61 insertions(+), 0 deletions(-)
 create mode 100644 meta-rt/conf/layer.conf
 create mode 100644 meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb

diff --git a/meta-rt/conf/layer.conf b/meta-rt/conf/layer.conf
new file mode 100644
index 0000000..dbf4a32
--- /dev/null
+++ b/meta-rt/conf/layer.conf
@@ -0,0 +1,22 @@
+# Default to first disk/first partition
+RSP_ROOT ?= "sda1"
+
+# We have a conf and classes directory, add to BBPATH
+BBPATH := "${BBPATH}:${LAYERDIR}"
+
+# We have an images and various recipe-* directories, add to BBFILES
+BBFILES := "${BBFILES} ${LAYERDIR}/images/*.bb ${LAYERDIR}/images/*.bbappend ${LAYERDIR}/recipes-*/*.bb ${LAYERDIR}/recipes-*/*.bbappend"
+	
+BBFILE_COLLECTIONS += "rt"
+BBFILE_PATTERN_rt := "^${LAYERDIR}/"
+BBFILE_PRIORITY_rt = "8"
+
+# This layer builds images using a PREEMPT_RT kernel. Override any machine
+# specified kernel providers and leave it up to the kernel recipe to 
+# determine COMPATIBLE_MACHINE.
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"
+
+# preempt_rt SRCREVs, one for meta, one per machine
+SRCREV_meta_pn-linux-yocto-rt ?= "50ccd2b3213b6a1bacb3f898c035119802dac420"
+SRCREV_machine_pn-linux-yocto-rt_qemux86-64 ?= "f49444f06875894389e640bcda6c3f6ceb1f0c3e"
+
diff --git a/meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb b/meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb
new file mode 100644
index 0000000..361b680
--- /dev/null
+++ b/meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb
@@ -0,0 +1,39 @@
+inherit kernel
+require recipes-kernel/linux/linux-yocto.inc
+
+KMACHINE_qemux86-64  = "common_pc_64"
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
+require recipes-kernel/linux/linux-tools.inc
-- 
1.7.1


