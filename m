Return-Path: <ke.yu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3A58D4C811F1
	for <poky@yoctoproject.org>; Sat,  8 Jan 2011 01:06:14 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 07 Jan 2011 23:06:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,293,1291622400"; d="scan'208";a="371768153"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by azsmga001.ch.intel.com with ESMTP; 07 Jan 2011 23:06:13 -0800
Message-Id: <bf18fa3dddf619400721e8e5092d1eb0cbacb959.1294469496.git.ke.yu@intel.com>
In-Reply-To: <cover.1294469496.git.ke.yu@intel.com>
References: <cover.1294469496.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Sat, 8 Jan 2011 10:34:20 +0800
Date: Sat, 08 Jan 2011 15:15:12 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 6/7] bb: replace bb.fetch referrence with bb.fetcher instance
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
X-List-Received-Date: Sat, 08 Jan 2011 07:06:14 -0000

bb.fetcher.instance is a wraper for bb.fetch/bb.fetch2, which
allow easy switch between bb.fetch and bb.fetch2. so replace
all the bb.fetch referrence with bb.fetcher.instance

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/command.py |    3 ++-
 bitbake/lib/bb/cooker.py  |    4 ++--
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/bitbake/lib/bb/command.py b/bitbake/lib/bb/command.py
index b880892..28bccd0 100644
--- a/bitbake/lib/bb/command.py
+++ b/bitbake/lib/bb/command.py
@@ -31,6 +31,7 @@ Commands are queued in a CommandQueue
 import bb.event
 import bb.cooker
 import bb.data
+import bb.fetcher
 
 async_cmds = {}
 sync_cmds = {}
@@ -264,7 +265,7 @@ class CommandsAsync:
         """
         Parse the .bb files
         """
-        if bb.fetch.fetcher_compare_revisions(command.cooker.configuration.data):
+        if bb.fetcher.instance.fetcher_compare_revisions(command.cooker.configuration.data):
             command.finishAsyncCommand(code=1)
         else:
             command.finishAsyncCommand()
diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
index 77544cd..f6235c3 100644
--- a/bitbake/lib/bb/cooker.py
+++ b/bitbake/lib/bb/cooker.py
@@ -34,7 +34,7 @@ import threading
 from cStringIO import StringIO
 from contextlib import closing
 import bb
-from bb import utils, data, parse, event, cache, providers, taskdata, command, runqueue
+from bb import utils, data, parse, event, cache, providers, taskdata, command, runqueue, fetcher
 
 logger      = logging.getLogger("BitBake")
 collectlog  = logging.getLogger("BitBake.Collection")
@@ -524,7 +524,7 @@ class BBCooker:
             bb.event.register(var, bb.data.getVar(var, self.configuration.data))
 
         if bb.data.getVar("BB_WORKERCONTEXT", self.configuration.data) is None:
-            bb.fetch.fetcher_init(self.configuration.data)
+            bb.fetcher.instance.fetcher_init(self.configuration.data)
         bb.codeparser.parser_cache_init(self.configuration.data)
         bb.parse.init_parser(data)
         bb.event.fire(bb.event.ConfigParsed(), self.configuration.data)
-- 
1.7.0.4


