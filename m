Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 871AAE00343
	for <poky@yoctoproject.org>; Wed, 11 Jul 2012 07:50:11 -0700 (PDT)
Received: from yow-bashfiel-l1.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q6BEo7YU004617;
	Wed, 11 Jul 2012 07:50:08 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Wed, 11 Jul 2012 10:49:50 -0400
Message-Id: <8eb56d8676650879a1551f532ace758bb0bf7939.1342017991.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1342017991.git.bruce.ashfield@windriver.com>
References: <cover.1342017991.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1342017991.git.bruce.ashfield@windriver.com>
References: <cover.1342017991.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto-3.0/meta-yocto: perf script fixes
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
X-List-Received-Date: Wed, 11 Jul 2012 14:50:11 -0000

Updating the yocto reference boards to have the perf scripting fixes
from 3.2/3.4:

 cef17a1 perf: add sgidefs.h to for mips builds
 3258da3 perf: change --root to --prefix for python install
 1f9c25b perf: add 'libperl not found' warning
 f2b1bf1 perf: use pkg-config instead of python-config
 568e05f perf tools: Add support to install perf python extension
 7e47f81 Revert "perf: hard-code NO_LIBPERL/NO_LIBPYTHON"

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |    6 +++---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    1 +
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index fdd9f7d..274eb82 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -4,13 +4,13 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 COMPATIBLE_MACHINE_atom-pc = "atom-pc"
 KMACHINE_atom-pc = "atom-pc"
 KBRANCH_atom-pc = "yocto/standard/preempt-rt/base"
-SRCREV_machine_pn-linux-yocto-rt_atom-pc = "e67428d9966eecec4c081993dc64ceb5c0e64643"
+SRCREV_machine_pn-linux-yocto-rt_atom-pc = "bbd5bfe49403fdcca294ca4b163d5f7195ea3a8e"
 
 # mpc8315e-rdb support
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
 KBRANCH_mpc8315e-rdb = "yocto/standard/preempt-rt/base"
-SRCREV_machine_pn-linux-yocto-rt_mpc8315e-rdb = "e67428d9966eecec4c081993dc64ceb5c0e64643"
+SRCREV_machine_pn-linux-yocto-rt_mpc8315e-rdb = "bbd5bfe49403fdcca294ca4b163d5f7195ea3a8e"
 
 # beagleboard support - 3.0 support has not yet been completed, build failure
 #COMPATIBLE_MACHINE_beagleboard = "beagleboard"
@@ -22,4 +22,4 @@ SRCREV_machine_pn-linux-yocto-rt_mpc8315e-rdb = "e67428d9966eecec4c081993dc64ceb
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
 KMACHINE_routerstationpro = "routerstationpro"
 KBRANCH_routerstationpro = "yocto/standard/preempt-rt/routerstationpro"
-SRCREV_machine_pn-linux-yocto-rt_routerstationpro = "94b9545c58bf4dee8321b800b90958d10875fda8"
+SRCREV_machine_pn-linux-yocto-rt_routerstationpro = "634ba79510753eecd27a39a315f690f1c9d46efe"
diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 6de9def..fc1a7df 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -8,6 +8,7 @@ SRCREV_machine_routerstationpro ?= "af74f58ef6ffdc68cc77d314ad31bd6a322309d3"
 SRCREV_machine_mpc8315e-rdb ?= "0c781e306559d5e9816e202a60aa2543f4eea39e"
 SRCREV_machine_beagleboard ?= "567c989c90ce5f2c62f6ef788be763150b65a0fb"
 
+
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
 COMPATIBLE_MACHINE_beagleboard = "beagleboard"
-- 
1.7.5.4


