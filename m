Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37A1FE0083D; Tue,  4 Oct 2016 14:50:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AACD7E00756
	for <poky@yoctoproject.org>; Tue,  4 Oct 2016 14:49:57 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga105.fm.intel.com with ESMTP; 04 Oct 2016 14:49:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,445,1473145200"; d="scan'208";a="16225381"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.5.48])
	by fmsmga005.fm.intel.com with ESMTP; 04 Oct 2016 14:49:57 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Tue,  4 Oct 2016 16:53:36 -0500
Message-Id: <7f94313ee760653828c70dd16ed9d825ee761e59.1475617525.git.leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1475617525.git.leonardo.sandoval.gonzalez@linux.intel.com>
References: <cover.1475617525.git.leonardo.sandoval.gonzalez@linux.intel.com>
In-Reply-To: <cover.1475617525.git.leonardo.sandoval.gonzalez@linux.intel.com>
References: <cover.1475617525.git.leonardo.sandoval.gonzalez@linux.intel.com>
Subject: [PATCH 3/8] machine.conf: Remove duplicate xserver choices
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
X-List-Received-Date: Tue, 04 Oct 2016 21:50:02 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

All kernel choices today (linux-yocto_4.* and custom) have the same xserver options,
so remove the duplicate lines.

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 .../bsp/substrate/target/arch/i386/conf/machine/machine.conf   | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/machine.conf b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/machine.conf
index d5abe4f..a955627 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/machine.conf
+++ b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/machine.conf
@@ -33,15 +33,7 @@ MACHINE_FEATURES += "wifi efi pcbios"
 
 {{ input type:"boolean" name:"xserver" prio:"50" msg:"Do you need support for X? (y/n)" default:"y" }}
 
-{{ if xserver == "y" and (kernel_choice == "linux-yocto_4.4" or kernel_choice == "linux-yocto_4.1"): }}
-{{ input type:"choicelist" name:"xserver_choice" prio:"50" msg:"Please select an xserver for this machine:" default:"xserver_vesa" }}
-{{ input type:"choice" val:"xserver_vesa" msg:"VESA xserver support" }}
-{{ input type:"choice" val:"xserver_i915" msg:"i915 xserver support" }}
-{{ input type:"choice" val:"xserver_i965" msg:"i965 xserver support" }}
-{{ input type:"choice" val:"xserver_fbdev" msg:"fbdev xserver support" }}
-{{ input type:"choice" val:"xserver_modesetting" msg:"modesetting xserver support" }}
-
-{{ if xserver == "y" and kernel_choice == "custom": }}
+{{ if xserver == "y": }}
 {{ input type:"choicelist" name:"xserver_choice" prio:"50" msg:"Please select an xserver for this machine:" default:"xserver_vesa" }}
 {{ input type:"choice" val:"xserver_vesa" msg:"VESA xserver support" }}
 {{ input type:"choice" val:"xserver_i915" msg:"i915 xserver support" }}
-- 
2.1.4


