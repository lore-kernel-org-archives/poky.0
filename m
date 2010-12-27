Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id BA6034C81122
	for <poky@yoctoproject.org>; Mon, 27 Dec 2010 07:51:37 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 27 Dec 2010 05:51:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,234,1291622400"; d="scan'208";a="872175167"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 27 Dec 2010 05:51:36 -0800
Message-Id: <0222a4a459b310da4e6ae4737a1639a4b5bf128d.1293457442.git.ke.yu@intel.com>
In-Reply-To: <cover.1293457442.git.ke.yu@intel.com>
References: <cover.1293457442.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Mon, 27 Dec 2010 09:31:38 +0800
Date: Mon, 27 Dec 2010 21:58:13 +0800
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
X-List-Received-Date: Mon, 27 Dec 2010 13:51:38 -0000

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

In implementation side, several things are done:
a) set the revision in FetchData:__init__, so that
   urldata.revision is ready when get_srcrev() need it
b) init fetch method specific data in Fetch:supports, so that
   Fetch.latest_revision() can be conducted when FetchData:
   __init__ need it to achieve a)

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch/__init__.py |   43 ++++++++++++-------------------------
 bitbake/lib/bb/fetch/bzr.py      |    6 -----
 bitbake/lib/bb/fetch/git.py      |    8 +------
 bitbake/lib/bb/fetch/hg.py       |   10 +-------
 bitbake/lib/bb/fetch/svn.py      |   10 +-------
 meta/conf/bitbake.conf           |    2 +-
 6 files changed, 20 insertions(+), 59 deletions(-)

diff --git a/bitbake/lib/bb/fetch/__init__.py b/bitbake/lib/bb/fetch/__init__.py
index d4a5fa3..c710931 100644
--- a/bitbake/lib/bb/fetch/__init__.py
+++ b/bitbake/lib/bb/fetch/__init__.py
@@ -363,8 +363,6 @@ def localpaths(d):
 
     return local
 
-srcrev_internal_call = False
-
 def get_srcrev(d):
     """
     Return the version string for the current package
@@ -374,18 +372,6 @@ def get_srcrev(d):
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
-    if bb.fetch.srcrev_internal_call:
-        return "SRCREVINACTION"
-
     scms = []
 
     # Only call setup_localpath on URIs which supports_srcrev()
@@ -548,11 +534,16 @@ class FetchData(object):
         self.md5_expected = bb.data.getVarFlag("SRC_URI", self.md5_name, d)
         self.sha256_expected = bb.data.getVarFlag("SRC_URI", self.sha256_name, d)
 
+        self.method = None
         for m in methods:
             if m.supports(url, self, d):
                 self.method = m
-                return
-        raise NoMethodError("Missing implementation for url %s" % url)
+                break
+        if not self.method:
+            raise NoMethodError("Missing implementation for url %s" % url)
+
+        if self.method.supports_srcrev():
+            self.revision = Fetch.srcrev_internal_helper(self, d);
 
     def setup_localpath(self, d):
         self.setup = True
@@ -575,11 +566,7 @@ class FetchData(object):
                             local = ""
                 self.localpath = local
             if not local:
-                try:
-                    bb.fetch.srcrev_internal_call = True
-                    self.localpath = self.method.localpath(self.url, self, d)
-                finally:
-                    bb.fetch.srcrev_internal_call = False
+                self.localpath = self.method.localpath(self.url, self, d)
                 # We have to clear data's internal caches since the cached value of SRCREV is now wrong.
                 # Horrible...
                 bb.data.delVar("ISHOULDNEVEREXIST", d)
@@ -678,17 +665,16 @@ class Fetch(object):
         """
         Return:
             a) a source revision if specified
-            b) True if auto srcrev is in action
-            c) False otherwise
+            b) latest revision if SREREV="AUTOINC"
+            c) "" if not specified
         """
-
         if 'rev' in ud.parm:
             return ud.parm['rev']
 
         if 'tag' in ud.parm:
             return ud.parm['tag']
 
-        rev = None
+        rev = ""
         if 'name' in ud.parm:
             pn = data.getVar("PN", d, 1)
             rev = data.getVar("SRCREV_%s_pn-%s" % (ud.parm['name'], pn), d, 1)
@@ -700,10 +686,9 @@ class Fetch(object):
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
diff --git a/bitbake/lib/bb/fetch/bzr.py b/bitbake/lib/bb/fetch/bzr.py
index b29bbce..1573116 100644
--- a/bitbake/lib/bb/fetch/bzr.py
+++ b/bitbake/lib/bb/fetch/bzr.py
@@ -52,12 +52,6 @@ class Bzr(Fetch):
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
 
diff --git a/bitbake/lib/bb/fetch/git.py b/bitbake/lib/bb/fetch/git.py
index df582a3..6779afb 100644
--- a/bitbake/lib/bb/fetch/git.py
+++ b/bitbake/lib/bb/fetch/git.py
@@ -65,13 +65,7 @@ class Git(Fetch):
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
 
diff --git a/bitbake/lib/bb/fetch/hg.py b/bitbake/lib/bb/fetch/hg.py
index 85d640d..b2c1b0b 100644
--- a/bitbake/lib/bb/fetch/hg.py
+++ b/bitbake/lib/bb/fetch/hg.py
@@ -66,14 +66,8 @@ class Hg(Fetch):
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
 
diff --git a/bitbake/lib/bb/fetch/svn.py b/bitbake/lib/bb/fetch/svn.py
index 4e97a30..68b2b2c 100644
--- a/bitbake/lib/bb/fetch/svn.py
+++ b/bitbake/lib/bb/fetch/svn.py
@@ -79,15 +79,9 @@ class Svn(Fetch):
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
index c26beea..d1b3fdc 100644
--- a/meta/conf/bitbake.conf
+++ b/meta/conf/bitbake.conf
@@ -536,7 +536,7 @@ UPDATECOMMAND_cvs = "/usr/bin/env cvs -d${CVSROOT} update -d -P ${CVSCOOPTS}"
 UPDATECOMMAND_svn = "/usr/bin/env svn update ${SVNCOOPTS}"
 SRCDATE = "${DATE}"
 SRCREV = "INVALID"
-AUTOREV = "${SRCPV}"
+AUTOREV = "AUTOINC"
 SRCPV = "${@bb.fetch.get_srcrev(d)}"
 
 SRC_URI = "file://${FILE}"
-- 
1.7.0.4


