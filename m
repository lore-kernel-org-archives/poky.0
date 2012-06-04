Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8B71E01442
	for <poky@yoctoproject.org>; Mon,  4 Jun 2012 14:00:34 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 0FF3430467
	for <poky@yoctoproject.org>; Mon,  4 Jun 2012 17:00:27 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon,  4 Jun 2012 14:00:21 -0700
Message-Id: <644cd62f4f4b4869b87a1d8aa9e3d35ca93c3915.1338843506.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1338843506.git.scott.a.garman@intel.com>
References: <cover.1338843506.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1338843506.git.scott.a.garman@intel.com>
References: <cover.1338843506.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 0FF3430467.60CE4
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 4/7] Hob: Clear the building status if command failed
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
X-List-Received-Date: Mon, 04 Jun 2012 21:00:34 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

We may meet certain command failure during build time, for example,
out of memory. In this case, we need to clear the "building" status.

This fixes [YOCTO #2371]

(Bitbake rev: 283dbbbf5d34adb4c9e3aa87e3925fdebe21ff42)

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/ui/crumbs/hobeventhandler.py |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
index a07afdd..624d7b5 100644
--- a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
+++ b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
@@ -199,6 +199,8 @@ class HobHandler(gobject.GObject):
             self.clear_busy()
             self.emit("command-failed", self.error_msg)
             self.error_msg = ""
+            if self.building:
+                self.building = False
         elif isinstance(event, (bb.event.ParseStarted,
                  bb.event.CacheLoadStarted,
                  bb.event.TreeDataPreparationStarted,
-- 
1.7.9.5


