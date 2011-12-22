Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A9FCE01276
	for <poky@yoctoproject.org>; Thu, 22 Dec 2011 10:12:35 -0800 (PST)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(dhcp-145-187.ottawa.windriver.com [128.224.145.187])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBMICVsB014521;
	Thu, 22 Dec 2011 10:12:33 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Thu, 22 Dec 2011 13:12:19 -0500
Message-Id: <0058411215f087e3f41a9e1aa6ef3764e2e77e28.1324577368.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1324577368.git.bruce.ashfield@windriver.com>
References: <cover.1324577368.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1324577368.git.bruce.ashfield@windriver.com>
References: <cover.1324577368.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 2/2] linux-yocto-rt/meta-yocto: add routerstationpro support
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
X-List-Received-Date: Thu, 22 Dec 2011 18:12:35 -0000

Fixes [YOCTO #1390]

Updated the meta-yocto support for the routerstationpro on the
preempt-rt kernel support.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index ab0f24c..831df8d 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -19,7 +19,7 @@ SRCREV_machine_pn-linux-yocto-rt_mpc8315e-rdb = "0b805cce57f61a244eb3b8fce460b14
 #SRCREV_machine_pn-linux-yocto-rt_beagleboard = 
 
 # routerstationpro support - preempt-rt kernel build failure
-#COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-#KMACHINE_routerstationpro = "routerstationpro"
-#KBRANCH_routerstationpro = "yocto/standard/preempt-rt/base"
-#SRCREV_machine_pn-linux-yocto-rt_routerstationpro = "7e1e5b6c8a13c615feb0d7b6d37988a094aae98f"
+COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
+KMACHINE_routerstationpro = "routerstationpro"
+KBRANCH_routerstationpro = "yocto/standard/preempt-rt/routerstationpro"
+SRCREV_machine_pn-linux-yocto-rt_routerstationpro = "43dcdffebb64d9ce2f5cdcb18bb74bd9c301133f"
-- 
1.7.4.1


