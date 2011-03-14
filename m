Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7BD4D4C80AA8
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 18:54:53 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Mar 2011 16:54:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,319,1297065600"; d="scan'208";a="612939100"
Received: from doubt.jf.intel.com (HELO localhost) ([10.7.199.155])
	by orsmga002.jf.intel.com with ESMTP; 14 Mar 2011 16:54:44 -0700
Message-Id: <cc3e525fdb480d6b86637afa7b4c8d947d32304b.1300146920.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1300146920.git.dvhart@linux.intel.com>
References: <cover.1300146920.git.dvhart@linux.intel.com>
Old-Date: Mon, 14 Mar 2011 16:44:06 -0700
Date: Mon, 14 Mar 2011 16:54:37 -0700
To: poky@yoctoproject.org, bruce.ashfield@windriver.com,
	jessica.zhang@intel.com
From: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH] qemux86-64: Enable latencytop and profiling (temporary)
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
X-List-Received-Date: Mon, 14 Mar 2011 23:54:53 -0000

From: Darren Hart <dvhart@linux.intel.com>

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/kernel

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (1):
  qemux86-64: Enable latencytop and profiling (temporary)

 meta/recipes-kernel/linux/linux-yocto_git.bb |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)


Fixes [YOCTO #858] and [YOCTO #859]

common-pc-64.scc in the linux-yocto meta data omits latencytop and profiling
(but common-pc.scc includes them). The right fix is in common-pc-64.inc, but
this fix gets people people unblocked until Bruce can commit the proper fix to
linux-yocto.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Bruce Ashfield <bruce.ashfield@windriver.com>
CC: Jessica Zhang <jessica.zhang@intel.com>
---
 meta/recipes-kernel/linux/linux-yocto_git.bb |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-kernel/linux/linux-yocto_git.bb b/meta/recipes-kernel/linux/linux-yocto_git.bb
index 38fbba3..f35d1a2 100644
--- a/meta/recipes-kernel/linux/linux-yocto_git.bb
+++ b/meta/recipes-kernel/linux/linux-yocto_git.bb
@@ -31,6 +31,10 @@ KERNEL_FEATURES="features/netfilter"
 KERNEL_FEATURES_append_qemux86=" cfg/sound"
 KERNEL_FEATURES_append_qemux86-64=" cfg/sound"
 
+# Temporary fix for oprofile and latencytop on qemux86-64
+KERNEL_FEATURES_append_qemux86-64=" features/profiling"
+KERNEL_FEATURES_append_qemux86-64=" features/latencytop"
+
 # extra tasks
 addtask kernel_link_vmlinux after do_compile before do_install
 addtask validate_branches before do_patch after do_kernel_checkout
-- 
1.7.3.4


