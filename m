Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 342D94C811E5
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 18:40:43 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Dec 2010 16:40:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,252,1291622400"; d="scan'208";a="588501078"
Received: from unknown (HELO localhost) ([10.255.13.230])
	by orsmga002.jf.intel.com with ESMTP; 30 Dec 2010 16:40:42 -0800
Message-Id: <c4fb725dd3fa36a3b43cf1b584f2112a553a8bff.1293755504.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1293755504.git.dvhart@linux.intel.com>
References: <cover.1293755504.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Old-Date: Tue, 28 Dec 2010 09:23:29 -0800
Date: Thu, 30 Dec 2010 16:40:42 -0800
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
X-List-Received-Date: Fri, 31 Dec 2010 00:40:43 -0000

Add support for the atom-pc machine to the meta-rt layer.  This patch depends on
the corresponding support for the linux-2.6-windriver git repository, sent
previously to this list.

[PATCH 0/1] linux-2.6-windriver: add atom-pc preempt_rt support

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
CC: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-rt/conf/layer.conf                            |    1 +
 meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb |    3 ++-
 2 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta-rt/conf/layer.conf b/meta-rt/conf/layer.conf
index dbf4a32..b033054 100644
--- a/meta-rt/conf/layer.conf
+++ b/meta-rt/conf/layer.conf
@@ -19,4 +19,5 @@ PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"
 # preempt_rt SRCREVs, one for meta, one per machine
 SRCREV_meta_pn-linux-yocto-rt ?= "50ccd2b3213b6a1bacb3f898c035119802dac420"
 SRCREV_machine_pn-linux-yocto-rt_qemux86-64 ?= "f49444f06875894389e640bcda6c3f6ceb1f0c3e"
+SRCREV_machine_pn-linux-yocto-rt_atom-pc ?= "6b8ac43a084fc5903335edf74c951b3f532f4e78"
 
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


