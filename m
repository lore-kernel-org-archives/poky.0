Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8C14B4C80039
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:24:34 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:24:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="693211366"
Received: from doubt.jf.intel.com (HELO [10.7.199.57]) ([10.7.199.57])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 15:24:29 -0800
Message-ID: <4D225AB1.7010404@linux.intel.com>
Date: Mon, 03 Jan 2011 15:24:33 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [PATCH] linux-yocto-2.6.37: Add debugfs and ftrace features to standard ktype meta-data
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
X-List-Received-Date: Mon, 03 Jan 2011 23:24:34 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

ftrace provides low impact tracing facilities and should be made
available on the main kernel - as opposed to a debug or tracing
kernel which often add enough overhead to mask subtle bugs.

These features are available on the 2.6.34 yocto kernel.

Boot and trace-cmd tested on qemux86-64.

Signed-off-by: Darren Hart <darren@dvhart.com>
CC: Bruce Ashfield <bruce.ashfield@windriver.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/features/debugfs/debugfs.cfg |    1 +
 meta/cfg/kernel-cache/features/debugfs/debugfs.scc |    1 +
 meta/cfg/kernel-cache/features/ftrace/ftrace.cfg   |    2 ++
 meta/cfg/kernel-cache/features/ftrace/ftrace.scc   |    1 +
 meta/cfg/kernel-cache/ktypes/standard/standard.scc |    4 ++++
 5 files changed, 9 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/debugfs/debugfs.cfg
 create mode 100644 meta/cfg/kernel-cache/features/debugfs/debugfs.scc
 create mode 100644 meta/cfg/kernel-cache/features/ftrace/ftrace.cfg
 create mode 100644 meta/cfg/kernel-cache/features/ftrace/ftrace.scc

diff --git a/meta/cfg/kernel-cache/features/debugfs/debugfs.cfg b/meta/cfg/kernel-cache/features/debugfs/debugfs.cfg
new file mode 100644
index 0000000..39c2d26
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/debugfs/debugfs.cfg
@@ -0,0 +1 @@
+CONFIG_DEBUG_FS=y
diff --git a/meta/cfg/kernel-cache/features/debugfs/debugfs.scc b/meta/cfg/kernel-cache/features/debugfs/debugfs.scc
new file mode 100644
index 0000000..8f84947
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/debugfs/debugfs.scc
@@ -0,0 +1 @@
+kconf non-hardware debugfs.cfg
diff --git a/meta/cfg/kernel-cache/features/ftrace/ftrace.cfg b/meta/cfg/kernel-cache/features/ftrace/ftrace.cfg
new file mode 100644
index 0000000..bab800c
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/ftrace/ftrace.cfg
@@ -0,0 +1,2 @@
+CONFIG_FUNCTION_TRACER=y
+CONFIG_FUNCTION_GRAPH_TRACER=y
diff --git a/meta/cfg/kernel-cache/features/ftrace/ftrace.scc b/meta/cfg/kernel-cache/features/ftrace/ftrace.scc
new file mode 100644
index 0000000..c92e30f
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/ftrace/ftrace.scc
@@ -0,0 +1 @@
+kconf non-hardware ftrace.cfg
diff --git a/meta/cfg/kernel-cache/ktypes/standard/standard.scc b/meta/cfg/kernel-cache/ktypes/standard/standard.scc
index 9fa6c1e..8212465 100644
--- a/meta/cfg/kernel-cache/ktypes/standard/standard.scc
+++ b/meta/cfg/kernel-cache/ktypes/standard/standard.scc
@@ -33,6 +33,10 @@ tag powerpc
 
 include features/hrt/hrt.scc
 
+include features/debugfs/debugfs.scc
+
+include features/ftrace/ftrace.scc
+
 include patches/wrs_patches.scc
 
 # #include features/ieee_float/ieee_float.scc
-- 
1.7.1
-- 
Darren Hart
Yocto Linux Kernel

