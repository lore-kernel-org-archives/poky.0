Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AA89E0081F
	for <poky@yoctoproject.org>; Fri, 20 Dec 2013 07:36:16 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 20 Dec 2013 07:32:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,521,1384329600"; d="scan'208";a="455512879"
Received: from unknown (HELO localhost) ([10.255.12.25])
	by orsmga002.jf.intel.com with ESMTP; 20 Dec 2013 07:36:09 -0800
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Fri, 20 Dec 2013 10:39:11 -0600
Message-Id: <6302bd7382036acfc14108b9c1e8fedea353c363.1387557270.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1387557270.git.tom.zanussi@intel.com>
References: <cover.1387557270.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] yocto-bsp: Add missing interfaces file for qemu BSP templates
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 20 Dec 2013 15:36:18 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The qemu BSPs were picking up the wrong interfaces file, resulting in
some erratic interface behavior seen with qemu-based BSPs - this fixes
the problem.

[YOCTO #5636]

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../init-ifupdown/{{=machine}}/interfaces          |    5 +++++
 .../init-ifupdown/init-ifupdown_1.0.bbappend       |    1 +
 2 files changed, 6 insertions(+)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown/{{=machine}}/interfaces
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown_1.0.bbappend

diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown/{{=machine}}/interfaces b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown/{{=machine}}/interfaces
new file mode 100644
index 0000000..1696776
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown/{{=machine}}/interfaces
@@ -0,0 +1,5 @@
+# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)
+ 
+# The loopback interface
+auto lo
+iface lo inet loopback
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown_1.0.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown_1.0.bbappend
new file mode 100644
index 0000000..72d991c
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown_1.0.bbappend
@@ -0,0 +1 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-- 
1.7.9.5


