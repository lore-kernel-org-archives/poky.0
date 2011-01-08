Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D1BE74C8086F
	for <poky@yoctoproject.org>; Sat,  8 Jan 2011 01:06:07 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 07 Jan 2011 23:06:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,293,1291622400"; d="scan'208";a="694789380"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 07 Jan 2011 23:06:06 -0800
Message-Id: <87254f9f7298a4c171f5bfa5441c22776df085e4.1294469496.git.ke.yu@intel.com>
In-Reply-To: <cover.1294469496.git.ke.yu@intel.com>
References: <cover.1294469496.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Thu, 6 Jan 2011 21:19:18 +0800
Date: Sat, 08 Jan 2011 15:15:05 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/7] bb.fetch2: replace bb.fetch with bb.fetch2 in the bb.fetch2
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
X-List-Received-Date: Sat, 08 Jan 2011 07:06:08 -0000

bb.fetch2 is copied from bb.fetch, and has many bb.fetch referrence.
Fix these referrence with bb.fetch2 referrence

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/__init__.py |   22 +++++++++++-----------
 bitbake/lib/bb/fetch2/bzr.py      |    2 +-
 bitbake/lib/bb/fetch2/git.py      |    8 ++++----
 bitbake/lib/bb/fetch2/hg.py       |   10 +++++-----
 bitbake/lib/bb/fetch2/local.py    |    2 +-
 bitbake/lib/bb/fetch2/osc.py      |    8 ++++----
 bitbake/lib/bb/fetch2/perforce.py |    6 +++---
 bitbake/lib/bb/fetch2/repo.py     |    4 ++--
 bitbake/lib/bb/fetch2/ssh.py      |    4 ++--
 bitbake/lib/bb/fetch2/svk.py      |    8 ++++----
 bitbake/lib/bb/fetch2/svn.py      |   10 +++++-----
 bitbake/lib/bb/fetch2/wget.py     |    2 +-
 12 files changed, 43 insertions(+), 43 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 67e5add..3a209d3 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -134,9 +134,9 @@ def uri_replace(uri, uri_find, uri_replace, d):
                 result_decoded[loc] = re.sub(i, uri_replace_decoded[loc], uri_decoded[loc])
                 if uri_find_decoded.index(i) == 2:
                     if d:
-                        localfn = bb.fetch.localpath(uri, d)
+                        localfn = bb.fetch2.localpath(uri, d)
                         if localfn:
-                            result_decoded[loc] = os.path.join(os.path.dirname(result_decoded[loc]), os.path.basename(bb.fetch.localpath(uri, d)))
+                            result_decoded[loc] = os.path.join(os.path.dirname(result_decoded[loc]), os.path.basename(bb.fetch2.localpath(uri, d)))
             else:
                 return uri
     return encodeurl(result_decoded)
@@ -158,7 +158,7 @@ def fetcher_init(d):
     elif srcrev_policy == "clear":
         logger.debug(1, "Clearing SRCREV cache due to cache policy of: %s", srcrev_policy)
         try:
-            bb.fetch.saved_headrevs = pd['BB_URI_HEADREVS'].items()
+            bb.fetch2.saved_headrevs = pd['BB_URI_HEADREVS'].items()
         except:
             pass
         del pd['BB_URI_HEADREVS']
@@ -177,7 +177,7 @@ def fetcher_compare_revisions(d):
 
     pd = persist_data.persist(d)
     data = pd['BB_URI_HEADREVS'].items()
-    data2 = bb.fetch.saved_headrevs
+    data2 = bb.fetch2.saved_headrevs
 
     changed = False
     for key in data:
@@ -375,7 +375,7 @@ def get_srcrev(d):
     #
     # Neater solutions welcome!
     #
-    if bb.fetch.srcrev_internal_call:
+    if bb.fetch2.srcrev_internal_call:
         return "SRCREVINACTION"
 
     scms = []
@@ -491,7 +491,7 @@ def try_mirrors(d, uri, mirrors, check = False, force = False):
         if newuri != uri:
             try:
                 ud = FetchData(newuri, ld)
-            except bb.fetch.NoMethodError:
+            except bb.fetch2.NoMethodError:
                 logger.debug(1, "No method for %s", uri)
                 continue
 
@@ -505,9 +505,9 @@ def try_mirrors(d, uri, mirrors, check = False, force = False):
                 else:
                     ud.method.go(newuri, ud, ld)
                     return ud.localpath
