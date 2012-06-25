Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 760D4E006D9
	for <poky@yoctoproject.org>; Mon, 25 Jun 2012 10:07:30 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 25 Jun 2012 10:07:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="115827482"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.12.180])
	by AZSMGA002.ch.intel.com with ESMTP; 25 Jun 2012 10:07:29 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 25 Jun 2012 10:07:20 -0700
Message-Id: <57b135aea87987819a3094eaac28012ed7aca065.1340643949.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1340643949.git.sgw@linux.intel.com>
References: <cover.1340643949.git.sgw@linux.intel.com>
In-Reply-To: <cover.1340643949.git.sgw@linux.intel.com>
References: <cover.1340643949.git.sgw@linux.intel.com>
Subject: [Consolidated Poky Pull 5/7] yocto-bsp: update yocto-bsp xorg.conf templates
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
X-List-Received-Date: Mon, 25 Jun 2012 17:07:30 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The non-x86 qemu machines now require an xorg.conf, change the
templates accordingly.

Fixes [YOCTO #2559]

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xserver-xf86-config/{{=machine}}/xorg.conf     |    8 ++++++++
 ..."x86_64\": }} xserver-xf86-config_0.1.bbappend" |    2 --
 2 files changed, 8 insertions(+), 2 deletions(-)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/{{ if qemuarch == \"i386\" or qemuarch == \"x86_64\": }} xserver-xf86-config_0.1.bbappend"

diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/xorg.conf b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/xorg.conf
index 10a6d9a..1351980 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/xorg.conf
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/xorg.conf
@@ -14,7 +14,11 @@ EndSection
 
 Section "InputDevice"
     Identifier    "Configured Mouse"
+{{ if qemuarch == "arm" or qemuarch == "powerpc" or qemuarch == "mips": }}
+    Driver        "mouse"
+{{ if qemuarch == "i386" or qemuarch == "x86_64": }}
     Driver        "vmmouse"
+
     Option        "CorePointer"
     Option        "Device"        "/dev/input/mice"
     Option        "Protocol"        "ImPS/2"
@@ -32,7 +36,11 @@ EndSection
 
 Section "Device"
     Identifier    "Graphics Controller"
+{{ if qemuarch == "arm" or qemuarch == "powerpc" or qemuarch == "mips": }}
+    Driver        "fbdev"
+{{ if qemuarch == "i386" or qemuarch == "x86_64": }}
     Driver        "vmware"
+
 EndSection
 
 Section "Monitor"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/{{ if qemuarch == \"i386\" or qemuarch == \"x86_64\": }} xserver-xf86-config_0.1.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/{{ if qemuarch == \"i386\" or qemuarch == \"x86_64\": }} xserver-xf86-config_0.1.bbappend"
deleted file mode 100644
index d3420e0..0000000
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/{{ if qemuarch == \"i386\" or qemuarch == \"x86_64\": }} xserver-xf86-config_0.1.bbappend"	
+++ /dev/null
@@ -1,2 +0,0 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-- 
1.7.7.6


