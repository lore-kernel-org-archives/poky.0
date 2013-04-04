Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E66CBE013AC
	for <poky@yoctoproject.org>; Thu,  4 Apr 2013 15:09:32 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 04 Apr 2013 15:09:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,411,1363158000"; d="scan'208";a="223004636"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by AZSMGA002.ch.intel.com with ESMTP; 04 Apr 2013 15:09:32 -0700
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Thu,  4 Apr 2013 17:09:20 -0500
Message-Id: <9107a2236492d3360550b14fa52352aaddfdc9d4.1365112661.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <041793e139db4883ea88b3651bc2eca1ad99975a.1365112661.git.tom.zanussi@linux.intel.com>
References: <041793e139db4883ea88b3651bc2eca1ad99975a.1365112661.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1365112661.git.tom.zanussi@linux.intel.com>
References: <cover.1365112661.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 5/8] yocto-bsp: use specific bsp metadata for qemu machines
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
X-List-Received-Date: Thu, 04 Apr 2013 22:09:33 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

For the qemu-based BSPs, use bsp metadata that's guaranteed to boot in
qemu.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../{{=machine}}-standard.scc"                                     | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
index 1cd976b..0e20023 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"	
@@ -2,7 +2,14 @@ define KMACHINE {{=machine}}
 define KTYPE standard
 define KARCH {{=qemuarch}}
 
+{{ if qemuarch == "i386" or qemuarch == "x86_64": }}
 include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
+{{ if qemuarch == "arm": }}
+include bsp/arm-versatile-926ejs/arm-versatile-926ejs-standard
+{{ if qemuarch == "powerpc": }}
+include bsp/qemu-ppc32/qemu-ppc32-standard
+{{ if qemuarch == "mips": }}
+include bsp/mti-malta32/mti-malta32-be-standard
 {{ if need_new_kbranch == "y": }}
 branch {{=machine}}
 
-- 
1.7.11.4


