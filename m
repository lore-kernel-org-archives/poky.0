Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id AA7B74C81199
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 10:11:34 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 06 Dec 2010 08:11:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,305,1288594800"; d="scan'208";a="865021538"
Received: from unknown (HELO localhost) ([10.255.16.53])
	by fmsmga001.fm.intel.com with ESMTP; 06 Dec 2010 08:11:33 -0800
Message-Id: <8b6f65c3812647c5941e9cc9586bfc898d5a478f.1291651199.git.josh@linux.intel.com>
In-Reply-To: <cover.1291651199.git.josh@linux.intel.com>
References: <cover.1291651199.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Thu, 25 Nov 2010 15:15:10 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 05/10] bitbake/depexp: Factor ProgressBar into a separate class in crumbs/
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
X-List-Received-Date: Mon, 06 Dec 2010 16:11:34 -0000

ProgressBar will be useful in other UI elements so make it it's own class.
Make ProgressBar a subclass of gtk.Dialog, rather than gtk.Window, so that we
can suggest the window manager parent the ProgressBar to the widget passed at
as parent.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/ui/crumbs/progress.py |   17 +++++++++++++++++
 bitbake/lib/bb/ui/depexp.py          |   19 ++++---------------
 2 files changed, 21 insertions(+), 15 deletions(-)
 create mode 100644 bitbake/lib/bb/ui/crumbs/progress.py

diff --git a/bitbake/lib/bb/ui/crumbs/progress.py b/bitbake/lib/bb/ui/crumbs/progress.py
new file mode 100644
index 0000000..8bd8710
--- /dev/null
+++ b/bitbake/lib/bb/ui/crumbs/progress.py
@@ -0,0 +1,17 @@
+import gtk
+
+class ProgressBar(gtk.Dialog):
+    def __init__(self, parent):
+
+        gtk.Dialog.__init__(self)
+        self.set_title("Parsing metadata, please wait...")
+        self.set_default_size(500, 0)
+        self.set_transient_for(parent)
+        self.set_destroy_with_parent(True)
+        self.progress = gtk.ProgressBar()
+        self.vbox.pack_start(self.progress)
+        self.show_all()
+
+    def update(self, x, y):
+        self.progress.set_fraction(float(x)/float(y))
+        self.progress.set_text("%d/%d (%2d %%)" % (x, y, x*100/y))
diff --git a/bitbake/lib/bb/ui/depexp.py b/bitbake/lib/bb/ui/depexp.py
index 1cd58ca..6fd18d1 100644
--- a/bitbake/lib/bb/ui/depexp.py
+++ b/bitbake/lib/bb/ui/depexp.py
@@ -21,6 +21,7 @@ import gobject
 import gtk
 import threading
 import xmlrpclib
+from bb.ui.crumbs.progress import ProgressBar
 
 # Package Model
 (COL_PKG_NAME) = (0)
@@ -171,18 +172,6 @@ def parse(depgraph, pkg_model, depends_model):
                               COL_DEP_PARENT, package,
                               COL_DEP_PACKAGE, rdepend)
 
-class ProgressBar(gtk.Window):
-    def __init__(self):
-
-        gtk.Window.__init__(self)
-        self.set_title("Parsing .bb files, please wait...")
-        self.set_default_size(500, 0)
-        self.connect("delete-event", gtk.main_quit)
-
-        self.progress = gtk.ProgressBar()
-        self.add(self.progress)
-        self.show_all()
-
 class gtkthread(threading.Thread):
     quit = threading.Event()
     def __init__(self, shutdown):
@@ -217,8 +206,8 @@ def init(server, eventHandler):
     gtkgui.start()
 
     gtk.gdk.threads_enter()
-    pbar = ProgressBar()
     dep = DepExplorer()
+    pbar = ProgressBar(dep)
     gtk.gdk.threads_leave()
 
     while True:
@@ -236,9 +225,9 @@ def init(server, eventHandler):
                     print(("\nParsing finished. %d cached, %d parsed, %d skipped, %d masked, %d errors."
                         % ( event.cached, event.parsed, event.skipped, event.masked, event.errors)))
                     pbar.hide()
+                    return
                 gtk.gdk.threads_enter()
-                pbar.progress.set_fraction(float(x)/float(y))
-                pbar.progress.set_text("%d/%d (%2d %%)" % (x, y, x*100/y))
+                pbar.update(x, y)
                 gtk.gdk.threads_leave()
                 continue
 
-- 
1.7.3.2


