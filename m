Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E44964C80B6B
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 16:07:11 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 22 Nov 2010 14:07:11 -0800
Message-Id: <b9dded$h5o69b@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,238,1288594800"; d="scan'208";a="576461103"
Received: from unknown (HELO localhost) ([10.255.13.161])
	by orsmga002.jf.intel.com with ESMTP; 22 Nov 2010 14:07:11 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
Date: Fri, 19 Nov 2010 23:58:04 -0600
To: poky@yoctoproject.org
Subject: [PATCH] wrs_meta: add blktrace feature
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
X-List-Received-Date: Mon, 22 Nov 2010 22:07:12 -0000

Add a 'blktrace feature' that turns on kernel support for blktrace, a
block I/O tracing tool.  Added to 'standard' alongside similar tracing
tool config.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../kernel-cache/features/blktrace/blktrace.cfg    |    1 +
 .../kernel-cache/features/blktrace/blktrace.scc    |    1 +
 wrs/cfg/kernel-cache/ktypes/standard/standard.scc  |    3 +++
 3 files changed, 5 insertions(+), 0 deletions(-)
 create mode 100644 wrs/cfg/kernel-cache/features/blktrace/blktrace.cfg
 create mode 100644 wrs/cfg/kernel-cache/features/blktrace/blktrace.scc

diff --git a/wrs/cfg/kernel-cache/features/blktrace/blktrace.cfg b/wrs/cfg/kernel-cache/features/blktrace/blktrace.cfg
new file mode 100644
index 0000000..3e61f2b
--- /dev/null
+++ b/wrs/cfg/kernel-cache/features/blktrace/blktrace.cfg
@@ -0,0 +1 @@
+CONFIG_BLK_DEV_IO_TRACE=y
diff --git a/wrs/cfg/kernel-cache/features/blktrace/blktrace.scc b/wrs/cfg/kernel-cache/features/blktrace/blktrace.scc
new file mode 100644
index 0000000..945714b
--- /dev/null
+++ b/wrs/cfg/kernel-cache/features/blktrace/blktrace.scc
@@ -0,0 +1 @@
+kconf non-hardware blktrace.cfg
diff --git a/wrs/cfg/kernel-cache/ktypes/standard/standard.scc b/wrs/cfg/kernel-cache/ktypes/standard/standard.scc
index 7eb9585..8f07220 100644
--- a/wrs/cfg/kernel-cache/ktypes/standard/standard.scc
+++ b/wrs/cfg/kernel-cache/ktypes/standard/standard.scc
@@ -16,6 +16,9 @@ include mips.scc
 include features/lttng/lttng.scc
 tag lttng
 
+include features/blktrace/blktrace.scc
+tag blktrace
+
 include features/ocd/ocd.scc
 tag ocd
 
-- 
1.7.0.4


