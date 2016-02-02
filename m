Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D946E00C2A; Tue,  2 Feb 2016 10:53:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00, DATE_IN_PAST_06_12, 
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* 1.5 DATE_IN_PAST_06_12 Date: is 6 to 12 hours before Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA68EE00C18
	for <poky@yoctoproject.org>; Tue,  2 Feb 2016 10:53:08 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 02 Feb 2016 10:53:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,385,1449561600"; d="scan'208";a="907021114"
Received: from yctb05.ostc.intel.com ([10.54.69.59])
	by fmsmga002.fm.intel.com with ESMTP; 02 Feb 2016 10:53:08 -0800
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Tue,  2 Feb 2016 10:50:51 +0000
Message-Id: <1454410252-32098-4-git-send-email-leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.6.2
In-Reply-To: <1454410252-32098-1-git-send-email-leonardo.sandoval.gonzalez@linux.intel.com>
References: <1454410252-32098-1-git-send-email-leonardo.sandoval.gonzalez@linux.intel.com>
Cc: saul.wold@intel.com
Subject: [PATCH 3/4][jethro] yocto-bsp: Set KTYPE to user selected base branch
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
X-List-Received-Date: Tue, 02 Feb 2016 18:53:12 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

Fixes the hardcode branch name set to KTYPE, where its value is used as a base branch
when user decides to create a new branch. Tested on x86_64 architecture.

[YOCTO #8630]

(From meta-yocto rev: ab895be90a0cae7dfa77a8aab3b19e5571e7e7bc)

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 9d585b5025187f059f75ffbdc01bda72d17e8a86)
Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 .../target/arch/arm/recipes-kernel/linux/files/machine-preempt-rt.scc  | 3 ++-
 .../target/arch/arm/recipes-kernel/linux/files/machine-standard.scc    | 3 ++-
 .../target/arch/arm/recipes-kernel/linux/files/machine-tiny.scc        | 3 ++-
 .../target/arch/i386/recipes-kernel/linux/files/machine-preempt-rt.scc | 3 ++-
 .../target/arch/i386/recipes-kernel/linux/files/machine-standard.scc   | 3 ++-
 .../target/arch/i386/recipes-kernel/linux/files/machine-tiny.scc       | 3 ++-
 .../target/arch/mips/recipes-kernel/linux/files/machine-preempt-rt.scc | 3 ++-
 .../target/arch/mips/recipes-kernel/linux/files/machine-standard.scc   | 3 ++-
 .../target/arch/mips/recipes-kernel/linux/files/machine-tiny.scc       | 3 ++-
 .../arch/mips64/recipes-kernel/linux/files/machine-preempt-rt.scc      | 3 ++-
 .../target/arch/mips64/recipes-kernel/linux/files/machine-standard.scc | 3 ++-
 .../target/arch/mips64/recipes-kernel/linux/files/machine-tiny.scc     | 3 ++-
 .../arch/powerpc/recipes-kernel/linux/files/machine-preempt-rt.scc     | 3 ++-
 .../arch/powerpc/recipes-kernel/linux/files/machine-standard.scc       | 3 ++-
 .../target/arch/powerpc/recipes-kernel/linux/files/machine-tiny.scc    | 3 ++-
 .../target/arch/qemu/recipes-kernel/linux/files/machine-preempt-rt.scc | 3 ++-
 .../target/arch/qemu/recipes-kernel/linux/files/machine-standard.scc   | 3 ++-
 .../target/arch/qemu/recipes-kernel/linux/files/machine-tiny.scc       | 3 ++-
 .../arch/x86_64/recipes-kernel/linux/files/machine-preempt-rt.scc      | 3 ++-
 .../target/arch/x86_64/recipes-kernel/linux/files/machine-standard.scc | 3 ++-
 .../target/arch/x86_64/recipes-kernel/linux/files/machine-tiny.scc     | 3 ++-
 21 files changed, 42 insertions(+), 21 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-preempt-rt.scc b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-preempt-rt.scc
index ca5f3b5..ea6966c 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-preempt-rt.scc
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-preempt-rt.scc
@@ -1,10 +1,11 @@
 # yocto-bsp-filename {{=machine}}-preempt-rt.scc
 define KMACHINE {{=machine}}
