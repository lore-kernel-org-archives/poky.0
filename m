Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 75DED4C81199
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 10:12:13 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Dec 2010 08:12:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,305,1288594800"; d="scan'208";a="684373032"
Received: from unknown (HELO localhost) ([10.255.16.53])
	by orsmga001.jf.intel.com with ESMTP; 06 Dec 2010 08:12:09 -0800
Message-Id: <74f911595924df0bf275071b0c6be1c1dd3692dc.1291651199.git.josh@linux.intel.com>
In-Reply-To: <cover.1291651199.git.josh@linux.intel.com>
References: <cover.1291651199.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Mon, 6 Dec 2010 15:34:50 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 10/10] bitbake/goggle: automatically show most recently added message
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
X-List-Received-Date: Mon, 06 Dec 2010 16:12:13 -0000

It seems likely that the user would want to view the most recently emitted
messages so this patch sets the message dislay treeview to scroll to any
newly added rows.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/ui/goggle.py |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/ui/goggle.py b/bitbake/lib/bb/ui/goggle.py
index 57322ee..858ca14 100644
--- a/bitbake/lib/bb/ui/goggle.py
+++ b/bitbake/lib/bb/ui/goggle.py
@@ -34,6 +34,9 @@ def event_handle_idle_func (eventHandler, build, pbar):
 
     return True
 
+def scroll_tv_cb (model, path, iter, view):
+    view.scroll_to_cell (path)
+
 class MainWindow (gtk.Window):
     def __init__ (self):
         gtk.Window.__init__ (self, gtk.WINDOW_TOPLEVEL)
@@ -57,6 +60,7 @@ def init (server, eventHandler):
     # Create the object for the current build
     running_build = RunningBuild ()
     window.cur_build_tv.set_model (running_build.model)
+    running_build.model.connect("row-inserted", scroll_tv_cb, window.cur_build_tv)
     try:
         cmdline = server.runCommand(["getCmdLineAction"])
         print(cmdline)
-- 
1.7.3.2


