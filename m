Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 515954C80AAB
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 09:35:32 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 14 Mar 2011 07:35:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,316,1297065600"; d="scan'208";a="719930087"
Received: from unknown (HELO localhost) ([10.255.16.55])
	by orsmga001.jf.intel.com with ESMTP; 14 Mar 2011 07:35:31 -0700
Message-Id: <5ed58873b1df95a0824abbb16b328cbcbdebc1df.1300113029.git.josh@linux.intel.com>
In-Reply-To: <cover.1300113029.git.josh@linux.intel.com>
References: <cover.1300113029.git.josh@linux.intel.com>
Old-Date: Wed, 2 Mar 2011 17:59:38 +0000
Date: Mon, 14 Mar 2011 14:35:25 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 1/2] bitbake/bitbake-layers: fix to run with recent changes
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
X-List-Received-Date: Mon, 14 Mar 2011 14:35:32 -0000

From: Joshua Lock <josh@linux.intel.com>

This patch marks the bitbake-layers script as executable and fixes the
instantiation of the BBCooker to match recent changes in the BitBake
libraries.

I've also added a brief header which demonstrates the intent and usage
as taken from Chris Larson's original commit message.

Note: this fix is not upstreamable, it's only required in Poky because of an
outstanding difference between BitBake master and Poky's BitBake.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/bin/bitbake-layers |   12 ++++++++----
 1 files changed, 8 insertions(+), 4 deletions(-)
 mode change 100644 => 100755 bitbake/bin/bitbake-layers

diff --git a/bitbake/bin/bitbake-layers b/bitbake/bin/bitbake-layers
old mode 100644
new mode 100755
index ea903e5..b6106cd
--- a/bitbake/bin/bitbake-layers
+++ b/bitbake/bin/bitbake-layers
@@ -1,5 +1,11 @@
 #!/usr/bin/env python
 
+# This script has subcommands which operate against your bitbake layers, either
+# displaying useful information, or acting against them.
+# Currently, it only provides a show_appends command, which shows you what
+# bbappends are in effect, and warns you if you have appends which are not being
+# utilized.
+
 import cmd
 import logging
 import os.path
@@ -13,6 +19,7 @@ import bb.cache
 import bb.cooker
 import bb.providers
 from bb.cooker import state
+from bb.server import none
 
 
 logger = logging.getLogger('BitBake')
@@ -38,14 +45,11 @@ class Commands(cmd.Cmd):
         self.returncode = 0
         self.config = Config(parse_only=True)
         self.cooker = bb.cooker.BBCooker(self.config,
-                                         self.register_idle_function)
+                                         bb.server.none)
         self.config_data = self.cooker.configuration.data
         bb.providers.logger.setLevel(logging.ERROR)
         self.prepare_cooker()
 
-    def register_idle_function(self, function, data):
-        pass
-
     def prepare_cooker(self):
         sys.stderr.write("Parsing recipes..")
         logger.setLevel(logging.ERROR)
-- 
1.7.4


