Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9824E003C8
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 12:09:10 -0700 (PDT)
Received: from yow-bashfiel-l1.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q7DJ96F4017715;
	Mon, 13 Aug 2012 12:09:07 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Mon, 13 Aug 2012 15:08:38 -0400
Message-Id: <2aa13d6246d346390773a994b3f46784611e8778.1344884790.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1344884790.git.bruce.ashfield@windriver.com>
References: <cover.1344884790.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1344884790.git.bruce.ashfield@windriver.com>
References: <cover.1344884790.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto/meta-yocto/3.4: BSP, uprobes, config and cleanups
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
X-List-Received-Date: Mon, 13 Aug 2012 19:09:11 -0000

Updating the linux-yocto meta-yocto 3.4 with consolidated fixes, BSPs
and cleanups.

From the kernel meta branch:

  28bcd46 meta: move emgd features to staging
  6c01949 meta: Crystal Forest Machine Created.
  3c19c4d meta/qemuppc: remove redundant profiling options
  a5da4d5 meta: kgdb: update configuration for out of box functionality
  1d13e00 meta: update status/series and patches for v3.4
  b96c408 fsl-mpc8315e-rdb: replace leading dot with hash in cfg file
  7c9a3b0 usb: fix scc and cfg filename collision with ktypes/base/
  aa0e1f6 kconfig: make CONFIG_BLOCK=y part of base config
  3d1a2f2 kconfig: add tty/serial file to hardware listing
  60b600f routerstationpro: specify chosen filesystems in audit input.
  8b5c8c7 routerstationpro: add config data for audit purposes
  d7ae8fa meta: add ath79 Kconfig to hardware listing.

And from the standard branch:

  c77666c powerpc: uprobes: removed external declaration of uprobe_get_swbp_addr.
  c262f3e powerpc: Uprobes port to powerpc
  d40e73d powerpc: Add trap_nr to thread_struct
  6a64190 Revert "This is the port of uprobes to powerpc. Usage is similar to x86."
  e422119 Revert "powerpc: uprobes: removed external declaration of uprobe_get_swbp_addr."
  d4ef82f keys: kill task_struct->replacement_session_keyring
  1cc141e keys: kill the dummy key_replace_session_keyring()
  090ca45 keys: change keyctl_session_to_parent() to use task_work_add()
  61bc7a8 genirq: reimplement exit_irq_thread() hook via task_work_add()
  5ee34dd task_work_add: generic process-context callbacks
  70754de move key_repace_session_keyring() into tracehook_notify_resume()
  6f70bc1 powerpc: uprobes: removed external declaration of uprobe_get_swbp_addr.
  e5f6a4c This is the port of uprobes to powerpc. Usage is similar to x86.
  2bc4597 On RISC architectures like powerpc, instructions are fixed size. Instruction analysis on such pl
  8893371 perf probe: Detect probe target when m/x options are absent
  544d531a perf probe: Provide perf interface for uprobes
  103b503 tracing: Fix kconfig warning due to a typo
  9bb012e tracing: Provide trace events interface for uprobes
  b9b7281 tracing: Extract out common code for kprobes/uprobes trace events
  91f0360 tracing: Modify is_delete, is_return from int to bool
  a8600f2 uprobes/core: Decrement uprobe count before the pages are unmapped
  a252056 uprobes/core: Make background page replacement logic account for rss_stat counters
  3efc15b uprobes/core: Optimize probe hits with the help of a counter
  20f3d76 uprobes/core: Allocate XOL slots for uprobes use
  77bfad8 uprobes/core: Handle breakpoint and singlestep exceptions
  7196d9a uprobes/core: Rename bkpt to swbp
  c99bc18 uprobes/core: Make order of function parameters consistent across functions
  7e9be99 uprobes/core: Make macro names consistent
  c4247f2 uprobes: Update copyright notices
  f066ff9 uprobes/core: Move insn to arch specific structure
  e91cf65 uprobes/core: Remove uprobe_opcode_sz
  942b91c uprobes/core: Make instruction tables volatile
  56c1e99 uprobes: Move to kernel/events/
  0a7ad1c uprobes/core: Clean up, refactor and improve the code
  3760d62 uprobes, mm, x86: Add the ability to install and remove uprobes breakpoints

Two BSP updates:

  - Crystal Forest Machine has been added
  - routerstationpro configuration updates for 3.4

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    9 +++++----
 1 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
index 2ff467b..534d826 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -3,10 +3,11 @@ KBRANCH_routerstationpro = "standard/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/beagleboard"
 
-SRCREV_machine_atom-pc ?= "a8291fa6f723b0182d2b7033b5d59f412ba7cf72"
-SRCREV_machine_routerstationpro ?= "a8291fa6f723b0182d2b7033b5d59f412ba7cf72"
-SRCREV_machine_mpc8315e-rdb ?= "47d3076aa7e2a640a1dab8d663529a784709f697"
-SRCREV_machine_beagleboard ?= "a8291fa6f723b0182d2b7033b5d59f412ba7cf72"
+SRCREV_machine_atom-pc ?= "c77666c1d4c4be4be4b2046c3ff25bf1db34eb21"
+SRCREV_machine_routerstationpro ?= "2c4707476e4295ee58c3e7963b9028ab98bf41e5"
+SRCREV_machine_mpc8315e-rdb ?= "f10500e9faad3f9f799137a3159ff5c836c88227"
+SRCREV_machine_beagleboard ?= "c77666c1d4c4be4be4b2046c3ff25bf1db34eb21"
+
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 # COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.7.5.4


