Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id B63AB4C80A8C
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 13:14:30 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 Feb 2011 11:14:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,227,1297065600"; d="scan'208";a="394200884"
Received: from unknown (HELO localhost) ([10.255.16.236])
	by azsmga001.ch.intel.com with ESMTP; 25 Feb 2011 11:14:06 -0800
Message-Id: <b1f2184a3b29dc5c7cae26b71e9f82e627e2d59e.1298661117.git.josh@linux.intel.com>
In-Reply-To: <cover.1298661117.git.josh@linux.intel.com>
References: <cover.1298661117.git.josh@linux.intel.com>
Old-Date: Fri, 25 Feb 2011 19:02:17 +0000
Date: Fri, 25 Feb 2011 19:14:00 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 3/3] bitbake/hob: add checkbox to disable GPLv3 recipes
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
X-List-Received-Date: Fri, 25 Feb 2011 19:14:30 -0000

From: Joshua Lock <josh@linux.intel.com>

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/ui/crumbs/hobeventhandler.py |   13 ++++++++
 bitbake/lib/bb/ui/hob.py                    |   42 ++++++++++++++++++++++++--
 2 files changed, 51 insertions(+), 4 deletions(-)

diff --git a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
index 84f3043..08cf89f 100644
--- a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
+++ b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
@@ -50,6 +50,7 @@ class HobHandler(gobject.GObject):
         self.server = server
         self.current_command = None
         self.building = False
+        self.gplv3_excluded = False
 
         self.command_map = {
             "findConfigFilesDistro" : ("findConfigFiles", "MACHINE", "findConfigFilesMachine"),
@@ -135,3 +136,15 @@ class HobHandler(gobject.GObject):
     def cancel_build(self):
         # Note: this may not be the right way to stop an in-progress build
         self.server.runCommand(["stateStop"])
+
+    def toggle_gplv3(self, excluded):
+        if self.gplv3_excluded != excluded:
+            self.gplv3_excluded = excluded
+            if excluded:
+                self.server.runCommand(["setVariable", "INCOMPATIBLE_LICENSE", "GPLv3"])
+            else:
+                self.server.runCommand(["setVariable", "INCOMPATIBLE_LICENSE", ""])
+
+            # Refresh packages list
+            self.current_command = "findConfigFilesMachine"
+            self.run_next_command()
diff --git a/bitbake/lib/bb/ui/hob.py b/bitbake/lib/bb/ui/hob.py
index 5278881..47fb949 100644
--- a/bitbake/lib/bb/ui/hob.py
+++ b/bitbake/lib/bb/ui/hob.py
@@ -176,7 +176,41 @@ class MainWindow (gtk.Window):
 
         return
 
+    def include_gplv3_cb(self, toggle):
+        excluded = toggle.get_active()
+        self.handler.toggle_gplv3(excluded)
+
     def advanced_expander_cb(self, expander, param):
+        if expander.get_expanded():
+            vbox = gtk.VBox(False, 6)
+            vbox.show()
+            expander.add(vbox)
+            label = gtk.Label()
+            label.set_markup("<b>Policy</b>")
+            label.show()
+            frame = gtk.Frame()
+            frame.set_label_widget(label)
+            frame.set_shadow_type(gtk.SHADOW_NONE)
+            frame.show()
+            vbox.pack_start(frame)
+            pbox = gtk.VBox(False, 6)
+            pbox.show()
+            frame.add(pbox)
+            hbox = gtk.HBox(False, 6)
+            hbox.show()
+            pbox.pack_start(hbox, expand=False, fill=False, padding=6)
+            # Exclude GPLv3
+            check = gtk.CheckButton("Exclude GPLv3 packages")
+            check.set_tooltip_text("Check this box to prevent GPLv3 packages from being included in your image")
+            check.show()
+            check.connect("toggled", self.include_gplv3_cb)
+            hbox.pack_start(check, expand=False, fill=False, padding=6)
+            hbox = gtk.HBox(False, 6)
+            hbox.show()
+            pbox.pack_start(hbox, expand=False, fill=False)
+        else:
+            expander.remove(expander.child)
+
         return
 
     def images(self):
@@ -490,10 +524,10 @@ class MainWindow (gtk.Window):
         con.show()
         vbox.pack_start(con, expand=True, fill=True)
 
-        #advanced = gtk.Expander(label="Advanced")
-        #advanced.connect("notify::expanded", self.advanced_expander_cb)
-        #advanced.show()
-        #vbox.pack_start(advanced, expand=False, fill=False)
+        advanced = gtk.Expander(label="Advanced")
+        advanced.connect("notify::expanded", self.advanced_expander_cb)
+        advanced.show()
+        vbox.pack_start(advanced, expand=False, fill=False)
 
         hbox = gtk.HBox()
         hbox.show()
-- 
1.7.4


