Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 13BE84C811EB
	for <poky@yoctoproject.org>; Sun,  9 Jan 2011 05:41:07 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 Jan 2011 03:41:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,295,1291622400"; d="scan'208";a="372023231"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by azsmga001.ch.intel.com with ESMTP; 09 Jan 2011 03:41:05 -0800
Message-Id: <66bd772c15c2c436885ea6badf1678c52515a75a.1294571866.git.ke.yu@intel.com>
In-Reply-To: <cover.1294571866.git.ke.yu@intel.com>
References: <cover.1294571866.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Mon, 27 Dec 2010 09:31:38 +0800
Date: Sun, 09 Jan 2011 19:50:17 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 7/8] Fetcher: break the "SRCREVINACTION" deadlock
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
X-List-Received-Date: Sun, 09 Jan 2011 11:41:07 -0000

Current fetcher has annoying "SRCREVINACTION" deadlock,
which occurs when SRCREV=${AUTOREV}=@bb.fetch.get_srcrev():
get_srcrev()->setup_localpath()->srcrev_internal_helper()
->evaluate SRCREV->get_srcrev()

current fetcher resolve the deadlock by introducing a
"SRCREVINACTION" condition check. Althoguh it works, it is
indeed not clean.

This patch use antoehr idea to break the deadlock: break
the dependency among SRCREV and get_srcrev(), i.e. assign
a specific keyword "AUTOINC" to AUTOREV. when Fetcher meet
this keyword, it will check and set the latest revision to
urldata.revision. get_srcrev later can use the urldata.revision
for value evaluation(SRCPV etc). In this case, SRCREV no longer
depends on get_srcrev, and there is not deadlock anymore.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch/__init__.py  |    3 +++
 bitbake/lib/bb/fetch2/__init__.py |   34 ++++++++++------------------------
 bitbake/lib/bb/fetch2/bzr.py      |    6 ------
 bitbake/lib/bb/fetch2/git.py      |    8 +-------
 bitbake/lib/bb/fetch2/hg.py       |   10 ++--------
 bitbake/lib/bb/fetch2/svn.py      |   10 ++--------
 meta/conf/bitbake.conf            |    2 +-
 7 files changed, 19 insertions(+), 54 deletions(-)

diff --git a/bitbake/lib/bb/fetch/__init__.py b/bitbake/lib/bb/fetch/__init__.py
index 67e5add..4bd3888 100644
--- a/bitbake/lib/bb/fetch/__init__.py
+++ b/bitbake/lib/bb/fetch/__init__.py
@@ -357,6 +357,9 @@ def localpaths(d):
 
 srcrev_internal_call = False
 
+def get_autorev(d):
+    return get_srcrev(d)
+
 def get_srcrev(d):
     """
     Return the version string for the current package
diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 52c8d97..44189ee 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -355,7 +355,8 @@ def localpaths(d):
 
     return local
 
-srcrev_internal_call = False
+def get_autorev(d):
+    return "AUTOINC"
 
 def get_srcrev(d):
     """
@@ -366,18 +367,6 @@ def get_srcrev(d):
     have been set.
     """
 
-    #
-    # Ugly code alert. localpath in the fetchers will try to evaluate SRCREV which
-    # could translate into a call to here. If it does, we need to catch this
-    # and provide some way so it knows get_srcrev is active instead of being
-    # some number etc. hence the srcrev_internal_call tracking and the magic
-    # "SRCREVINACTION" return value.
-    #
-    # Neater solutions welcome!
-    #
-    if bb.fetch2.srcrev_internal_call:
-        return "SRCREVINACTION"
-
     scms = []
 
     # Only call setup_localpath on URIs which supports_srcrev()
@@ -545,6 +534,8 @@ class FetchData(object):
                 self.method = m
                 if hasattr(m,"urldata_init"):
                     m.urldata_init(self, d)
+                if m.supports_srcrev():
+                    self.revision = Fetch.srcrev_internal_helper(self, d);
                 return
         raise NoMethodError("Missing implementation for url %s" % url)
 
@@ -569,11 +560,7 @@ class FetchData(object):
                             local = ""
                 self.localpath = local
             if not local:
-                try:
-                    bb.fetch2.srcrev_internal_call = True
-                    self.localpath = self.method.localpath(self.url, self, d)
-                finally:
-                    bb.fetch2.srcrev_internal_call = False
+                self.localpath = self.method.localpath(self.url, self, d)
                 # We have to clear data's internal caches since the cached value of SRCREV is now wrong.
                 # Horrible...
                 bb.data.delVar("ISHOULDNEVEREXIST", d)
@@ -679,8 +666,8 @@ class Fetch(object):
         """
         Return:
             a) a source revision if specified
