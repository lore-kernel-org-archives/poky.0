Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31E6CE0144E
	for <poky@yoctoproject.org>; Sat, 29 Sep 2012 16:45:37 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 29 Sep 2012 16:45:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,509,1344236400"; d="scan'208";a="150708876"
Received: from unknown (HELO localhost) ([10.255.14.37])
	by AZSMGA002.ch.intel.com with ESMTP; 29 Sep 2012 16:45:36 -0700
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Sat, 29 Sep 2012 18:45:31 -0500
Message-Id: <831b526070312eecc4e33dcc56e67ac0d6da06c5.1348958103.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <d71360b63f903f48e7b961c9c9bfd6bb8972e40c.1348958103.git.tom.zanussi@intel.com>
References: <d71360b63f903f48e7b961c9c9bfd6bb8972e40c.1348958103.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1348958103.git.tom.zanussi@intel.com>
References: <cover.1348958103.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] yocto-bsp: remove 'test' options from user-config.cfg
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
X-List-Received-Date: Sat, 29 Sep 2012 23:45:37 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

A couple bsp templates have some options that were used for testing
but aren't needed for any other reason - remove them.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../target/arch/powerpc/recipes-kernel/linux/files/user-config.cfg    | 4 ----
 .../target/arch/qemu/recipes-kernel/linux/files/user-config.cfg       | 4 ----
 2 files changed, 8 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-config.cfg b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-config.cfg
index 2ee921b..e69de29 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-config.cfg
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-config.cfg
@@ -1,4 +0,0 @@
-CONFIG_FTRACE_SYSCALLS=y
-CONFIG_SCHED_TRACER=y
-CONFIG_IRQSOFF_TRACER=y
-CONFIG_PREEMPT_TRACER=y
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-config.cfg b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-config.cfg
index 2ee921b..e69de29 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-config.cfg
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-config.cfg
@@ -1,4 +0,0 @@
-CONFIG_FTRACE_SYSCALLS=y
-CONFIG_SCHED_TRACER=y
-CONFIG_IRQSOFF_TRACER=y
-CONFIG_PREEMPT_TRACER=y
-- 
1.7.11.4


