Return-Path: <richard@tim.rpsys.net>
Received: from smtp.elevenwireless.com (smtp.elevenwireless.com
	[69.48.211.177])
	by mx1.pokylinux.org (Postfix) with ESMTP id 34A054C811FB
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 16:16:43 -0600 (CST)
Received: from [216.151.15.131] (helo=rex)
	by smtp.elevenwireless.com with esmtp (Exim 4.63)
	(envelope-from <richard@tim.rpsys.net>) id 1PMpV0-00019s-Ex
	for poky@pokylinux.org; Sun, 28 Nov 2010 14:13:34 -0800
Received: by rex (Postfix, from userid 1000)
	id 403ED2AA57; Sun, 28 Nov 2010 14:16:10 -0800 (PST)
Message-Id: <8a391c3d719d14390a6eee20f2f0cf3c37d27aa8.1290982058.git.rpurdie@linux.intel.com>
In-Reply-To: <cover.1290982058.git.rpurdie@linux.intel.com>
References: <cover.1290982058.git.rpurdie@linux.intel.com>
From: Richard Purdie <rpurdie@linux.intel.com>
Date: Sun, 28 Nov 2010 14:59:37 +0000
To: poky@pokylinux.org
Subject: [PATCH 08/16] rm_work: Set BB_SCHEDULER as done in OE.dev to ensure disk space is freed sooner rather than at the end of the build
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
X-List-Received-Date: Sun, 28 Nov 2010 22:16:43 -0000

Signed-off-by: Richard Purdie <rpurdie@linux.intel.com>
---
 meta/classes/rm_work.bbclass |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/classes/rm_work.bbclass b/meta/classes/rm_work.bbclass
index 87c4459..53fcda2 100644
--- a/meta/classes/rm_work.bbclass
+++ b/meta/classes/rm_work.bbclass
@@ -6,6 +6,10 @@
 # INHERIT += "rm_work"
 #
 
+# Use the completion scheulder by default when rm_work is active
+# to try and reduce disk usage
+BB_SCHEDULER ?= "completion"
+
 RMWORK_ORIG_TASK := "${BB_DEFAULT_TASK}"
 BB_DEFAULT_TASK = "rm_work_all"
 
-- 
1.7.0.4