-            b) True if auto srcrev is in action
-            c) False otherwise
+            b) latest revision if SREREV="AUTOINC"
+            c) None if not specified
         """
 
         if 'rev' in ud.parm:
@@ -701,10 +688,9 @@ class Fetch(object):
             rev = data.getVar("SRCREV", d, 1)
         if rev == "INVALID":
             raise InvalidSRCREV("Please set SRCREV to a valid value")
-        if not rev:
-            return False
-        if rev is "SRCREVINACTION":
-            return True
+        if rev == "AUTOINC":
+            rev = ud.method.latest_revision(ud.url, ud, d)
+
         return rev
 
     srcrev_internal_helper = staticmethod(srcrev_internal_helper)
diff --git a/bitbake/lib/bb/fetch2/bzr.py b/bitbake/lib/bb/fetch2/bzr.py
index 1368f17..97b042b 100644
--- a/bitbake/lib/bb/fetch2/bzr.py
+++ b/bitbake/lib/bb/fetch2/bzr.py
@@ -43,12 +43,6 @@ class Bzr(Fetch):
         ud.pkgdir = os.path.join(data.expand('${BZRDIR}', d), ud.host, relpath)
 
     def localpath (self, url, ud, d):
-        revision = Fetch.srcrev_internal_helper(ud, d)
-        if revision is True:
-            ud.revision = self.latest_revision(url, ud, d)
-        elif revision:
-            ud.revision = revision
-
         if not ud.revision:
             ud.revision = self.latest_revision(url, ud, d)
 
diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index 58ed1f4..c621457 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -62,13 +62,7 @@ class Git(Fetch):
         ud.basecmd = data.getVar("FETCHCMD_git", d, True) or "git"
 
     def localpath(self, url, ud, d):
-
-        tag = Fetch.srcrev_internal_helper(ud, d)
-        if tag is True:
-            ud.tag = self.latest_revision(url, ud, d)
-        elif tag:
-            ud.tag = tag
-
+        ud.tag = ud.revision
         if not ud.tag or ud.tag == "master":
             ud.tag = self.latest_revision(url, ud, d)
 
diff --git a/bitbake/lib/bb/fetch2/hg.py b/bitbake/lib/bb/fetch2/hg.py
index 80a1551..0ba8433 100644
--- a/bitbake/lib/bb/fetch2/hg.py
+++ b/bitbake/lib/bb/fetch2/hg.py
@@ -64,14 +64,8 @@ class Hg(Fetch):
     def localpath(self, url, ud, d):
         if 'rev' in ud.parm:
             ud.revision = ud.parm['rev']
-        else:
-            tag = Fetch.srcrev_internal_helper(ud, d)
-            if tag is True:
-                ud.revision = self.latest_revision(url, ud, d)
-            elif tag:
-                ud.revision = tag
-            else:
-                ud.revision = self.latest_revision(url, ud, d)
+        elif not ud.revision:
+            ud.revision = self.latest_revision(url, ud, d)
 
         ud.localfile = data.expand('%s_%s_%s_%s.tar.gz' % (ud.module.replace('/', '.'), ud.host, ud.path.replace('/', '.'), ud.revision), d)
 
diff --git a/bitbake/lib/bb/fetch2/svn.py b/bitbake/lib/bb/fetch2/svn.py
index c0a7a54..1116795 100644
--- a/bitbake/lib/bb/fetch2/svn.py
+++ b/bitbake/lib/bb/fetch2/svn.py
@@ -73,15 +73,9 @@ class Svn(Fetch):
             if "DATE" in pv:
                 ud.revision = ""
             else:
-                rev = Fetch.srcrev_internal_helper(ud, d)
-                if rev is True:
-                    ud.revision = self.latest_revision(url, ud, d)
+                # use the initizlied revision
+                if ud.revision:
                     ud.date = ""
-                elif rev:
-                    ud.revision = rev
-                    ud.date = ""
-                else:
-                    ud.revision = ""
 
         ud.localfile = data.expand('%s_%s_%s_%s_%s.tar.gz' % (ud.module.replace('/', '.'), ud.host, ud.path.replace('/', '.'), ud.revision, ud.date), d)
 
diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
index 794adc4..e994438 100644
--- a/meta/conf/bitbake.conf
+++ b/meta/conf/bitbake.conf
@@ -536,7 +536,7 @@ UPDATECOMMAND_cvs = "/usr/bin/env cvs -d${CVSROOT} update -d -P ${CVSCOOPTS}"
 UPDATECOMMAND_svn = "/usr/bin/env svn update ${SVNCOOPTS}"
 SRCDATE = "${DATE}"
 SRCREV = "INVALID"
-AUTOREV = "${SRCPV}"
+AUTOREV = "${@bb.fetcher.instance.get_autorev(d)}"
 SRCPV = "${@bb.fetcher.instance.get_srcrev(d)}"
 
 SRC_URI = "file://${FILE}"
-- 
1.7.0.4


