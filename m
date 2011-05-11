Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 52F874C80FFA
	for <poky@yoctoproject.org>; Wed, 11 May 2011 15:02:17 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 11 May 2011 13:02:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,354,1301900400"; 
   d="scan'208";a="1026194"
Received: from unknown (HELO localhost) ([10.255.12.51])
	by fmsmga001.fm.intel.com with ESMTP; 11 May 2011 13:02:16 -0700
Message-Id: <f10a716491854eeb9d21b4f5daafda684e0b2105.1305143302.git.josh@linux.intel.com>
In-Reply-To: <cover.1305143302.git.josh@linux.intel.com>
References: <cover.1305143302.git.josh@linux.intel.com>
Old-Date: Tue, 10 May 2011 17:07:56 -0700
Date: Wed, 11 May 2011 13:02:11 -0700
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 1/1] bitbake/ui: Fix Gtk+ GUI's after recent cache changes
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
X-List-Received-Date: Wed, 11 May 2011 20:02:17 -0000

From: Joshua Lock <josh@linux.intel.com>

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/ui/crumbs/hobeventhandler.py |    2 ++
 bitbake/lib/bb/ui/crumbs/runningbuild.py    |    4 +++-
 bitbake/lib/bb/ui/depexp.py                 |    2 ++
 3 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
index 84f3043..c474491 100644
--- a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
+++ b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
@@ -102,6 +102,8 @@ class HobHandler(gobject.GObject):
         elif isinstance(event, bb.event.CacheLoadCompleted) and pbar:
             pbar.update(bb.ui.crumbs.hobeventhandler.progress_total, bb.ui.crumbs.hobeventhandler.progress_total)
         elif isinstance(event, bb.event.ParseStarted) and pbar:
+            if event.total == 0:
+                return
             pbar.set_title("Processing recipes")
             bb.ui.crumbs.hobeventhandler.progress_total = event.total
             pbar.update(0, bb.ui.crumbs.hobeventhandler.progress_total)
diff --git a/bitbake/lib/bb/ui/crumbs/runningbuild.py b/bitbake/lib/bb/ui/crumbs/runningbuild.py
index 4703e6d..70fd57e 100644
--- a/bitbake/lib/bb/ui/crumbs/runningbuild.py
+++ b/bitbake/lib/bb/ui/crumbs/runningbuild.py
@@ -234,6 +234,8 @@ class RunningBuild (gobject.GObject):
             pbar.update(self.progress_total, self.progress_total)
 
         elif isinstance(event, bb.event.ParseStarted) and pbar:
+            if event.total == 0:
+                return
             pbar.set_title("Processing recipes")
             self.progress_total = event.total
             pbar.update(0, self.progress_total)
@@ -308,4 +310,4 @@ class RunningBuildTreeView (gtk.TreeView):
 
         clipboard = gtk.clipboard_get()
         clipboard.set_text(paste_url)
-        clipboard.store()
\ No newline at end of file
+        clipboard.store()
diff --git a/bitbake/lib/bb/ui/depexp.py b/bitbake/lib/bb/ui/depexp.py
index 3dbd5e0..575dd1c 100644
--- a/bitbake/lib/bb/ui/depexp.py
+++ b/bitbake/lib/bb/ui/depexp.py
@@ -254,6 +254,8 @@ def main(server, eventHandler):
 
             if isinstance(event, bb.event.ParseStarted):
                 progress_total = event.total
+                if progress_total == 0:
+                    continue
                 gtk.gdk.threads_enter()
                 pbar.set_title("Processing recipes")
                 pbar.update(0, progress_total)
-- 
1.7.5.1


