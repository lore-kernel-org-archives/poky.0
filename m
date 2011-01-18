Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id AD4744C811F9
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 17:25:48 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Jan 2011 15:25:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,340,1291622400"; d="scan'208";a="594227979"
Received: from unknown (HELO localhost) ([10.255.14.100])
	by orsmga002.jf.intel.com with ESMTP; 18 Jan 2011 15:25:39 -0800
Message-Id: <52d7707838cfc650df141c5c6051b27820868114.1295393078.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1295393078.git.dvhart@linux.intel.com>
References: <cover.1295393078.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Old-Date: Tue, 28 Dec 2010 09:23:29 -0800
Date: Tue, 18 Jan 2011 15:25:36 -0800
To: poky@yoctoproject.org
Subject: [PATCH 5/5] meta-rt: atom-pc support
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
X-List-Received-Date: Tue, 18 Jan 2011 23:25:48 -0000

Add support for the atom-pc machine to the meta-rt layer. This has
been boot tested on the Intel n450 development board (Black Sand).

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
CC: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-rt/conf/layer.conf                            |    3 ++-
 meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb |    3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta-rt/conf/layer.conf b/meta-rt/conf/layer.conf
index dbf4a32..94ebc02 100644
--- a/meta-rt/conf/layer.conf
+++ b/meta-rt/conf/layer.conf
@@ -17,6 +17,7 @@ BBFILE_PRIORITY_rt = "8"
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"
 
 # preempt_rt SRCREVs, one for meta, one per machine
-SRCREV_meta_pn-linux-yocto-rt ?= "50ccd2b3213b6a1bacb3f898c035119802dac420"
+SRCREV_meta_pn-linux-yocto-rt ?= "b0615811ce38836d1ade230e3bdb1efaaa68471f"
 SRCREV_machine_pn-linux-yocto-rt_qemux86-64 ?= "f49444f06875894389e640bcda6c3f6ceb1f0c3e"
+SRCREV_machine_pn-linux-yocto-rt_atom-pc ?= "78dacaf8222c9492ba17f652989ef3466423bdc2"
 
diff --git a/meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb b/meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb
index 361b680..547f8fe 100644
--- a/meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb
+++ b/meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb
@@ -2,6 +2,7 @@ inherit kernel
 require recipes-kernel/linux/linux-yocto.inc
 
 KMACHINE_qemux86-64  = "common_pc_64"
+KMACHINE_atom-pc  = "atom-pc"
 
 LINUX_VERSION ?= "2.6.34"
 LINUX_KERNEL_TYPE = "preempt_rt"
@@ -11,7 +12,7 @@ PR = "r0"
 PV = "${LINUX_VERSION}+git${SRCPV}"
 SRCREV_FORMAT = "meta_machine"
 
-COMPATIBLE_MACHINE = "(qemux86-64)"
+COMPATIBLE_MACHINE = "(qemux86-64|atom-pc)"
 
 # this performs a fixup on the SRCREV for new/undefined BSPs
 python __anonymous () {
-- 
1.7.1


