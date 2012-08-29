Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B69FE01430
	for <poky@yoctoproject.org>; Wed, 29 Aug 2012 16:19:00 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Aug 2012 16:18:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,335,1344236400"; d="scan'208";a="186903927"
Received: from unknown (HELO localhost) ([10.255.13.47])
	by orsmga001.jf.intel.com with ESMTP; 29 Aug 2012 16:18:44 -0700
From: tom.zanussi@intel.com
To: poky@yoctoproject.org, richard.purdie@linuxfoundation.org,
	sgw@linux.intel.com
Date: Wed, 29 Aug 2012 18:18:41 -0500
Message-Id: <f67c891daeccc13c5e97431b8a7f9959b332a562.1346282120.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1346282120.git.tom.zanussi@intel.com>
References: <cover.1346282120.git.tom.zanussi@intel.com>
Subject: [PATCH 1/3] yocto-bsp: include meta-intel.inc if emgd selected
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
X-List-Received-Date: Wed, 29 Aug 2012 23:19:00 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

With move of ia32-base to oe-core, the intel-specific variables were
split off into meta-intel.inc, which needs to be included when using
components present only in meta-intel.

In the case of i386, that's currently just emgd, so conditionally
include emgd if emgd is selected as the xserver choice.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf   | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
index 2a07889..1da2306 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
@@ -20,6 +20,8 @@ require conf/machine/include/tune-atom.inc
 require conf/machine/include/tune-core2.inc
 
 require conf/machine/include/ia32-base.inc
+{{ if xserver == "y" and xserver_choice == "xserver_emgd": }}
+require conf/machine/include/meta-intel.inc
 
 {{ input type:"boolean" name:"xserver" prio:"50" msg:"Do you need support for X? (y/n)" default:"y" }}
 
-- 
1.7.11.4


