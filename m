Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 900AFE003E3
	for <poky@yoctoproject.org>; Wed,  3 Jul 2013 13:13:51 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Jul 2013 13:13:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,990,1363158000"; d="scan'208";a="364382303"
Received: from unknown (HELO localhost) ([10.255.13.118])
	by orsmga002.jf.intel.com with ESMTP; 03 Jul 2013 13:13:35 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org,
	paul.eggleton@linux.intel.com
Date: Wed,  3 Jul 2013 15:13:33 -0500
Message-Id: <f2aef920b8cd8581e46edbd38dfc386826facd00.1372882015.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1372882015.git.tom.zanussi@linux.intel.com>
References: <cover.1372882015.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 1/2] yocto-bsp: filter out 'layer' from arch list
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
X-List-Received-Date: Wed, 03 Jul 2013 20:13:51 -0000

The yocto-layer tool added a new directory alongside the actual
architectures and 'common', which is already screened out as not an
actual architecture when displaying the architecures.

The same needs to be done for 'layer' which isn't actually an
architecuture and likewise needs to be screened out.

Fixes [YOCTO #4735].

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 scripts/lib/bsp/engine.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index 36bd446..681720d 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -1674,7 +1674,7 @@ def yocto_bsp_list(args, scripts_path, properties_file):
         arch_path = bsp_path + '/substrate/target/arch'
         print "Architectures available:"
         for arch in os.listdir(arch_path):
-            if arch == "common":
+            if arch == "common" or arch == "layer":
                 continue
             print "    %s" % arch
         return True
-- 
1.7.11.4


