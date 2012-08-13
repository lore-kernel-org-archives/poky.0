Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7BBBE00718
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:20:51 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 088E43042E
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:20:45 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:33 -0700
Message-Id: <b40242b28401091b02610db07fdbfb1a02426294.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 088E43042E.CD98A
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 07/57] bitbake: fetch2: Split try_mirrors into two parts
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
X-List-Received-Date: Mon, 13 Aug 2012 21:20:52 -0000

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
index 5c8652f..8e361ed 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -449,6 +449,60 @@ def check_network_access(d, info = "", url = None):
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
@@ -467,56 +521,12 @@ def try_mirrors(d, origud, mirrors, check = False):
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