-            except (bb.fetch.MissingParameterError,
-                    bb.fetch.FetchError,
-                    bb.fetch.MD5SumError):
+            except (bb.fetch2.MissingParameterError,
+                    bb.fetch2.FetchError,
+                    bb.fetch2.MD5SumError):
                 import sys
                 (type, value, traceback) = sys.exc_info()
                 logger.debug(2, "Mirror fetch failure: %s" % value)
@@ -568,10 +568,10 @@ class FetchData(object):
                 self.localpath = local
             if not local:
                 try:
-                    bb.fetch.srcrev_internal_call = True
+                    bb.fetch2.srcrev_internal_call = True
                     self.localpath = self.method.localpath(self.url, self, d)
                 finally:
-                    bb.fetch.srcrev_internal_call = False
+                    bb.fetch2.srcrev_internal_call = False
                 # We have to clear data's internal caches since the cached value of SRCREV is now wrong.
                 # Horrible...
                 bb.data.delVar("ISHOULDNEVEREXIST", d)
diff --git a/bitbake/lib/bb/fetch2/bzr.py b/bitbake/lib/bb/fetch2/bzr.py
index afaf799..3d23b4d 100644
--- a/bitbake/lib/bb/fetch2/bzr.py
+++ b/bitbake/lib/bb/fetch2/bzr.py
@@ -28,7 +28,7 @@ import sys
 import logging
 import bb
 from bb import data
-from bb.fetch import Fetch, FetchError, runfetchcmd, logger
+from bb.fetch2 import Fetch, FetchError, runfetchcmd, logger
 
 class Bzr(Fetch):
     def supports(self, url, ud, d):
diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index de415ec..e8ad3b4 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -23,9 +23,9 @@ BitBake 'Fetch' git implementation
 import os
 import bb
 from   bb    import data
-from   bb.fetch import Fetch
-from   bb.fetch import runfetchcmd
-from   bb.fetch import logger
+from   bb.fetch2 import Fetch
+from   bb.fetch2 import runfetchcmd
+from   bb.fetch2 import logger
 
 class Git(Fetch):
     """Class to fetch a module or modules from git repositories"""
@@ -225,7 +225,7 @@ class Git(Fetch):
         cmd = "%s ls-remote %s://%s%s%s %s" % (basecmd, ud.proto, username, ud.host, ud.path, ud.branch)
         output = runfetchcmd(cmd, d, True)
         if not output:
-            raise bb.fetch.FetchError("Fetch command %s gave empty output\n" % (cmd))
+            raise bb.fetch2.FetchError("Fetch command %s gave empty output\n" % (cmd))
         return output.split()[0]
 
     def _build_revision(self, url, ud, d):
diff --git a/bitbake/lib/bb/fetch2/hg.py b/bitbake/lib/bb/fetch2/hg.py
index 3c649a6..9e91bec 100644
--- a/bitbake/lib/bb/fetch2/hg.py
+++ b/bitbake/lib/bb/fetch2/hg.py
@@ -29,11 +29,11 @@ import sys
 import logging
 import bb
 from bb import data
-from bb.fetch import Fetch
-from bb.fetch import FetchError
-from bb.fetch import MissingParameterError
-from bb.fetch import runfetchcmd
-from bb.fetch import logger
+from bb.fetch2 import Fetch
+from bb.fetch2 import FetchError
+from bb.fetch2 import MissingParameterError
+from bb.fetch2 import runfetchcmd
+from bb.fetch2 import logger
 
 class Hg(Fetch):
     """Class to fetch from mercurial repositories"""
diff --git a/bitbake/lib/bb/fetch2/local.py b/bitbake/lib/bb/fetch2/local.py
index 6aa9e45..bcb30df 100644
--- a/bitbake/lib/bb/fetch2/local.py
+++ b/bitbake/lib/bb/fetch2/local.py
@@ -29,7 +29,7 @@ import os
 import bb
 import bb.utils
 from   bb import data
-from   bb.fetch import Fetch
+from   bb.fetch2 import Fetch
 
 class Local(Fetch):
     def supports(self, url, urldata, d):
diff --git a/bitbake/lib/bb/fetch2/osc.py b/bitbake/lib/bb/fetch2/osc.py
index 2682096..06ac5a9 100644
--- a/bitbake/lib/bb/fetch2/osc.py
+++ b/bitbake/lib/bb/fetch2/osc.py
@@ -11,10 +11,10 @@ import  sys
 import logging
 import  bb
 from    bb       import data
