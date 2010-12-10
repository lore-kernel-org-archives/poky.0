Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F5B04C811DB;
	Fri, 10 Dec 2010 10:01:44 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBAG1dCT027769;
	Fri, 10 Dec 2010 08:01:42 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Fri, 10 Dec 2010 11:02:55 -0500
Message-Id: <8a5b5c7c2f9279852dda0930e4776bd4fe3b80d6.1291996631.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1291996631.git.bruce.ashfield@windriver.com>
References: <cover.1291996631.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1291996631.git.bruce.ashfield@windriver.com>
References: <cover.1291996631.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 3/3] qemu: update arm timer handling
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
X-List-Received-Date: Fri, 10 Dec 2010 16:01:44 -0000

commit e388771458b4ff3ad81ab70e390b24d069647da4 in the upstream
kernel factored/cleaned the SP804 timer code. This commit exposed
issues in the qemu timer emulation that was dependent on the
old behaviour. As a result, no kernel past 2.6.34 would boot on
qemu-system-arm.

The quick fix is to backport two patches from the latest qemu
repositories that fix the timer handling under emulation. Long
term, these will be dropped when qemu is upreved.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../qemu-0.12.4/arm_timer-fix-oneshot-mode.patch   |   32 ++++++++++++++++
 .../arm_timer-reload-timer-when-enabled.patch      |   40 ++++++++++++++++++++
 meta/recipes-devtools/qemu/qemu_0.12.4.bb          |    4 +-
 3 files changed, 75 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-devtools/qemu/qemu-0.12.4/arm_timer-fix-oneshot-mode.patch
 create mode 100644 meta/recipes-devtools/qemu/qemu-0.12.4/arm_timer-reload-timer-when-enabled.patch

diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/arm_timer-fix-oneshot-mode.patch b/meta/recipes-devtools/qemu/qemu-0.12.4/arm_timer-fix-oneshot-mode.patch
new file mode 100644
index 0000000..530736c
--- /dev/null
+++ b/meta/recipes-devtools/qemu/qemu-0.12.4/arm_timer-fix-oneshot-mode.patch
@@ -0,0 +1,32 @@
+From a9cf98d939c4f6539fad7e7d812ea16d96ba3dc9 Mon Sep 17 00:00:00 2001
+From: Rabin Vincent <rabin@rab.in>
+Date: Sun, 2 May 2010 15:20:52 +0530
+Subject: [PATCH] arm_timer: fix oneshot mode
+
+commit id: a9cf98d939c4f6539fad7e7d812ea16d96ba3dc9 in git://git.sv.gnu.org/qemu.git
+
+In oneshot mode, the delta needs to come from the TimerLoad register,
+not the maximum limit.
+
+Signed-off-by: Rabin Vincent <rabin@rab.in>
+Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
+---
+ hw/arm_timer.c |    2 +-
+ 1 files changed, 1 insertions(+), 1 deletions(-)
+
+diff --git a/hw/arm_timer.c b/hw/arm_timer.c
+index 5b6947a..9073ffc 100644
+--- a/hw/arm_timer.c
++++ b/hw/arm_timer.c
+@@ -71,7 +71,7 @@ static void arm_timer_recalibrate(arm_timer_state *s, int reload)
+ {
+     uint32_t limit;
+ 
+-    if ((s->control & TIMER_CTRL_PERIODIC) == 0) {
++    if ((s->control & (TIMER_CTRL_PERIODIC | TIMER_CTRL_ONESHOT)) == 0) {
+         /* Free running.  */
+         if (s->control & TIMER_CTRL_32BIT)
+             limit = 0xffffffff;
+-- 
+1.6.5.2
+
diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/arm_timer-reload-timer-when-enabled.patch b/meta/recipes-devtools/qemu/qemu-0.12.4/arm_timer-reload-timer-when-enabled.patch
new file mode 100644
index 0000000..1890e21
--- /dev/null
+++ b/meta/recipes-devtools/qemu/qemu-0.12.4/arm_timer-reload-timer-when-enabled.patch
@@ -0,0 +1,40 @@
+From d6759902cb467c002086853d2eb38fb969c29f7f Mon Sep 17 00:00:00 2001
+From: Rabin Vincent <rabin@rab.in>
+Date: Sun, 2 May 2010 15:20:51 +0530
+Subject: [PATCH] arm_timer: reload timer when enabled
+
+commit id: d6759902cb467c002086853d2eb38fb969c29f7f in git://git.sv.gnu.org/qemu.git
+
+Reload the timer when TimerControl is written, if the timer is to be
+enabled.  Otherwise, if an earlier write to TimerLoad was done while
+periodic mode was not set, s->delta may incorrectly still have the value
+of the maximum limit instead of the value written to TimerLoad.
+
+This problem is evident on versatileap on current linux-next, which
+enables TIMER_CTRL_32BIT before writing to TimerLoad and then enabling
+periodic mode and starting the timer.  This causes the first periodic
+tick to be scheduled to occur after 0xffffffff periods, leading to a
+perceived hang while the kernel waits for the first timer tick.
+
+Signed-off-by: Rabin Vincent <rabin@rab.in>
+Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
+---
+ hw/arm_timer.c |    2 +-
+ 1 files changed, 1 insertions(+), 1 deletions(-)
+
+diff --git a/hw/arm_timer.c b/hw/arm_timer.c
+index 9fef191..5b6947a 100644
+--- a/hw/arm_timer.c
++++ b/hw/arm_timer.c
+@@ -113,7 +113,7 @@ static void arm_timer_write(void *opaque, target_phys_addr_t offset,
+         case 1: freq >>= 4; break;
+         case 2: freq >>= 8; break;
+         }
+-        arm_timer_recalibrate(s, 0);
++        arm_timer_recalibrate(s, s->control & TIMER_CTRL_ENABLE);
+         ptimer_set_freq(s->timer, freq);
+         if (s->control & TIMER_CTRL_ENABLE) {
+             /* Restart the timer if still enabled.  */
+-- 
+1.6.5.2
+
diff --git a/meta/recipes-devtools/qemu/qemu_0.12.4.bb b/meta/recipes-devtools/qemu/qemu_0.12.4.bb
index 04526d1..6125bca 100644
--- a/meta/recipes-devtools/qemu/qemu_0.12.4.bb
+++ b/meta/recipes-devtools/qemu/qemu_0.12.4.bb
@@ -25,7 +25,9 @@ SRC_URI = "\
     file://cursor-shadow-fix.patch \
     file://vmware-vga-fifo-rewind.patch \
     file://fix-configure-checks.patch \
-    file://powerpc_rom.bin"
+    file://powerpc_rom.bin \
+    file://arm_timer-fix-oneshot-mode.patch \
+    file://arm_timer-reload-timer-when-enabled.patch"
 
 SRC_URI[md5sum] = "93e6b134dff89b2799f57b7d9e0e0fc5"
 SRC_URI[sha256sum] = "1a29a5b5151162d1de035c4926d1a1dbffee4a145ef61ee865d6b82aaea0602e"
-- 
1.7.0.4


