Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id CA9134C800B2
	for <poky@yoctoproject.org>; Mon, 18 Jul 2011 15:51:42 -0500 (CDT)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(dhcp-146-217.ottawa.windriver.com [128.224.146.217])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6IKpaOF016605;
	Mon, 18 Jul 2011 13:51:38 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Mon, 18 Jul 2011 16:51:35 -0400
Message-Id: <caf8b76b849de31ddc5be0c9994f7721e56c2ddc.1311022118.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1311022118.git.bruce.ashfield@windriver.com>
References: <cover.1311022118.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1311022118.git.bruce.ashfield@windriver.com>
References: <cover.1311022118.git.bruce.ashfield@windriver.com>
Cc: paul.eggleton@linux.intel.com, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto: update mpc8315erdb SRCREV
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
X-List-Received-Date: Mon, 18 Jul 2011 20:51:43 -0000

Fixes [YOCTO #1227]

Updating the fsl-mpc8315erdb SRCREV to include the following commit:

[
    mpc8315erdb: fix ethernet at boot time

    Set the default MAC addresses for the two ethernet ports on the
    MPC8315E-RDB to the factory default values, allowing ethernet to come up
    correctly during boot without upgrading U-Boot.

    Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
]

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../linux/linux-yocto_2.6.37.bbappend              |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
index ba25c3a..56c3d18 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
@@ -6,7 +6,7 @@ KMACHINE_beagleboard = "yocto/standard/beagleboard"
 SRCREV_machine_emenlow = "398d5adac19cb411cd80753e177769f6a666a7e7"
 SRCREV_machine_atom-pc = "fce17f046d3756045e4dfb49221d1cf60fcae329"
 SRCREV_machine_routerstationpro = "8f84c1aec0907766ab6d6ac79fcc3b7b9ce79b70"
-SRCREV_machine_mpc8315e-rdb = "2c54835ac49cd8abaf294009a00ccc516daa31cd"
+SRCREV_machine_mpc8315e-rdb = "bda049366dad5fc3c7ba229cd4633992581e7a1f"
 SRCREV_machine_beagleboard = "3ddb22772862a8223640fa97580569924f51bddc"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
-- 
1.7.4.1


