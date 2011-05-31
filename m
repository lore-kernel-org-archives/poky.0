Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1E1334C80191
	for <poky@yoctoproject.org>; Tue, 31 May 2011 12:37:00 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 31 May 2011 10:36:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,298,1304319600"; 
   d="scan'208";a="9928646"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.13.104])
	by fmsmga002.fm.intel.com with ESMTP; 31 May 2011 10:36:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 31 May 2011 18:36:55 +0100
Message-Id: <6d9835a7055fdffc3adc0dd8c98899750fcc272e.1306863360.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1306863360.git.paul.eggleton@linux.intel.com>
References: <cover.1306863360.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1306863360.git.paul.eggleton@linux.intel.com>
References: <cover.1306863360.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/1] bitbake: use layer priority when applying bbappends
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
X-List-Received-Date: Tue, 31 May 2011 17:37:00 -0000

If the priority of a layer has been specified with BBFILE_PRIORITY_ then
use that to sort the list of BBFILES entries, which will affect the order
in which .bbappend files are applied.

Fixes [YOCTO #1125]

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 bitbake/lib/bb/cooker.py |   24 ++++++++++++++----------
 1 files changed, 14 insertions(+), 10 deletions(-)

diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
index 3973529..bb58f0b 100644
--- a/bitbake/lib/bb/cooker.py
+++ b/bitbake/lib/bb/cooker.py
@@ -405,6 +405,15 @@ class BBCooker:
         print("}", file=tdepends_file)
         logger.info("Task dependencies saved to 'task-depends.dot'")
 
+    def calc_bbfile_priority( self, filename, matched = None ):
+        for _, _, regex, pri in self.status.bbfile_config_priorities:
+            if regex.match(filename):
+                if matched != None:
+                    if not regex in matched:
+                        matched.add(regex)
+                return pri
+        return 0
+
     def buildDepgraph( self ):
         all_depends = self.status.all_depends
         pn_provides = self.status.pn_provides
@@ -413,15 +422,6 @@ class BBCooker:
         bb.data.update_data(localdata)
         bb.data.expandKeys(localdata)
 
-        matched = set()
-        def calc_bbfile_priority(filename):
-            for _, _, regex, pri in self.status.bbfile_config_priorities:
-                if regex.match(filename):
-                    if not regex in matched:
-                        matched.add(regex)
-                    return pri
-            return 0
-
         # Handle PREFERRED_PROVIDERS
         for p in (bb.data.getVar('PREFERRED_PROVIDERS', localdata, 1) or "").split():
             try:
@@ -434,8 +434,9 @@ class BBCooker:
             self.status.preferred[providee] = provider
 
         # Calculate priorities for each file
+        matched = set()
         for p in self.status.pkg_fn:
-            self.status.bbfile_priority[p] = calc_bbfile_priority(p)
+            self.status.bbfile_priority[p] = calc_bbfile_priority(p, matched)
  
         # Don't show the warning if the BBFILE_PATTERN did match .bbappend files
         unmatched = set()
@@ -950,6 +951,9 @@ class BBCooker:
         files = (data.getVar( "BBFILES", self.configuration.data, 1 ) or "").split()
         data.setVar("BBFILES", " ".join(files), self.configuration.data)
 
+        # Sort files by priority
+        files.sort( key=lambda fileitem: self.calc_bbfile_priority(fileitem) )
+
         if not len(files):
             files = self.get_bbfiles()
 
-- 
1.7.4.1


