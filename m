Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5D28F4C81122
	for <poky@yoctoproject.org>; Tue, 11 Jan 2011 08:33:53 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 Jan 2011 06:33:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,307,1291622400"; d="scan'208";a="591851849"
Received: from unknown (HELO localhost) ([10.255.16.112])
	by orsmga002.jf.intel.com with ESMTP; 11 Jan 2011 06:33:52 -0800
Message-Id: <65a15e3833247236dfe2a6f0834438bb8653702a.1294756107.git.josh@linux.intel.com>
In-Reply-To: <cover.1294756107.git.josh@linux.intel.com>
References: <cover.1294756107.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Old-Date: Wed, 5 Jan 2011 19:23:46 +0000
Date: Tue, 11 Jan 2011 14:33:46 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/4] bitbake/uievent: fix queueing of events for xmlrpc before UI has loaded
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
X-List-Received-Date: Tue, 11 Jan 2011 14:33:53 -0000

The recent change to Queue up events before the UI is spawned (in
26eda933379801ef1c8b4b09e67d14f498cd3813) broke the xmlrpc server because the
uievent implementation of BBUIEventQueue expects pickled strings for its
queue_event() method.

This is because the RPC exposed event.send() method must accept pickled
strings, but for xmlrpc event.send() is just mapped to queue_event().

Work around this by adding a send_event method which unpickles strings and
hands them off to queue_event() which can then be used for the remapping.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/ui/uievent.py |    7 +++++--
 1 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/ui/uievent.py b/bitbake/lib/bb/ui/uievent.py
index b404805..2fef4e4 100644
--- a/bitbake/lib/bb/ui/uievent.py
+++ b/bitbake/lib/bb/ui/uievent.py
@@ -63,17 +63,20 @@ class BBUIEventQueue:
 
     def queue_event(self, event):
         self.eventQueueLock.acquire()
-        self.eventQueue.append(pickle.loads(event))
+        self.eventQueue.append(event)
         self.eventQueueNotify.set()
         self.eventQueueLock.release()
 
+    def send_event(self, event):
+        self.queue_event(pickle.loads(event))
+
     def startCallbackHandler(self):
 
         server = UIXMLRPCServer()
         self.host, self.port = server.socket.getsockname()
 
         server.register_function( self.system_quit, "event.quit" )
-        server.register_function( self.queue_event, "event.send" )
+        server.register_function( self.send_event, "event.send" )
         server.socket.settimeout(1)
 
         self.EventHandle = self.BBServer.registerEventHandler(self.host, self.port)
-- 
1.7.3.4


