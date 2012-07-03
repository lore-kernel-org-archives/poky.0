Return-Path: <raj.khem@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47609E0146B
	for <poky@yoctoproject.org>; Tue,  3 Jul 2012 15:32:41 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so6118239yhf.35
	for <poky@yoctoproject.org>; Tue, 03 Jul 2012 15:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=HREnPJKhM96ClXNNlwohUQ5WU3yhK5j3tRUFzmyxmiw=;
	b=HiUIVEdn3zO/NhZYua2Onxoj9/Du3Xg0/9Tb+Fpw74miIGXS4y7KOiw/w0WIaW1cD0
	U4TbR5WUXltdMPr2rolH9CDJuAoZm5rkY5Iq5QDYfRndkosncwtYIa7FanyChHWx/Fj+
	v+Zb0LmhcgFb3hYuBkhLhf6uffBg4SLuicXDywwZg64IBSgniWufdFZEbdzunXXXKQAC
	Csl39+d0DmFZVojHWD+MpIOn173Vh6dDh7mxPQ4d0bjxdv2BlrKPmZD/q0ZSw7COZmXL
	p+1ji+QNNJl4aPjxLlV/BA6qG3eprEi+bqLsED0X7B36D2muu1J/OBktdill8BHzf0N7
	COMg==
Received: by 10.68.236.34 with SMTP id ur2mr11705412pbc.108.1341354760529;
	Tue, 03 Jul 2012 15:32:40 -0700 (PDT)
Received: from leo.gateway.2wire.net
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPS id nj4sm2425447pbc.5.2012.07.03.15.32.38
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 03 Jul 2012 15:32:39 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: poky@yoctoproject.org
Date: Tue,  3 Jul 2012 15:32:09 -0700
Message-Id: <16d17f72ad2a970b8182868a5dfc2045fa142e94.1341354357.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <f6a37520b3bcecef1618bf98a15eac5b69000b78.1341354357.git.raj.khem@gmail.com>
References: <f6a37520b3bcecef1618bf98a15eac5b69000b78.1341354357.git.raj.khem@gmail.com>
In-Reply-To: <cover.1341354357.git.raj.khem@gmail.com>
References: <cover.1341354357.git.raj.khem@gmail.com>
Subject: [denzil][PATCH 8/9] bitbake: fetch2: Improve mirror looping to consider more cases
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
X-List-Received-Date: Tue, 03 Jul 2012 22:32:41 -0000

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
index b3b3b48..f6ead2f 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -450,6 +450,30 @@ def check_network_access(d, info = "", url = None):
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
@@ -515,18 +539,11 @@ def try_mirrors(d, origud, mirrors, check = False):
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


