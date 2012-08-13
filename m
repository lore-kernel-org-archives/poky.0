Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 898FDE013BB
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:22:39 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id B021F3042D
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:22:33 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:20:19 -0700
Message-Id: <ab8a9c1b83b1e905796079d2432f1f630a6fcecb.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: B021F3042D.359A2
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 53/57] yocto-bsp: add some standard policy
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
X-List-Received-Date: Mon, 13 Aug 2012 21:22:39 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add some useful default options to to the i386 and x86_64 templates.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux/files/{{=machine}}-preempt-rt.scc        |    7 +++++++
 .../linux/files/{{=machine}}-standard.scc          |    7 +++++++
 .../linux/files/{{=machine}}-preempt-rt.scc        |    7 +++++++
 .../linux/files/{{=machine}}-standard.scc          |    7 +++++++
 4 files changed, 28 insertions(+)

diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
index 9fb8002..6ee1c93 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
@@ -6,3 +6,10 @@ define KARCH i386
 include ktypes/preempt-rt
 
 include {{=machine}}.scc
+
+# default policy for preempt-rt kernels
+include cfg/usb-mass-storage.scc
+include cfg/boot-live.scc
+include features/logbuf/size-normal.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
index a241b29..2c16efa 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -7,3 +7,10 @@ include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)
 branch {{=machine}}
 
 include {{=machine}}.scc
+
+# default policy for standard kernels
+include cfg/usb-mass-storage.scc
+include cfg/boot-live.scc
+include features/logbuf/size-normal.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
index ecb0f01..5819dce 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
@@ -6,3 +6,10 @@ define KARCH x86_64
 include ktypes/preempt-rt
 
 include {{=machine}}.scc
+
+# default policy for preempt-rt kernels
+include cfg/usb-mass-storage.scc
+include cfg/boot-live.scc
+include features/logbuf/size-normal.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
index 3253133..9e5cf13 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
@@ -7,3 +7,10 @@ include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)
 branch {{=machine}}
 
 include {{=machine}}.scc
+
+# default policy for standard kernels
+include cfg/usb-mass-storage.scc
+include cfg/boot-live.scc
+include features/logbuf/size-normal.scc
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
-- 
1.7.9.5


