Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 79DA84C80FD4
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 10:11:08 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 06 Dec 2010 08:11:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,305,1288594800"; d="scan'208";a="865021028"
Received: from unknown (HELO localhost) ([10.255.16.53])
	by fmsmga001.fm.intel.com with ESMTP; 06 Dec 2010 08:11:07 -0800
Message-Id: <19801988ac3a7ac87fb6aff971ad107d329797b9.1291651199.git.josh@linux.intel.com>
In-Reply-To: <cover.1291651199.git.josh@linux.intel.com>
References: <cover.1291651199.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 01/10] bitbake/crumbs: Fix crumbs UI for bitbake event class name changes
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
Date: Mon, 06 Dec 2010 16:11:08 -0000
X-Original-Date: Thu, 11 Nov 2010 10:13:08 +0000
X-List-Received-Date: Mon, 06 Dec 2010 16:11:08 -0000

Some of the events we where trying to look for have had their class names
changed, fix these references.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/ui/crumbs/runningbuild.py |    7 ++++---
 1 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/bitbake/lib/bb/ui/crumbs/runningbuild.py b/bitbake/lib/bb/ui/crumbs/runningbuild.py
index b4416ec..6f77b83 100644
--- a/bitbake/lib/bb/ui/crumbs/runningbuild.py
+++ b/bitbake/lib/bb/ui/crumbs/runningbuild.py
@@ -67,11 +67,12 @@ class RunningBuild (gobject.GObject):
                 (package, task) = self.pids_to_task[pid]
                 parent = self.tasks_to_iter[(package, task)]
 
-        if isinstance(event, bb.msg.Msg):
+        if isinstance(event, bb.msg.MsgBase):
+
             # Set a pretty icon for the message based on it's type.
             if isinstance(event, bb.msg.MsgWarn):
                 icon = "dialog-warning"
-            elif isinstance(event, bb.msg.MsgErr):
+            elif isinstance(event, bb.msg.MsgError):
                 icon = "dialog-error"
             else:
                 icon = None
@@ -128,7 +129,7 @@ class RunningBuild (gobject.GObject):
             # Mark this task as active.
             self.model.set(i, self.model.COL_ICON, "gtk-execute")
 
-        elif isinstance(event, bb.build.Task):
+        elif isinstance(event, bb.build.TaskBase):
 
             if isinstance(event, bb.build.TaskFailed):
                 # Mark the task as failed
-- 
1.7.3.2


