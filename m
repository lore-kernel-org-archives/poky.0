Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 075764C80FD4
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 10:11:14 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 Dec 2010 08:11:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,305,1288594800"; d="scan'208";a="581013757"
Received: from unknown (HELO localhost) ([10.255.16.53])
	by orsmga002.jf.intel.com with ESMTP; 06 Dec 2010 08:11:14 -0800
Message-Id: <ccdbe1e34558100b714d0fe975dfa71b85d8df17.1291651199.git.josh@linux.intel.com>
In-Reply-To: <cover.1291651199.git.josh@linux.intel.com>
References: <cover.1291651199.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 02/10] bitbake/crumbs: do the test for ignored messages sooner
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
Date: Mon, 06 Dec 2010 16:11:15 -0000
X-Original-Date: Thu, 11 Nov 2010 10:14:11 +0000
X-List-Received-Date: Mon, 06 Dec 2010 16:11:15 -0000

Move the test for ignored messages to the start of the message handling loop to
avoid doing work for messages which are only going to be ignored.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/ui/crumbs/runningbuild.py |    7 +++----
 1 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/bitbake/lib/bb/ui/crumbs/runningbuild.py b/bitbake/lib/bb/ui/crumbs/runningbuild.py
index 6f77b83..711697c 100644
--- a/bitbake/lib/bb/ui/crumbs/runningbuild.py
+++ b/bitbake/lib/bb/ui/crumbs/runningbuild.py
@@ -68,6 +68,9 @@ class RunningBuild (gobject.GObject):
                 parent = self.tasks_to_iter[(package, task)]
 
         if isinstance(event, bb.msg.MsgBase):
+            # Ignore the "Running task i of n .."
+            if (event._message.startswith ("Running task")):
+                return # don't add these to the list
 
             # Set a pretty icon for the message based on it's type.
             if isinstance(event, bb.msg.MsgWarn):
@@ -77,10 +80,6 @@ class RunningBuild (gobject.GObject):
             else:
                 icon = None
 
-            # Ignore the "Running task i of n .." messages
-            if (event._message.startswith ("Running task")):
-                return
-
             # Add the message to the tree either at the top level if parent is
             # None otherwise as a descendent of a task.
             self.model.append (parent,
-- 
1.7.3.2


