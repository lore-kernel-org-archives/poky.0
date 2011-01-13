Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 649904C81069
	for <poky@yoctoproject.org>; Thu, 13 Jan 2011 13:55:38 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Jan 2011 11:55:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,319,1291622400"; d="scan'208";a="592724128"
Received: from unknown (HELO [10.255.14.43]) ([10.255.14.43])
	by orsmga002.jf.intel.com with ESMTP; 13 Jan 2011 11:55:36 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Thu, 13 Jan 2011 13:55:32 -0600
Message-ID: <1294948532.22249.16.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: [2.6.37 PATCH] wrs_meta: add systemtap feature for linux-yocto
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
X-List-Received-Date: Thu, 13 Jan 2011 19:55:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Add a 'systemtap feature' that turns on the kernel options required
for systemtap, a system-wide tracing tool.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../kernel-cache/features/systemtap/systemtap.cfg  |    7 +++++++
 .../kernel-cache/features/systemtap/systemtap.scc  |    1 +
 meta/cfg/kernel-cache/ktypes/standard/standard.scc |    3 +++
 3 files changed, 11 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/systemtap/systemtap.cfg
 create mode 100644 meta/cfg/kernel-cache/features/systemtap/systemtap.scc

diff --git a/meta/cfg/kernel-cache/features/systemtap/systemtap.cfg b/meta/cfg/kernel-cache/features/systemtap/systemtap.cfg
new file mode 100644
index 0000000..26a5fc3
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/systemtap/systemtap.cfg
@@ -0,0 +1,7 @@
+CONFIG_KPROBES=y
+CONFIG_RELAY=y
+CONFIG_DEBUG_INFO=y
+CONFIG_DEBUG_FS=y
+CONFIG_MODULES=y
+CONFIG_MODULE_UNLOAD=y
+
diff --git a/meta/cfg/kernel-cache/features/systemtap/systemtap.scc b/meta/cfg/kernel-cache/features/systemtap/systemtap.scc
new file mode 100644
index 0000000..9b8bd87
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/systemtap/systemtap.scc
@@ -0,0 +1 @@
+kconf non-hardware systemtap.cfg
diff --git a/meta/cfg/kernel-cache/ktypes/standard/standard.scc b/meta/cfg/kernel-cache/ktypes/standard/standard.scc
index 8212465..f675bb6 100644
--- a/meta/cfg/kernel-cache/ktypes/standard/standard.scc
+++ b/meta/cfg/kernel-cache/ktypes/standard/standard.scc
@@ -16,6 +16,9 @@ tag kgdb
 # include features/lttng/lttng.scc
 # tag lttng
 
+include features/systemtap/systemtap.scc
+tag systemtap
+
 # include features/ocd/ocd.scc
 # tag ocd
 
-- 
1.7.0.4




