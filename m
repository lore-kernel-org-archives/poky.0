Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 41F444C80570
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 12:44:02 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Apr 2011 10:44:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,275,1301900400"; d="scan'208";a="634915635"
Received: from unknown (HELO localhost) ([10.255.13.11])
	by orsmga002.jf.intel.com with ESMTP; 27 Apr 2011 10:44:01 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 27 Apr 2011 10:43:22 -0700
Message-Id: <d41191395a917a375153df53dd31740fb9e8b92c.1303926202.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [KERNEL PATCH] Add SMP config fragment
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
X-List-Received-Date: Wed, 27 Apr 2011 17:44:02 -0000

For reusable BSPs like atom-pc which may or may not have SMP support,
allow the linux-yocto recipe to choose whether or not to enable SMP support.
The smp config fragment enables SMP and SCHED_SMT.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 wrs/cfg/kernel-cache/cfg/smp.cfg |    2 ++
 wrs/cfg/kernel-cache/cfg/smp.scc |    1 +
 2 files changed, 3 insertions(+), 0 deletions(-)
 create mode 100644 wrs/cfg/kernel-cache/cfg/smp.cfg
 create mode 100644 wrs/cfg/kernel-cache/cfg/smp.scc

diff --git a/wrs/cfg/kernel-cache/cfg/smp.cfg b/wrs/cfg/kernel-cache/cfg/smp.cfg
new file mode 100644
index 0000000..f53b969
--- /dev/null
+++ b/wrs/cfg/kernel-cache/cfg/smp.cfg
@@ -0,0 +1,2 @@
+CONFIG_SMP=y
+CONFIG_SCHED_SMT=y
diff --git a/wrs/cfg/kernel-cache/cfg/smp.scc b/wrs/cfg/kernel-cache/cfg/smp.scc
new file mode 100644
index 0000000..1fd8c32
--- /dev/null
+++ b/wrs/cfg/kernel-cache/cfg/smp.scc
@@ -0,0 +1 @@
+kconf hardware smp.cfg
-- 
1.7.1


