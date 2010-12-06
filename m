Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C49F84C810E1
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 10:11:21 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 Dec 2010 08:11:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,305,1288594800"; d="scan'208";a="684372709"
Received: from unknown (HELO localhost) ([10.255.16.53])
	by orsmga001.jf.intel.com with ESMTP; 06 Dec 2010 08:11:20 -0800
Message-Id: <39cfe37a67ab06d6237e6c4780d1839023203ece.1291651199.git.josh@linux.intel.com>
In-Reply-To: <cover.1291651199.git.josh@linux.intel.com>
References: <cover.1291651199.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 03/10] bitbake/crumbs: fix the event name determination
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
Date: Mon, 06 Dec 2010 16:11:22 -0000
X-Original-Date: Thu, 11 Nov 2010 10:18:11 +0000
X-List-Received-Date: Mon, 06 Dec 2010 16:11:22 -0000

Due to some recent change *somewhere* we need to explicitly look at the
name attribute on the instances class, rather than the name attribute of
the instance.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/ui/crumbs/runningbuild.py |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/ui/crumbs/runningbuild.py b/bitbake/lib/bb/ui/crumbs/runningbuild.py
index 711697c..d4ba4b7 100644
--- a/bitbake/lib/bb/ui/crumbs/runningbuild.py
+++ b/bitbake/lib/bb/ui/crumbs/runningbuild.py
@@ -83,7 +83,7 @@ class RunningBuild (gobject.GObject):
             # Add the message to the tree either at the top level if parent is
             # None otherwise as a descendent of a task.
             self.model.append (parent,
-                               (event.__name__.split()[-1], # e.g. MsgWarn, MsgError
+                               (event.__class__.__name__.split()[-1], # e.g. MsgWarn, MsgError
                                 package,
                                 task,
                                 event._message,
-- 
1.7.3.2


