Return-Path: <edwin.zhai@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id B17EF4C81110
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 07:22:38 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Jan 2011 05:22:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,351,1291622400"; d="scan'208";a="377353910"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.31])
	by azsmga001.ch.intel.com with ESMTP; 20 Jan 2011 05:22:36 -0800
Message-Id: <9917157fb848bbed946d215e0f7bc1ba12cfbf3e.1295529720.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1295529720.git.edwin.zhai@intel.com>
References: <cover.1295529720.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Old-Date: Sat, 15 Jan 2011 16:32:15 +0800
Date: Thu, 20 Jan 2011 21:27:05 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] qemu: Upgrade from 0.12.4 to 0.13.0
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
X-List-Received-Date: Thu, 20 Jan 2011 13:22:40 -0000

Patch status:
-- Removed --
arm-cp15-fix.patch
arm_timer-fix-oneshot-mode.patch
arm_timer-reload-timer-when-enabled.patch
cursor-shadow-fix.patch
-- They are already in upstream or some new changes make them useless.

-- Added --
parallel_make.patch:     Fix "make -j(>=6)" failure
wacom-tablet-fix.patch:  Fix seg fault of usb tablet.
port92_fix.patch:        Fix boot failure on ppc due to port 0x92 conflict.

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../qemu/qemu-0.12.4/arm-cp15-fix.patch            |  131 -----
 .../qemu-0.12.4/arm_timer-fix-oneshot-mode.patch   |   32 --
 .../arm_timer-reload-timer-when-enabled.patch      |   40 --
 .../qemu/qemu-0.12.4/cursor-shadow-fix.patch       |   35 --
 .../qemu/qemu-0.12.4/qemu-ppc-hack.patch           |  136 -----
 .../enable-i386-linux-user.patch                   |   16 +-
 .../fix-configure-checks.patch                     |   12 +-
 .../{qemu-0.12.4 => qemu-0.13.0}/fix-dirent.patch  |    0
 .../{qemu-0.12.4 => qemu-0.13.0}/fix-nogl.patch    |   24 +-
 .../{qemu-0.12.4 => qemu-0.13.0}/glflags.patch     |    0
 .../{qemu-0.12.4 => qemu-0.13.0}/init-info.patch   |    8 +-
 .../linker-flags.patch                             |   16 +-
 .../{qemu-0.12.4 => qemu-0.13.0}/no-strip.patch    |   18 +-
 .../qemu/qemu-0.13.0/parallel_make.patch           |   34 ++
 .../qemu/qemu-0.13.0/port92_fix.patch              |  196 ++++++++
 .../{qemu-0.12.4 => qemu-0.13.0}/powerpc_rom.bin   |  Bin 4096 -> 4096 bytes
 .../qemu-git-qemugl-host.patch                     |  518 ++++++++++----------
 .../qemu/qemu-0.13.0/qemu-ppc-hack.patch           |  108 ++++
 .../qemu-vmware-vga-depth.patch                    |   52 +-
 .../qemugl-allow-glxcontext-release.patch          |    0
 .../vmware-vga-fifo-rewind.patch                   |   24 +-
 .../qemu/qemu-0.13.0/wacom-tablet-fix.patch        |   65 +++
 .../workaround_bad_futex_headers.patch             |    8 +-
 .../qemu/{qemu_0.12.4.bb => qemu_0.13.0.bb}        |   15 +-
 24 files changed, 752 insertions(+), 736 deletions(-)
 delete mode 100644 meta/recipes-devtools/qemu/qemu-0.12.4/arm-cp15-fix.patch
 delete mode 100644 meta/recipes-devtools/qemu/qemu-0.12.4/arm_timer-fix-oneshot-mode.patch
 delete mode 100644 meta/recipes-devtools/qemu/qemu-0.12.4/arm_timer-reload-timer-when-enabled.patch
 delete mode 100644 meta/recipes-devtools/qemu/qemu-0.12.4/cursor-shadow-fix.patch
 delete mode 100644 meta/recipes-devtools/qemu/qemu-0.12.4/qemu-ppc-hack.patch
 rename meta/recipes-devtools/qemu/{qemu-0.12.4 => qemu-0.13.0}/enable-i386-linux-user.patch (73%)
 rename meta/recipes-devtools/qemu/{qemu-0.12.4 => qemu-0.13.0}/fix-configure-checks.patch (65%)
 rename meta/recipes-devtools/qemu/{qemu-0.12.4 => qemu-0.13.0}/fix-dirent.patch (100%)
 rename meta/recipes-devtools/qemu/{qemu-0.12.4 => qemu-0.13.0}/fix-nogl.patch (73%)
 rename meta/recipes-devtools/qemu/{qemu-0.12.4 => qemu-0.13.0}/glflags.patch (100%)
 rename meta/recipes-devtools/qemu/{qemu-0.12.4 => qemu-0.13.0}/init-info.patch (74%)
 rename meta/recipes-devtools/qemu/{qemu-0.12.4 => qemu-0.13.0}/linker-flags.patch (59%)
 rename meta/recipes-devtools/qemu/{qemu-0.12.4 => qemu-0.13.0}/no-strip.patch (57%)
 create mode 100644 meta/recipes-devtools/qemu/qemu-0.13.0/parallel_make.patch
 create mode 100644 meta/recipes-devtools/qemu/qemu-0.13.0/port92_fix.patch
 rename meta/recipes-devtools/qemu/{qemu-0.12.4 => qemu-0.13.0}/powerpc_rom.bin (100%)
 rename meta/recipes-devtools/qemu/{qemu-0.12.4 => qemu-0.13.0}/qemu-git-qemugl-host.patch (99%)
 create mode 100644 meta/recipes-devtools/qemu/qemu-0.13.0/qemu-ppc-hack.patch
 rename meta/recipes-devtools/qemu/{qemu-0.12.4 => qemu-0.13.0}/qemu-vmware-vga-depth.patch (68%)
 rename meta/recipes-devtools/qemu/{qemu-0.12.4 => qemu-0.13.0}/qemugl-allow-glxcontext-release.patch (100%)
 rename meta/recipes-devtools/qemu/{qemu-0.12.4 => qemu-0.13.0}/vmware-vga-fifo-rewind.patch (94%)
 create mode 100644 meta/recipes-devtools/qemu/qemu-0.13.0/wacom-tablet-fix.patch
 rename meta/recipes-devtools/qemu/{qemu-0.12.4 => qemu-0.13.0}/workaround_bad_futex_headers.patch (71%)
 rename meta/recipes-devtools/qemu/{qemu_0.12.4.bb => qemu_0.13.0.bb} (73%)

diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/arm-cp15-fix.patch b/meta/recipes-devtools/qemu/qemu-0.12.4/arm-cp15-fix.patch
deleted file mode 100644
index 1e0ea43..0000000
--- a/meta/recipes-devtools/qemu/qemu-0.12.4/arm-cp15-fix.patch
+++ /dev/null
@@ -1,131 +0,0 @@
-From: Riku Voipio <riku.voipio@nokia.com>
-
-Access the cp15.c13 TLS registers directly with TCG ops instead of with
-a slow helper. If the the cp15 read/write was not TLS register access,
-fall back to the cp15 helper.
-
-This makes accessing __thread variables in linux-user when apps are compiled
-with -mtp=cp15 possible. legal cp15 register to acces from linux-user are
-already checked in cp15_user_ok.
-
-While at it, make the cp15.c13 Thread ID registers available only on
-ARMv6K and newer.
-
-Signed-off-by: Riku Voipio <riku.voipio@nokia.com>
-Acked-by: Laurent Desnogues <laurent.desnogues@gmail.com>
-
-diff --git a/target-arm/helper.c b/target-arm/helper.c
-index b3aec99..27001e8 100644
---- a/target-arm/helper.c
-+++ b/target-arm/helper.c
-@@ -511,7 +511,6 @@  void HELPER(set_cp15)(CPUState *env, uint32_t insn, uint32_t val)
- uint32_t HELPER(get_cp15)(CPUState *env, uint32_t insn)
- {
-     cpu_abort(env, "cp15 insn %08x\n", insn);
--    return 0;
- }
- 
- /* These should probably raise undefined insn exceptions.  */
-@@ -1491,15 +1490,6 @@  void HELPER(set_cp15)(CPUState *env, uint32_t insn, uint32_t val)
-               tlb_flush(env, 0);
-             env->cp15.c13_context = val;
-             break;
--        case 2:
--            env->cp15.c13_tls1 = val;
--            break;
--        case 3:
--            env->cp15.c13_tls2 = val;
--            break;
--        case 4:
--            env->cp15.c13_tls3 = val;
--            break;
-         default:
-             goto bad_reg;
-         }
-@@ -1779,12 +1769,6 @@  uint32_t HELPER(get_cp15)(CPUState *env, uint32_t insn)
-             return env->cp15.c13_fcse;
-         case 1:
-             return env->cp15.c13_context;
--        case 2:
--            return env->cp15.c13_tls1;
--        case 3:
--            return env->cp15.c13_tls2;
--        case 4:
--            return env->cp15.c13_tls3;
-         default:
-             goto bad_reg;
-         }
-diff --git a/target-arm/translate.c b/target-arm/translate.c
-index 5cf3e06..786c329 100644
---- a/target-arm/translate.c
-+++ b/target-arm/translate.c
-@@ -2455,6 +2455,57 @@  static int cp15_user_ok(uint32_t insn)
-     return 0;
- }
- 
-+static int cp15_tls_load_store(CPUState *env, DisasContext *s, uint32_t insn, uint32_t rd)
-+{
-+    TCGv tmp;
-+    int cpn = (insn >> 16) & 0xf;
-+    int cpm = insn & 0xf;
-+    int op = ((insn >> 5) & 7) | ((insn >> 18) & 0x38);
-+
-+    if (!arm_feature(env, ARM_FEATURE_V6K))
-+        return 0;
-+
-+    if (!(cpn == 13 && cpm == 0))
-+        return 0;
-+
-+    if (insn & ARM_CP_RW_BIT) {
-+        tmp = new_tmp();
-+        switch (op) {
-+        case 2:
-+            tcg_gen_ld_i32(tmp, cpu_env, offsetof(CPUARMState, cp15.c13_tls1));
-+            break;
-+        case 3:
-+            tcg_gen_ld_i32(tmp, cpu_env, offsetof(CPUARMState, cp15.c13_tls2));
-+            break;
-+        case 4:
-+            tcg_gen_ld_i32(tmp, cpu_env, offsetof(CPUARMState, cp15.c13_tls3));
-+            break;
-+        default:
-+            dead_tmp(tmp);
-+            return 0;
-+        }
-+        store_reg(s, rd, tmp);
-+
-+    } else {
-+        tmp = load_reg(s, rd);
-+        switch (op) {
-+        case 2:
-+            tcg_gen_st_i32(tmp, cpu_env, offsetof(CPUARMState, cp15.c13_tls1));
-+            break;
-+        case 3:
-+            tcg_gen_st_i32(tmp, cpu_env, offsetof(CPUARMState, cp15.c13_tls2));
-+            break;
-+        case 4:
-+            tcg_gen_st_i32(tmp, cpu_env, offsetof(CPUARMState, cp15.c13_tls3));
-+            break;
-+        default:
-+            return 0;
-+        }
-+        dead_tmp(tmp);
-+    }
-+    return 1;
-+}
-+
- /* Disassemble system coprocessor (cp15) instruction.  Return nonzero if
-    instruction is not defined.  */
- static int disas_cp15_insn(CPUState *env, DisasContext *s, uint32_t insn)
-@@ -2489,6 +2540,10 @@  static int disas_cp15_insn(CPUState *env, DisasContext *s, uint32_t insn)
-         return 0;
-     }
-     rd = (insn >> 12) & 0xf;
-+
-+    if (cp15_tls_load_store(env, s, insn, rd))
-+        return 0;
-+
-     tmp2 = tcg_const_i32(insn);
-     if (insn & ARM_CP_RW_BIT) {
-         tmp = new_tmp();
-
diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/arm_timer-fix-oneshot-mode.patch b/meta/recipes-devtools/qemu/qemu-0.12.4/arm_timer-fix-oneshot-mode.patch
deleted file mode 100644
index 530736c..0000000
--- a/meta/recipes-devtools/qemu/qemu-0.12.4/arm_timer-fix-oneshot-mode.patch
+++ /dev/null
@@ -1,32 +0,0 @@
-From a9cf98d939c4f6539fad7e7d812ea16d96ba3dc9 Mon Sep 17 00:00:00 2001
-From: Rabin Vincent <rabin@rab.in>
-Date: Sun, 2 May 2010 15:20:52 +0530
-Subject: [PATCH] arm_timer: fix oneshot mode
-
-commit id: a9cf98d939c4f6539fad7e7d812ea16d96ba3dc9 in git://git.sv.gnu.org/qemu.git
-
-In oneshot mode, the delta needs to come from the TimerLoad register,
-not the maximum limit.
-
-Signed-off-by: Rabin Vincent <rabin@rab.in>
-Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
----
- hw/arm_timer.c |    2 +-
- 1 files changed, 1 insertions(+), 1 deletions(-)
-
-diff --git a/hw/arm_timer.c b/hw/arm_timer.c
-index 5b6947a..9073ffc 100644
---- a/hw/arm_timer.c
-+++ b/hw/arm_timer.c
-@@ -71,7 +71,7 @@ static void arm_timer_recalibrate(arm_timer_state *s, int reload)
- {
-     uint32_t limit;
- 
--    if ((s->control & TIMER_CTRL_PERIODIC) == 0) {
-+    if ((s->control & (TIMER_CTRL_PERIODIC | TIMER_CTRL_ONESHOT)) == 0) {
-         /* Free running.  */
-         if (s->control & TIMER_CTRL_32BIT)
-             limit = 0xffffffff;
--- 
-1.6.5.2
-
diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/arm_timer-reload-timer-when-enabled.patch b/meta/recipes-devtools/qemu/qemu-0.12.4/arm_timer-reload-timer-when-enabled.patch
deleted file mode 100644
index 1890e21..0000000
--- a/meta/recipes-devtools/qemu/qemu-0.12.4/arm_timer-reload-timer-when-enabled.patch
+++ /dev/null
@@ -1,40 +0,0 @@
-From d6759902cb467c002086853d2eb38fb969c29f7f Mon Sep 17 00:00:00 2001
-From: Rabin Vincent <rabin@rab.in>
-Date: Sun, 2 May 2010 15:20:51 +0530
-Subject: [PATCH] arm_timer: reload timer when enabled
-
-commit id: d6759902cb467c002086853d2eb38fb969c29f7f in git://git.sv.gnu.org/qemu.git
-
-Reload the timer when TimerControl is written, if the timer is to be
-enabled.  Otherwise, if an earlier write to TimerLoad was done while
-periodic mode was not set, s->delta may incorrectly still have the value
-of the maximum limit instead of the value written to TimerLoad.
-
-This problem is evident on versatileap on current linux-next, which
-enables TIMER_CTRL_32BIT before writing to TimerLoad and then enabling
-periodic mode and starting the timer.  This causes the first periodic
-tick to be scheduled to occur after 0xffffffff periods, leading to a
-perceived hang while the kernel waits for the first timer tick.
-
-Signed-off-by: Rabin Vincent <rabin@rab.in>
-Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
----
- hw/arm_timer.c |    2 +-
- 1 files changed, 1 insertions(+), 1 deletions(-)
-
-diff --git a/hw/arm_timer.c b/hw/arm_timer.c
-index 9fef191..5b6947a 100644
---- a/hw/arm_timer.c
-+++ b/hw/arm_timer.c
-@@ -113,7 +113,7 @@ static void arm_timer_write(void *opaque, target_phys_addr_t offset,
-         case 1: freq >>= 4; break;
-         case 2: freq >>= 8; break;
-         }
--        arm_timer_recalibrate(s, 0);
-+        arm_timer_recalibrate(s, s->control & TIMER_CTRL_ENABLE);
-         ptimer_set_freq(s->timer, freq);
-         if (s->control & TIMER_CTRL_ENABLE) {
-             /* Restart the timer if still enabled.  */
--- 
-1.6.5.2
-
diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/cursor-shadow-fix.patch b/meta/recipes-devtools/qemu/qemu-0.12.4/cursor-shadow-fix.patch
deleted file mode 100644
index 6600c43..0000000
--- a/meta/recipes-devtools/qemu/qemu-0.12.4/cursor-shadow-fix.patch
+++ /dev/null
@@ -1,35 +0,0 @@
-Fix the mouse shadow in qemu
-
-the root cause is that the qemu cursor array is hardcoded to 256 bytes, while the sato use cursor of the size 64*64=4096, thus lead buffer overflow and abnormal mouse.
-
-This issue has been fixed in upstream starting from v0.13.0-rc0. v0.12.5 still has this issue. So when qemu is upgraded to 0.13.0 or above, this patch can be safely removed.
-
-Signed-off-by: Yu Ke <ke.yu@intel.com>
-
-diff --git a/sdl.c b/sdl.c
-index 7912c91..2f33cd2 100644
---- a/sdl.c
-+++ b/sdl.c
-@@ -775,12 +775,12 @@ static void sdl_mouse_define(int width, int height, int bpp,
-                              int hot_x, int hot_y,
-                              uint8_t *image, uint8_t *mask)
- {
--    uint8_t sprite[256], *line;
-+    uint8_t *sprite, *line;
-     int x, y, dst, bypl, src = 0;
-     if (guest_sprite)
-         SDL_FreeCursor(guest_sprite);
- 
--    memset(sprite, 0, 256);
-+    sprite = (uint8_t*)qemu_mallocz(width * height);
-     bypl = ((width * bpp + 31) >> 5) << 2;
-     for (y = 0, dst = 0; y < height; y ++, image += bypl) {
-         line = image;
-@@ -818,6 +818,7 @@ static void sdl_mouse_define(int width, int height, int bpp,
-     if (guest_cursor &&
-             (gui_grab || kbd_mouse_is_absolute() || absolute_enabled))
-         SDL_SetCursor(guest_sprite);
-+	qemu_free(sprite);
- }
- 
- static void sdl_cleanup(void)
diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/qemu-ppc-hack.patch b/meta/recipes-devtools/qemu/qemu-0.12.4/qemu-ppc-hack.patch
deleted file mode 100644
index 3ed227e..0000000
--- a/meta/recipes-devtools/qemu/qemu-0.12.4/qemu-ppc-hack.patch
+++ /dev/null
@@ -1,136 +0,0 @@
-Quick fixes to get the ppc system model to boot a 603e based
-kernel.
-
-diff --git a/hw/m48t59.c b/hw/m48t59.c
-index ce38f8b..d99054f 100644
---- a/hw/m48t59.c
-+++ b/hw/m48t59.c
-@@ -50,6 +50,7 @@
-  */
- 
- struct m48t59_t {
-+    SysBusDevice busdev;
-     /* Model parameters */
-     uint32_t type; // 2 = m48t02, 8 = m48t08, 59 = m48t59
-     /* Hardware parameters */
-@@ -74,11 +75,6 @@ typedef struct M48t59ISAState {
-     m48t59_t state;
- } M48t59ISAState;
- 
--typedef struct M48t59SysBusState {
--    SysBusDevice busdev;
--    m48t59_t state;
--} M48t59SysBusState;
--
- /* Fake timer functions */
- 
- /* Alarm management */
-@@ -629,8 +625,7 @@ static void m48t59_reset_isa(DeviceState *d)
- 
- static void m48t59_reset_sysbus(DeviceState *d)
- {
--    M48t59SysBusState *sys = container_of(d, M48t59SysBusState, busdev.qdev);
--    m48t59_t *NVRAM = &sys->state;
-+    m48t59_t *NVRAM = container_of(d, m48t59_t, busdev.qdev);
- 
-     m48t59_reset_common(NVRAM);
- }
-@@ -642,7 +637,7 @@ m48t59_t *m48t59_init (qemu_irq IRQ, target_phys_addr_t mem_base,
- {
-     DeviceState *dev;
-     SysBusDevice *s;
--    M48t59SysBusState *d;
-+    m48t59_t *d;
- 
-     dev = qdev_create(NULL, "m48t59");
-     qdev_prop_set_uint32(dev, "type", type);
-@@ -659,9 +654,9 @@ m48t59_t *m48t59_init (qemu_irq IRQ, target_phys_addr_t mem_base,
-         sysbus_mmio_map(s, 0, mem_base);
-     }
- 
--    d = FROM_SYSBUS(M48t59SysBusState, s);
-+    d = FROM_SYSBUS(m48t59_t, s);
- 
--    return &d->state;
-+    return d;
- }
- 
- m48t59_t *m48t59_init_isa(uint32_t io_base, uint16_t size, int type)
-@@ -711,8 +706,7 @@ static int m48t59_init_isa1(ISADevice *dev)
- 
- static int m48t59_init1(SysBusDevice *dev)
- {
--    M48t59SysBusState *d = FROM_SYSBUS(M48t59SysBusState, dev);
--    m48t59_t *s = &d->state;
-+    m48t59_t *s = FROM_SYSBUS(m48t59_t, dev);
-     int mem_index;
- 
-     sysbus_init_irq(dev, &s->IRQ);
-@@ -741,12 +735,12 @@ static ISADeviceInfo m48t59_isa_info = {
- static SysBusDeviceInfo m48t59_info = {
-     .init = m48t59_init1,
-     .qdev.name  = "m48t59",
--    .qdev.size = sizeof(M48t59SysBusState),
-+    .qdev.size  = sizeof(m48t59_t),
-     .qdev.reset = m48t59_reset_sysbus,
-     .qdev.props = (Property[]) {
--        DEFINE_PROP_UINT32("size",    M48t59SysBusState, state.size,    -1),
--        DEFINE_PROP_UINT32("type",    M48t59SysBusState, state.type,    -1),
--        DEFINE_PROP_HEX32( "io_base", M48t59SysBusState, state.io_base,  0),
-+        DEFINE_PROP_UINT32("size",    m48t59_t, size,    -1),
-+        DEFINE_PROP_UINT32("type",    m48t59_t, type,    -1),
-+        DEFINE_PROP_HEX32( "io_base", m48t59_t, io_base,  0),
-         DEFINE_PROP_END_OF_LIST(),
-     }
- };
-diff --git a/hw/ppc_prep.c b/hw/ppc_prep.c
-index eb758f2..08db51b 100644
---- a/hw/ppc_prep.c
-+++ b/hw/ppc_prep.c
-@@ -73,7 +73,7 @@ qemu_log_mask(CPU_LOG_IOPORT, fmt, ## __VA_ARGS__)
- /* Constants for devices init */
- static const int ide_iobase[2] = { 0x1f0, 0x170 };
- static const int ide_iobase2[2] = { 0x3f6, 0x376 };
--static const int ide_irq[2] = { 13, 13 };
-+static const int ide_irq[2] = { 13, 14 };
- 
- #define NE2000_NB_MAX 6
- 
-@@ -620,9 +620,6 @@ static void ppc_prep_init (ram_addr_t ram_size,
-     if (filename) {
-         qemu_free(filename);
-     }
--    if (env->nip < 0xFFF80000 && bios_size < 0x00100000) {
--        hw_error("PowerPC 601 / 620 / 970 need a 1MB BIOS\n");
--    }
- 
-     if (linux_boot) {
-         kernel_base = KERNEL_LOAD_ADDR;
-diff --git a/target-ppc/op_helper.c b/target-ppc/op_helper.c
-index e3bd29c..1cb2e07 100644
---- a/target-ppc/op_helper.c
-+++ b/target-ppc/op_helper.c
-@@ -1646,20 +1646,20 @@ static inline void do_rfi(target_ulong nip, target_ulong msr,
- void helper_rfi (void)
- {
-     do_rfi(env->spr[SPR_SRR0], env->spr[SPR_SRR1],
--           ~((target_ulong)0x0), 1);
-+           ~((target_ulong)0xFFFF0000), 1);
- }
- 
- #if defined(TARGET_PPC64)
- void helper_rfid (void)
- {
-     do_rfi(env->spr[SPR_SRR0], env->spr[SPR_SRR1],
--           ~((target_ulong)0x0), 0);
-+           ~((target_ulong)0xFFFF0000), 0);
- }
- 
- void helper_hrfid (void)
- {
-     do_rfi(env->spr[SPR_HSRR0], env->spr[SPR_HSRR1],
--           ~((target_ulong)0x0), 0);
-+           ~((target_ulong)0xFFFF0000), 0);
- }
- #endif
- #endif
diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/enable-i386-linux-user.patch b/meta/recipes-devtools/qemu/qemu-0.13.0/enable-i386-linux-user.patch
similarity index 73%
rename from meta/recipes-devtools/qemu/qemu-0.12.4/enable-i386-linux-user.patch
rename to meta/recipes-devtools/qemu/qemu-0.13.0/enable-i386-linux-user.patch
index 550d48b..95420ef 100644
--- a/meta/recipes-devtools/qemu/qemu-0.12.4/enable-i386-linux-user.patch
+++ b/meta/recipes-devtools/qemu/qemu-0.13.0/enable-i386-linux-user.patch
@@ -2,13 +2,13 @@ Enable i386-linux-user
 
 Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
 
-Index: qemu-0.12.4/Makefile.target
+Index: qemu-0.13.0/Makefile.target
 ===================================================================
---- qemu-0.12.4.orig/Makefile.target	2010-08-31 13:57:01.000000000 +0800
-+++ qemu-0.12.4/Makefile.target	2010-08-31 14:03:06.000000000 +0800
-@@ -46,8 +46,13 @@
- libobj-$(CONFIG_NOSOFTFLOAT) += fpu/softfloat-native.o
- libobj-y += op_helper.o helper.o
+--- qemu-0.13.0.orig/Makefile.target	2011-01-17 16:50:39.000000000 +0800
++++ qemu-0.13.0/Makefile.target	2011-01-17 16:50:41.000000000 +0800
+@@ -54,8 +54,13 @@
+ libobj-y += cpuid.o
+ endif
  libobj-$(CONFIG_NEED_MMU) += mmu.o
 +ifndef CONFIG_LINUX_USER
  libobj-$(TARGET_I386) += helper_opengl.o opengl_exec.o
@@ -20,10 +20,10 @@ Index: qemu-0.12.4/Makefile.target
  libobj-$(TARGET_ARM) += dummygl.o
  libobj-$(TARGET_MIPS) += dummygl.o
  libobj-$(TARGET_PPC) += dummygl.o
-Index: qemu-0.12.4/target-i386/dummygl.c
+Index: qemu-0.13.0/target-i386/dummygl.c
 ===================================================================
 --- /dev/null	1970-01-01 00:00:00.000000000 +0000
-+++ qemu-0.12.4/target-i386/dummygl.c	2010-08-31 15:25:25.000000000 +0800
++++ qemu-0.13.0/target-i386/dummygl.c	2011-01-17 16:50:41.000000000 +0800
 @@ -0,0 +1,26 @@
 +#include <string.h>
 +#include <stdlib.h>
diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/fix-configure-checks.patch b/meta/recipes-devtools/qemu/qemu-0.13.0/fix-configure-checks.patch
similarity index 65%
rename from meta/recipes-devtools/qemu/qemu-0.12.4/fix-configure-checks.patch
rename to meta/recipes-devtools/qemu/qemu-0.13.0/fix-configure-checks.patch
index 28ca2b3..46ddc6e 100644
--- a/meta/recipes-devtools/qemu/qemu-0.12.4/fix-configure-checks.patch
+++ b/meta/recipes-devtools/qemu/qemu-0.13.0/fix-configure-checks.patch
@@ -6,15 +6,15 @@ added and files in the sysroot can be found.
 
 Patch from Paul Eggleton, Comments by RP 28/11/10
 
-Index: qemu-0.12.4/configure
+Index: qemu-0.13.0/configure
 ===================================================================
---- qemu-0.12.4.orig/configure
-+++ qemu-0.12.4/configure
-@@ -99,6 +99,7 @@ QEMU_CFLAGS="-Wstrict-prototypes -Wredun
+--- qemu-0.13.0.orig/configure	2010-10-16 04:56:09.000000000 +0800
++++ qemu-0.13.0/configure	2011-01-15 18:19:41.000000000 +0800
+@@ -134,6 +134,7 @@
  QEMU_CFLAGS="-D_GNU_SOURCE -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE $QEMU_CFLAGS"
- QEMU_CFLAGS="-U_FORTIFY_SOURCE $QEMU_CFLAGS"
+ QEMU_CFLAGS="-D_FORTIFY_SOURCE=2 $QEMU_CFLAGS"
  QEMU_CFLAGS="-I. -I\$(SRC_PATH) $QEMU_CFLAGS"
 +QEMU_CFLAGS="$QEMU_CFLAGS $CFLAGS"
  LDFLAGS="-g $LDFLAGS"
  
- gcc_flags="-Wold-style-declaration -Wold-style-definition"
+ gcc_flags="-Wold-style-declaration -Wold-style-definition -fstack-protector-all"
diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/fix-dirent.patch b/meta/recipes-devtools/qemu/qemu-0.13.0/fix-dirent.patch
similarity index 100%
rename from meta/recipes-devtools/qemu/qemu-0.12.4/fix-dirent.patch
rename to meta/recipes-devtools/qemu/qemu-0.13.0/fix-dirent.patch
diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/fix-nogl.patch b/meta/recipes-devtools/qemu/qemu-0.13.0/fix-nogl.patch
similarity index 73%
rename from meta/recipes-devtools/qemu/qemu-0.12.4/fix-nogl.patch
rename to meta/recipes-devtools/qemu/qemu-0.13.0/fix-nogl.patch
index 528b6f0..fa518ab 100644
--- a/meta/recipes-devtools/qemu/qemu-0.12.4/fix-nogl.patch
+++ b/meta/recipes-devtools/qemu/qemu-0.13.0/fix-nogl.patch
@@ -1,9 +1,9 @@
-Index: qemu-0.12.4/Makefile.target
+Index: qemu-0.13.0/Makefile.target
 ===================================================================
---- qemu-0.12.4.orig/Makefile.target	2010-06-24 07:59:15.669394205 +0100
-+++ qemu-0.12.4/Makefile.target	2010-06-24 08:07:38.739399512 +0100
-@@ -47,6 +47,10 @@
- libobj-y += op_helper.o helper.o
+--- qemu-0.13.0.orig/Makefile.target	2011-01-17 16:53:08.000000000 +0800
++++ qemu-0.13.0/Makefile.target	2011-01-17 16:53:11.000000000 +0800
+@@ -55,6 +55,10 @@
+ endif
  libobj-$(CONFIG_NEED_MMU) += mmu.o
  libobj-$(TARGET_I386) += helper_opengl.o opengl_exec.o
 +libobj-$(TARGET_X86_64) += helper_opengl.o opengl_exec.o
@@ -11,12 +11,12 @@ Index: qemu-0.12.4/Makefile.target
 +libobj-$(TARGET_MIPS) += dummygl.o
 +libobj-$(TARGET_PPC) += dummygl.o
  libobj-$(TARGET_ARM) += neon_helper.o iwmmxt_helper.o
- libobj-$(TARGET_ALPHA) += alpha_palcode.o
  
-Index: qemu-0.12.4/target-arm/dummygl.c
+ libobj-y += disas.o
+Index: qemu-0.13.0/target-arm/dummygl.c
 ===================================================================
 --- /dev/null	1970-01-01 00:00:00.000000000 +0000
-+++ qemu-0.12.4/target-arm/dummygl.c	2010-06-24 07:59:15.899401748 +0100
++++ qemu-0.13.0/target-arm/dummygl.c	2011-01-17 16:53:11.000000000 +0800
 @@ -0,0 +1,22 @@
 +#include <string.h>
 +#include <stdlib.h>
@@ -40,10 +40,10 @@ Index: qemu-0.12.4/target-arm/dummygl.c
 +{
 +
 +}
-Index: qemu-0.12.4/target-mips/dummygl.c
+Index: qemu-0.13.0/target-mips/dummygl.c
 ===================================================================
 --- /dev/null	1970-01-01 00:00:00.000000000 +0000
-+++ qemu-0.12.4/target-mips/dummygl.c	2010-06-24 07:59:15.899401748 +0100
++++ qemu-0.13.0/target-mips/dummygl.c	2011-01-17 16:53:11.000000000 +0800
 @@ -0,0 +1,22 @@
 +#include <string.h>
 +#include <stdlib.h>
@@ -67,10 +67,10 @@ Index: qemu-0.12.4/target-mips/dummygl.c
 +{
 +
 +}
-Index: qemu-0.12.4/target-ppc/dummygl.c
+Index: qemu-0.13.0/target-ppc/dummygl.c
 ===================================================================
 --- /dev/null	1970-01-01 00:00:00.000000000 +0000
-+++ qemu-0.12.4/target-ppc/dummygl.c	2010-06-24 08:07:59.070712946 +0100
++++ qemu-0.13.0/target-ppc/dummygl.c	2011-01-17 16:53:11.000000000 +0800
 @@ -0,0 +1,22 @@
 +#include <string.h>
 +#include <stdlib.h>
diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/glflags.patch b/meta/recipes-devtools/qemu/qemu-0.13.0/glflags.patch
similarity index 100%
rename from meta/recipes-devtools/qemu/qemu-0.12.4/glflags.patch
rename to meta/recipes-devtools/qemu/qemu-0.13.0/glflags.patch
diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/init-info.patch b/meta/recipes-devtools/qemu/qemu-0.13.0/init-info.patch
similarity index 74%
rename from meta/recipes-devtools/qemu/qemu-0.12.4/init-info.patch
rename to meta/recipes-devtools/qemu/qemu-0.13.0/init-info.patch
index 8ba7d8f..77022ae 100644
--- a/meta/recipes-devtools/qemu/qemu-0.12.4/init-info.patch
+++ b/meta/recipes-devtools/qemu/qemu-0.13.0/init-info.patch
@@ -2,11 +2,11 @@
 # makes info.info.x11.display zero and avoids the calls to
 # opengl_exec_set_parent_window, one of which is crashing.
 
-Index: qemu-0.12.4/sdl.c
+Index: qemu-0.13.0/ui/sdl.c
 ===================================================================
---- qemu-0.12.4.orig/sdl.c
-+++ qemu-0.12.4/sdl.c
-@@ -871,6 +871,7 @@ void sdl_display_init(DisplayState *ds, 
+--- qemu-0.13.0.orig/ui/sdl.c	2011-01-15 17:40:59.000000000 +0800
++++ qemu-0.13.0/ui/sdl.c	2011-01-15 17:41:04.000000000 +0800
+@@ -857,6 +857,7 @@
      vi = SDL_GetVideoInfo();
      host_format = *(vi->vfmt);
  
diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/linker-flags.patch b/meta/recipes-devtools/qemu/qemu-0.13.0/linker-flags.patch
similarity index 59%
rename from meta/recipes-devtools/qemu/qemu-0.12.4/linker-flags.patch
rename to meta/recipes-devtools/qemu/qemu-0.13.0/linker-flags.patch
index 7b33aa4..54c480f 100644
--- a/meta/recipes-devtools/qemu/qemu-0.12.4/linker-flags.patch
+++ b/meta/recipes-devtools/qemu/qemu-0.13.0/linker-flags.patch
@@ -7,16 +7,16 @@ More information is available on the Fedora Wiki:
 https://fedoraproject.org/wiki/UnderstandingDSOLinkChange
 
 JL - 15/06/10
-Index: qemu-0.12.4/Makefile.target
+Index: qemu-0.13.0/Makefile.target
 ===================================================================
---- qemu-0.12.4.orig/Makefile.target	2010-06-15 11:21:52.000000000 +0100
-+++ qemu-0.12.4/Makefile.target	2010-06-15 11:25:27.212852910 +0100
-@@ -178,7 +178,7 @@
- obj-y += virtio-blk.o virtio-balloon.o virtio-net.o virtio-console.o virtio-pci.o
+--- qemu-0.13.0.orig/Makefile.target	2011-01-15 17:30:45.000000000 +0800
++++ qemu-0.13.0/Makefile.target	2011-01-15 17:33:22.000000000 +0800
+@@ -193,7 +193,7 @@
+ obj-y += rwhandler.o
  obj-$(CONFIG_KVM) += kvm.o kvm-all.o
- obj-$(CONFIG_ISA_MMIO) += isa_mmio.o
+ obj-$(CONFIG_NO_KVM) += kvm-stub.o
 -LIBS+=-lz
 +LIBS+=-lz -lX11 -ldl
  
- sound-obj-y =
- sound-obj-$(CONFIG_SB16) += sb16.o
+ QEMU_CFLAGS += $(VNC_TLS_CFLAGS)
+ QEMU_CFLAGS += $(VNC_SASL_CFLAGS)
diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/no-strip.patch b/meta/recipes-devtools/qemu/qemu-0.13.0/no-strip.patch
similarity index 57%
rename from meta/recipes-devtools/qemu/qemu-0.12.4/no-strip.patch
rename to meta/recipes-devtools/qemu/qemu-0.13.0/no-strip.patch
index 8a95a68..62cdec6 100644
--- a/meta/recipes-devtools/qemu/qemu-0.12.4/no-strip.patch
+++ b/meta/recipes-devtools/qemu/qemu-0.13.0/no-strip.patch
@@ -1,9 +1,9 @@
-Index: qemu/Makefile
+Index: qemu-0.13.0/Makefile
 ===================================================================
---- qemu.orig/Makefile	2010-05-11 17:17:06.416912704 -0400
-+++ qemu/Makefile	2010-05-11 17:17:17.051812402 -0400
-@@ -300,7 +300,7 @@ endif
- install: all $(if $(BUILD_DOCS),install-doc)
+--- qemu-0.13.0.orig/Makefile	2011-01-17 16:41:59.000000000 +0800
++++ qemu-0.13.0/Makefile	2011-01-17 16:44:57.000000000 +0800
+@@ -185,7 +185,7 @@
+ install: all $(if $(BUILD_DOCS),install-doc) install-sysconfig
  	$(INSTALL_DIR) "$(DESTDIR)$(bindir)"
  ifneq ($(TOOLS),)
 -	$(INSTALL_PROG) $(STRIP_OPT) $(TOOLS) "$(DESTDIR)$(bindir)"
@@ -11,11 +11,11 @@ Index: qemu/Makefile
  endif
  ifneq ($(BLOBS),)
  	$(INSTALL_DIR) "$(DESTDIR)$(datadir)"
-Index: qemu/Makefile.target
+Index: qemu-0.13.0/Makefile.target
 ===================================================================
---- qemu.orig/Makefile.target	2010-05-11 17:17:12.188784092 -0400
-+++ qemu/Makefile.target	2010-05-11 17:17:17.052808122 -0400
-@@ -351,7 +351,7 @@ clean:
+--- qemu-0.13.0.orig/Makefile.target	2011-01-17 16:42:36.000000000 +0800
++++ qemu-0.13.0/Makefile.target	2011-01-17 16:44:57.000000000 +0800
+@@ -351,7 +351,7 @@
  
  install: all
  ifneq ($(PROGS),)
diff --git a/meta/recipes-devtools/qemu/qemu-0.13.0/parallel_make.patch b/meta/recipes-devtools/qemu/qemu-0.13.0/parallel_make.patch
new file mode 100644
index 0000000..278b1a7
--- /dev/null
+++ b/meta/recipes-devtools/qemu/qemu-0.13.0/parallel_make.patch
@@ -0,0 +1,34 @@
+Make -j(>=6) always fail as some job depends on config-host.h. Added following
+patch in upstream to resolve it.
+
+Could remove it in next upgrade if necessary.
+
+Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
+
+commit f0acb38015409024683911380daa94cc974e4e0e
+Author: Paul Brook <paul@codesourcery.com>
+Date:   Fri Nov 26 18:46:03 2010 +0000
+
+    Add missing dependency.
+    
+    Teach Makefile that cmd.o depends on a generated header (specifically
+    config-host.h).
+    
+    Signed-off-by: Paul Brook <paul@codesourcery.com>
+    (cherry picked from commit 6e14404aab26f74a448747d1e793ac16bde8a92b)
+    
+    Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
+
+Index: qemu-0.13.0/Makefile
+===================================================================
+--- qemu-0.13.0.orig/Makefile	2011-01-18 09:45:45.000000000 +0800
++++ qemu-0.13.0/Makefile	2011-01-18 09:45:45.000000000 +0800
+@@ -107,7 +107,7 @@
+ ######################################################################
+ 
+ qemu-img.o: qemu-img-cmds.h
+-qemu-img.o qemu-tool.o qemu-nbd.o qemu-io.o: $(GENERATED_HEADERS)
++qemu-img.o qemu-tool.o qemu-nbd.o qemu-io.o cmd.o: $(GENERATED_HEADERS)
+ 
+ qemu-img$(EXESUF): qemu-img.o qemu-tool.o qemu-error.o $(block-obj-y) $(qobject-obj-y)
+ 
diff --git a/meta/recipes-devtools/qemu/qemu-0.13.0/port92_fix.patch b/meta/recipes-devtools/qemu/qemu-0.13.0/port92_fix.patch
new file mode 100644
index 0000000..e101c68
--- /dev/null
+++ b/meta/recipes-devtools/qemu/qemu-0.13.0/port92_fix.patch
@@ -0,0 +1,196 @@
+With qemu 0.13.0, poky failed to start on ppc arch because both ppc_prep_init
+and i8042_initfn try to register to port 0x92 then cause conflict. Introduce
+this patch from upstream to fix it.
+
+Could remove it in future if necessary.
+
+Signed-off-by: Zhai, Edwin <edwin.zhai@intel.com>
+
+commit 4b78a802ffaabb325a0f7b773031da92d173bde1
+Author: Blue Swirl <blauwirbel@gmail.com>
+Date:   Thu Jan 6 18:24:35 2011 +0000
+
+    pc: move port 92 stuff back to pc.c from pckbd.c
+    
+    956a3e6bb7386de48b642d4fee11f7f86a2fcf9a introduced a bug concerning
+    reset bit for port 92.
+    
+    Since the keyboard output port and port 92 are not compatible anyway,
+    let's separate them.
+    
+    Reported-by: Peter Lieven <pl@dlh.net>
+    Signed-off-by: Blue Swirl <blauwirbel@gmail.com>
+    --
+    v2: added reset handler and VMState
+
+Index: qemu-0.13.0/hw/pc.c
+===================================================================
+--- qemu-0.13.0.orig/hw/pc.c	2010-10-16 04:56:09.000000000 +0800
++++ qemu-0.13.0/hw/pc.c	2011-01-20 20:37:37.000000000 +0800
+@@ -409,11 +409,91 @@
+     qemu_register_reset(pc_cmos_init_late, &arg);
+ }
+ 
++/* port 92 stuff: could be split off */
++typedef struct Port92State {
++    ISADevice dev;
++    uint8_t outport;
++    qemu_irq *a20_out;
++} Port92State;
++
++static void port92_write(void *opaque, uint32_t addr, uint32_t val)
++{
++    Port92State *s = opaque;
++
++    DPRINTF("port92: write 0x%02x\n", val);
++    s->outport = val;
++    qemu_set_irq(*s->a20_out, (val >> 1) & 1);
++    if (val & 1) {
++        qemu_system_reset_request();
++    }
++}
++
++static uint32_t port92_read(void *opaque, uint32_t addr)
++{
++    Port92State *s = opaque;
++    uint32_t ret;
++
++    ret = s->outport;
++    DPRINTF("port92: read 0x%02x\n", ret);
++    return ret;
++}
++
++static void port92_init(ISADevice *dev, qemu_irq *a20_out)
++{
++    Port92State *s = DO_UPCAST(Port92State, dev, dev);
++
++    s->a20_out = a20_out;
++}
++
++static const VMStateDescription vmstate_port92_isa = {
++    .name = "port92",
++    .version_id = 1,
++    .minimum_version_id = 1,
++    .minimum_version_id_old = 1,
++    .fields      = (VMStateField []) {
++        VMSTATE_UINT8(outport, Port92State),
++        VMSTATE_END_OF_LIST()
++    }
++};
++
++static void port92_reset(DeviceState *d)
++{
++    Port92State *s = container_of(d, Port92State, dev.qdev);
++
++    s->outport &= ~1;
++}
++
++static int port92_initfn(ISADevice *dev)
++{
++    Port92State *s = DO_UPCAST(Port92State, dev, dev);
++
++    register_ioport_read(0x92, 1, 1, port92_read, s);
++    register_ioport_write(0x92, 1, 1, port92_write, s);
++    s->outport = 0;
++    return 0;
++}
++
++static ISADeviceInfo port92_info = {
++    .qdev.name     = "port92",
++    .qdev.size     = sizeof(Port92State),
++    .qdev.vmsd     = &vmstate_port92_isa,
++    .qdev.no_user  = 1,
++    .qdev.reset    = port92_reset,
++    .init          = port92_initfn,
++};
++
++static void port92_register(void)
++{
++    isa_qdev_register(&port92_info);
++}
++device_init(port92_register)
++
+ static void handle_a20_line_change(void *opaque, int irq, int level)
+ {
+     CPUState *cpu = opaque;
+ 
+     /* XXX: send to all CPUs ? */
++    /* XXX: add logic to handle multiple A20 line sources */
+     cpu_x86_set_a20(cpu, level);
+ }
+ 
+@@ -1017,7 +1097,7 @@
+     PITState *pit;
+     qemu_irq rtc_irq = NULL;
+     qemu_irq *a20_line;
+-    ISADevice *i8042;
++    ISADevice *i8042, *port92;
+     qemu_irq *cpu_exit_irq;
+ 
+     register_ioport_write(0x80, 1, 1, ioport80_write, NULL);
+@@ -1051,10 +1131,12 @@
+         }
+     }
+ 
+-    a20_line = qemu_allocate_irqs(handle_a20_line_change, first_cpu, 1);
++    a20_line = qemu_allocate_irqs(handle_a20_line_change, first_cpu, 2);
+     i8042 = isa_create_simple("i8042");
+-    i8042_setup_a20_line(i8042, a20_line);
++    i8042_setup_a20_line(i8042, &a20_line[0]);
+     vmmouse_init(i8042);
++    port92 = isa_create_simple("port92");
++    port92_init(port92, &a20_line[1]);
+ 
+     cpu_exit_irq = qemu_allocate_irqs(cpu_request_exit, NULL, 1);
+     DMA_init(0, cpu_exit_irq);
+Index: qemu-0.13.0/hw/pckbd.c
+===================================================================
+--- qemu-0.13.0.orig/hw/pckbd.c	2010-10-16 04:56:09.000000000 +0800
++++ qemu-0.13.0/hw/pckbd.c	2011-01-20 20:33:44.000000000 +0800
+@@ -209,10 +209,8 @@
+         ps2_queue(s->kbd, b);
+ }
+ 
+-static void ioport92_write(void *opaque, uint32_t addr, uint32_t val)
++static void outport_write(KBDState *s, uint32_t val)
+ {
+-    KBDState *s = opaque;
+-
+     DPRINTF("kbd: write outport=0x%02x\n", val);
+     s->outport = val;
+     if (s->a20_out) {
+@@ -223,16 +221,6 @@
+     }
+ }
+ 
+-static uint32_t ioport92_read(void *opaque, uint32_t addr)
+-{
+-    KBDState *s = opaque;
+-    uint32_t ret;
+-
+-    ret = s->outport;
+-    DPRINTF("kbd: read outport=0x%02x\n", ret);
+-    return ret;
+-}
+-
+ static void kbd_write_command(void *opaque, uint32_t addr, uint32_t val)
+ {
+     KBDState *s = opaque;
+@@ -340,7 +328,7 @@
+         kbd_queue(s, val, 1);
+         break;
+     case KBD_CCMD_WRITE_OUTPORT:
+-        ioport92_write(s, 0, val);
++        outport_write(s, val);
+         break;
+     case KBD_CCMD_WRITE_MOUSE:
+         ps2_write_mouse(s->mouse, val);
+@@ -469,8 +457,6 @@
+     register_ioport_write(0x60, 1, 1, kbd_write_data, s);
+     register_ioport_read(0x64, 1, 1, kbd_read_status, s);
+     register_ioport_write(0x64, 1, 1, kbd_write_command, s);
+-    register_ioport_read(0x92, 1, 1, ioport92_read, s);
+-    register_ioport_write(0x92, 1, 1, ioport92_write, s);
+ 
+     s->kbd = ps2_kbd_init(kbd_update_kbd_irq, s);
+     s->mouse = ps2_mouse_init(kbd_update_aux_irq, s);
diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/qemu-git-qemugl-host.patch b/meta/recipes-devtools/qemu/qemu-0.13.0/qemu-git-qemugl-host.patch
similarity index 99%
rename from meta/recipes-devtools/qemu/qemu-0.12.4/qemu-git-qemugl-host.patch
rename to meta/recipes-devtools/qemu/qemu-0.13.0/qemu-git-qemugl-host.patch
index ab31476..085477c 100644
--- a/meta/recipes-devtools/qemu/qemu-0.12.4/qemu-git-qemugl-host.patch
+++ b/meta/recipes-devtools/qemu/qemu-0.13.0/qemu-git-qemugl-host.patch
@@ -1,16 +1,16 @@
-Index: qemu-0.12.4/Makefile.target
+Index: qemu-0.13.0/Makefile.target
 ===================================================================
---- qemu-0.12.4.orig/Makefile.target
-+++ qemu-0.12.4/Makefile.target
-@@ -46,6 +46,7 @@ libobj-$(CONFIG_SOFTFLOAT) += fpu/softfl
- libobj-$(CONFIG_NOSOFTFLOAT) += fpu/softfloat-native.o
- libobj-y += op_helper.o helper.o
+--- qemu-0.13.0.orig/Makefile.target	2011-01-17 16:41:59.000000000 +0800
++++ qemu-0.13.0/Makefile.target	2011-01-17 16:42:36.000000000 +0800
+@@ -54,6 +54,7 @@
+ libobj-y += cpuid.o
+ endif
  libobj-$(CONFIG_NEED_MMU) += mmu.o
 +libobj-$(TARGET_I386) += helper_opengl.o opengl_exec.o
  libobj-$(TARGET_ARM) += neon_helper.o iwmmxt_helper.o
- libobj-$(TARGET_ALPHA) += alpha_palcode.o
  
-@@ -82,6 +83,21 @@ op_helper.o cpu-exec.o: QEMU_CFLAGS += $
+ libobj-y += disas.o
+@@ -76,6 +77,21 @@
  # cpu_signal_handler() in cpu-exec.c.
  signal.o: QEMU_CFLAGS += $(HELPER_CFLAGS)
  
@@ -32,31 +32,31 @@ Index: qemu-0.12.4/Makefile.target
  #########################################################
  # Linux user emulator target
  
-@@ -196,6 +212,10 @@ obj-i386-y += usb-uhci.o vmmouse.o vmpor
- obj-i386-y += device-hotplug.o pci-hotplug.o smbios.o wdt_ib700.o
- obj-i386-y += ne2000-isa.o
+@@ -202,6 +218,10 @@
+ obj-i386-y += debugcon.o multiboot.o
+ obj-i386-y += pc_piix.o
  
 +ifeq ($(TARGET_BASE_ARCH), i386)
 +QEMU_CFLAGS += -DTARGET_OPENGL_OK
 +endif
 +
  # shared objects
- obj-ppc-y = ppc.o ide/core.o ide/qdev.o ide/isa.o ide/pci.o ide/macio.o
- obj-ppc-y += ide/cmd646.o
-@@ -303,6 +323,8 @@ vl.o: qemu-options.h
+ obj-ppc-y = ppc.o
+ obj-ppc-y += vga.o
+@@ -301,6 +321,8 @@
  
  monitor.o: qemu-monitor.h
  
 +LIBS += -lGL -lGLU
 +
- ARLIBS=../libqemu_common.a libqemu.a $(HWLIB)
+ $(obj-y) $(obj-$(TARGET_BASE_ARCH)-y): $(GENERATED_HEADERS)
  
- endif # CONFIG_SOFTMMU
-Index: qemu-0.12.4/hw/pixel_ops.h
+ obj-y += $(addprefix ../, $(common-obj-y))
+Index: qemu-0.13.0/hw/pixel_ops.h
 ===================================================================
---- qemu-0.12.4.orig/hw/pixel_ops.h
-+++ qemu-0.12.4/hw/pixel_ops.h
-@@ -4,6 +4,12 @@ static inline unsigned int rgb_to_pixel8
+--- qemu-0.13.0.orig/hw/pixel_ops.h	2011-01-17 16:41:59.000000000 +0800
++++ qemu-0.13.0/hw/pixel_ops.h	2011-01-17 16:42:36.000000000 +0800
+@@ -4,6 +4,12 @@
      return ((r >> 5) << 5) | ((g >> 5) << 2) | (b >> 6);
  }
  
@@ -69,11 +69,11 @@ Index: qemu-0.12.4/hw/pixel_ops.h
  static inline unsigned int rgb_to_pixel15(unsigned int r, unsigned int g,
                                            unsigned int b)
  {
-Index: qemu-0.12.4/hw/vmware_vga.c
+Index: qemu-0.13.0/hw/vmware_vga.c
 ===================================================================
---- qemu-0.12.4.orig/hw/vmware_vga.c
-+++ qemu-0.12.4/hw/vmware_vga.c
-@@ -489,6 +489,8 @@ static inline void vmsvga_cursor_define(
+--- qemu-0.13.0.orig/hw/vmware_vga.c	2011-01-17 16:41:59.000000000 +0800
++++ qemu-0.13.0/hw/vmware_vga.c	2011-01-17 16:42:36.000000000 +0800
+@@ -519,6 +519,8 @@
  
  #define CMD(f)	le32_to_cpu(s->cmd->f)
  
@@ -82,7 +82,7 @@ Index: qemu-0.12.4/hw/vmware_vga.c
  static inline int vmsvga_fifo_empty(struct vmsvga_state_s *s)
  {
      if (!s->config || !s->enable)
-@@ -498,11 +500,18 @@ static inline int vmsvga_fifo_empty(stru
+@@ -528,11 +530,18 @@
  
  static inline uint32_t vmsvga_fifo_read_raw(struct vmsvga_state_s *s)
  {
@@ -105,7 +105,7 @@ Index: qemu-0.12.4/hw/vmware_vga.c
  }
  
  static inline uint32_t vmsvga_fifo_read(struct vmsvga_state_s *s)
-@@ -512,12 +521,12 @@ static inline uint32_t vmsvga_fifo_read(
+@@ -542,12 +551,12 @@
  
  static void vmsvga_fifo_run(struct vmsvga_state_s *s)
  {
@@ -120,7 +120,7 @@ Index: qemu-0.12.4/hw/vmware_vga.c
          case SVGA_CMD_UPDATE:
          case SVGA_CMD_UPDATE_VERBOSE:
              x = vmsvga_fifo_read(s);
-@@ -624,7 +633,7 @@ static void vmsvga_fifo_run(struct vmsvg
+@@ -654,7 +663,7 @@
              while (args --)
                  vmsvga_fifo_read(s);
              printf("%s: Unknown command 0x%02x in SVGA command FIFO\n",
@@ -129,7 +129,7 @@ Index: qemu-0.12.4/hw/vmware_vga.c
              break;
          }
  
-@@ -1143,6 +1152,12 @@ static void vmsvga_init(struct vmsvga_st
+@@ -1173,6 +1182,12 @@
  
      vga_init_vbe(&s->vga);
  
@@ -142,11 +142,11 @@ Index: qemu-0.12.4/hw/vmware_vga.c
      rom_add_vga(VGABIOS_FILENAME);
  
      vmsvga_reset(s);
-Index: qemu-0.12.4/qemu-char.c
+Index: qemu-0.13.0/qemu-char.c
 ===================================================================
---- qemu-0.12.4.orig/qemu-char.c
-+++ qemu-0.12.4/qemu-char.c
-@@ -2235,6 +2235,69 @@ static CharDriverState *qemu_chr_open_so
+--- qemu-0.13.0.orig/qemu-char.c	2011-01-17 16:41:59.000000000 +0800
++++ qemu-0.13.0/qemu-char.c	2011-01-17 16:42:36.000000000 +0800
+@@ -2278,6 +2278,69 @@
      return NULL;
  }
  
@@ -216,7 +216,7 @@ Index: qemu-0.12.4/qemu-char.c
  QemuOpts *qemu_chr_parse_compat(const char *label, const char *filename)
  {
      char host[65], port[33], width[8], height[8];
-@@ -2353,6 +2416,10 @@ QemuOpts *qemu_chr_parse_compat(const ch
+@@ -2396,6 +2459,10 @@
          qemu_opt_set(opts, "path", filename);
          return opts;
      }
@@ -227,7 +227,7 @@ Index: qemu-0.12.4/qemu-char.c
  
  fail:
      qemu_opts_del(opts);
-@@ -2368,6 +2435,7 @@ static const struct {
+@@ -2411,6 +2478,7 @@
      { .name = "udp",       .open = qemu_chr_open_udp },
      { .name = "msmouse",   .open = qemu_chr_open_msmouse },
      { .name = "vc",        .open = text_console_init },
@@ -235,136 +235,19 @@ Index: qemu-0.12.4/qemu-char.c
  #ifdef _WIN32
      { .name = "file",      .open = qemu_chr_open_win_file_out },
      { .name = "pipe",      .open = qemu_chr_open_win_pipe },
-Index: qemu-0.12.4/sdl.c
+Index: qemu-0.13.0/slirp/udp.c
 ===================================================================
---- qemu-0.12.4.orig/sdl.c
-+++ qemu-0.12.4/sdl.c
-@@ -58,6 +58,8 @@ static uint8_t allocator;
- static SDL_PixelFormat host_format;
- static int scaling_active = 0;
- 
-+extern void opengl_exec_set_parent_window(Display* _dpy, Window _parent_window);
-+
- static void sdl_update(DisplayState *ds, int x, int y, int w, int h)
- {
-     //    printf("updating x=%d y=%d w=%d h=%d\n", x, y, w, h);
-@@ -119,12 +121,22 @@ static void do_sdl_resize(int new_width,
- 
- static void sdl_resize(DisplayState *ds)
- {
--    if  (!allocator) {
-+    SDL_SysWMinfo info;
-+    static Display *dpy;
-+
-+     if  (!allocator) {
-         if (!scaling_active)
-             do_sdl_resize(ds_get_width(ds), ds_get_height(ds), 0);
-         else if (real_screen->format->BitsPerPixel != ds_get_bits_per_pixel(ds))
-             do_sdl_resize(real_screen->w, real_screen->h, ds_get_bits_per_pixel(ds));
-         sdl_setdata(ds);
-+
-+        SDL_GetWMInfo(&info);
-+        if (info.subsystem == SDL_SYSWM_X11 && info.info.x11.display &&
-+            (!dpy || dpy == info.info.x11.display)) {
-+                dpy = info.info.x11.display;
-+                opengl_exec_set_parent_window(dpy, info.info.x11.window);
-+        }
-     } else {
-         if (guest_screen != NULL) {
-             SDL_FreeSurface(guest_screen);
-@@ -453,7 +465,7 @@ static void sdl_show_cursor(void)
- 
-     if (!kbd_mouse_is_absolute()) {
-         SDL_ShowCursor(1);
--        if (guest_cursor &&
-+        if (guest_cursor && !force_pointer &&
-                 (gui_grab || kbd_mouse_is_absolute() || absolute_enabled))
-             SDL_SetCursor(guest_sprite);
-         else
-@@ -464,7 +476,8 @@ static void sdl_show_cursor(void)
- static void sdl_grab_start(void)
- {
-     if (guest_cursor) {
--        SDL_SetCursor(guest_sprite);
-+        if (!force_pointer)
-+            SDL_SetCursor(guest_sprite);
-         if (!kbd_mouse_is_absolute() && !absolute_enabled)
-             SDL_WarpMouse(guest_x, guest_y);
-     } else
-@@ -505,8 +518,8 @@ static void sdl_send_mouse_event(int dx,
- 	    absolute_enabled = 1;
- 	}
- 
--       dx = x * 0x7FFF / (width - 1);
--       dy = y * 0x7FFF / (height - 1);
-+        dx = x * 0x7FFF / (width - 1);
-+        dy = y * 0x7FFF / (height - 1);
-     } else if (absolute_enabled) {
- 	sdl_show_cursor();
- 	absolute_enabled = 0;
-@@ -761,7 +774,8 @@ static void sdl_mouse_warp(int x, int y,
-         if (!guest_cursor)
-             sdl_show_cursor();
-         if (gui_grab || kbd_mouse_is_absolute() || absolute_enabled) {
--            SDL_SetCursor(guest_sprite);
-+            if (!force_pointer)
-+                SDL_SetCursor(guest_sprite);
-             if (!kbd_mouse_is_absolute() && !absolute_enabled)
-                 SDL_WarpMouse(x, y);
-         }
-@@ -815,7 +829,7 @@ static void sdl_mouse_define(int width, 
-     }
-     guest_sprite = SDL_CreateCursor(sprite, mask, width, height, hot_x, hot_y);
- 
--    if (guest_cursor &&
-+    if (guest_cursor && !force_pointer &&
-             (gui_grab || kbd_mouse_is_absolute() || absolute_enabled))
-         SDL_SetCursor(guest_sprite);
- }
-@@ -832,6 +846,7 @@ void sdl_display_init(DisplayState *ds, 
-     int flags;
-     uint8_t data = 0;
-     DisplayAllocator *da;
-+    SDL_SysWMinfo info;
-     const SDL_VideoInfo *vi;
- 
- #if defined(__APPLE__)
-@@ -856,6 +871,12 @@ void sdl_display_init(DisplayState *ds, 
-     vi = SDL_GetVideoInfo();
-     host_format = *(vi->vfmt);
- 
-+    SDL_GetWMInfo(&info);
-+    if (info.subsystem == SDL_SYSWM_X11 && info.info.x11.display)
-+        opengl_exec_set_parent_window(info.info.x11.display,
-+                        RootWindow(info.info.x11.display,
-+                                DefaultScreen(info.info.x11.display)));
-+
-     dcl = qemu_mallocz(sizeof(DisplayChangeListener));
-     dcl->dpy_update = sdl_update;
-     dcl->dpy_resize = sdl_resize;
-@@ -891,4 +912,9 @@ void sdl_display_init(DisplayState *ds, 
-         gui_fullscreen_initial_grab = 1;
-         sdl_grab_start();
-     }
-+
-+    SDL_GetWMInfo(&info);
-+    if (info.subsystem == SDL_SYSWM_X11 && info.info.x11.display)
-+        opengl_exec_set_parent_window(info.info.x11.display,
-+                        info.info.x11.window);
- }
-Index: qemu-0.12.4/slirp/udp.c
-===================================================================
---- qemu-0.12.4.orig/slirp/udp.c
-+++ qemu-0.12.4/slirp/udp.c
+--- qemu-0.13.0.orig/slirp/udp.c	2011-01-17 16:41:59.000000000 +0800
++++ qemu-0.13.0/slirp/udp.c	2011-01-17 16:42:36.000000000 +0800
 @@ -40,6 +40,7 @@
  
  #include <slirp.h>
  #include "ip_icmp.h"
 +#include "bswap.h"
  
- static u_int8_t udp_tos(struct socket *so);
+ static uint8_t udp_tos(struct socket *so);
  
-@@ -125,6 +126,11 @@ udp_input(register struct mbuf *m, int i
+@@ -125,6 +126,11 @@
              goto bad;
          }
  
@@ -376,11 +259,11 @@ Index: qemu-0.12.4/slirp/udp.c
          if (slirp->restricted) {
              goto bad;
          }
-Index: qemu-0.12.4/sysemu.h
+Index: qemu-0.13.0/sysemu.h
 ===================================================================
---- qemu-0.12.4.orig/sysemu.h
-+++ qemu-0.12.4/sysemu.h
-@@ -141,6 +141,7 @@ extern int semihosting_enabled;
+--- qemu-0.13.0.orig/sysemu.h	2011-01-17 16:41:59.000000000 +0800
++++ qemu-0.13.0/sysemu.h	2011-01-17 16:42:36.000000000 +0800
+@@ -133,6 +133,7 @@
  extern int old_param;
  extern int boot_menu;
  extern QEMUClock *rtc_clock;
@@ -388,10 +271,10 @@ Index: qemu-0.12.4/sysemu.h
  
  #define MAX_NODES 64
  extern int nb_numa_nodes;
-Index: qemu-0.12.4/target-i386/beginend_funcs.sh
+Index: qemu-0.13.0/target-i386/beginend_funcs.sh
 ===================================================================
---- /dev/null
-+++ qemu-0.12.4/target-i386/beginend_funcs.sh
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ qemu-0.13.0/target-i386/beginend_funcs.sh	2011-01-17 16:42:36.000000000 +0800
 @@ -0,0 +1,23 @@
 +#! /bin/sh
 +# Copyright 2008 (C) Intel Corporation
@@ -416,10 +299,10 @@ Index: qemu-0.12.4/target-i386/beginend_funcs.sh
 +echo -e MAGIC_MACRO\(glCallList\)\\n
 +echo -e MAGIC_MACRO\(glCallLists\)\\n
 +echo -e MAGIC_MACRO\(glEdgeFlag{,v}\)\\n
-Index: qemu-0.12.4/target-i386/ghash.c
+Index: qemu-0.13.0/target-i386/ghash.c
 ===================================================================
---- /dev/null
-+++ qemu-0.12.4/target-i386/ghash.c
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ qemu-0.13.0/target-i386/ghash.c	2011-01-17 16:42:36.000000000 +0800
 @@ -0,0 +1,347 @@
 +/* This is a modified and simplified version of original ghash.c */
 +
@@ -768,10 +651,10 @@ Index: qemu-0.12.4/target-i386/ghash.c
 +    hash_node = next;
 +  }
 +}
-Index: qemu-0.12.4/target-i386/ghash.h
+Index: qemu-0.13.0/target-i386/ghash.h
 ===================================================================
---- /dev/null
-+++ qemu-0.12.4/target-i386/ghash.h
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ qemu-0.13.0/target-i386/ghash.h	2011-01-17 16:42:36.000000000 +0800
 @@ -0,0 +1,59 @@
 +/* This is a modified and simplified version of original ghash.h  */
 +
@@ -832,10 +715,10 @@ Index: qemu-0.12.4/target-i386/ghash.h
 +
 +#endif /* __SIMPLE_HASH_H__ */
 +
-Index: qemu-0.12.4/target-i386/gl_func_perso.h
+Index: qemu-0.13.0/target-i386/gl_func_perso.h
 ===================================================================
---- /dev/null
-+++ qemu-0.12.4/target-i386/gl_func_perso.h
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ qemu-0.13.0/target-i386/gl_func_perso.h	2011-01-17 16:42:36.000000000 +0800
 @@ -0,0 +1,135 @@
 +/*
 + *  Hand-implemented GL/GLX API
@@ -972,11 +855,11 @@ Index: qemu-0.12.4/target-i386/gl_func_perso.h
 +MAGIC_MACRO(_glGetSelectBuffer_fake),
 +MAGIC_MACRO(_glFeedbackBuffer_fake),
 +MAGIC_MACRO(_glGetFeedbackBuffer_fake),
-Index: qemu-0.12.4/target-i386/helper.c
+Index: qemu-0.13.0/target-i386/helper.c
 ===================================================================
---- qemu-0.12.4.orig/target-i386/helper.c
-+++ qemu-0.12.4/target-i386/helper.c
-@@ -1435,7 +1435,7 @@ target_phys_addr_t cpu_get_phys_page_deb
+--- qemu-0.13.0.orig/target-i386/helper.c	2011-01-17 16:41:59.000000000 +0800
++++ qemu-0.13.0/target-i386/helper.c	2011-01-17 16:42:36.000000000 +0800
+@@ -914,7 +914,7 @@
      }
  
      page_offset = (addr & TARGET_PAGE_MASK) & (page_size - 1);
@@ -985,21 +868,21 @@ Index: qemu-0.12.4/target-i386/helper.c
      return paddr;
  }
  
-Index: qemu-0.12.4/target-i386/helper.h
+Index: qemu-0.13.0/target-i386/helper.h
 ===================================================================
---- qemu-0.12.4.orig/target-i386/helper.h
-+++ qemu-0.12.4/target-i386/helper.h
-@@ -217,4 +217,6 @@ DEF_HELPER_2(rclq, tl, tl, tl)
+--- qemu-0.13.0.orig/target-i386/helper.h	2011-01-17 16:41:59.000000000 +0800
++++ qemu-0.13.0/target-i386/helper.h	2011-01-17 16:42:36.000000000 +0800
+@@ -217,4 +217,6 @@
  DEF_HELPER_2(rcrq, tl, tl, tl)
  #endif
  
 +DEF_HELPER_0(opengl, void)
 +
  #include "def-helper.h"
-Index: qemu-0.12.4/target-i386/helper_opengl.c
+Index: qemu-0.13.0/target-i386/helper_opengl.c
 ===================================================================
---- /dev/null
-+++ qemu-0.12.4/target-i386/helper_opengl.c
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ qemu-0.13.0/target-i386/helper_opengl.c	2011-01-17 16:44:27.000000000 +0800
 @@ -0,0 +1,1207 @@
 +/*
 + *  Host-side implementation of GL/GLX API
@@ -1086,7 +969,7 @@ Index: qemu-0.12.4/target-i386/helper_opengl.c
 +                    cpu_x86_handle_mmu_fault((CPUState *) env, addr, 0, 1, 1));
 +            return NULL;
 +        } else {
-+            if (ret + TARGET_PAGE_SIZE <= last_ram_offset) {
++            if (ret + TARGET_PAGE_SIZE <= ram_bytes_total()) {
 +                return qemu_get_ram_ptr(ret +
 +                               (((target_ulong) addr) & (TARGET_PAGE_SIZE - 1)));
 +            } else {
@@ -1095,7 +978,7 @@ Index: qemu-0.12.4/target-i386/helper_opengl.c
 +                        TARGET_FMT_lx "\n", addr, ret);
 +                fprintf(stderr,
 +                        "ret=" TARGET_FMT_lx " last_ram_offset= " TARGET_FMT_lx
-+                        "\n", ret, (target_ulong) last_ram_offset);
++                        "\n", ret, (target_ulong) ram_bytes_total());
 +                return NULL;
 +            }
 +        }
@@ -2201,19 +2084,19 @@ Index: qemu-0.12.4/target-i386/helper_opengl.c
 +
 +    allow_kernel = 0;
 +    if (kvm_enabled())
-+        kvm_arch_put_registers(env);
++        kvm_arch_put_registers(env, KVM_PUT_RUNTIME_STATE);
 +
 +    printf("Granted OpenGL access to process '%s'\n", name);
 +
 +    io_register();
 +}
 +#endif
-Index: qemu-0.12.4/target-i386/kvm.c
+Index: qemu-0.13.0/target-i386/kvm.c
 ===================================================================
---- qemu-0.12.4.orig/target-i386/kvm.c
-+++ qemu-0.12.4/target-i386/kvm.c
-@@ -529,7 +529,7 @@ static int kvm_get_fpu(CPUState *env)
-     return 0;
+--- qemu-0.13.0.orig/target-i386/kvm.c	2011-01-17 16:41:59.000000000 +0800
++++ qemu-0.13.0/target-i386/kvm.c	2011-01-17 16:42:36.000000000 +0800
+@@ -746,7 +746,7 @@
+ #endif
  }
  
 -static int kvm_get_sregs(CPUState *env)
@@ -2221,10 +2104,10 @@ Index: qemu-0.12.4/target-i386/kvm.c
  {
      struct kvm_sregs sregs;
      uint32_t hflags;
-Index: qemu-0.12.4/target-i386/mesa_enums.c
+Index: qemu-0.13.0/target-i386/mesa_enums.c
 ===================================================================
---- /dev/null
-+++ qemu-0.12.4/target-i386/mesa_enums.c
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ qemu-0.13.0/target-i386/mesa_enums.c	2011-01-17 16:42:36.000000000 +0800
 @@ -0,0 +1,4890 @@
 +/* DO NOT EDIT - This file generated automatically by gl_enums.py (from Mesa) script */
 +
@@ -7116,10 +6999,10 @@ Index: qemu-0.12.4/target-i386/mesa_enums.c
 +}
 +
 +
-Index: qemu-0.12.4/target-i386/mesa_get.c
+Index: qemu-0.13.0/target-i386/mesa_get.c
 ===================================================================
---- /dev/null
-+++ qemu-0.12.4/target-i386/mesa_get.c
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ qemu-0.13.0/target-i386/mesa_get.c	2011-01-17 16:42:36.000000000 +0800
 @@ -0,0 +1,5563 @@
 +
 +/***
@@ -12684,10 +12567,10 @@ Index: qemu-0.12.4/target-i386/mesa_get.c
 +      params[i] = (GLdouble) values[i];
 +}
 +
-Index: qemu-0.12.4/target-i386/mesa_gl.h
+Index: qemu-0.13.0/target-i386/mesa_gl.h
 ===================================================================
---- /dev/null
-+++ qemu-0.12.4/target-i386/mesa_gl.h
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ qemu-0.13.0/target-i386/mesa_gl.h	2011-01-17 16:42:36.000000000 +0800
 @@ -0,0 +1,2251 @@
 +/*
 + * Mesa 3-D graphics library
@@ -14940,10 +14823,10 @@ Index: qemu-0.12.4/target-i386/mesa_gl.h
 +#endif
 +
 +#endif /* __gl_h_ */
-Index: qemu-0.12.4/target-i386/mesa_glext.h
+Index: qemu-0.13.0/target-i386/mesa_glext.h
 ===================================================================
---- /dev/null
-+++ qemu-0.12.4/target-i386/mesa_glext.h
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ qemu-0.13.0/target-i386/mesa_glext.h	2011-01-17 16:42:36.000000000 +0800
 @@ -0,0 +1,7279 @@
 +#ifndef __glext_h_
 +#define __glext_h_
@@ -22224,10 +22107,10 @@ Index: qemu-0.12.4/target-i386/mesa_glext.h
 +
 +/* ERO */
 +GLAPI void GLAPIENTRY fake_gluBuild2DMipmaps (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *data);
-Index: qemu-0.12.4/target-i386/mesa_glu.h
+Index: qemu-0.13.0/target-i386/mesa_glu.h
 ===================================================================
---- /dev/null
-+++ qemu-0.12.4/target-i386/mesa_glu.h
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ qemu-0.13.0/target-i386/mesa_glu.h	2011-01-17 16:42:36.000000000 +0800
 @@ -0,0 +1,354 @@
 +/*
 +** License Applicability. Except to the extent portions of this file are
@@ -22583,10 +22466,10 @@ Index: qemu-0.12.4/target-i386/mesa_glu.h
 +#endif
 +
 +#endif /* __glu_h__ */
-Index: qemu-0.12.4/target-i386/mesa_glx.h
+Index: qemu-0.13.0/target-i386/mesa_glx.h
 ===================================================================
---- /dev/null
-+++ qemu-0.12.4/target-i386/mesa_glx.h
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ qemu-0.13.0/target-i386/mesa_glx.h	2011-01-17 16:42:36.000000000 +0800
 @@ -0,0 +1,510 @@
 +/*
 + * Mesa 3-D graphics library
@@ -23098,10 +22981,10 @@ Index: qemu-0.12.4/target-i386/mesa_glx.h
 +#endif
 +
 +#endif
-Index: qemu-0.12.4/target-i386/mesa_glxext.h
+Index: qemu-0.13.0/target-i386/mesa_glxext.h
 ===================================================================
---- /dev/null
-+++ qemu-0.12.4/target-i386/mesa_glxext.h
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ qemu-0.13.0/target-i386/mesa_glxext.h	2011-01-17 16:42:36.000000000 +0800
 @@ -0,0 +1,785 @@
 +#ifndef __glxext_h_
 +#define __glxext_h_
@@ -23888,10 +23771,10 @@ Index: qemu-0.12.4/target-i386/mesa_glxext.h
 +#endif
 +
 +#endif
-Index: qemu-0.12.4/target-i386/mesa_mipmap.c
+Index: qemu-0.13.0/target-i386/mesa_mipmap.c
 ===================================================================
---- /dev/null
-+++ qemu-0.12.4/target-i386/mesa_mipmap.c
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ qemu-0.13.0/target-i386/mesa_mipmap.c	2011-01-17 16:42:36.000000000 +0800
 @@ -0,0 +1,824 @@
 +
 +/*
@@ -24717,10 +24600,10 @@ Index: qemu-0.12.4/target-i386/mesa_mipmap.c
 +
 +   return retval;
 +}
-Index: qemu-0.12.4/target-i386/opengl_exec.c
+Index: qemu-0.13.0/target-i386/opengl_exec.c
 ===================================================================
---- /dev/null
-+++ qemu-0.12.4/target-i386/opengl_exec.c
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ qemu-0.13.0/target-i386/opengl_exec.c	2011-01-17 16:42:36.000000000 +0800
 @@ -0,0 +1,3931 @@
 +/*
 + *  Host-side implementation of GL/GLX API
@@ -28653,10 +28536,10 @@ Index: qemu-0.12.4/target-i386/opengl_exec.c
 +
 +    return ret_int;
 +}
-Index: qemu-0.12.4/target-i386/opengl_func.h
+Index: qemu-0.13.0/target-i386/opengl_func.h
 ===================================================================
---- /dev/null
-+++ qemu-0.12.4/target-i386/opengl_func.h
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ qemu-0.13.0/target-i386/opengl_func.h	2011-01-17 16:42:36.000000000 +0800
 @@ -0,0 +1,1108 @@
 +/*
 + *  Main header for both host and guest sides
@@ -29766,10 +29649,10 @@ Index: qemu-0.12.4/target-i386/opengl_func.h
 +#error Unsupported ABI
 +#endif
 +#endif
-Index: qemu-0.12.4/target-i386/opengl_player.c
+Index: qemu-0.13.0/target-i386/opengl_player.c
 ===================================================================
---- /dev/null
-+++ qemu-0.12.4/target-i386/opengl_player.c
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ qemu-0.13.0/target-i386/opengl_player.c	2011-01-17 16:42:36.000000000 +0800
 @@ -0,0 +1,1461 @@
 +/*
 + *  Plays a sequence of OpenGL calls recorded either under qemu or with opengl_server
@@ -31232,10 +31115,10 @@ Index: qemu-0.12.4/target-i386/opengl_player.c
 +    }
 +    return 0;
 +}
-Index: qemu-0.12.4/target-i386/opengl_server.c
+Index: qemu-0.13.0/target-i386/opengl_server.c
 ===================================================================
---- /dev/null
-+++ qemu-0.12.4/target-i386/opengl_server.c
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ qemu-0.13.0/target-i386/opengl_server.c	2011-01-17 16:42:36.000000000 +0800
 @@ -0,0 +1,826 @@
 +/*
 + *  TCP/IP OpenGL server
@@ -32063,10 +31946,10 @@ Index: qemu-0.12.4/target-i386/opengl_server.c
 +
 +  return 0;
 +}
-Index: qemu-0.12.4/target-i386/opengl_utils.h
+Index: qemu-0.13.0/target-i386/opengl_utils.h
 ===================================================================
---- /dev/null
-+++ qemu-0.12.4/target-i386/opengl_utils.h
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ qemu-0.13.0/target-i386/opengl_utils.h	2011-01-17 16:42:36.000000000 +0800
 @@ -0,0 +1,453 @@
 +/*
 + *  Functions used by host & client sides
@@ -32521,10 +32404,10 @@ Index: qemu-0.12.4/target-i386/opengl_utils.h
 +}
 +
 +#endif
-Index: qemu-0.12.4/target-i386/parse_gl_h.c
+Index: qemu-0.13.0/target-i386/parse_gl_h.c
 ===================================================================
---- /dev/null
-+++ qemu-0.12.4/target-i386/parse_gl_h.c
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ qemu-0.13.0/target-i386/parse_gl_h.c	2011-01-17 16:42:36.000000000 +0800
 @@ -0,0 +1,1496 @@
 +/*
 + *  Parse gl.h et glx.h to auto-generate source code
@@ -34022,10 +33905,10 @@ Index: qemu-0.12.4/target-i386/parse_gl_h.c
 +
 +  return 0;
 +}
-Index: qemu-0.12.4/target-i386/parse_mesa_get_c.c
+Index: qemu-0.13.0/target-i386/parse_mesa_get_c.c
 ===================================================================
---- /dev/null
-+++ qemu-0.12.4/target-i386/parse_mesa_get_c.c
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ qemu-0.13.0/target-i386/parse_mesa_get_c.c	2011-01-17 16:42:36.000000000 +0800
 @@ -0,0 +1,225 @@
 +/*
 + *  Parse the "get.c" from mesa source tree to generate "glgetv_cst.h"
@@ -34252,11 +34135,11 @@ Index: qemu-0.12.4/target-i386/parse_mesa_get_c.c
 +  fclose(outf);
 +  return 0;
 +}
-Index: qemu-0.12.4/target-i386/translate.c
+Index: qemu-0.13.0/target-i386/translate.c
 ===================================================================
---- qemu-0.12.4.orig/target-i386/translate.c
-+++ qemu-0.12.4/target-i386/translate.c
-@@ -743,6 +743,8 @@ static void gen_check_io(DisasContext *s
+--- qemu-0.13.0.orig/target-i386/translate.c	2011-01-17 16:41:59.000000000 +0800
++++ qemu-0.13.0/target-i386/translate.c	2011-01-17 16:42:36.000000000 +0800
+@@ -745,6 +745,8 @@
      int state_saved;
      target_ulong next_eip;
  
@@ -34265,8 +34148,8 @@ Index: qemu-0.12.4/target-i386/translate.c
      state_saved = 0;
      if (s->pe && (s->cpl > s->iopl || s->vm86)) {
          if (s->cc_op != CC_OP_DYNAMIC)
-@@ -2676,11 +2678,18 @@ static void gen_exception(DisasContext *
-     s->is_jmp = 3;
+@@ -2672,11 +2674,18 @@
+     s->is_jmp = DISAS_TB_JUMP;
  }
  
 +int enable_gl = 0;
@@ -34284,27 +34167,26 @@ Index: qemu-0.12.4/target-i386/translate.c
      if (s->cc_op != CC_OP_DYNAMIC)
          gen_op_set_cc_op(s->cc_op);
      gen_jmp_im(cur_eip);
-Index: qemu-0.12.4/vl.c
+Index: qemu-0.13.0/vl.c
 ===================================================================
---- qemu-0.12.4.orig/vl.c
-+++ qemu-0.12.4/vl.c
-@@ -238,6 +238,7 @@ int semihosting_enabled = 0;
- #ifdef TARGET_ARM
+--- qemu-0.13.0.orig/vl.c	2011-01-17 16:41:59.000000000 +0800
++++ qemu-0.13.0/vl.c	2011-01-17 16:42:36.000000000 +0800
+@@ -217,12 +217,14 @@
+ int nb_option_roms;
+ int semihosting_enabled = 0;
  int old_param = 0;
- #endif
 +int force_pointer = 0;
  const char *qemu_name;
  int alt_grab = 0;
  int ctrl_grab = 0;
-@@ -246,6 +247,7 @@ unsigned int nb_prom_envs = 0;
+ unsigned int nb_prom_envs = 0;
  const char *prom_envs[MAX_PROM_ENVS];
- #endif
  int boot_menu;
 +extern int enable_gl;
  
  int nb_numa_nodes;
  uint64_t node_mem[MAX_NODES];
-@@ -4432,6 +4434,8 @@ static void select_vgahw (const char *p)
+@@ -1433,6 +1435,8 @@
      } else if (strstart(p, "xenfb", &opts)) {
          vga_interface_type = VGA_XENFB;
      } else if (!strstart(p, "none", &opts)) {
@@ -34313,17 +34195,17 @@ Index: qemu-0.12.4/vl.c
      invalid_vga:
          fprintf(stderr, "Unknown vga type: %s\n", p);
          exit(1);
-@@ -5563,6 +5567,9 @@ int main(int argc, char **argv, char **e
+@@ -2535,6 +2539,9 @@
+             case QEMU_OPTION_old_param:
                  old_param = 1;
                  break;
- #endif
 +            case QEMU_OPTION_force_pointer:
 +                force_pointer = 1;
 +                break;
              case QEMU_OPTION_clock:
                  configure_alarms(optarg);
                  break;
-@@ -5577,6 +5584,12 @@ int main(int argc, char **argv, char **e
+@@ -2548,6 +2555,12 @@
                  }
                  configure_rtc(opts);
                  break;
@@ -34336,9 +34218,9 @@ Index: qemu-0.12.4/vl.c
              case QEMU_OPTION_tb_size:
                  tb_size = strtol(optarg, NULL, 0);
                  if (tb_size < 0)
-@@ -5933,6 +5946,14 @@ int main(int argc, char **argv, char **e
-             }
-         }
+@@ -2887,6 +2900,14 @@
+         if (foreach_device_config(DEV_USB, usb_parse) < 0)
+             exit(1);
      }
 +#ifdef TARGET_OPENGL_OK
 +        if (enable_gl) {
@@ -34349,24 +34231,24 @@ Index: qemu-0.12.4/vl.c
 +        }
 +#endif
  
-     if (foreach_device_config(DEV_SERIAL, serial_parse) < 0)
-         exit(1);
-Index: qemu-0.12.4/qemu-options.hx
+     /* init generic devices */
+     if (qemu_opts_foreach(&qemu_device_opts, device_init_func, NULL, 1) != 0)
+Index: qemu-0.13.0/qemu-options.hx
 ===================================================================
---- qemu-0.12.4.orig/qemu-options.hx
-+++ qemu-0.12.4/qemu-options.hx
-@@ -1789,6 +1789,18 @@ many timer interrupts were not processed
+--- qemu-0.13.0.orig/qemu-options.hx	2011-01-17 16:41:59.000000000 +0800
++++ qemu-0.13.0/qemu-options.hx	2011-01-17 16:44:27.000000000 +0800
+@@ -2024,6 +2024,18 @@
  re-inject them.
  ETEXI
  
 +DEF("enable-gl", 0, QEMU_OPTION_enable_gl, \
-+    "-enable-gl\n")
++    "-enable-gl\n", QEMU_ARCH_I386)
 +STEXI
 +@item -enable-gl
 +ETEXI
 +
 +DEF("force-pointer", 0, QEMU_OPTION_force_pointer, \
-+    "-force-pointer\n")
++    "-force-pointer\n", QEMU_ARCH_ALL)
 +STEXI
 +@item -force-pointer
 +ETEXI
@@ -34374,3 +34256,109 @@ Index: qemu-0.12.4/qemu-options.hx
  DEF("icount", HAS_ARG, QEMU_OPTION_icount, \
      "-icount [N|auto]\n" \
      "                enable virtual instruction counter with 2^N clock ticks per\n" \
+Index: qemu-0.13.0/ui/sdl.c
+===================================================================
+--- qemu-0.13.0.orig/ui/sdl.c	2011-01-17 16:41:59.000000000 +0800
++++ qemu-0.13.0/ui/sdl.c	2011-01-17 16:42:36.000000000 +0800
+@@ -59,6 +59,8 @@
+ static int scaling_active = 0;
+ static Notifier mouse_mode_notifier;
+ 
++extern void opengl_exec_set_parent_window(Display* _dpy, Window _parent_window);
++
+ static void sdl_update(DisplayState *ds, int x, int y, int w, int h)
+ {
+     //    printf("updating x=%d y=%d w=%d h=%d\n", x, y, w, h);
+@@ -121,12 +123,22 @@
+ 
+ static void sdl_resize(DisplayState *ds)
+ {
+-    if  (!allocator) {
++    SDL_SysWMinfo info;
++    static Display *dpy;
++
++     if  (!allocator) {
+         if (!scaling_active)
+             do_sdl_resize(ds_get_width(ds), ds_get_height(ds), 0);
+         else if (real_screen->format->BitsPerPixel != ds_get_bits_per_pixel(ds))
+             do_sdl_resize(real_screen->w, real_screen->h, ds_get_bits_per_pixel(ds));
+         sdl_setdata(ds);
++
++        SDL_GetWMInfo(&info);
++        if (info.subsystem == SDL_SYSWM_X11 && info.info.x11.display &&
++            (!dpy || dpy == info.info.x11.display)) {
++                dpy = info.info.x11.display;
++                opengl_exec_set_parent_window(dpy, info.info.x11.window);
++        }
+     } else {
+         if (guest_screen != NULL) {
+             SDL_FreeSurface(guest_screen);
+@@ -455,7 +467,7 @@
+ 
+     if (!kbd_mouse_is_absolute()) {
+         SDL_ShowCursor(1);
+-        if (guest_cursor &&
++        if (guest_cursor && !force_pointer &&
+                 (gui_grab || kbd_mouse_is_absolute() || absolute_enabled))
+             SDL_SetCursor(guest_sprite);
+         else
+@@ -466,7 +478,8 @@
+ static void sdl_grab_start(void)
+ {
+     if (guest_cursor) {
+-        SDL_SetCursor(guest_sprite);
++        if (!force_pointer)
++            SDL_SetCursor(guest_sprite);
+         if (!kbd_mouse_is_absolute() && !absolute_enabled)
+             SDL_WarpMouse(guest_x, guest_y);
+     } else
+@@ -768,7 +781,8 @@
+         if (!guest_cursor)
+             sdl_show_cursor();
+         if (gui_grab || kbd_mouse_is_absolute() || absolute_enabled) {
+-            SDL_SetCursor(guest_sprite);
++            if (!force_pointer)
++                SDL_SetCursor(guest_sprite);
+             if (!kbd_mouse_is_absolute() && !absolute_enabled)
+                 SDL_WarpMouse(x, y);
+         }
+@@ -796,7 +810,7 @@
+     qemu_free(image);
+     qemu_free(mask);
+ 
+-    if (guest_cursor &&
++    if (guest_cursor && !force_pointer &&
+             (gui_grab || kbd_mouse_is_absolute() || absolute_enabled))
+         SDL_SetCursor(guest_sprite);
+ }
+@@ -813,6 +827,7 @@
+     int flags;
+     uint8_t data = 0;
+     DisplayAllocator *da;
++    SDL_SysWMinfo info;
+     const SDL_VideoInfo *vi;
+ 
+ #if defined(__APPLE__)
+@@ -842,6 +857,12 @@
+     vi = SDL_GetVideoInfo();
+     host_format = *(vi->vfmt);
+ 
++    SDL_GetWMInfo(&info);
++    if (info.subsystem == SDL_SYSWM_X11 && info.info.x11.display)
++        opengl_exec_set_parent_window(info.info.x11.display,
++                        RootWindow(info.info.x11.display,
++                                DefaultScreen(info.info.x11.display)));
++
+     dcl = qemu_mallocz(sizeof(DisplayChangeListener));
+     dcl->dpy_update = sdl_update;
+     dcl->dpy_resize = sdl_resize;
+@@ -876,4 +897,9 @@
+         gui_fullscreen_initial_grab = 1;
+         sdl_grab_start();
+     }
++
++    SDL_GetWMInfo(&info);
++    if (info.subsystem == SDL_SYSWM_X11 && info.info.x11.display)
++        opengl_exec_set_parent_window(info.info.x11.display,
++                        info.info.x11.window);
+ }
diff --git a/meta/recipes-devtools/qemu/qemu-0.13.0/qemu-ppc-hack.patch b/meta/recipes-devtools/qemu/qemu-0.13.0/qemu-ppc-hack.patch
new file mode 100644
index 0000000..6f45788
--- /dev/null
+++ b/meta/recipes-devtools/qemu/qemu-0.13.0/qemu-ppc-hack.patch
@@ -0,0 +1,108 @@
+Quick fixes to get the ppc system model to boot a 603e based
+kernel.
+
+Index: qemu-0.13.0/hw/m48t59.c
+===================================================================
+--- qemu-0.13.0.orig/hw/m48t59.c	2010-10-16 04:56:09.000000000 +0800
++++ qemu-0.13.0/hw/m48t59.c	2011-01-17 16:40:09.000000000 +0800
+@@ -50,6 +50,7 @@
+  */
+ 
+ struct M48t59State {
++    SysBusDevice busdev;
+     /* Model parameters */
+     uint32_t type; // 2 = m48t02, 8 = m48t08, 59 = m48t59
+     /* Hardware parameters */
+@@ -74,11 +75,6 @@
+     M48t59State state;
+ } M48t59ISAState;
+ 
+-typedef struct M48t59SysBusState {
+-    SysBusDevice busdev;
+-    M48t59State state;
+-} M48t59SysBusState;
+-
+ /* Fake timer functions */
+ 
+ /* Alarm management */
+@@ -629,8 +625,7 @@
+ 
+ static void m48t59_reset_sysbus(DeviceState *d)
+ {
+-    M48t59SysBusState *sys = container_of(d, M48t59SysBusState, busdev.qdev);
+-    M48t59State *NVRAM = &sys->state;
++    M48t59State *NVRAM = container_of(d, M48t59State, busdev.qdev);
+ 
+     m48t59_reset_common(NVRAM);
+ }
+@@ -641,7 +636,7 @@
+ {
+     DeviceState *dev;
+     SysBusDevice *s;
+-    M48t59SysBusState *d;
++    M48t59State *d;
+ 
+     dev = qdev_create(NULL, "m48t59");
+     qdev_prop_set_uint32(dev, "type", type);
+@@ -658,9 +653,9 @@
+         sysbus_mmio_map(s, 0, mem_base);
+     }
+ 
+-    d = FROM_SYSBUS(M48t59SysBusState, s);
++    d = FROM_SYSBUS(M48t59State, s);
+ 
+-    return &d->state;
++    return d;
+ }
+ 
+ M48t59State *m48t59_init_isa(uint32_t io_base, uint16_t size, int type)
+@@ -710,8 +705,7 @@
+ 
+ static int m48t59_init1(SysBusDevice *dev)
+ {
+-    M48t59SysBusState *d = FROM_SYSBUS(M48t59SysBusState, dev);
+-    M48t59State *s = &d->state;
++    M48t59State *s = FROM_SYSBUS(M48t59State, dev);
+     int mem_index;
+ 
+     sysbus_init_irq(dev, &s->IRQ);
+@@ -740,12 +734,12 @@
+ static SysBusDeviceInfo m48t59_info = {
+     .init = m48t59_init1,
+     .qdev.name  = "m48t59",
+-    .qdev.size = sizeof(M48t59SysBusState),
++    .qdev.size  = sizeof(M48t59State),
+     .qdev.reset = m48t59_reset_sysbus,
+     .qdev.props = (Property[]) {
+-        DEFINE_PROP_UINT32("size",    M48t59SysBusState, state.size,    -1),
+-        DEFINE_PROP_UINT32("type",    M48t59SysBusState, state.type,    -1),
+-        DEFINE_PROP_HEX32( "io_base", M48t59SysBusState, state.io_base,  0),
++        DEFINE_PROP_UINT32("size",    M48t59State, size,    -1),
++        DEFINE_PROP_UINT32("type",    M48t59State, type,    -1),
++        DEFINE_PROP_HEX32( "io_base", M48t59State, io_base,  0),
+         DEFINE_PROP_END_OF_LIST(),
+     }
+ };
+Index: qemu-0.13.0/hw/ppc_prep.c
+===================================================================
+--- qemu-0.13.0.orig/hw/ppc_prep.c	2010-10-16 04:56:09.000000000 +0800
++++ qemu-0.13.0/hw/ppc_prep.c	2011-01-15 18:29:25.000000000 +0800
+@@ -74,7 +74,7 @@
+ /* Constants for devices init */
+ static const int ide_iobase[2] = { 0x1f0, 0x170 };
+ static const int ide_iobase2[2] = { 0x3f6, 0x376 };
+-static const int ide_irq[2] = { 13, 13 };
++static const int ide_irq[2] = { 13, 14 };
+ 
+ #define NE2000_NB_MAX 6
+ 
+@@ -631,9 +631,6 @@
+     if (filename) {
+         qemu_free(filename);
+     }
+-    if (env->nip < 0xFFF80000 && bios_size < 0x00100000) {
+-        hw_error("PowerPC 601 / 620 / 970 need a 1MB BIOS\n");
+-    }
+ 
+     if (linux_boot) {
+         kernel_base = KERNEL_LOAD_ADDR;
diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/qemu-vmware-vga-depth.patch b/meta/recipes-devtools/qemu/qemu-0.13.0/qemu-vmware-vga-depth.patch
similarity index 68%
rename from meta/recipes-devtools/qemu/qemu-0.12.4/qemu-vmware-vga-depth.patch
rename to meta/recipes-devtools/qemu/qemu-0.13.0/qemu-vmware-vga-depth.patch
index 4307186..5bdbaf3 100644
--- a/meta/recipes-devtools/qemu/qemu-0.12.4/qemu-vmware-vga-depth.patch
+++ b/meta/recipes-devtools/qemu/qemu-0.13.0/qemu-vmware-vga-depth.patch
@@ -1,11 +1,11 @@
 # fix VMware VGA driver depth calculation error, which may cause segmentation fault
 #
 # ktian1, 06/29/2010
-diff --git a/console.h b/console.h
-index dfc8ae4..05fbf17 100644
---- a/console.h
-+++ b/console.h
-@@ -122,6 +122,12 @@ struct DisplayAllocator {
+Index: qemu-0.13.0/console.h
+===================================================================
+--- qemu-0.13.0.orig/console.h	2011-01-17 16:41:58.000000000 +0800
++++ qemu-0.13.0/console.h	2011-01-17 16:48:00.000000000 +0800
+@@ -171,6 +171,12 @@
      void (*free_displaysurface)(DisplaySurface *surface);
  };
  
@@ -18,15 +18,15 @@ index dfc8ae4..05fbf17 100644
  struct DisplayState {
      struct DisplaySurface *surface;
      void *opaque;
-@@ -129,6 +135,7 @@ struct DisplayState {
+@@ -178,6 +184,7 @@
  
      struct DisplayAllocator* allocator;
      struct DisplayChangeListener* listeners;
 +    struct DisplayPostCallback* postcalls;
  
      void (*mouse_set)(int x, int y, int on);
-     void (*cursor_define)(int width, int height, int bpp, int hot_x, int hot_y,
-@@ -185,6 +192,12 @@ static inline void register_displaychangelistener(DisplayState *ds, DisplayChang
+     void (*cursor_define)(QEMUCursor *cursor);
+@@ -229,6 +236,12 @@
      ds->listeners = dcl;
  }
  
@@ -39,11 +39,11 @@ index dfc8ae4..05fbf17 100644
  static inline void dpy_update(DisplayState *s, int x, int y, int w, int h)
  {
      struct DisplayChangeListener *dcl = s->listeners;
-diff --git a/hw/vmware_vga.c b/hw/vmware_vga.c
-index 01bb85b..d73cca6 100644
---- a/hw/vmware_vga.c
-+++ b/hw/vmware_vga.c
-@@ -927,8 +927,9 @@ static void vmsvga_update_display(void *opaque)
+Index: qemu-0.13.0/hw/vmware_vga.c
+===================================================================
+--- qemu-0.13.0.orig/hw/vmware_vga.c	2011-01-17 16:42:36.000000000 +0800
++++ qemu-0.13.0/hw/vmware_vga.c	2011-01-17 16:48:00.000000000 +0800
+@@ -957,8 +957,9 @@
      }
  }
  
@@ -54,7 +54,7 @@ index 01bb85b..d73cca6 100644
      s->index = 0;
      s->enable = 0;
      s->config = 0;
-@@ -1133,6 +1134,8 @@ static const VMStateDescription vmstate_vmware_vga = {
+@@ -1163,6 +1164,8 @@
  
  static void vmsvga_init(struct vmsvga_state_s *s, int vga_ram_size)
  {
@@ -63,7 +63,7 @@ index 01bb85b..d73cca6 100644
      s->scratch_size = SVGA_SCRATCH_SIZE;
      s->scratch = qemu_malloc(s->scratch_size * 4);
  
-@@ -1160,7 +1163,10 @@ static void vmsvga_init(struct vmsvga_state_s *s, int vga_ram_size)
+@@ -1190,7 +1193,10 @@
  
      rom_add_vga(VGABIOS_FILENAME);
  
@@ -75,11 +75,11 @@ index 01bb85b..d73cca6 100644
  }
  
  static void pci_vmsvga_map_ioport(PCIDevice *pci_dev, int region_num,
-diff --git a/qemu-common.h b/qemu-common.h
-index a23afbc..19f107a 100644
---- a/qemu-common.h
-+++ b/qemu-common.h
-@@ -198,6 +198,7 @@ typedef struct DisplayState DisplayState;
+Index: qemu-0.13.0/qemu-common.h
+===================================================================
+--- qemu-0.13.0.orig/qemu-common.h	2011-01-17 16:41:58.000000000 +0800
++++ qemu-0.13.0/qemu-common.h	2011-01-17 16:48:00.000000000 +0800
+@@ -205,6 +205,7 @@
  typedef struct DisplayChangeListener DisplayChangeListener;
  typedef struct DisplaySurface DisplaySurface;
  typedef struct DisplayAllocator DisplayAllocator;
@@ -87,11 +87,11 @@ index a23afbc..19f107a 100644
  typedef struct PixelFormat PixelFormat;
  typedef struct TextConsole TextConsole;
  typedef TextConsole QEMUConsole;
-diff --git a/vl.c b/vl.c
-index 39182ea..9a3e9fd 100644
---- a/vl.c
-+++ b/vl.c
-@@ -4863,6 +4863,7 @@ int main(int argc, char **argv, char **envp)
+Index: qemu-0.13.0/vl.c
+===================================================================
+--- qemu-0.13.0.orig/vl.c	2011-01-17 16:42:36.000000000 +0800
++++ qemu-0.13.0/vl.c	2011-01-17 16:48:00.000000000 +0800
+@@ -1814,6 +1814,7 @@
      char boot_devices[33] = "cad"; /* default to HD->floppy->CD-ROM */
      DisplayState *ds;
      DisplayChangeListener *dcl;
@@ -99,7 +99,7 @@ index 39182ea..9a3e9fd 100644
      int cyls, heads, secs, translation;
      QemuOpts *hda_opts = NULL, *opts;
      int optind;
-@@ -6053,6 +6053,13 @@ int main(int argc, char **argv, char **envp)
+@@ -2960,6 +2961,13 @@
      }
      dpy_resize(ds);
  
diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/qemugl-allow-glxcontext-release.patch b/meta/recipes-devtools/qemu/qemu-0.13.0/qemugl-allow-glxcontext-release.patch
similarity index 100%
rename from meta/recipes-devtools/qemu/qemu-0.12.4/qemugl-allow-glxcontext-release.patch
rename to meta/recipes-devtools/qemu/qemu-0.13.0/qemugl-allow-glxcontext-release.patch
diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/vmware-vga-fifo-rewind.patch b/meta/recipes-devtools/qemu/qemu-0.13.0/vmware-vga-fifo-rewind.patch
similarity index 94%
rename from meta/recipes-devtools/qemu/qemu-0.12.4/vmware-vga-fifo-rewind.patch
rename to meta/recipes-devtools/qemu/qemu-0.13.0/vmware-vga-fifo-rewind.patch
index ef92f54..867e54b 100644
--- a/meta/recipes-devtools/qemu/qemu-0.12.4/vmware-vga-fifo-rewind.patch
+++ b/meta/recipes-devtools/qemu/qemu-0.13.0/vmware-vga-fifo-rewind.patch
@@ -14,11 +14,11 @@ Date:   Fri Sep 10 02:23:31 2010 +0200
     this should be relatively rare but it is suspected to have been the
     cause of the occasional FIFO overrun that killed the display.
 
-Index: qemu-0.12.4/hw/vmware_vga.c
+Index: qemu-0.13.0/hw/vmware_vga.c
 ===================================================================
---- qemu-0.12.4.orig/hw/vmware_vga.c	2010-09-30 23:04:34.000000000 +0800
-+++ qemu-0.12.4/hw/vmware_vga.c	2010-10-01 01:17:02.000000000 +0800
-@@ -491,27 +491,37 @@
+--- qemu-0.13.0.orig/hw/vmware_vga.c	2011-01-15 18:06:06.000000000 +0800
++++ qemu-0.13.0/hw/vmware_vga.c	2011-01-15 18:17:04.000000000 +0800
+@@ -521,27 +521,37 @@
  
  static uint32_t last_cmd;
  
@@ -64,7 +64,7 @@ Index: qemu-0.12.4/hw/vmware_vga.c
  }
  
  static inline uint32_t vmsvga_fifo_read(struct vmsvga_state_s *s)
-@@ -522,13 +532,23 @@
+@@ -552,13 +562,23 @@
  static void vmsvga_fifo_run(struct vmsvga_state_s *s)
  {
      uint32_t colour;
@@ -90,7 +90,7 @@ Index: qemu-0.12.4/hw/vmware_vga.c
              x = vmsvga_fifo_read(s);
              y = vmsvga_fifo_read(s);
              width = vmsvga_fifo_read(s);
-@@ -537,6 +557,10 @@
+@@ -567,6 +587,10 @@
              break;
  
          case SVGA_CMD_RECT_FILL:
@@ -101,7 +101,7 @@ Index: qemu-0.12.4/hw/vmware_vga.c
              colour = vmsvga_fifo_read(s);
              x = vmsvga_fifo_read(s);
              y = vmsvga_fifo_read(s);
-@@ -546,10 +570,15 @@
+@@ -576,10 +600,15 @@
              vmsvga_fill_rect(s, colour, x, y, width, height);
              break;
  #else
@@ -117,7 +117,7 @@ Index: qemu-0.12.4/hw/vmware_vga.c
              x = vmsvga_fifo_read(s);
              y = vmsvga_fifo_read(s);
              dx = vmsvga_fifo_read(s);
-@@ -560,10 +589,15 @@
+@@ -590,10 +619,15 @@
              vmsvga_copy_rect(s, x, y, dx, dy, width, height);
              break;
  #else
@@ -133,7 +133,7 @@ Index: qemu-0.12.4/hw/vmware_vga.c
              cursor.id = vmsvga_fifo_read(s);
              cursor.hot_x = vmsvga_fifo_read(s);
              cursor.hot_y = vmsvga_fifo_read(s);
-@@ -572,11 +606,14 @@
+@@ -602,11 +636,14 @@
              vmsvga_fifo_read(s);
              cursor.bpp = vmsvga_fifo_read(s);
  
@@ -151,7 +151,7 @@ Index: qemu-0.12.4/hw/vmware_vga.c
  
              for (args = 0; args < SVGA_BITMAP_SIZE(x, y); args ++)
                  cursor.mask[args] = vmsvga_fifo_read_raw(s);
-@@ -595,6 +632,10 @@
+@@ -625,6 +662,10 @@
           * for so we can avoid FIFO desync if driver uses them illegally.
           */
          case SVGA_CMD_DEFINE_ALPHA_CURSOR:
@@ -162,7 +162,7 @@ Index: qemu-0.12.4/hw/vmware_vga.c
              vmsvga_fifo_read(s);
              vmsvga_fifo_read(s);
              vmsvga_fifo_read(s);
-@@ -609,6 +650,10 @@
+@@ -639,6 +680,10 @@
              args = 7;
              goto badcmd;
          case SVGA_CMD_DRAW_GLYPH_CLIPPED:
@@ -173,7 +173,7 @@ Index: qemu-0.12.4/hw/vmware_vga.c
              vmsvga_fifo_read(s);
              vmsvga_fifo_read(s);
              args = 7 + (vmsvga_fifo_read(s) >> 2);
-@@ -629,14 +674,22 @@
+@@ -659,14 +704,22 @@
              break; /* Nop */
  
          default:
diff --git a/meta/recipes-devtools/qemu/qemu-0.13.0/wacom-tablet-fix.patch b/meta/recipes-devtools/qemu/qemu-0.13.0/wacom-tablet-fix.patch
new file mode 100644
index 0000000..b8210db
--- /dev/null
+++ b/meta/recipes-devtools/qemu/qemu-0.13.0/wacom-tablet-fix.patch
@@ -0,0 +1,65 @@
+qemu 0.13.0 cause seg fault in qemu_remove_mouse_event_handler, this patch from
+upstream can fix it.
+
+Should remove it in next upgrade if necessary.
+
+Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
+
+commit b2d4d8329963b13c5cebe5944dcc99f0e9d1b5c7
+Author: Gerd Hoffmann <kraxel@redhat.com>
+Date:   Fri Oct 8 12:30:14 2010 +0200
+
+    wacom tablet: activate event handlers.
+    
+    Add qemu_activate_mouse_event_handler() calls to the usb wavom tablet so
+    it actually receives events.  Also make sure we only remove the handler
+    if we registered it before.
+    
+    Signed-off-by: Gerd Hoffmann <kraxel@redhat.com>
+    Signed-off-by: Anthony Liguori <aliguori@us.ibm.com>
+
+Index: qemu-0.13.0/hw/usb-wacom.c
+===================================================================
+--- qemu-0.13.0.orig/hw/usb-wacom.c	2010-10-16 04:56:09.000000000 +0800
++++ qemu-0.13.0/hw/usb-wacom.c	2011-01-18 16:58:44.000000000 +0800
+@@ -160,6 +160,7 @@
+     if (!s->mouse_grabbed) {
+         s->eh_entry = qemu_add_mouse_event_handler(usb_mouse_event, s, 0,
+                         "QEMU PenPartner tablet");
++        qemu_activate_mouse_event_handler(s->eh_entry);
+         s->mouse_grabbed = 1;
+     }
+ 
+@@ -197,6 +198,7 @@
+     if (!s->mouse_grabbed) {
+         s->eh_entry = qemu_add_mouse_event_handler(usb_wacom_event, s, 1,
+                         "QEMU PenPartner tablet");
++        qemu_activate_mouse_event_handler(s->eh_entry);
+         s->mouse_grabbed = 1;
+     }
+ 
+@@ -334,8 +336,10 @@
+         ret = 0;
+         break;
+     case WACOM_SET_REPORT:
+-        qemu_remove_mouse_event_handler(s->eh_entry);
+-        s->mouse_grabbed = 0;
++        if (s->mouse_grabbed) {
++            qemu_remove_mouse_event_handler(s->eh_entry);
++            s->mouse_grabbed = 0;
++        }
+         s->mode = data[0];
+         ret = 0;
+         break;
+@@ -397,7 +401,10 @@
+ {
+     USBWacomState *s = (USBWacomState *) dev;
+ 
+-    qemu_remove_mouse_event_handler(s->eh_entry);
++    if (s->mouse_grabbed) {
++        qemu_remove_mouse_event_handler(s->eh_entry);
++        s->mouse_grabbed = 0;
++    }
+ }
+ 
+ static int usb_wacom_initfn(USBDevice *dev)
diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/workaround_bad_futex_headers.patch b/meta/recipes-devtools/qemu/qemu-0.13.0/workaround_bad_futex_headers.patch
similarity index 71%
rename from meta/recipes-devtools/qemu/qemu-0.12.4/workaround_bad_futex_headers.patch
rename to meta/recipes-devtools/qemu/qemu-0.13.0/workaround_bad_futex_headers.patch
index 7727a39..a08e2d9 100644
--- a/meta/recipes-devtools/qemu/qemu-0.12.4/workaround_bad_futex_headers.patch
+++ b/meta/recipes-devtools/qemu/qemu-0.13.0/workaround_bad_futex_headers.patch
@@ -2,11 +2,11 @@
  linux-user/syscall.c |   10 +++++++++-
  1 file changed, 9 insertions(+), 1 deletion(-)
 
-Index: qemu/linux-user/syscall.c
+Index: qemu-0.13.0/linux-user/syscall.c
 ===================================================================
---- qemu.orig/linux-user/syscall.c	2010-05-11 16:52:16.929785275 -0400
-+++ qemu/linux-user/syscall.c	2010-05-11 16:52:25.174783517 -0400
-@@ -94,6 +94,15 @@
+--- qemu-0.13.0.orig/linux-user/syscall.c	2011-01-17 16:52:18.000000000 +0800
++++ qemu-0.13.0/linux-user/syscall.c	2011-01-17 16:52:20.000000000 +0800
+@@ -99,6 +99,15 @@
  #define CLONE_NPTL_FLAGS2 0
  #endif
  
diff --git a/meta/recipes-devtools/qemu/qemu_0.12.4.bb b/meta/recipes-devtools/qemu/qemu_0.13.0.bb
similarity index 73%
rename from meta/recipes-devtools/qemu/qemu_0.12.4.bb
rename to meta/recipes-devtools/qemu/qemu_0.13.0.bb
index 6125bca..945c570 100644
--- a/meta/recipes-devtools/qemu/qemu_0.12.4.bb
+++ b/meta/recipes-devtools/qemu/qemu_0.13.0.bb
@@ -3,7 +3,7 @@ require qemu.inc
 LIC_FILES_CHKSUM = "file://COPYING;md5=441c28d2cf86e15a37fa47e15a72fbac \
                     file://COPYING.LIB;endline=24;md5=c04def7ae38850e7d3ef548588159913"
 
-PR = "r23"
+PR = "r0"
 
 FILESPATH = "${FILE_DIRNAME}/qemu-${PV}"
 FILESDIR = "${WORKDIR}"
@@ -21,16 +21,15 @@ SRC_URI = "\
     file://qemu-vmware-vga-depth.patch \
     file://qemu-ppc-hack.patch \
     file://enable-i386-linux-user.patch \
-    file://arm-cp15-fix.patch \
-    file://cursor-shadow-fix.patch \
     file://vmware-vga-fifo-rewind.patch \
     file://fix-configure-checks.patch \
-    file://powerpc_rom.bin \
-    file://arm_timer-fix-oneshot-mode.patch \
-    file://arm_timer-reload-timer-when-enabled.patch"
+    file://parallel_make.patch \
+    file://wacom-tablet-fix.patch \
+    file://port92_fix.patch \
+    file://powerpc_rom.bin"
 
-SRC_URI[md5sum] = "93e6b134dff89b2799f57b7d9e0e0fc5"
-SRC_URI[sha256sum] = "1a29a5b5151162d1de035c4926d1a1dbffee4a145ef61ee865d6b82aaea0602e"
+SRC_URI[md5sum] = "397a0d665da8ba9d3b9583629f3d6421"
+SRC_URI[sha256sum] = "1e6f5851b05cea6e377c835f4668408d4124cfb845f9948d922808743c5fd877"
 
 do_install_append () {
         install -d ${D}${datadir}/qemu
-- 
1.7.0.4


