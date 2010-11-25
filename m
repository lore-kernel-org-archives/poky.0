Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6EC7D4C810AF
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 10:11:50 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 06 Dec 2010 08:11:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,305,1288594800"; d="scan'208";a="865021809"
Received: from unknown (HELO localhost) ([10.255.16.53])
	by fmsmga001.fm.intel.com with ESMTP; 06 Dec 2010 08:11:49 -0800
Message-Id: <e7a8aca90985788b1850a5639d95a86a7a398238.1291651199.git.josh@linux.intel.com>
In-Reply-To: <cover.1291651199.git.josh@linux.intel.com>
References: <cover.1291651199.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Thu, 25 Nov 2010 15:56:07 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 07/10] bitbake/goggle: add a ProgressBar for parse progress
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
X-List-Received-Date: Mon, 06 Dec 2010 16:11:50 -0000

Construct a ProgressBar and pass it to the RunningBuild.handle_event() so
that goggle users are notified of metadata parsing progress.

UI's with status make users less nervous

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/ui/goggle.py |    9 ++++++---
 1 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/bitbake/lib/bb/ui/goggle.py b/bitbake/lib/bb/ui/goggle.py
index d29d576..57322ee 100644
--- a/bitbake/lib/bb/ui/goggle.py
+++ b/bitbake/lib/bb/ui/goggle.py
@@ -22,13 +22,14 @@ import gobject
 import gtk
 import xmlrpclib
 from bb.ui.crumbs.runningbuild import RunningBuildTreeView, RunningBuild
+from bb.ui.crumbs.progress import ProgressBar
 
-def event_handle_idle_func (eventHandler, build):
+def event_handle_idle_func (eventHandler, build, pbar):
 
     # Consume as many messages as we can in the time available to us
     event = eventHandler.getEvent()
     while event:
-        build.handle_event (event)
+        build.handle_event (event, pbar)
         event = eventHandler.getEvent()
 
     return True
@@ -51,6 +52,7 @@ def init (server, eventHandler):
 
     window = MainWindow ()
     window.show_all ()
+    pbar = ProgressBar(window)
 
     # Create the object for the current build
     running_build = RunningBuild ()
@@ -73,6 +75,7 @@ def init (server, eventHandler):
     gobject.timeout_add (200,
                          event_handle_idle_func,
                          eventHandler,
-                         running_build)
+                         running_build,
+                         pbar)
 
     gtk.main()
-- 
1.7.3.2