-from    bb.fetch import Fetch
-from    bb.fetch import FetchError
-from    bb.fetch import MissingParameterError
-from    bb.fetch import runfetchcmd
+from    bb.fetch2 import Fetch
+from    bb.fetch2 import FetchError
+from    bb.fetch2 import MissingParameterError
+from    bb.fetch2 import runfetchcmd
 
 class Osc(Fetch):
     """Class to fetch a module or modules from Opensuse build server
diff --git a/bitbake/lib/bb/fetch2/perforce.py b/bitbake/lib/bb/fetch2/perforce.py
index 222ed7e..18b2781 100644
--- a/bitbake/lib/bb/fetch2/perforce.py
+++ b/bitbake/lib/bb/fetch2/perforce.py
@@ -30,9 +30,9 @@ import os
 import logging
 import bb
 from   bb import data
-from   bb.fetch import Fetch
-from   bb.fetch import FetchError
-from   bb.fetch import logger
+from   bb.fetch2 import Fetch
+from   bb.fetch2 import FetchError
+from   bb.fetch2 import logger
 
 class Perforce(Fetch):
     def supports(self, url, ud, d):
diff --git a/bitbake/lib/bb/fetch2/repo.py b/bitbake/lib/bb/fetch2/repo.py
index 03642e7..3330957 100644
--- a/bitbake/lib/bb/fetch2/repo.py
+++ b/bitbake/lib/bb/fetch2/repo.py
@@ -26,8 +26,8 @@ BitBake "Fetch" repo (git) implementation
 import os
 import bb
 from   bb    import data
-from   bb.fetch import Fetch
-from   bb.fetch import runfetchcmd
+from   bb.fetch2 import Fetch
+from   bb.fetch2 import runfetchcmd
 
 class Repo(Fetch):
     """Class to fetch a module or modules from repo (git) repositories"""
diff --git a/bitbake/lib/bb/fetch2/ssh.py b/bitbake/lib/bb/fetch2/ssh.py
index 86c76f4..8b28322 100644
--- a/bitbake/lib/bb/fetch2/ssh.py
+++ b/bitbake/lib/bb/fetch2/ssh.py
@@ -38,8 +38,8 @@ IETF secsh internet draft:
 
 import re, os
 from   bb import data
-from   bb.fetch import Fetch
-from   bb.fetch import FetchError
+from   bb.fetch2 import Fetch
+from   bb.fetch2 import FetchError
 
 
 __pattern__ = re.compile(r'''
diff --git a/bitbake/lib/bb/fetch2/svk.py b/bitbake/lib/bb/fetch2/svk.py
index 595a9da..7990ff2 100644
--- a/bitbake/lib/bb/fetch2/svk.py
+++ b/bitbake/lib/bb/fetch2/svk.py
@@ -29,10 +29,10 @@ import os
 import logging
 import bb
 from   bb import data
-from   bb.fetch import Fetch
-from   bb.fetch import FetchError
-from   bb.fetch import MissingParameterError
-from   bb.fetch import logger
+from   bb.fetch2 import Fetch
+from   bb.fetch2 import FetchError
+from   bb.fetch2 import MissingParameterError
+from   bb.fetch2 import logger
 
 class Svk(Fetch):
     """Class to fetch a module or modules from svk repositories"""
diff --git a/bitbake/lib/bb/fetch2/svn.py b/bitbake/lib/bb/fetch2/svn.py
index 8f053ab..3315b15 100644
--- a/bitbake/lib/bb/fetch2/svn.py
+++ b/bitbake/lib/bb/fetch2/svn.py
@@ -28,11 +28,11 @@ import sys
 import logging
 import bb
 from   bb import data
-from   bb.fetch import Fetch
-from   bb.fetch import FetchError
-from   bb.fetch import MissingParameterError
-from   bb.fetch import runfetchcmd
-from   bb.fetch import logger
+from   bb.fetch2 import Fetch
+from   bb.fetch2 import FetchError
+from   bb.fetch2 import MissingParameterError
+from   bb.fetch2 import runfetchcmd
+from   bb.fetch2 import logger
 
 class Svn(Fetch):
     """Class to fetch a module or modules from svn repositories"""
diff --git a/bitbake/lib/bb/fetch2/wget.py b/bitbake/lib/bb/fetch2/wget.py
index 4d4bdfd..cf36cca 100644
--- a/bitbake/lib/bb/fetch2/wget.py
+++ b/bitbake/lib/bb/fetch2/wget.py
@@ -30,7 +30,7 @@ import logging
 import bb
 import urllib
 from   bb import data
-from   bb.fetch import Fetch, FetchError, encodeurl, decodeurl, logger, runfetchcmd
+from   bb.fetch2 import Fetch, FetchError, encodeurl, decodeurl, logger, runfetchcmd
 
 class Wget(Fetch):
     """Class to fetch urls via 'wget'"""
-- 
1.7.0.4


