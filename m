Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E03EBE01474
	for <poky@yoctoproject.org>; Wed, 13 Mar 2013 12:04:29 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Mar 2013 12:02:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,838,1355126400"; d="scan'208";a="301204899"
Received: from unknown (HELO localhost) ([10.255.12.139])
	by orsmga002.jf.intel.com with ESMTP; 13 Mar 2013 12:04:27 -0700
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Wed, 13 Mar 2013 14:04:06 -0500
Message-Id: <41d1f82b097b62b2bb8803864bd3c42bec8ee793.1363198817.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
References: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1363198817.git.tom.zanussi@linux.intel.com>
References: <cover.1363198817.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 12/18] yocto-bsp: upgrade i386 template with emgd 1.16
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
X-List-Received-Date: Wed, 13 Mar 2013 19:04:30 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

Along with related changes.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 scripts/lib/bsp/substrate/target/arch/common/README                | 4 ++--
 .../bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf  | 7 ++++---
 .../{{=machine}}-standard.scc"                                     | 3 +--
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/common/README b/scripts/lib/bsp/substrate/target/arch/common/README
index 228c0e2..93af973 100644
--- a/scripts/lib/bsp/substrate/target/arch/common/README
+++ b/scripts/lib/bsp/substrate/target/arch/common/README
@@ -68,10 +68,10 @@ You should then be able to build a {{=machine}} image as such:
 NOTE: if the '{{=machine}}' machine includes the emgd-driver-bin
 package (i.e. if the emgd version of the xserver is being used), it
 has a proprietary license that must be whitelisted by adding the
-string "license_emgd-driver-bin_1.14" to the LICENSE_FLAGS_WHITELIST
+string "license_emgd-driver-bin_1.16" to the LICENSE_FLAGS_WHITELIST
 variable in your local.conf.  For example:
 
-  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.14"
+  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.16"
 
 At the end of a successful build, you should have a live image that
 you can boot from a USB flash drive (see instructions on how to do
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
index a33cb2e..268ddc8 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
@@ -58,8 +58,9 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
 
 {{ if xserver == "y" and xserver_choice == "xserver_emgd": }}
 PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
-PREFERRED_VERSION_mesa-dri ?= "7.11"
-PREFERRED_VERSION_emgd-driver-bin ?= "1.14"
+PREFERRED_VERSION_mesa-dri ?= "9.0.2"
+PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
+PREFERRED_VERSION_emgd-driver-bin ?= "1.16"
 
 {{ if xserver == "y" and xserver_choice == "xserver_vesa" or xserver_choice == "xserver_emgd": }}
-APPEND += "video=vesafb vga=0x318"
+APPEND += "video=vesafb vga=0x318 vmalloc=256MB"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
index e34882f..1b22eab 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"	
@@ -7,8 +7,7 @@ include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)
 branch {{=machine}}
 
 {{ if xserver == "y" and xserver_choice == "xserver_emgd": }}
-include features/emgd/emgd-1.14.scc
-git merge emgd-1.14
+include features/drm-emgd/emgd-1.16.scc
 
 include {{=machine}}.scc
 
-- 
1.7.11.4