-define KTYPE preempt-rt
+
 define KARCH arm
 
 include {{=map_preempt_rt_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
+define KTYPE {{=new_kbranch}}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-standard.scc b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-standard.scc
index 9014c2c..405972d 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-standard.scc
@@ -1,10 +1,11 @@
 # yocto-bsp-filename {{=machine}}-standard.scc
 define KMACHINE {{=machine}}
-define KTYPE standard
+
 define KARCH arm
 
 include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
+define KTYPE {{=new_kbranch}}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-tiny.scc b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-tiny.scc
index 3f1c252..921b7e7 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-tiny.scc
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-tiny.scc
@@ -1,10 +1,11 @@
 # yocto-bsp-filename {{=machine}}-tiny.scc
 define KMACHINE {{=machine}}
-define KTYPE tiny
+
 define KARCH arm
 
 include {{=map_tiny_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
+define KTYPE {{=new_kbranch}}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-preempt-rt.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-preempt-rt.scc
index 619ee3f..7146e23 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-preempt-rt.scc
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-preempt-rt.scc
@@ -1,10 +1,11 @@
 # yocto-bsp-filename {{=machine}}-preempt-rt.scc
 define KMACHINE {{=machine}}
-define KTYPE preempt-rt
+
 define KARCH i386
 
 include {{=map_preempt_rt_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
+define KTYPE {{=new_kbranch}}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-standard.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-standard.scc
index 682012f..67a54be 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-standard.scc
@@ -1,10 +1,11 @@
 # yocto-bsp-filename {{=machine}}-standard.scc
 define KMACHINE {{=machine}}
-define KTYPE standard
+
 define KARCH i386
 
 include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
+define KTYPE {{=new_kbranch}}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-tiny.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-tiny.scc
index cc75196..91373b3 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-tiny.scc
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-tiny.scc
@@ -1,10 +1,11 @@
 # yocto-bsp-filename {{=machine}}-tiny.scc
 define KMACHINE {{=machine}}
-define KTYPE tiny
+
 define KARCH i386
 
 include {{=map_tiny_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
+define KTYPE {{=new_kbranch}}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-preempt-rt.scc b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-preempt-rt.scc
index 176190c..a128255 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-preempt-rt.scc
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-preempt-rt.scc
@@ -1,10 +1,11 @@
 # yocto-bsp-filename {{=machine}}-preempt-rt.scc
 define KMACHINE {{=machine}}
-define KTYPE preempt-rt
+
 define KARCH mips
 
 include {{=map_preempt_rt_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
+define KTYPE {{=new_kbranch}}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-standard.scc b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-standard.scc
index f05dd85..7c9dc52 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-standard.scc
@@ -1,10 +1,11 @@
 # yocto-bsp-filename {{=machine}}-standard.scc
 define KMACHINE {{=machine}}
-define KTYPE standard
+
 define KARCH mips
 
 include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
+define KTYPE {{=new_kbranch}}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-tiny.scc b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-tiny.scc
index f71c775..64f395b 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-tiny.scc
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-tiny.scc
@@ -1,10 +1,11 @@
 # yocto-bsp-filename {{=machine}}-tiny.scc
 define KMACHINE {{=machine}}
-define KTYPE tiny
+
 define KARCH mips
 
 include {{=map_tiny_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
+define KTYPE {{=new_kbranch}}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-preempt-rt.scc b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-preempt-rt.scc
index 176190c..a128255 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-preempt-rt.scc
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-preempt-rt.scc
@@ -1,10 +1,11 @@
 # yocto-bsp-filename {{=machine}}-preempt-rt.scc
 define KMACHINE {{=machine}}
-define KTYPE preempt-rt
+
 define KARCH mips
 
 include {{=map_preempt_rt_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
+define KTYPE {{=new_kbranch}}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-standard.scc b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-standard.scc
index f05dd85..7c9dc52 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-standard.scc
@@ -1,10 +1,11 @@
 # yocto-bsp-filename {{=machine}}-standard.scc
 define KMACHINE {{=machine}}
-define KTYPE standard
+
 define KARCH mips
 
 include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
+define KTYPE {{=new_kbranch}}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-tiny.scc b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-tiny.scc
index f71c775..64f395b 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-tiny.scc
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-tiny.scc
@@ -1,10 +1,11 @@
 # yocto-bsp-filename {{=machine}}-tiny.scc
 define KMACHINE {{=machine}}
-define KTYPE tiny
+
 define KARCH mips
 
 include {{=map_tiny_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
+define KTYPE {{=new_kbranch}}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-preempt-rt.scc b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-preempt-rt.scc
index 40c9267..91ccfb8 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-preempt-rt.scc
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-preempt-rt.scc
@@ -1,10 +1,11 @@
 # yocto-bsp-filename {{=machine}}-preempt-rt.scc
 define KMACHINE {{=machine}}
-define KTYPE preempt-rt
+
 define KARCH powerpc
 
 include {{=map_preempt_rt_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
+define KTYPE {{=new_kbranch}}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-standard.scc b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-standard.scc
index 7a1d35b..89b344f 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-standard.scc
@@ -1,10 +1,11 @@
 # yocto-bsp-filename {{=machine}}-standard.scc
 define KMACHINE {{=machine}}
-define KTYPE standard
+
 define KARCH powerpc
 
 include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
+define KTYPE {{=new_kbranch}}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-tiny.scc b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-tiny.scc
index 1bf94b2..2701fd8 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-tiny.scc
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-tiny.scc
@@ -1,10 +1,11 @@
 # yocto-bsp-filename {{=machine}}-tiny.scc
 define KMACHINE {{=machine}}
-define KTYPE tiny
+
 define KARCH powerpc
 
 include {{=map_tiny_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
+define KTYPE {{=new_kbranch}}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-preempt-rt.scc b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-preempt-rt.scc
index 6aaffb8..a81b858 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-preempt-rt.scc
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-preempt-rt.scc
@@ -1,10 +1,11 @@
 # yocto-bsp-filename {{=machine}}-preempt-rt.scc
 define KMACHINE {{=machine}}
-define KTYPE preempt-rt
+
 define KARCH {{=qemuarch}}
 
 include {{=map_preempt_rt_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
+define KTYPE {{=new_kbranch}}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-standard.scc b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-standard.scc
index d2a03ec..14554da 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-standard.scc
@@ -1,6 +1,6 @@
 # yocto-bsp-filename {{=machine}}-standard.scc
 define KMACHINE {{=machine}}
-define KTYPE standard
+
 define KARCH {{=qemuarch}}
 
 {{ if qemuarch == "i386" or qemuarch == "x86_64": }}
@@ -14,6 +14,7 @@ include bsp/mti-malta32/mti-malta32-be-standard
 {{ if qemuarch == "mips64": }}
 include bsp/mti-malta64/mti-malta64-be-standard
 {{ if need_new_kbranch == "y": }}
+define KTYPE {{=new_kbranch}}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-tiny.scc b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-tiny.scc
index 6c098fe..41d4c6f 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-tiny.scc
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-tiny.scc
@@ -1,10 +1,11 @@
 # yocto-bsp-filename {{=machine}}-tiny.scc
 define KMACHINE {{=machine}}
-define KTYPE tiny
+
 define KARCH {{=qemuarch}}
 
 include {{=map_tiny_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
+define KTYPE {{=new_kbranch}}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-preempt-rt.scc b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-preempt-rt.scc
index fd5320b..bbeeecd 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-preempt-rt.scc
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-preempt-rt.scc
@@ -1,10 +1,11 @@
 # yocto-bsp-filename {{=machine}}-preempt-rt.scc
 define KMACHINE {{=machine}}
-define KTYPE preempt-rt
+
 define KARCH x86_64
 
 include {{=map_preempt_rt_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
+define KTYPE {{=new_kbranch}}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-standard.scc b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-standard.scc
index 569f967..9c9cc90 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-standard.scc
@@ -1,10 +1,11 @@
 # yocto-bsp-filename {{=machine}}-standard.scc
 define KMACHINE {{=machine}}
-define KTYPE standard
+
 define KARCH x86_64
 
 include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
+define KTYPE {{=new_kbranch}}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-tiny.scc b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-tiny.scc
index fb21432..b53706f 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-tiny.scc
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-tiny.scc
@@ -1,10 +1,11 @@
 # yocto-bsp-filename {{=machine}}-tiny.scc
 define KMACHINE {{=machine}}
-define KTYPE tiny
+
 define KARCH x86_64
 
 include {{=map_tiny_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
+define KTYPE {{=new_kbranch}}
 branch {{=machine}}
 
 include {{=machine}}.scc
-- 
2.6.2


