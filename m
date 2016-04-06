Return-Path: <humberto.ibarra.lopez@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A035E00BFD; Tue,  5 Apr 2016 09:11:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_00, DATE_IN_FUTURE_06_12
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 1.9 DATE_IN_FUTURE_06_12 Date: is 6 to 12 hours after
	Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B624BE00B8C
	for <poky@yoctoproject.org>; Tue,  5 Apr 2016 09:11:11 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga104.fm.intel.com with ESMTP; 05 Apr 2016 09:11:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,444,1455004800"; d="scan'208";a="938805780"
Received: from unknown (HELO jhibarra-DESK.zpn.intel.com) ([10.219.17.169])
	by fmsmga001.fm.intel.com with ESMTP; 05 Apr 2016 09:11:10 -0700
From: Humberto Ibarra <humberto.ibarra.lopez@intel.com>
To: poky@yoctoproject.org
Date: Tue,  5 Apr 2016 19:18:18 -0500
Message-Id: <1459901898-1272-1-git-send-email-humberto.ibarra.lopez@intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] [jethro] yocto-bsp: fix default kernel for x86_64 arch
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
X-List-Received-Date: Tue, 05 Apr 2016 16:11:14 -0000

When using x86_64 arch in yocto-bsp the script suggests
4.1 as the default kernel version; however, as soon as the
default is picked the script continues processing with
3.19 kernel.

This changes the default kernel version to 4.1, which is the
right value and matches the script's message.

[Yocto #9353]

Signed-off-by: Humberto Ibarra <humberto.ibarra.lopez@intel.com>
---
 .../target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
index dbbe934..7676ca8 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
@@ -2,4 +2,4 @@
 {{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (4.1) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.19"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_4.1"}}
-- 
2.1.4


