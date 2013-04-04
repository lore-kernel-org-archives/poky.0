Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B0FAE014E3
	for <poky@yoctoproject.org>; Thu,  4 Apr 2013 15:09:34 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 04 Apr 2013 15:09:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,411,1363158000"; d="scan'208";a="313831829"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by fmsmga001.fm.intel.com with ESMTP; 04 Apr 2013 15:09:33 -0700
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Thu,  4 Apr 2013 17:09:21 -0500
Message-Id: <44d7fe724e433a725b95ed95df512c11d542282d.1365112661.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <041793e139db4883ea88b3651bc2eca1ad99975a.1365112661.git.tom.zanussi@linux.intel.com>
References: <041793e139db4883ea88b3651bc2eca1ad99975a.1365112661.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1365112661.git.tom.zanussi@linux.intel.com>
References: <cover.1365112661.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 6/8] yocto-bsp: qemu machine template updates
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
X-List-Received-Date: Thu, 04 Apr 2013 22:09:34 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

A few small changes to the machine.conf from the previous version that
should be incorporated.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
index 9ab0bf4..d66d28f 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
@@ -27,8 +27,10 @@ PREFERRED_PROVIDER_virtual/libgles2 ?= "mesa"
 {{ input type:"choice" val:"powerpc" msg:"PowerPC (32-bit)" }}
 {{ input type:"choice" val:"mips" msg:"MIPS    (32-bit)" }}
 {{ if qemuarch == "i386": }}
+require conf/machine/include/qemu.inc
 require conf/machine/include/tune-i586.inc
 {{ if qemuarch == "x86_64": }}
+require conf/machine/include/qemu.inc
 require conf/machine/include/tune-x86_64.inc
 {{ if qemuarch == "arm": }}
 require conf/machine/include/qemu.inc
@@ -44,17 +46,13 @@ require conf/machine/include/tune-mips32.inc
 MACHINE_FEATURES += "x86"
 KERNEL_IMAGETYPE = "bzImage"
 SERIAL_CONSOLE = "115200 ttyS0"
-
-# We bypass swrast but we need it to be present for X to load correctly
-XSERVER ?= "xserver-xorg \
+XSERVER = "xserver-xorg \
            mesa-driver-swrast \
            xf86-input-vmmouse \
            xf86-input-keyboard \
            xf86-input-evdev \
            xf86-video-vmware"
 
-require conf/machine/include/qemu.inc
-
 {{ if qemuarch == "arm": }}
 KERNEL_IMAGETYPE = "zImage"
 SERIAL_CONSOLE = "115200 ttyAMA0"
-- 
1.7.11.4


