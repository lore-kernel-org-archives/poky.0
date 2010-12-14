Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5DACA4C811E4
	for <poky@yoctoproject.org>; Tue, 14 Dec 2010 04:04:46 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 Dec 2010 02:04:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,341,1288594800"; d="scan'208";a="686942566"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 14 Dec 2010 02:04:43 -0800
Message-Id: <b17a9056f9de3313cb6d212aa7a689883358862a.1292320885.git.ke.yu@intel.com>
In-Reply-To: <cover.1292320885.git.ke.yu@intel.com>
References: <cover.1292320885.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Tue, 14 Dec 2010 15:55:33 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] FetchData: add SRC_URI checksum
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
X-List-Received-Date: Tue, 14 Dec 2010 10:04:46 -0000

This patch add the per-recipe SRC_URI checksum verification.

- SRC_URI format
The format of SRC_URI checksum follow OE definition:

1. SRC_URI has single src
SRC_URI = "http://some.domain/file.tar.gz"
SRC_URI[md5sum] = "xxxxxxxxxxxxxxx"
SRC_URI[sha256sum] = "xxxxxxxxxxxxxxxxxxxxxx"

2. SRC_URI has multiple src, every src need specify name
SRC_URI = "http://some.domain/file1.tar.gz;name=name1 \
           http://some.domain/file2.tar.gz;name=name2 "
SRC_URI[name1.md5sum] = "xxxxxxxxxxxxxxx"
SRC_URI[name1.sha256sum] = "xxxxxxxxxxxxxxxxxxxxxx"
SRC_URI[name2.md5sum] = "xxxxxxxxxxxxxxx"
SRC_URI[name2.sha256sum] = "xxxxxxxxxxxxxxxxxxxxxx"

- SRC_URI checking invocation:
the checksum checking is invoked in do_fetch phase,
so it can be invoked manually by

# bitbake -f -c fetch <recipe_name>

if recipes has no SRC_URI checksum item, bitbake will show warning:
"
WARNING: Missing SRC_URI checksum for xxxx.tar.gz, consider to add
SRC_URI[md5sum] = "5c69f16d452b0bb3d44bc3c10556c072"
SRC_URI[sha256sum] = "f4e0ada8d4d516bbb8600a3ee7d9046c9c79e38cd781df9ffc46d8f16acd1768"
"
thus recipe author can add it to recpie file after SRC_URI

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch/__init__.py |   36 ++++++++++++++++++++++++++++++++++++
 1 files changed, 36 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/fetch/__init__.py b/bitbake/lib/bb/fetch/__init__.py
index 50955f1..d3360b1 100644
--- a/bitbake/lib/bb/fetch/__init__.py
+++ b/bitbake/lib/bb/fetch/__init__.py
@@ -231,6 +231,29 @@ def removefile(f):
     except:
         pass
 
+def verify_checksum(d, ud):
+    """
+    verify the MD5 and SHA256 checksum for downloaded src
+    return True if matched, False if not
+    """
+    md5data = bb.utils.md5_file(ud.localpath)
+    sha256data = bb.utils.sha256_file(ud.localpath)
+
+    if (ud.md5_expected == None or ud.sha256_expected == None):
+        bb.warn("Missing SRC_URI checksum for %s, consider to add\n" \
+                "SRC_URI[%s] = \"%s\"\nSRC_URI[%s] = \"%s\"" \
+                % (ud.localpath, ud.md5_name, md5data, ud.sha256_name, sha256data))
+        # TODO: change to "return False" once all recpies has checksum entry
+        return True
+
+    if (ud.md5_expected != md5data or ud.sha256_expected != sha256data):
+        bb.error("The checksums for '%s' did not match." % ud.localpath)
+        bb.error("Expected MD5: '%s' and Got: '%s'" % (ud.md5_expected, md5data))
+        bb.error("Expected SHA256: '%s' and Got: '%s'" % (ud.sha256_expected, sha256data))
+        return False
+
+    return True
+
 def go(d, urls = None):
     """
     Fetch all urls
@@ -283,6 +306,9 @@ def go(d, urls = None):
         else:
             Fetch.write_md5sum(u, ud, d)
 
+        if not verify_checksum(d, ud):
+            raise FetchError("%s checksum mismatch." % u)
+
         bb.utils.unlockfile(lf)
 
 def checkstatus(d, urls = None):
@@ -502,6 +528,16 @@ class FetchData(object):
         if not self.pswd and "pswd" in self.parm:
             self.pswd = self.parm["pswd"]
         self.setup = False
+
+        if "name" in self.parm:
+            self.md5_name = "%s.md5sum" % self.parm["name"]
+            self.sha256_name = "%s.sha256sum" % self.parm["name"]
+        else:
+            self.md5_name = "md5sum"
+            self.sha256_name = "sha256sum"
+        self.md5_expected = bb.data.getVarFlag("SRC_URI", self.md5_name, d)
+        self.sha256_expected = bb.data.getVarFlag("SRC_URI", self.sha256_name, d)
+
         for m in methods:
             if m.supports(url, self, d):
                 self.method = m
-- 
1.7.0.4


