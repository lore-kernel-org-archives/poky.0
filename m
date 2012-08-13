Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89CD2E013B7
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:22:42 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id DA33E30472
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:22:35 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:20:20 -0700
Message-Id: <7fbd30e250175c1d3b49b6eb01b9b341739f538c.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: DA33E30472.C057C
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 54/57] yocto-bsp: add i586 option for i386
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
X-List-Received-Date: Mon, 13 Aug 2012 21:22:42 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../arch/i386/conf/machine/{{=machine}}.conf       |    7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
index ab491b2..100c68c 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
@@ -9,12 +9,15 @@ PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
 {{ input type:"choicelist" name:"tunefile" prio:"40" msg:"Which machine tuning would you like to use?" default:"tune_core2" }}
+{{ input type:"choice" val:"tune_i586" msg:"i586 tuning optimizations" }}
 {{ input type:"choice" val:"tune_atom" msg:"Atom tuning optimizations" }}
 {{ input type:"choice" val:"tune_core2" msg:"Core2 tuning optimizations" }}
+{{ if tunefile == "tune_i586": }}
+require conf/machine/include/tune-i586.inc
 {{ if tunefile == "tune_atom": }}
-include conf/machine/include/tune-atom.inc
+require conf/machine/include/tune-atom.inc
 {{ if tunefile == "tune_core2": }}
-include conf/machine/include/tune-core2.inc
+require conf/machine/include/tune-core2.inc
 
 require conf/machine/include/ia32-base.inc
 
-- 
1.7.9.5


