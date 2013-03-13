Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53547E0042A
	for <poky@yoctoproject.org>; Wed, 13 Mar 2013 12:04:18 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 13 Mar 2013 12:04:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,838,1355126400"; d="scan'208";a="214167764"
Received: from unknown (HELO localhost) ([10.255.12.139])
	by AZSMGA002.ch.intel.com with ESMTP; 13 Mar 2013 12:04:17 -0700
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Wed, 13 Mar 2013 14:03:58 -0500
Message-Id: <e9cb6033302c2caba482378fe065f058806f7f0d.1363198817.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
References: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1363198817.git.tom.zanussi@linux.intel.com>
References: <cover.1363198817.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 04/18] yocto-bsp: use map_standard_branch()
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
X-List-Received-Date: Wed, 13 Mar 2013 19:04:18 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

Use map_standard_branch() instead of naming the branch directly.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../{{=machine}}-standard.scc"                                          | 2 +-
 .../{{=machine}}-standard.scc"                                          | 2 +-
 .../{{=machine}}-standard.scc"                                          | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
index d131678..b12c50c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"	
@@ -2,7 +2,7 @@ define KMACHINE {{=machine}}
 define KTYPE standard
 define KARCH arm
 
-include ktypes/standard
+include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
 branch {{=machine}}
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
index 3b916b4..326663a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"	
@@ -2,7 +2,7 @@ define KMACHINE {{=machine}}
 define KTYPE standard
 define KARCH mips
 
-include ktypes/standard
+include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
 branch {{=machine}}
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
index a521874..53a74a6 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"	
@@ -2,7 +2,7 @@ define KMACHINE {{=machine}}
 define KTYPE standard
 define KARCH powerpc
 
-include ktypes/standard
+include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
 branch {{=machine}}
 
-- 
1.7.11.4


