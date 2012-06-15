Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73376E0044A
	for <poky@yoctoproject.org>; Fri, 15 Jun 2012 09:33:34 -0700 (PDT)
Received: from yow-bashfiel-l1.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q5FGXVa0021955;
	Fri, 15 Jun 2012 09:33:32 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Fri, 15 Jun 2012 12:33:28 -0400
Message-Id: <6f101bddff3dce1240801a22ed2b2ac27c3b2491.1339777907.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1339777907.git.bruce.ashfield@windriver.com>
References: <cover.1339777907.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1339777907.git.bruce.ashfield@windriver.com>
References: <cover.1339777907.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto/meta-yocto: update yaffs2 and drop rc6
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
X-List-Received-Date: Fri, 15 Jun 2012 16:33:34 -0000

Updating the 3.4 SRCREVs to pickup a yaffs2 update and the removal
of a feature that was required in the 3.2 kernel tree.

1/2 [
    meta: rc6: remove rc6 patches for snb

    The sandybridge rc6 patches are part of the released v3.4 kernel.
    Hence there is no need to keep these patches in the 3.4 linux
    yocto kernel repository.

    Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
]

2/2 [
    yaffs2: update core support

    Uprev yaffs2 to latest version as of 2012-05-29
]

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
index cb8c3aa..6d7d54d 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -3,10 +3,10 @@ KBRANCH_routerstationpro = "standard/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/beagleboard"
 
-SRCREV_machine_atom-pc ?= "780ab7e11f03931295e8f0e29707f2abb688e9ad"
-SRCREV_machine_routerstationpro ?= "780ab7e11f03931295e8f0e29707f2abb688e9ad"
-SRCREV_machine_mpc8315e-rdb ?= "2d99f67fe6b4301cefd4e6f9a5ce75a9cc84686b"
-SRCREV_machine_beagleboard ?= "780ab7e11f03931295e8f0e29707f2abb688e9ad"
+SRCREV_machine_atom-pc ?= "a8291fa6f723b0182d2b7033b5d59f412ba7cf72"
+SRCREV_machine_routerstationpro ?= "a8291fa6f723b0182d2b7033b5d59f412ba7cf72"
+SRCREV_machine_mpc8315e-rdb ?= "a371ff9dc5cbf9629fd3257d57120d5182e0d981"
+SRCREV_machine_beagleboard ?= "a8291fa6f723b0182d2b7033b5d59f412ba7cf72"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 # COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.7.5.4


