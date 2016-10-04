Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82457E00777; Tue,  4 Oct 2016 14:50:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 077CBE007E8
	for <poky@yoctoproject.org>; Tue,  4 Oct 2016 14:49:59 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga105.fm.intel.com with ESMTP; 04 Oct 2016 14:49:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,445,1473145200"; d="scan'208";a="16225390"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.5.48])
	by fmsmga005.fm.intel.com with ESMTP; 04 Oct 2016 14:49:58 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Tue,  4 Oct 2016 16:53:40 -0500
Message-Id: <2db74395351c3912e3bd6de92811db354e2573ad.1475617525.git.leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1475617525.git.leonardo.sandoval.gonzalez@linux.intel.com>
References: <cover.1475617525.git.leonardo.sandoval.gonzalez@linux.intel.com>
In-Reply-To: <cover.1475617525.git.leonardo.sandoval.gonzalez@linux.intel.com>
References: <cover.1475617525.git.leonardo.sandoval.gonzalez@linux.intel.com>
Subject: [PATCH 7/8] yocto-bsp: linux-yocto recipes update (4.4 to 4.8) for PowerPC arch
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
X-List-Received-Date: Tue, 04 Oct 2016 21:50:03 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

[YOCTO #10301]

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +--
 .../linux/linux-yocto-tiny_4.8.bbappend            | 33 ++++++++++++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.8.bbappend  | 32 +++++++++++++++++++++
 3 files changed, 67 insertions(+), 2 deletions(-)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend

diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
index 00cf360..0120ed0 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (4.4) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (4.8) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_4.4"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_4.8"}}
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
new file mode 100644
index 0000000..5fb45d9
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
@@ -0,0 +1,33 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_4.8": }} this
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
+
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-tiny.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
+           "
+
+# replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#LINUX_VERSION = "4.8"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend
new file mode 100644
index 0000000..7c0df8b
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -0,0 +1,32 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_4.8": }} this
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-features.scc \
+           "
+
+# replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#LINUX_VERSION = "4.8"
-- 
2.1.4


