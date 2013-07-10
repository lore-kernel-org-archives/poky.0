Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1231BE01476
	for <poky@yoctoproject.org>; Wed, 10 Jul 2013 07:11:59 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Jul 2013 07:11:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1036,1363158000"; d="scan'208";a="329318780"
Received: from unknown (HELO localhost) ([10.255.13.129])
	by azsmga001.ch.intel.com with ESMTP; 10 Jul 2013 07:11:45 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 10 Jul 2013 09:11:44 -0500
Message-Id: <bc310c16cbeb4f0eb4fb5d91269616a77eaf384f.1373464813.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1373464813.git.tom.zanussi@linux.intel.com>
References: <cover.1373464813.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 1/1] yocto-kernel: make BBLAYERS parsing more robust
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
X-List-Received-Date: Wed, 10 Jul 2013 14:12:01 -0000

This allows the BBLAYERS parsing code to handle cases where BBLAYERS
is spread across multiple assignments or all on a single line, within
double or single quotes.

Fixes [YOCTO #3746].

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 scripts/lib/bsp/kernel.py | 38 ++++++++++++++++++++++++--------------
 1 file changed, 24 insertions(+), 14 deletions(-)

diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index c3592a3..1971e90 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -60,14 +60,12 @@ def find_bblayers(scripts_path):
             in_bblayers = True
             quotes = line.strip().count('"')
             if quotes > 1:
-                break
+                in_bblayers = False
             continue
         if in_bblayers:
             bblayers_lines.append(line)
             if line.strip().endswith("\""):
-                break
-            else:
-                continue
+                in_bblayers = False
 
     for i, line in enumerate(bblayers_lines):
         if line.strip().endswith("\\"):
@@ -75,19 +73,31 @@ def find_bblayers(scripts_path):
 
     bblayers_line = " ".join(bblayers_lines)
 
-    start_quote = bblayers_line.find("\"")
-    if start_quote == -1:
-        print "Invalid BBLAYERS found in %s, exiting" % bblayers_conf
-        sys.exit(1)
+    openquote = ''
+    for c in bblayers_line:
+        if c == '\"' or c == '\'':
+            if openquote:
+                if c != openquote:
+                    print "Invalid BBLAYERS found in %s, exiting" % bblayers_conf
+                    sys.exit(1)
+                else:
+                    openquote = ''
+            else:
+                openquote = c
 
-    start_quote += 1
-    end_quote = bblayers_line.find("\"", start_quote)
-    if end_quote == -1:
+    if openquote:
         print "Invalid BBLAYERS found in %s, exiting" % bblayers_conf
         sys.exit(1)
 
-    bblayers_line = bblayers_line[start_quote:end_quote]
-    layers = bblayers_line.split()
+    bblayers_line = bblayers_line.strip().replace('\"', '')
+    bblayers_line = bblayers_line.strip().replace('\'', '')
+
+    raw_layers = bblayers_line.split()
+
+    for layer in raw_layers:
+        if layer == 'BBLAYERS' or '=' in layer:
+            continue
+        layers.append(layer)
 
     f.close()
 
@@ -114,7 +124,7 @@ def find_bsp_layer(scripts_path, machine):
     layers = find_bblayers(scripts_path)
 
     for layer in layers:
-        if machine in layer:
+        if layer.endswith(machine):
             return layer
 
     print "Unable to find the BSP layer for machine %s." % machine
-- 
1.7.11.4


