Return-Path: <lianhao.lu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 717C54C80188
	for <poky@yoctoproject.org>; Fri, 10 Jun 2011 02:32:41 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Jun 2011 00:32:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,345,1304319600"; d="scan'208";a="14669110"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.87])
	by fmsmga002.fm.intel.com with ESMTP; 10 Jun 2011 00:32:39 -0700
From: Lianhao Lu <lianhao.lu@intel.com>
To: poky@yoctoproject.org
Date: Fri, 10 Jun 2011 15:40:23 +0800
Message-Id: <3f3af21a2adf8a3737368abc816aac4280a65515.1307691323.git.lianhao.lu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1307691323.git.lianhao.lu@intel.com>
References: <cover.1307691323.git.lianhao.lu@intel.com>
Subject: [IMAGE_CREATOR 1/1] bitbake/hob: Fixed the "build again" hang.
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
X-List-Received-Date: Fri, 10 Jun 2011 07:32:41 -0000

Using gobject.threads_init() instead of gtk.gdk.threads_init(). These
two modes are conflict to each other. Using gobject.threads_init()
allows only the main thread to touch GUI(gtk) part.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 bitbake/lib/bb/ui/crumbs/hobeventhandler.py |    3 +++
 bitbake/lib/bb/ui/hob.py                    |    5 +++--
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
index c474491..a11e6d4 100644
--- a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
+++ b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
@@ -134,6 +134,9 @@ class HobHandler(gobject.GObject):
         self.building = True
         self.server.runCommand(["buildTargets", targets, "build"])
 
+    def notify_building_state(self, building):
+        self.building = building
+
     def cancel_build(self):
         # Note: this may not be the right way to stop an in-progress build
         self.server.runCommand(["stateStop"])
diff --git a/bitbake/lib/bb/ui/hob.py b/bitbake/lib/bb/ui/hob.py
index ab6022b..46fb563 100644
--- a/bitbake/lib/bb/ui/hob.py
+++ b/bitbake/lib/bb/ui/hob.py
@@ -63,9 +63,11 @@ class MainWindow (gtk.Window):
 
     def running_build_failed_cb(self, running_build):
         # FIXME: handle this
+        self.handler.notify_building_state(False)
         return
 
     def running_build_succeeded_cb(self, running_build):
+        self.handler.notify_building_state(False)
         label = gtk.Label("Build completed, start another build?")
         dialog = gtk.Dialog("Build complete",
                             self,
@@ -76,7 +78,7 @@ class MainWindow (gtk.Window):
         label.show()
         response = dialog.run()
         dialog.destroy()
-        if not response == gtk.RESPONSE_YES:
+        if response == gtk.RESPONSE_YES:
             self.model.reset() # NOTE: really?
             self.nb.set_current_page(0)
         return
@@ -555,7 +557,6 @@ class MainWindow (gtk.Window):
 
 def main (server, eventHandler):
     gobject.threads_init()
-    gtk.gdk.threads_init()
 
     taskmodel = TaskListModel()
     handler = HobHandler(taskmodel, server)
-- 
1.7.0.4


