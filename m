Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id DDA574C811CF
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 17:19:33 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 22 Nov 2010 15:19:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,239,1288594800"; d="scan'208";a="860344545"
Received: from unknown (HELO [10.255.13.161]) ([10.255.13.161])
	by fmsmga001.fm.intel.com with ESMTP; 22 Nov 2010 15:19:33 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: poky@yoctoproject.org
Date: Mon, 22 Nov 2010 17:19:39 -0600
Message-ID: <1290467979.2784.16.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: [KERNEL][PATCH 1/1] wrs_meta: add blktrace feature
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
X-List-Received-Date: Mon, 22 Nov 2010 23:19:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

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




