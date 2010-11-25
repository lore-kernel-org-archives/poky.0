Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C1C5E4C810E1
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 10:11:43 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 06 Dec 2010 08:11:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,305,1288594800"; d="scan'208";a="865021750"
Received: from unknown (HELO localhost) ([10.255.16.53])
	by fmsmga001.fm.intel.com with ESMTP; 06 Dec 2010 08:11:42 -0800
Message-Id: <2adf167b3e50ce268c3d376dc6a3efb8b6e37a6f.1291651199.git.josh@linux.intel.com>
In-Reply-To: <cover.1291651199.git.josh@linux.intel.com>
References: <cover.1291651199.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Thu, 25 Nov 2010 15:54:19 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 06/10] bitbake/crumbs: add optional pbar parameter to RunningBuild.handle_event()
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
X-List-Received-Date: Mon, 06 Dec 2010 16:11:43 -0000

Defaults to None, but if set will pass the ParseProgress sofar and total to
pbar's update() method.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/ui/crumbs/runningbuild.py |   10 +++++++++-
 1 files changed, 9 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/ui/crumbs/runningbuild.py b/bitbake/lib/bb/ui/crumbs/runningbuild.py
index d4ba4b7..9730bfd 100644
--- a/bitbake/lib/bb/ui/crumbs/runningbuild.py
+++ b/bitbake/lib/bb/ui/crumbs/runningbuild.py
@@ -48,7 +48,7 @@ class RunningBuild (gobject.GObject):
         gobject.GObject.__init__ (self)
         self.model = RunningBuildModel()
 
-    def handle_event (self, event):
+    def handle_event (self, event, pbar=None):
         # Handle an event from the event queue, this may result in updating
         # the model and thus the UI. Or it may be to tell us that the build
         # has finished successfully (or not, as the case may be.)
@@ -162,6 +162,14 @@ class RunningBuild (gobject.GObject):
             else:
                 self.emit ("build-succeeded")
 
+        elif isinstance(event, bb.event.ParseProgress) and pbar:
+            x = event.sofar
+            y = event.total
+            if x == y:
+                pbar.hide()
+                return
+            pbar.update(x, y)
+
 class RunningBuildTreeView (gtk.TreeView):
     def __init__ (self):
         gtk.TreeView.__init__ (self)
-- 
1.7.3.2


