Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C88444C80AAD
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 09:35:38 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 14 Mar 2011 07:35:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,316,1297065600"; d="scan'208";a="897062422"
Received: from unknown (HELO localhost) ([10.255.16.55])
	by fmsmga001.fm.intel.com with ESMTP; 14 Mar 2011 07:35:37 -0700
Message-Id: <8f0ba82638b2f96dfd3143b720fa8e170f137991.1300113029.git.josh@linux.intel.com>
In-Reply-To: <cover.1300113029.git.josh@linux.intel.com>
References: <cover.1300113029.git.josh@linux.intel.com>
Old-Date: Sat, 5 Mar 2011 17:01:14 +0000
Date: Mon, 14 Mar 2011 14:35:32 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 2/2] bitbake/xmlrpc: only use BBTransport for affected Python versions
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
X-List-Received-Date: Mon, 14 Mar 2011 14:35:38 -0000

From: Joshua Lock <josh@linux.intel.com>

Upstream have fixed the xmlrpclip.Transport() bug from Python #8194 for
the Python 2.7.2 release, therefore as we know which versions of the
standard library are affected we can only use our copy/paste class when
it's needed.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/server/xmlrpc.py |   21 +++++++++++++++++----
 1 files changed, 17 insertions(+), 4 deletions(-)

diff --git a/bitbake/lib/bb/server/xmlrpc.py b/bitbake/lib/bb/server/xmlrpc.py
index 0d03e30..e7b6010 100644
--- a/bitbake/lib/bb/server/xmlrpc.py
+++ b/bitbake/lib/bb/server/xmlrpc.py
@@ -52,6 +52,8 @@ if sys.hexversion < 0x020600F0:
 # implementations from Python 2.6.6's xmlrpclib.
 #
 # Upstream Python bug is #8194 (http://bugs.python.org/issue8194)
+# This bug is relevant for Python 2.7.0 and 2.7.1 but was fixed for
+# Python > 2.7.2
 ##
 
 class BBTransport(xmlrpclib.Transport):
@@ -107,6 +109,18 @@ class BBTransport(xmlrpclib.Transport):
 
         return u.close()
 
+def _create_server(host, port):
+    # Python 2.7.0 and 2.7.1 have a buggy Transport implementation
+    # For those versions of Python, and only those versions, use our
+    # own copy/paste BBTransport class.
+    if (2, 7, 0) <= sys.version_info < (2, 7, 2):
+        t = BBTransport()
+        s = xmlrpclib.Server("http://%s:%d/" % (host, port), transport=t, allow_none=True)
+    else:
+        s = xmlrpclib.Server("http://%s:%d/" % (host, port), allow_none=True)
+
+    return s
+
 class BitBakeServerCommands():
     def __init__(self, server, cooker):
         self.cooker = cooker
@@ -116,8 +130,8 @@ class BitBakeServerCommands():
         """
         Register a remote UI Event Handler
         """
-        t = BBTransport()
-        s = xmlrpclib.Server("http://%s:%d/" % (host, port), transport=t, allow_none=True)
+        s = _create_server(host, port)
+
         return bb.event.register_UIHhandler(s)
 
     def unregisterEventHandler(self, handlerNum):
@@ -240,8 +254,7 @@ class BitbakeUILauch():
 
 class BitBakeServerConnection():
     def __init__(self, serverinfo):
-        t = BBTransport()
-        self.connection = xmlrpclib.Server("http://%s:%s" % (serverinfo.host, serverinfo.port), transport=t, allow_none=True)
+        self.connection = _create_server(serverinfo.host, serverinfo.port)
         self.events = uievent.BBUIEventQueue(self.connection)
         for event in bb.event.ui_queue:
             self.events.queue_event(event)
-- 
1.7.4


