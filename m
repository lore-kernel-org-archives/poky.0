Return-Path: <laurentiu.palcu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 158DCE006AD
	for <poky@yoctoproject.org>; Tue, 19 Mar 2013 09:29:55 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Mar 2013 09:29:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,872,1355126400"; d="scan'208";a="308920389"
Received: from lpalcu-linux.rb.intel.com (HELO localhost.localdomain)
	([10.237.105.165])
	by fmsmga002.fm.intel.com with ESMTP; 19 Mar 2013 09:29:53 -0700
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 19 Mar 2013 18:29:49 +0200
Message-Id: <1363710591-32021-2-git-send-email-laurentiu.palcu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1363710591-32021-1-git-send-email-laurentiu.palcu@intel.com>
References: <1363710591-32021-1-git-send-email-laurentiu.palcu@intel.com>
Subject: [PATCH 1/3] scripts/lib/bsp: replace mesa-dri with mesa in machine.conf files
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
X-List-Received-Date: Tue, 19 Mar 2013 16:29:56 -0000

mesa-dri has been renamed to mesa.

[YOCTO #3385]

Signed-off-by: Laurentiu Palcu <laurentiu.palcu@intel.com>
---
 .../arch/i386/conf/machine/{{=machine}}.conf       |    2 +-
 .../arch/qemu/conf/machine/{{=machine}}.conf       |    8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
index 268ddc8..78a753c 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
@@ -58,7 +58,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
 
 {{ if xserver == "y" and xserver_choice == "xserver_emgd": }}
 PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
-PREFERRED_VERSION_mesa-dri ?= "9.0.2"
+PREFERRED_VERSION_mesa ?= "9.0.2"
 PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
 PREFERRED_VERSION_emgd-driver-bin ?= "1.16"
 
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
index dd7b97e..9ab0bf4 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
@@ -16,9 +16,9 @@ PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
 {{ if qemuarch == "i386" or qemuarch == "x86_64": }}
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
-PREFERRED_PROVIDER_virtual/libgl ?= "mesa-dri"
-PREFERRED_PROVIDER_virtual/libgles1 ?= "mesa-dri"
-PREFERRED_PROVIDER_virtual/libgles2 ?= "mesa-dri"
+PREFERRED_PROVIDER_virtual/libgl ?= "mesa"
+PREFERRED_PROVIDER_virtual/libgles1 ?= "mesa"
+PREFERRED_PROVIDER_virtual/libgles2 ?= "mesa"
 
 {{ input type:"choicelist" name:"qemuarch" prio:"5" msg:"Which qemu architecture would you like to use?" default:"i386" }}
 {{ input type:"choice" val:"i386" msg:"i386    (32-bit)" }}
@@ -47,7 +47,7 @@ SERIAL_CONSOLE = "115200 ttyS0"
 
 # We bypass swrast but we need it to be present for X to load correctly
 XSERVER ?= "xserver-xorg \
-           mesa-dri-driver-swrast \
+           mesa-driver-swrast \
            xf86-input-vmmouse \
            xf86-input-keyboard \
            xf86-input-evdev \
-- 
1.7.9.5


