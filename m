Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C531E014E8
	for <poky@yoctoproject.org>; Thu,  4 Apr 2013 15:09:36 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 04 Apr 2013 15:09:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,411,1363158000"; d="scan'208";a="223004650"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by AZSMGA002.ch.intel.com with ESMTP; 04 Apr 2013 15:09:35 -0700
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Thu,  4 Apr 2013 17:09:22 -0500
Message-Id: <df091e222ff7e1b55c7d54573e32205a7a39adbd.1365112661.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <041793e139db4883ea88b3651bc2eca1ad99975a.1365112661.git.tom.zanussi@linux.intel.com>
References: <041793e139db4883ea88b3651bc2eca1ad99975a.1365112661.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1365112661.git.tom.zanussi@linux.intel.com>
References: <cover.1365112661.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 7/8] yocto-bsp: set SRCREV for arm-based qemu machines
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
X-List-Received-Date: Thu, 04 Apr 2013 22:09:36 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

arm-based qemu machines won't boot with the default 3.8 machine SRCREV
because it's missing the commit 'arm: add dummy swizzle for versatile
with qemu', so we need to use a SRCREV that has it merged.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 ... kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" | 3 +++
 1 file changed, 3 insertions(+)

diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
index e2013ea..572efe6 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
@@ -48,6 +48,9 @@ SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-features.scc \
            "
 
+{{ if qemuarch == "arm": }}
+SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "bf458ca0e48f4f57cbb02b52070a000f361eec84"
+
 # uncomment and replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "b170394a475b96ecc92cbc9e4b002bed0a9f69c5"
-- 
1.7.11.4


