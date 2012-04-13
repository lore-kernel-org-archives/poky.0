Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 122A0E0059A
	for <poky@yoctoproject.org>; Fri, 13 Apr 2012 13:40:45 -0700 (PDT)
Received: from yow-bashfiel-l1.corp.ad.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q3DKee9l011072;
	Fri, 13 Apr 2012 13:40:42 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Fri, 13 Apr 2012 16:40:31 -0400
Message-Id: <023a12b70b1bbbd3625ab5a6df2ae9943a14bea5.1334349467.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1334349467.git.bruce.ashfield@windriver.com>
References: <cover.1334349467.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1334349467.git.bruce.ashfield@windriver.com>
References: <cover.1334349467.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto/meta-yocto: update hardware reference SRCREVs
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
X-List-Received-Date: Fri, 13 Apr 2012 20:40:45 -0000

commit 8cd31f9b0 linux-yocto/meta-yocto: update hardware reference boards to v3.0.24

Missed a merge commit on the hardware reference BSP branches.

As a result, validate_branches is adjusting the tree to build the
proper SRCREV. For machines with board specific commits this means
that some of their commits are missing, which leads to boot failure.

Bumping the SRCREVs fixes the problem

Fixes [YOCTO: #2292]

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 5277a69..944f601 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -4,10 +4,10 @@ KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
 KMACHINE_beagleboard = "yocto/standard/beagleboard"
 
 
-SRCREV_machine_atom-pc ?= "12b4af6966843baf7bb3aedbae93e69ae19405b0"
-SRCREV_machine_routerstationpro ?= "12b4af6966843baf7bb3aedbae93e69ae19405b0"
-SRCREV_machine_mpc8315e-rdb ?= "12b4af6966843baf7bb3aedbae93e69ae19405b0"
-SRCREV_machine_beagleboard ?= "12b4af6966843baf7bb3aedbae93e69ae19405b0"
+SRCREV_machine_atom-pc ?= "afdda882f902dd28693cd8701a7d497958290f09"
+SRCREV_machine_routerstationpro ?= "982522e3901fad56bb908565b22c498025ab536c"
+SRCREV_machine_mpc8315e-rdb ?= "83f422f718cf15633cb4c2d309aa041c3c354f65"
+SRCREV_machine_beagleboard ?= "8fd5a8eb4067c7032389e82d54f0e54e1e27f78c"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.7.5.4


