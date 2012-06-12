Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6CD0E01304
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 13:41:55 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id E735E2FD1D
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 16:41:49 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Jun 2012 13:41:05 -0700
Message-Id: <14ca603d43521641622aa6faa38bdff02427fd99.1339533507.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: E735E2FD1D.58ADE
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 15/31] cooker.py: terminate the Parser processes
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
X-List-Received-Date: Tue, 12 Jun 2012 20:41:56 -0000

From: Kang Kai <kai.kang@windriver.com>

[Yocto 2142]

Force to exit HOB when hob is parsing recipes, the bitbake doesn't stop.
It hangs on function BitBakeServerConnection::terminate in file
server/process.py:
    else:
        self.procserver.join()
It is waiting for the children process quit.

In stage of parse recipes BBCooker spawns Parser processes as many as
cpu numbers. When quit the Parser processes they make their internal
Queue to call cancel_join_thread() to avoid block but don't work at
this time.
So force to terminate the Parser processes.

(Bitbake rev: bebef58b21bdff7a3ee1fa2449b7df19144f26fd)

Signed-off-by: Kang Kai <kai.kang@windriver.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/cooker.py |    9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
index dea0aad..4a4dc38 100644
--- a/bitbake/lib/bb/cooker.py
+++ b/bitbake/lib/bb/cooker.py
@@ -1175,7 +1175,7 @@ class BBCooker:
             return
 
         if self.state in (state.shutdown, state.stop):
-            self.parser.shutdown(clean=False)
+            self.parser.shutdown(clean=False, force = True)
             sys.exit(1)
 
         if self.state != state.parsing:
@@ -1608,10 +1608,13 @@ class CookerParser(object):
                 self.parser_quit.put(None)
 
             self.jobs.cancel_join_thread()
-            sys.exit(1)
 
         for process in self.processes:
-            process.join()
+            if force:
+                process.join(.1)
+                process.terminate()
+            else:
+                process.join()
         self.feeder.join()
 
         sync = threading.Thread(target=self.bb_cache.sync)
-- 
1.7.9.5


