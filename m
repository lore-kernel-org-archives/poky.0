Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BE40E01440
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 13:41:39 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id C425B2FE86
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 16:41:32 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Jun 2012 13:40:58 -0700
Message-Id: <ecde2c59505b71160f438e35fcb65d71c5dcad0d.1339533507.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: C425B2FE86.19D84
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 08/31] Hob: Adjust the progress bar and set 100% only when all is done.
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
X-List-Received-Date: Tue, 12 Jun 2012 20:41:39 -0000

From: Shane Wang <shane.wang@intel.com>

After parsing recipes, Hob will populate recipes and packages, which is probably
time exhaused. So, this patch is to adjust the progress bar and ensure 100% is
set if and only if all populations are done.

The patch also fixes "weird 18 second delay when parsing recipes" on build appliance.
Because Hob is doing something, but the progress bar shows 100% and wait there.

[Yocto #2341]

(Bitbake rev: 2c4a21dc8a588c8cf05549ddd9734731a46bea10)

Signed-off-by: Shane Wang <shane.wang@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/ui/crumbs/builder.py         |   12 ++++++++++--
 bitbake/lib/bb/ui/crumbs/hobeventhandler.py |    8 ++++++++
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/ui/crumbs/builder.py b/bitbake/lib/bb/ui/crumbs/builder.py
index 4b274a7..3f68782 100755
--- a/bitbake/lib/bb/ui/crumbs/builder.py
+++ b/bitbake/lib/bb/ui/crumbs/builder.py
@@ -354,6 +354,8 @@ class Builder(gtk.Window):
         self.handler.connect("data-generated",           self.handler_data_generated_cb)
         self.handler.connect("command-succeeded",        self.handler_command_succeeded_cb)
         self.handler.connect("command-failed",           self.handler_command_failed_cb)
+        self.handler.connect("recipe-populated",         self.handler_recipe_populated_cb)
+        self.handler.connect("package-populated",        self.handler_package_populated_cb)
 
         self.handler.set_config_filter(hob_conf_filter)
 
@@ -698,6 +700,12 @@ class Builder(gtk.Window):
     def packagelist_changed_cb(self, package_model):
         self.package_details_page.refresh_selection()
 
+    def handler_recipe_populated_cb(self, handler):
+        self.image_configuration_page.update_progress_bar("Populated recipes", 0.99)
+
+    def handler_package_populated_cb(self, handler):
+        self.image_configuration_page.update_progress_bar("Populated packages", 1.0)
+
     def handler_parsing_started_cb(self, handler, message):
         if self.current_step != self.RCPPKGINFO_POPULATING:
             return
@@ -717,7 +725,7 @@ class Builder(gtk.Window):
 
         fraction = message["current"] * 1.0/message["total"]
         if message["eventname"] == "TreeDataPreparationProgress":
-            fraction = 0.6 + 0.4 * fraction
+            fraction = 0.6 + 0.38 * fraction
         else:
             fraction = 0.6 * fraction
         self.image_configuration_page.update_progress_bar(message["title"], fraction)
@@ -727,7 +735,7 @@ class Builder(gtk.Window):
             return
 
         if message["eventname"] == "TreeDataPreparationCompleted":
-            fraction = 1.0
+            fraction = 0.98
         else:
             fraction = 0.6
         self.image_configuration_page.update_progress_bar(message["title"], fraction)
diff --git a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
index 624d7b5..424bcfa 100644
--- a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
+++ b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
@@ -57,6 +57,12 @@ class HobHandler(gobject.GObject):
          "parsing-completed"       : (gobject.SIGNAL_RUN_LAST,
                                       gobject.TYPE_NONE,
                                      (gobject.TYPE_PYOBJECT,)),
+         "recipe-populated"        : (gobject.SIGNAL_RUN_LAST,
+                                      gobject.TYPE_NONE,
+                                     ()),
+         "package-populated"       : (gobject.SIGNAL_RUN_LAST,
+                                      gobject.TYPE_NONE,
+                                     ()),
     }
 
     (GENERATE_CONFIGURATION, GENERATE_RECIPES, GENERATE_PACKAGES, GENERATE_IMAGE, POPULATE_PACKAGEINFO, SANITY_CHECK) = range(6)
@@ -158,6 +164,7 @@ class HobHandler(gobject.GObject):
 
         if isinstance(event, bb.event.PackageInfo):
             self.package_model.populate(event._pkginfolist)
+            self.emit("package-populated")
             self.run_next_command()
 
         elif isinstance(event, bb.event.SanityCheckPassed):
@@ -171,6 +178,7 @@ class HobHandler(gobject.GObject):
             self.current_phase = "data generation"
             if event._model:
                 self.recipe_model.populate(event._model)
+                self.emit("recipe-populated")
         elif isinstance(event, bb.event.ConfigFilesFound):
             self.current_phase = "configuration lookup"
             var = event._variable
-- 
1.7.9.5


