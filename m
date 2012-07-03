Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68974E01470
	for <poky@yoctoproject.org>; Tue,  3 Jul 2012 15:32:37 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id rq8so11784488pbb.35
	for <poky@yoctoproject.org>; Tue, 03 Jul 2012 15:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=Ay1nBr5aN0lQZJ9aKXcjVlSbH+Sx7ft2j4LdsbODVLc=;
	b=JYB7FxObllJ+VZEpyZuRAnkkfhJoxg29N8TQe+oYqLKIfAB4a0JMUAWC2kXKOVOGlw
	DjyQs4EBuJZA6C9PSANvnN4Kg7sG6sL1t9Y1sBqdYsxjVsE9/whizQWdz1QsO1kXRCnJ
	71rAtDmcPl0xCwDmN0CViajsTXyGJ6z0UpHho0hFqVluQHENtAO07YL2yJAIOI+rl0Ke
	vmkK/KGfxMtT7CdG7mFCOmeNxxUzXo1rhp37Pu58P+lWqZQxbnuzYvRAUPHA+c56pEWc
	n03t4BUwKqcSmOzqR3YwDOirTmBZ9M3dRc1Cp+fBGo21sUmxTkC2KfIEwyyPxPnDpZhw
	gNXA==
Received: by 10.68.116.203 with SMTP id jy11mr11424322pbb.129.1341354757289;
	Tue, 03 Jul 2012 15:32:37 -0700 (PDT)
Received: from leo.gateway.2wire.net
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPS id nj4sm2425447pbc.5.2012.07.03.15.32.35
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 03 Jul 2012 15:32:36 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: poky@yoctoproject.org
Date: Tue,  3 Jul 2012 15:32:07 -0700
Message-Id: <e026766e0169ae81bc5a43575d9b623df2438c2b.1341354357.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <f6a37520b3bcecef1618bf98a15eac5b69000b78.1341354357.git.raj.khem@gmail.com>
References: <f6a37520b3bcecef1618bf98a15eac5b69000b78.1341354357.git.raj.khem@gmail.com>
In-Reply-To: <cover.1341354357.git.raj.khem@gmail.com>
References: <cover.1341354357.git.raj.khem@gmail.com>
Subject: [denzil][PATCH 6/9] bitbake: fetch2: Split try_mirrors into two parts
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
X-List-Received-Date: Tue, 03 Jul 2012 22:32:37 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

There are no functionality changes in this change

(From Poky rev: d222ebb7c75d74fde4fd04ea6feb27e10a862bae)

(Bitbake rev: db62e109cc36380ff8b8918628c9dea14ac9afbc)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Conflicts:

	bitbake/lib/bb/fetch2/__init__.py

Signed-off-by: Khem Raj <kraj@juniper.net>
---
 bitbake/lib/bb/fetch2/__init__.py |  108 ++++++++++++++++++++-----------------
 1 file changed, 59 insertions(+), 49 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 33e07bb..7c05c61 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -450,6 +450,60 @@ def check_network_access(d, info = "", url = None):
     else:
         logger.debug(1, "Fetcher accessed the network with the command %s" % info)
 
