Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E949DE006D9
	for <poky@yoctoproject.org>; Mon, 25 Jun 2012 10:07:29 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 25 Jun 2012 10:07:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="115827481"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.12.180])
	by AZSMGA002.ch.intel.com with ESMTP; 25 Jun 2012 10:07:29 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 25 Jun 2012 10:07:19 -0700
Message-Id: <f115d3ffe174a4e410bb877e18bc6f8a40c5bcfd.1340643949.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1340643949.git.sgw@linux.intel.com>
References: <cover.1340643949.git.sgw@linux.intel.com>
In-Reply-To: <cover.1340643949.git.sgw@linux.intel.com>
References: <cover.1340643949.git.sgw@linux.intel.com>
Subject: [Consolidated Poky Pull 4/7] yocto-bsp: update yocto-bsp machine.conf template
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

Some changes in the ordering assumptions of the qemu include rendered
X inoperative, fix those in the qemu machine template.

Fixes [YOCTO #2559]

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../arch/qemu/conf/machine/{{=machine}}.conf       |    7 +++++--
 1 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
index 0e4ecad..1ab6e58 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
@@ -8,6 +8,7 @@
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
+{{ if qemuarch == "i386" or qemuarch == "x86_64": }}
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 PREFERRED_PROVIDER_virtual/libgl ?= "mesa-dri"
 
@@ -22,13 +23,14 @@ require conf/machine/include/tune-i586.inc
 {{ if qemuarch == "x86_64": }}
 require conf/machine/include/tune-x86_64.inc
 {{ if qemuarch == "arm": }}
+require conf/machine/include/qemu.inc
 require conf/machine/include/tune-arm926ejs.inc
 {{ if qemuarch == "powerpc": }}
+require conf/machine/include/qemu.inc
 require conf/machine/include/tune-ppc603e.inc
 {{ if qemuarch == "mips": }}
-require conf/machine/include/tune-mips32.inc
-
 require conf/machine/include/qemu.inc
+require conf/machine/include/tune-mips32.inc
 
 {{ if qemuarch == "i386" or qemuarch == "x86_64": }}
 MACHINE_FEATURES += "x86"
@@ -42,6 +44,7 @@ XSERVER ?= "xserver-xorg \
            xf86-input-evdev \
            xf86-video-vmware \
            qemugl"
+require conf/machine/include/qemu.inc
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
 
-- 
1.7.7.6


