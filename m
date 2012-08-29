Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D45E4E0049E
	for <poky@yoctoproject.org>; Tue, 28 Aug 2012 20:01:56 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 28 Aug 2012 20:01:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,330,1344236400"; d="scan'208";a="215117601"
Received: from unknown (HELO localhost) ([10.255.12.232])
	by fmsmga001.fm.intel.com with ESMTP; 28 Aug 2012 20:01:36 -0700
From: tom.zanussi@intel.com
To: poky@yoctoproject.org, richard.purdie@linuxfoundation.org,
	sgw@linux.intel.com
Date: Tue, 28 Aug 2012 22:01:34 -0500
Message-Id: <197677893e66f139015d21585feb7c7f0dc5ba5a.1346208965.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1346208965.git.tom.zanussi@intel.com>
References: <cover.1346208965.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2] yocto-bsp: remove obsolete references
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
X-List-Received-Date: Wed, 29 Aug 2012 03:01:57 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The logbuf-normal feature is obsolete, so remove any references to it.
The dmaengine and hpet features have changed, but don't really need to
be added by default to i386 - leave that to the BSP developer.  Also,
remove a couple duplicate feature references in the .scc files.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc    | 1 -
 .../arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc | 1 -
 .../target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc   | 7 -------
 .../target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.scc   | 2 --
 .../x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc  | 1 -
 .../x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc    | 1 -
 .../target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.scc | 5 -----
 7 files changed, 18 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
index 6ee1c93..2734d33 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
@@ -10,6 +10,5 @@ include {{=machine}}.scc
 # default policy for preempt-rt kernels
 include cfg/usb-mass-storage.scc
 include cfg/boot-live.scc
-include features/logbuf/size-normal.scc
 include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
index c6f42db..e34882f 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -15,6 +15,5 @@ include {{=machine}}.scc
 # default policy for standard kernels
 include cfg/usb-mass-storage.scc
 include cfg/boot-live.scc
-include features/logbuf/size-normal.scc
 include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc
index 15bda3c..d8d28ce 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc
@@ -9,9 +9,7 @@ include features/drm-emgd/drm-emgd.scc
 {{ if xserver == "y" and xserver_choice == "xserver_i915": }}
 include features/i915/i915.scc
 
-include features/dmaengine/dmaengine.scc
 include features/serial/8250.scc
-include features/hpet/hpet.scc
 include features/ericsson-3g/f5521gw.scc
 
 {{ if xserver == "y" and xserver_choice == "xserver_vesa" or xserver_choice == "xserver_emgd": }}
@@ -21,10 +19,5 @@ include cfg/usb-mass-storage.scc
 include cfg/boot-live.scc
 include features/power/intel.scc
 
-include features/logbuf/size-normal.scc
-
-include features/latencytop/latencytop.scc
-include features/profiling/profiling.scc
-
 kconf hardware user-config.cfg
 include user-patches.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.scc b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.scc
index e301b22..0f20dcd 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.scc
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.scc
@@ -1,6 +1,4 @@
 kconf hardware {{=machine}}.cfg
 
-include features/logbuf/size-normal.scc
-
 kconf hardware user-config.cfg
 include user-patches.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
index 5819dce..de9906a 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
@@ -10,6 +10,5 @@ include {{=machine}}.scc
 # default policy for preempt-rt kernels
 include cfg/usb-mass-storage.scc
 include cfg/boot-live.scc
-include features/logbuf/size-normal.scc
 include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
index 9e5cf13..e500bad 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -11,6 +11,5 @@ include {{=machine}}.scc
 # default policy for standard kernels
 include cfg/usb-mass-storage.scc
 include cfg/boot-live.scc
-include features/logbuf/size-normal.scc
 include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.scc b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.scc
index 5b8ccba..d8d3d35 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.scc
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.scc
@@ -8,10 +8,5 @@ include features/i915/i915.scc
 include cfg/usb-mass-storage.scc
 include features/power/intel.scc
 
-include features/logbuf/size-normal.scc
-
-include features/latencytop/latencytop.scc
-include features/profiling/profiling.scc
-
 kconf hardware user-config.cfg
 include user-patches.scc
-- 
1.7.11.4


