Return-Path: <richard@tim.rpsys.net>
Received: from smtp.elevenwireless.com (smtp.elevenwireless.com
	[69.48.211.177])
	by mx1.pokylinux.org (Postfix) with ESMTP id E9BC74C811EC
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 16:16:40 -0600 (CST)
Received: from [216.151.15.131] (helo=rex)
	by smtp.elevenwireless.com with esmtp (Exim 4.63)
	(envelope-from <richard@tim.rpsys.net>) id 1PMpUx-00019g-4d
	for poky@pokylinux.org; Sun, 28 Nov 2010 14:13:31 -0800
Received: by rex (Postfix, from userid 1000)
	id B5B2024CD2; Sun, 28 Nov 2010 14:16:09 -0800 (PST)
Message-Id: <a39f335f59ec4c2fc5442b2312afd9a4fa3a690d.1290982058.git.rpurdie@linux.intel.com>
In-Reply-To: <cover.1290982058.git.rpurdie@linux.intel.com>
References: <cover.1290982058.git.rpurdie@linux.intel.com>
From: Richard Purdie <rpurdie@linux.intel.com>
Date: Sun, 28 Nov 2010 12:07:57 +0000
To: poky@pokylinux.org
Subject: [PATCH 01/16] bitbake/runqueue.py: Fix stamp handling for noexec tasks
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
X-List-Received-Date: Sun, 28 Nov 2010 22:16:41 -0000

This means the noexec messages are only shown once as the stamp files are now
correctly created.

Signed-off-by: Richard Purdie <rpurdie@linux.intel.com>
---
 bitbake/lib/bb/runqueue.py |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/runqueue.py b/bitbake/lib/bb/runqueue.py
index 85ecafc..d5c9565 100644
--- a/bitbake/lib/bb/runqueue.py
+++ b/bitbake/lib/bb/runqueue.py
@@ -1223,7 +1223,7 @@ class RunQueueExecuteTasks(RunQueueExecute):
                                                                 self.rqdata.get_user_idstring(task)))
                 self.runq_running[task] = 1
                 self.stats.taskActive()
-                bb.build.make_stamp(task, self.rqdata.dataCache, fn)
+                bb.build.make_stamp(taskname, self.rqdata.dataCache, fn)
                 self.task_complete(task)
                 return True
 
-- 
1.7.0.4


