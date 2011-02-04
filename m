Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id EFCF34C8016A
	for <poky@yoctoproject.org>; Fri,  4 Feb 2011 02:54:28 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 04 Feb 2011 00:54:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,425,1291622400"; d="scan'208";a="384091797"
Received: from unknown (HELO localhost) ([10.255.16.164])
	by azsmga001.ch.intel.com with ESMTP; 04 Feb 2011 00:54:27 -0800
Message-Id: <749a1e6850059174558fc83e5fb5c3c8403a4921.1296808673.git.josh@linux.intel.com>
In-Reply-To: <cover.1296808673.git.josh@linux.intel.com>
References: <cover.1296808673.git.josh@linux.intel.com>
Old-Date: Tue, 1 Feb 2011 15:23:47 +0000
Date: Fri, 04 Feb 2011  8:54:21 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 10/13] bitbake/progress: add method to pulse the progress bar
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
X-List-Received-Date: Fri, 04 Feb 2011 08:54:29 -0000

From: Joshua Lock <josh@linux.intel.com>

When we're running a long operation with indeterminate duration it's useful
to use the gtk.ProgressBar's pulse method to show that something is happening
but we don't know how long it will take.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/ui/crumbs/progress.py |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/ui/crumbs/progress.py b/bitbake/lib/bb/ui/crumbs/progress.py
index 36eca38..ce3a6c3 100644
--- a/bitbake/lib/bb/ui/crumbs/progress.py
+++ b/bitbake/lib/bb/ui/crumbs/progress.py
@@ -15,3 +15,7 @@ class ProgressBar(gtk.Dialog):
     def update(self, x, y):
         self.progress.set_fraction(float(x)/float(y))
         self.progress.set_text("%2d %%" % (x*100/y))
+
+    def pulse(self):
+        self.progress.set_text("Loading...")
+        self.progress.pulse()
-- 
1.7.4


