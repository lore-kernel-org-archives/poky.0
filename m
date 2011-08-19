Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B260E011B2
	for <poky@yoctoproject.org>; Thu, 18 Aug 2011 22:26:30 -0700 (PDT)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(dhcp-146-223.ottawa.windriver.com [128.224.146.223])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7J5QPYC005930;
	Thu, 18 Aug 2011 22:26:27 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Fri, 19 Aug 2011 01:26:21 -0400
Message-Id: <28ee5057065b6d43ddd86675d028ad1b53ba11b7.1313731370.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1313731370.git.bruce.ashfield@windriver.com>
References: <cover.1313731370.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1313731370.git.bruce.ashfield@windriver.com>
References: <cover.1313731370.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 2/2] linux-yocto/meta-yocto: update SRCREVs for 3.0.3
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
X-List-Received-Date: Fri, 19 Aug 2011 05:26:30 -0000

Updating the SRCREVs to pickup the kernel.org -stable update for
3.0.3

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
index e224d80..a0ae1ab 100644
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
+SRCREV_machine_emenlow = "102a649046f1badacbefe27df487eda0f04d1dd1"
+SRCREV_machine_atom-pc = "c54453332efbd86c2ea3caa64e908b39cfac1e76"
+SRCREV_machine_routerstationpro = "1e268b8f2074f528f33d8f8426cbee41c33f5650"
+SRCREV_machine_mpc8315e-rdb = "022493ebcaac08af5751fb36668a6a08cf2fc820"
+SRCREV_machine_beagleboard = "ff28d92f1af586924e85ce3e625dfef06ed9c022"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 # COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-- 
1.7.4.1


