Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62D94E013CE
	for <poky@yoctoproject.org>; Tue,  4 Sep 2012 08:35:09 -0700 (PDT)
Received: from yow-bashfiel-l1.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q84FZ5SQ008607;
	Tue, 4 Sep 2012 08:35:07 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Tue,  4 Sep 2012 11:35:05 -0400
Message-Id: <ab587380891da9171acb6cb15dd4539447abe2b7.1346772644.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1346772644.git.bruce.ashfield@windriver.com>
References: <cover.1346772644.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1346772644.git.bruce.ashfield@windriver.com>
References: <cover.1346772644.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto/meta-yocto: update SRCREVs to 3.4.9, unionfs, perf and cfg
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
X-List-Received-Date: Tue, 04 Sep 2012 15:35:09 -0000

Updating the SRCREVs for the following updates to match the oe-core boards:

 - v3.4.8, v3.4.9

  - bug fixes:
      a4c7a04 perf: add SLANG_INC for slang.h
      e32ab98 unionfs: restore FD_* utility defines
      9f0fe58 unionfs: update unionfs fork to align with mainline
      b3fcc2f codel: refine one condition to avoid a nul rec_inv_sqrt
      ef7cf65 fq_codel: should use qdisc backlog as threshold
      3f0ed1d net: codel: fix build errors
      4c06aa1 net/codel: Add missing #include <linux/prefetch.h>
      2888bf2 codel: use u16 field instead of 31bits for rec_inv_sqrt
      6edeb2e codel: use Newton method instead of sqrt() and divides
      2faecd6 fq_codel: Fair Queue Codel AQM
      edca95f netem: add ECN capability

   - config/BSP updates:

      463299b meta: bump kver to v3.4.9
      6b961c8 CrystalForest: Enable PCI IOV feature
      4bc2238 meta: Add new pci iov feature
      70346e6 mpc8315: remove now obsolete CONFIG_MISC_DEVICES

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
index 0a9508a..e9a6d9d 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -3,10 +3,10 @@ KBRANCH_routerstationpro = "standard/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/beagleboard"
 
-SRCREV_machine_atom-pc ?= "c77666c1d4c4be4be4b2046c3ff25bf1db34eb21"
-SRCREV_machine_routerstationpro ?= "2c4707476e4295ee58c3e7963b9028ab98bf41e5"
-SRCREV_machine_mpc8315e-rdb ?= "f10500e9faad3f9f799137a3159ff5c836c88227"
-SRCREV_machine_beagleboard ?= "c77666c1d4c4be4be4b2046c3ff25bf1db34eb21"
+SRCREV_machine_atom-pc ?= "0985844fa6235422c67ef269952fa4e765f252f9"
+SRCREV_machine_routerstationpro ?= "a2907c57acfb8fa71095a3ce5b20994ff859dbc5"
+SRCREV_machine_mpc8315e-rdb ?= "363a6f7e0c95aabec779a7ea3474662d191b935c"
+SRCREV_machine_beagleboard ?= "0985844fa6235422c67ef269952fa4e765f252f9"
 
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
-- 
1.7.5.4


