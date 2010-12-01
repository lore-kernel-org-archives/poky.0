Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id CF7DC4C80A74
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 10:11:56 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Dec 2010 08:11:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,305,1288594800"; d="scan'208";a="633565131"
Received: from unknown (HELO localhost) ([10.255.16.53])
	by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2010 08:11:56 -0800
Message-Id: <436f71a2897435748a736c12952995c8bc103ec7.1291651199.git.josh@linux.intel.com>
In-Reply-To: <cover.1291651199.git.josh@linux.intel.com>
References: <cover.1291651199.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Wed, 1 Dec 2010 14:40:21 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 08/10] bitbake/xmlrpc: Modify xmlrpc server to work with Python 2.7
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
X-List-Received-Date: Mon, 06 Dec 2010 16:11:57 -0000

Python 2.7's library changes some of xmlrpclib's internal implementation such
that interacting with a proxy to BitBakes SimpleXMLRPCServer would cause
BitBake to crash.

The issue was traced to changes in the xmlrpclib.Transport implementation and
Python bug #8194 (http://bugs.python.org/issue8194).

This patch introduces a workaround by create a subclass of
xmlrpclib.Transport, which overrides the offending methods with the Python
2.6.6 implementation copy and pasted from the Python 2.6.6 xmlrpclib, and
using this BBTransport implementation for both xmlrpclib.Server objects we
create.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/server/xmlrpc.py |   68 +++++++++++++++++++++++++++++++++++++-
 1 files changed, 66 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/server/xmlrpc.py b/bitbake/lib/bb/server/xmlrpc.py
index 5d3cc3e..c2bfe12 100644
--- a/bitbake/lib/bb/server/xmlrpc.py
+++ b/bitbake/lib/bb/server/xmlrpc.py
@@ -45,6 +45,68 @@ if sys.hexversion < 0x020600F0:
     print("Sorry, python 2.6 or later is required for bitbake's XMLRPC mode")
     sys.exit(1)
 
+##
+# The xmlrpclib.Transport class has undergone various changes in Python 2.7
+# which break BitBake's XMLRPC implementation.
+# To work around this we subclass Transport and have a copy/paste of method
+# implementations from Python 2.6.6's xmlrpclib.
+#
+# Upstream Python bug is #8194 (http://bugs.python.org/issue8194)
+##
+
+class BBTransport(xmlrpclib.Transport):
+    def request(self, host, handler, request_body, verbose=0):
+        h = self.make_connection(host)
+        if verbose:
+            h.set_debuglevel(1)
+
+        self.send_request(h, handler, request_body)
+        self.send_host(h, host)
+        self.send_user_agent(h)
+        self.send_content(h, request_body)
+
+        errcode, errmsg, headers = h.getreply()
+
+        if errcode != 200:
+            raise ProtocolError(
+                host + handler,
+                errcode, errmsg,
+                headers
+                )
+
+        self.verbose = verbose
+
+        try:
+            sock = h._conn.sock
+        except AttributeError:
+            sock = None
+
+        return self._parse_response(h.getfile(), sock)
+
+    def make_connection(self, host):
+        import httplib
+        host, extra_headers, x509 = self.get_host_info(host)
+        return httplib.HTTP(host)
+
+    def _parse_response(self, file, sock):
+        p, u = self.getparser()
+
+        while 1:
+            if sock:
+                response = sock.recv(1024)
+            else:
+                response = file.read(1024)
+            if not response:
+                break
+            if self.verbose:
+                print "body:", repr(response)
+            p.feed(response)
+
+        file.close()
+        p.close()
+
+        return u.close()
+
 class BitBakeServerCommands():
     def __init__(self, server, cooker):
         self.cooker = cooker
@@ -54,7 +116,8 @@ class BitBakeServerCommands():
         """
         Register a remote UI Event Handler
         """
-        s = xmlrpclib.Server("http://%s:%d" % (host, port), allow_none=True)
+        t = BBTransport()
+        s = xmlrpclib.Server("http://%s:%d/" % (host, port), transport=t, allow_none=True)
         return bb.event.register_UIHhandler(s)
 
     def unregisterEventHandler(self, handlerNum):
@@ -177,7 +240,8 @@ class BitbakeUILauch():
 
 class BitBakeServerConnection():
     def __init__(self, serverinfo):
-        self.connection = xmlrpclib.Server("http://%s:%s" % (serverinfo.host, serverinfo.port),  allow_none=True)
+        t = BBTransport()
+        self.connection = xmlrpclib.Server("http://%s:%s" % (serverinfo.host, serverinfo.port), transport=t, allow_none=True)
         self.events = uievent.BBUIEventQueue(self.connection)
 
     def terminate(self):
-- 
1.7.3.2