+def try_mirror_url(newuri, origud, ud, ld, check = False):
+    # Return of None or a value means we're finished
+    # False means try another url
+    try:
+        if check:
+            found = ud.method.checkstatus(newuri, ud, ld)
+            if found:
+                return found
+            return False
+
+        os.chdir(ld.getVar("DL_DIR", True))
+
+        if not os.path.exists(ud.donestamp) or ud.method.need_update(newuri, ud, ld):
+            ud.method.download(newuri, ud, ld)
+            if hasattr(ud.method,"build_mirror_data"):
+                ud.method.build_mirror_data(newuri, ud, ld)
+
+        if not ud.localpath or not os.path.exists(ud.localpath):
+            return False
+
+        if ud.localpath == origud.localpath:
+            return ud.localpath
+
+        # We may be obtaining a mirror tarball which needs further processing by the real fetcher
+        # If that tarball is a local file:// we need to provide a symlink to it
+        dldir = ld.getVar("DL_DIR", True)
+        if os.path.basename(ud.localpath) != os.path.basename(origud.localpath):
+            open(ud.donestamp, 'w').close()
+            dest = os.path.join(dldir, os.path.basename(ud.localpath))
+            if not os.path.exists(dest):
+                os.symlink(ud.localpath, dest)
+            return None
+        # Otherwise the result is a local file:// and we symlink to it
+        if not os.path.exists(origud.localpath):
+             os.symlink(ud.localpath, origud.localpath)
+        update_stamp(newuri, origud, ld)
+        return ud.localpath
+
+    except bb.fetch2.NetworkAccess:
+        raise
+
+    except bb.fetch2.BBFetchException as e:
+        if isinstance(e, ChecksumError):
+            logger.warn("Mirror checksum failure for url %s (original url: %s)\nCleaning and trying again." % (newuri, origud.url))
+            logger.warn(str(e))
+        else:
+            logger.debug(1, "Mirror fetch failure for url %s (original url: %s)" % (newuri, origud.url))
+            logger.debug(1, str(e))
+        try:
+            ud.method.clean(ud, ld)
+        except UnboundLocalError:
+            pass
+        return False
+
 def try_mirrors(d, origud, mirrors, check = False):
     """
     Try to use a mirrored version of the sources.
@@ -468,56 +522,12 @@ def try_mirrors(d, origud, mirrors, check = False):
         newuri = uri_replace(origud, find, replace, ld)
         if not newuri:
             continue
-        try:
-            ud = FetchData(newuri, ld)
-            ud.setup_localpath(ld)
+        ud = FetchData(newuri, ld)
+        ud.setup_localpath(ld)
 
-            os.chdir(ld.getVar("DL_DIR", True))
-
-            if check:
-                found = ud.method.checkstatus(newuri, ud, ld)
-                if found:
-                    return found
-                continue
-
-            if not os.path.exists(ud.donestamp) or ud.method.need_update(newuri, ud, ld):
-                ud.method.download(newuri, ud, ld)
-                if os.path.exists(ud.localpath):
-                    open(ud.donestamp, 'w').close()
-                    if hasattr(ud.method,"build_mirror_data"):
-                        ud.method.build_mirror_data(newuri, ud, ld)
-
-            if not ud.localpath or not os.path.exists(ud.localpath):
-                continue
-
-            if ud.localpath == origud.localpath:
-                return ud.localpath
-
-            # We may be obtaining a mirror tarball which needs further processing by the real fetcher
-            # If that tarball is a local file:// we need to provide a symlink to it
-            dldir = ld.getVar("DL_DIR", True)
-            if os.path.basename(ud.localpath) != os.path.basename(origud.localpath):
-                dest = os.path.join(dldir, os.path.basename(ud.localpath))
-                if not os.path.exists(dest):
-                    os.symlink(ud.localpath, dest)
-                return None
-            # Otherwise the result is a local file:// and we symlink to it
-            if not os.path.exists(origud.localpath):
-                 os.symlink(ud.localpath, origud.localpath)
-            return ud.localpath
-
-        except bb.fetch2.NetworkAccess:
-            raise
-
-        except bb.fetch2.BBFetchException as e:
-            logger.debug(1, "Mirror fetch failure for url %s (original url: %s)" % (newuri, origud.url))
-            logger.debug(1, str(e))
-            try:
-                if os.path.isfile(ud.localpath):
-                    bb.utils.remove(ud.localpath)
-            except UnboundLocalError:
-                pass
-            continue
+        ret = try_mirror_url(newuri, origud, ud, ld, check)
+        if ret != False:
+            return ret
     return None
 
 def srcrev_internal_helper(ud, d, name):
-- 
1.7.9.5


