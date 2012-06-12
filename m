Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56637E006D9
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 13:42:04 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id CD68E2FE87
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 16:41:58 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Jun 2012 13:41:09 -0700
Message-Id: <f62bcb1054487e47db07362dbe882115ae831123.1339533507.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: CD68E2FE87.A0CDA
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 19/31] hob: handle sanity check failures as a separate event
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
X-List-Received-Date: Tue, 12 Jun 2012 20:42:04 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

In order to show a friendlier error message that does not bury the
actual sanity error in our typical preamble about disabling sanity
checks, use a separate event to indicate that sanity checks failed.

This change is intended to work together with the related change to
sanity.bbclass in OE-Core.

Fixes [YOCTO #2336].

(Bitbake rev: 24b631acdaa143a4de39c6e1328849660c66f219)

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/event.py                     |    8 ++++++++
 bitbake/lib/bb/ui/crumbs/builder.py         |    7 ++++++-
 bitbake/lib/bb/ui/crumbs/hobeventhandler.py |    6 ++++++
 3 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/bitbake/lib/bb/event.py b/bitbake/lib/bb/event.py
index f3fb521..1116c0a 100644
--- a/bitbake/lib/bb/event.py
+++ b/bitbake/lib/bb/event.py
@@ -527,3 +527,11 @@ class SanityCheckPassed(Event):
     """
     Event to indicate sanity check is passed
     """
+
+class SanityCheckFailed(Event):
+    """
+    Event to indicate sanity check has failed
+    """
+    def __init__(self, msg):
+        Event.__init__(self)
+        self._msg = msg
diff --git a/bitbake/lib/bb/ui/crumbs/builder.py b/bitbake/lib/bb/ui/crumbs/builder.py
index 3f68782..df85326 100755
--- a/bitbake/lib/bb/ui/crumbs/builder.py
+++ b/bitbake/lib/bb/ui/crumbs/builder.py
@@ -354,6 +354,7 @@ class Builder(gtk.Window):
         self.handler.connect("data-generated",           self.handler_data_generated_cb)
         self.handler.connect("command-succeeded",        self.handler_command_succeeded_cb)
         self.handler.connect("command-failed",           self.handler_command_failed_cb)
+        self.handler.connect("sanity-failed",            self.handler_sanity_failed_cb)
         self.handler.connect("recipe-populated",         self.handler_recipe_populated_cb)
         self.handler.connect("package-populated",        self.handler_package_populated_cb)
 
@@ -652,10 +653,14 @@ class Builder(gtk.Window):
 
     def handler_command_failed_cb(self, handler, msg):
         if msg:
-            msg = msg.replace("your local.conf", "Settings")
             self.show_error_dialog(msg)
         self.reset()
 
+    def handler_sanity_failed_cb(self, handler, msg):
+        msg = msg.replace("your local.conf", "Settings")
+        self.show_error_dialog(msg)
+        self.reset()
+
     def window_sensitive(self, sensitive):
         self.image_configuration_page.machine_combo.set_sensitive(sensitive)
         self.image_configuration_page.image_combo.set_sensitive(sensitive)
diff --git a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
index 424bcfa..74138cb 100644
--- a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
+++ b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
@@ -42,6 +42,9 @@ class HobHandler(gobject.GObject):
          "command-failed"          : (gobject.SIGNAL_RUN_LAST,
                                       gobject.TYPE_NONE,
                                      (gobject.TYPE_STRING,)),
+         "sanity-failed"           : (gobject.SIGNAL_RUN_LAST,
+                                      gobject.TYPE_NONE,
+                                     (gobject.TYPE_STRING,)),
          "generating-data"         : (gobject.SIGNAL_RUN_LAST,
                                       gobject.TYPE_NONE,
                                      ()),
@@ -170,6 +173,9 @@ class HobHandler(gobject.GObject):
         elif isinstance(event, bb.event.SanityCheckPassed):
             self.run_next_command()
 
+        elif isinstance(event, bb.event.SanityCheckFailed):
+            self.emit("sanity-failed", event._msg)
+
         elif isinstance(event, logging.LogRecord):
             if event.levelno >= logging.ERROR:
                 self.error_msg += event.msg + '\n'
-- 
1.7.9.5


