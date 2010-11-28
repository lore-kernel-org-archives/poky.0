Return-Path: <richard@tim.rpsys.net>
Received: from smtp.elevenwireless.com (smtp.elevenwireless.com
	[69.48.211.177])
	by mx1.pokylinux.org (Postfix) with ESMTP id E6D2C4C811E7
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 16:16:40 -0600 (CST)
Received: from [216.151.15.131] (helo=rex)
	by smtp.elevenwireless.com with esmtp (Exim 4.63)
	(envelope-from <richard@tim.rpsys.net>) id 1PMpV0-00019u-Fz
	for poky@pokylinux.org; Sun, 28 Nov 2010 14:13:35 -0800
Received: by rex (Postfix, from userid 1000)
	id 6146B2AA5C; Sun, 28 Nov 2010 14:16:10 -0800 (PST)
Message-Id: <d4125bcac0b1ff225dbfd90d2a5722a2f4e64ff8.1290982058.git.rpurdie@linux.intel.com>
In-Reply-To: <cover.1290982058.git.rpurdie@linux.intel.com>
References: <cover.1290982058.git.rpurdie@linux.intel.com>
From: Richard Purdie <rpurdie@linux.intel.com>
Date: Sun, 28 Nov 2010 15:01:08 +0000
To: poky@pokylinux.org
Subject: [PATCH 10/16] bitbake: Simplfy pre and post cooker hooks
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

Signed-off-by: Richard Purdie <rpurdie@linux.intel.com>
---
 bitbake/lib/bb/cooker.py        |    9 ++++++---
 bitbake/lib/bb/server/none.py   |    9 ++-------
 bitbake/lib/bb/server/xmlrpc.py |    7 +------
 3 files changed, 9 insertions(+), 16 deletions(-)

diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
index 33eb65e..054dac8 100644
--- a/bitbake/lib/bb/cooker.py
+++ b/bitbake/lib/bb/cooker.py
@@ -70,7 +70,7 @@ class BBCooker:
         self.bb_cache = None
 
         if server:
-            self.server = server.BitBakeServer(self, self.pre_serve, self.post_serve)
+            self.server = server.BitBakeServer(self)
 
         self.configuration = configuration
 
@@ -925,6 +925,8 @@ class BBCooker:
 
 
 def server_main(cooker, func, *args):
+    cooker.pre_serve()
+
     if cooker.configuration.profile:
         try:
             import cProfile as profile
@@ -956,11 +958,12 @@ def server_main(cooker, func, *args):
 
         print("Raw profiling information saved to profile.log and processed statistics to profile.log.processed")
 
-        return ret
     else:
-        return func(*args)
+        ret = func(*args)
 
+    cooker.post_serve()
 
+    return ret
 
 class CookerExit(bb.event.Event):
     """
diff --git a/bitbake/lib/bb/server/none.py b/bitbake/lib/bb/server/none.py
index 38f713c..dafb2fe 100644
--- a/bitbake/lib/bb/server/none.py
+++ b/bitbake/lib/bb/server/none.py
@@ -109,11 +109,9 @@ class BitBakeServer():
     # remove this when you're done with debugging
     # allow_reuse_address = True
 
-    def __init__(self, cooker, pre_serve, post_serve):
+    def __init__(self, cooker):
         self._idlefuns = {}
         self.commands = BitBakeServerCommands(self, cooker)
-        self.pre_serve = pre_serve
-        self.post_serve = post_serve
 
     def register_idle_function(self, function, data):
         """Register a function to be called while the server is idle"""
@@ -169,10 +167,7 @@ class BitBakeServerFork():
 
 class BitbakeUILauch():
     def launch(self, serverinfo, uifunc, *args):
-        serverinfo.server.pre_serve()
-        ret = bb.cooker.server_main(serverinfo.cooker, uifunc, *args)
-        serverinfo.server.post_serve()
-        return ret
+        return bb.cooker.server_main(serverinfo.cooker, uifunc, *args)
 
 class BitBakeServerConnection():
     def __init__(self, serverinfo):
diff --git a/bitbake/lib/bb/server/xmlrpc.py b/bitbake/lib/bb/server/xmlrpc.py
index 30b83d2..5d3cc3e 100644
--- a/bitbake/lib/bb/server/xmlrpc.py
+++ b/bitbake/lib/bb/server/xmlrpc.py
@@ -87,7 +87,7 @@ class BitBakeServer(SimpleXMLRPCServer):
     # remove this when you're done with debugging
     # allow_reuse_address = True
 
-    def __init__(self, cooker, pre_serve, post_serve, interface = ("localhost", 0)):
+    def __init__(self, cooker, interface = ("localhost", 0)):
         """
         Constructor
         """
@@ -100,8 +100,6 @@ class BitBakeServer(SimpleXMLRPCServer):
         commands = BitBakeServerCommands(self, cooker)
         self.autoregister_all_functions(commands, "")
         self.cooker = cooker
-        self.pre_serve = pre_serve
-        self.post_serve = post_serve
 
     def autoregister_all_functions(self, context, prefix):
         """
@@ -125,8 +123,6 @@ class BitBakeServer(SimpleXMLRPCServer):
         """
         Serve Requests. Overloaded to honor a quit command
         """
-        self.pre_serve()
-
         self.quit = False
         self.timeout = 0 # Run Idle calls for our first callback
         while not self.quit:
@@ -163,7 +159,6 @@ class BitBakeServer(SimpleXMLRPCServer):
             except:
                 pass
 
-        self.post_serve()
         self.server_close()
         return
 
-- 
1.7.0.4


