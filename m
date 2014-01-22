Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DC64E00895
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 16:53:31 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Jan 2014 16:53:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,697,1384329600"; d="scan'208";a="470435623"
Received: from fear.jf.intel.com (HELO localhost) ([10.7.201.149])
	by orsmga002.jf.intel.com with ESMTP; 21 Jan 2014 16:53:10 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: openembedded-core@lists.openembedded.org,
	Poky <poky@yoctoproject.org>
Date: Tue, 21 Jan 2014 16:59:04 -0800
Message-Id: <f7b4f04f12d918130f5253c5b5008387efdfede8.1390351667.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <e6c72bf867006ab15d62d0beb1cd8aafe19db72a.1390351667.git.dvhart@linux.intel.com>
References: <e6c72bf867006ab15d62d0beb1cd8aafe19db72a.1390351667.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1390351667.git.dvhart@linux.intel.com>
References: <cover.1390351667.git.dvhart@linux.intel.com>
X-Mailman-Approved-At: Tue, 21 Jan 2014 19:06:28 -0800
Cc: Darren Hart <dvhart@linux.intel.com>,
	Paul Eggleton <paul.eggleton@intel.com>
Subject: [PATCH 19/19] yocto-bsp: Add core2 and corei7 tune choice to x86_64
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
X-List-Received-Date: Wed, 22 Jan 2014 00:53:31 -0000

Update the x86_64 architecture bsp creator to include choices for core2
and corei7 tune files.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Paul Eggleton <paul.eggleton@intel.com>
Cc: Tom Zanussi <tom.zanussi@intel.com>
Cc: Nitin Kamble <nitin.a.kamble@intel.com>
Cc: Mark Hatle <mark.hatle@windriver.com>
Cc: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Martin Jansa <martin.jansa@gmail.com>
---
 .../arch/x86_64/conf/machine/{{=machine}}.conf     |    8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf
index 6685d07..53e8e92 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf
@@ -14,8 +14,16 @@ PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
+{{ input type:"choicelist" name:"tunefile" prio:"40" msg:"Which machine tuning would you like to use?" default:"tune_core2" }}
+{{ input type:"choice" val:"tune_core2" msg:"Core2 tuning optimizations" }}
+{{ input type:"choice" val:"tune_corei7" msg:"Corei7 tuning optimizations" }}
+{{ if tunefile == "tune_core2": }}
 DEFAULTTUNE ?= "core2-64"
 require conf/machine/include/tune-core2.inc
+{{ if tunefile == "tune_corei7": }}
+DEFAULTTUNE ?= "corei7-64"
+require conf/machine/include/tune-corei7.inc
+
 require conf/machine/include/x86-base.inc
 
 MACHINE_FEATURES += "wifi efi pcbios"
-- 
1.7.9.5


