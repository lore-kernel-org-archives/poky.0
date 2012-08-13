Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37915E013FE
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:20:56 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id A93EC3042C
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:20:50 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:35 -0700
Message-Id: <96770e616b39ba34de670a23bc486584db58625f.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: A93EC3042C.8CB6A
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 09/57] bitbake: fetch2: Improve mirror looping to consider more cases
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
X-List-Received-Date: Mon, 13 Aug 2012 21:20:56 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Currently we only consider one pass through the mirror list. This doesn't
catch cases where for example you might want to setup a mirror of a mirror
and allow multiple redirection. There is no reason we can't support this
and the patch loops through the list recursively now.

As a safeguard, it will stop if any duplicate urls are found, hence
avoiding circular dependency looping.

(From Poky rev: 0ec0a4412865e54495c07beea1ced8355da58073)

(Bitbake rev: e585730e931e6abdb15ba8a3849c5fd22845b891)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/fetch2/__init__.py |   41 ++++++++++++++++++++++++++-----------
 1 file changed, 29 insertions(+), 12 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 405f074..13341a8 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -449,6 +449,30 @@ def check_network_access(d, info = "", url = None):
     else:
         logger.debug(1, "Fetcher accessed the network with the command %s" % info)
 
+def build_mirroruris(origud, mirrors, ld):
+    uris = []
+    uds = []
+
+    def adduri(uri, ud, uris, uds):
+        for line in mirrors:
+            try:
+                (find, replace) = line
+            except ValueError:
+                continue
+            newuri = uri_replace(ud, find, replace, ld)
+            if not newuri or newuri in uris or newuri == origud.url:
+                continue
+            uris.append(newuri)
+            newud = FetchData(newuri, ld)
+            newud.setup_localpath(ld)
+            uds.append(newud)
+
+            adduri(newuri, newud, uris, uds)
+
+    adduri(None, origud, uris, uds)
+
+    return uris, uds
+
 def try_mirror_url(newuri, origud, ud, ld, check = False):
     # Return of None or a value means we're finished
     # False means try another url
@@ -514,18 +538,11 @@ def try_mirrors(d, origud, mirrors, check = False):
     mirrors is the list of mirrors we're going to try
     """
     ld = d.createCopy()
-    for line in mirrors:
-        try:
-            (find, replace) = line
-        except ValueError:
-            continue
-        newuri = uri_replace(origud, find, replace, ld)
-        if not newuri:
-            continue
-        ud = FetchData(newuri, ld)
-        ud.setup_localpath(ld)
-
-        ret = try_mirror_url(newuri, origud, ud, ld, check)
+
+    uris, uds = build_mirroruris(origud, mirrors, ld)
+
+    for index, uri in enumerate(uris):
+        ret = try_mirror_url(uri, origud, uds[index], ld, check)
         if ret != False:
             return ret
     return None
-- 
1.7.9.5


