Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3534BE013BB
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:22:38 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 5E30D3042F
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:22:31 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:20:18 -0700
Message-Id: <47a759e6b4954b0872b79cf7d521050c6290e82b.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 5E30D3042F.5E13C
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 52/57] yocto-bsp: remove 'branch' statements in .scc if reusing branch
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
X-List-Received-Date: Mon, 13 Aug 2012 21:22:38 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

If reusing a branch (need_new_branch == 'n') we don't need to branch
in the .scc, so make it conditional on need_new_branch.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux/files/{{=machine}}-standard.scc          |    1 +
 .../linux/files/{{=machine}}-standard.scc          |    1 +
 .../linux/files/{{=machine}}-standard.scc          |    1 +
 .../linux/files/{{=machine}}-standard.scc          |    1 +
 .../linux/files/{{=machine}}-preempt-rt.scc        |    5 +----
 .../linux/files/{{=machine}}-standard.scc          |    5 +----
 .../linux/files/{{=machine}}-standard.scc          |    1 +
 7 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-standard.scc
index cd8fa9c..d131678 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -3,6 +3,7 @@ define KTYPE standard
 define KARCH arm
 
 include ktypes/standard
+{{ if need_new_kbranch == "y": }}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
index c7ba1fb..a241b29 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -3,6 +3,7 @@ define KTYPE standard
 define KARCH i386
 
 include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
+{{ if need_new_kbranch == "y": }}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-standard.scc
index c6139f0..3b916b4 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -3,6 +3,7 @@ define KTYPE standard
 define KARCH mips
 
 include ktypes/standard
+{{ if need_new_kbranch == "y": }}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-standard.scc
index 1213e61..a521874 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -3,6 +3,7 @@ define KTYPE standard
 define KARCH powerpc
 
 include ktypes/standard
+{{ if need_new_kbranch == "y": }}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
index 6399a4b..0f5a582 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
@@ -13,18 +13,15 @@ define KARCH mips
 
 {{ if qemuarch == "i386": }}
 include bsp/common-pc/common-pc-preempt-rt
-branch {{=machine}}
 {{ if qemuarch == "x86_64": }}
 include bsp/common-pc-64/common-pc-64-preempt-rt
-branch {{=machine}}
 {{ if qemuarch == "arm": }}
 include bsp/arm-versatile-926ejs/arm-versatile-926ejs-preempt-rt
-branch {{=machine}}
 {{ if qemuarch == "powerpc": }}
 include bsp/qemu-ppc32/qemu-ppc32-rt
-branch {{=machine}}
 {{ if qemuarch == "mips": }}
 include bsp/mti-malta32/mti-malta32-be-preempt-rt
+{{ if need_new_kbranch == "y": }}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-standard.scc
index 4def04a..04a3620 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -13,18 +13,15 @@ define KARCH mips
 
 {{ if qemuarch == "i386": }}
 include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
-branch {{=machine}}
 {{ if qemuarch == "x86_64": }}
 include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
-branch {{=machine}}
 {{ if qemuarch == "arm": }}
 include bsp/arm-versatile-926ejs/arm-versatile-926ejs-standard
-branch {{=machine}}
 {{ if qemuarch == "powerpc": }}
 include bsp/qemu-ppc32/qemu-ppc32-standard
-branch {{=machine}}
 {{ if qemuarch == "mips": }}
 include bsp/mti-malta32/mti-malta32-be-standard
+{{ if need_new_kbranch == "y": }}
 branch {{=machine}}
 
 include {{=machine}}.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
index 4a034fa..3253133 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -3,6 +3,7 @@ define KTYPE standard
 define KARCH x86_64
 
 include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
+{{ if need_new_kbranch == "y": }}
 branch {{=machine}}
 
 include {{=machine}}.scc
-- 
1.7.9.5


