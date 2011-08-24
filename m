Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3431CE00321
	for <poky@yoctoproject.org>; Wed, 24 Aug 2011 13:55:11 -0700 (PDT)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(dhcp-146-223.ottawa.windriver.com [128.224.146.223])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7OKt6b6009323;
	Wed, 24 Aug 2011 13:55:08 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Wed, 24 Aug 2011 16:54:52 -0400
Message-Id: <fa98313a07b1f70c5773b9ef347434b6bdb0acd0.1314219098.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1314219098.git.bruce.ashfield@windriver.com>
References: <cover.1314219098.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1314219098.git.bruce.ashfield@windriver.com>
References: <cover.1314219098.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 2/3] linux-yocto/meta-yocto: update SRCREVs for 3.0.3 and consolidated fixes
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
X-List-Received-Date: Wed, 24 Aug 2011 20:55:11 -0000

Updating the SRCREVs to pickup the kernel.org -stable update for
3.0.3 and to pickup fixes done in standard for oe-core supported
machines.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
index e224d80..52ff1a2 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -3,11 +3,11 @@ KMACHINE_routerstationpro = "yocto/standard/routerstationpro"
 KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
 KMACHINE_beagleboard = "yocto/standard/beagleboard"
 
-SRCREV_machine_emenlow = "374340f311d7b035451f45e29bab5e1b8c058ce8"
-SRCREV_machine_atom-pc = "fdd23ed909594ba6c32c894ee6536cf823b0377f"
-SRCREV_machine_routerstationpro = "fd6d538850a28413e3c4867b905c56039773df3a"
-SRCREV_machine_mpc8315e-rdb = "5d3c0b06071abd663c7790df141060ae462660a9"
-SRCREV_machine_beagleboard = "32631d785b0b907e5c14435ef7531ed041ab8c64"
+SRCREV_machine_emenlow ?= "985f4b7b1df7e4dbfd73af8312f544a9fcd537e7"
+SRCREV_machine_atom-pc ?= "ead7d8334e4c075906d029789333f43e54f6257a"
+SRCREV_machine_routerstationpro ?= "81d3603cf9354533f8a747b9cf9be721cb70d4fb"
+SRCREV_machine_mpc8315e-rdb ?= "59503eebe7ad5951973be8bc66eeeb98cf98193a"
+SRCREV_machine_beagleboard ?= "73d4dce6a853bab7e943a5d7eee67e593f259ecf"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 # COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.7.4.1


