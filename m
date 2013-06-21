Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9341E00348
	for <poky@yoctoproject.org>; Fri, 21 Jun 2013 15:24:00 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 21 Jun 2013 15:23:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,915,1363158000"; d="scan'208";a="258462624"
Received: from unknown (HELO localhost) ([10.255.13.131])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Jun 2013 15:23:58 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: paul.eggleton@linux.intel.com, jessica.zhang@intel.com,
	poky@yoctoproject.org
Date: Fri, 21 Jun 2013 17:23:57 -0500
Message-Id: <11dce44367ecf4efa5402a82e3c4d330c0b67d60.1371853159.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1371853159.git.tom.zanussi@linux.intel.com>
References: <cover.1371853159.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 1/1] yocto-bsp: filter out 'layer' from arch list
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
X-List-Received-Date: Fri, 21 Jun 2013 22:24:02 -0000

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


