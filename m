Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 949B3E0131E
	for <poky@yoctoproject.org>; Wed, 13 Mar 2013 12:04:20 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 13 Mar 2013 12:04:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,838,1355126400"; d="scan'208";a="214167772"
Received: from unknown (HELO localhost) ([10.255.12.139])
	by AZSMGA002.ch.intel.com with ESMTP; 13 Mar 2013 12:04:19 -0700
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Wed, 13 Mar 2013 14:04:00 -0500
Message-Id: <be6687ca5284f3266ccb9f77aa9fe928ec1f631f.1363198817.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
References: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1363198817.git.tom.zanussi@linux.intel.com>
References: <cover.1363198817.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 06/18] yocto-bsp: update machine-standard.scc
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
X-List-Received-Date: Wed, 13 Mar 2013 19:04:20 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

Simplify machine-standard.scc for all the templates.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../{{=machine}}-standard.scc"                       | 20 +-------------------
 1 file changed, 1 insertion(+), 19 deletions(-)

diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
index 04a3620..1cd976b 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"	
@@ -1,26 +1,8 @@
 define KMACHINE {{=machine}}
 define KTYPE standard
-{{ if qemuarch == "i386": }}
-define KARCH i386
-{{ if qemuarch == "x86_64": }}
-define KARCH x86_64
-{{ if qemuarch == "arm": }}
-define KARCH arm
-{{ if qemuarch == "powerpc": }}
-define KARCH powerpc
-{{ if qemuarch == "mips": }}
-define KARCH mips
+define KARCH {{=qemuarch}}
 
-{{ if qemuarch == "i386": }}
 include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
-{{ if qemuarch == "x86_64": }}
-include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
-{{ if qemuarch == "arm": }}
-include bsp/arm-versatile-926ejs/arm-versatile-926ejs-standard
-{{ if qemuarch == "powerpc": }}
-include bsp/qemu-ppc32/qemu-ppc32-standard
-{{ if qemuarch == "mips": }}
-include bsp/mti-malta32/mti-malta32-be-standard
 {{ if need_new_kbranch == "y": }}
 branch {{=machine}}
 
-- 
1.7.11.4


