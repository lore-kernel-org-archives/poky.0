Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 151304C81199
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 08:29:03 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 24 Jan 2011 06:29:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,370,1291622400"; d="scan'208";a="880395460"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 24 Jan 2011 06:29:02 -0800
Message-Id: <237a286ea76f90b4d2da804daafb0adb0feea8a6.1295879038.git.ke.yu@intel.com>
In-Reply-To: <cover.1295879038.git.ke.yu@intel.com>
References: <cover.1295879038.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Tue, 18 Jan 2011 23:03:53 +0800
Date: Mon, 24 Jan 2011 22:32:48 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC PATCH 06/21] bb.fetch2: rename "go" with "download" to better reflect its functionality
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
X-List-Received-Date: Mon, 24 Jan 2011 14:29:03 -0000

no functional change

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/__init__.py |    8 ++++----
 bitbake/lib/bb/fetch2/bzr.py      |    2 +-
 bitbake/lib/bb/fetch2/cvs.py      |    2 +-
 bitbake/lib/bb/fetch2/git.py      |    6 +++---
 bitbake/lib/bb/fetch2/hg.py       |    2 +-
 bitbake/lib/bb/fetch2/local.py    |    2 +-
 bitbake/lib/bb/fetch2/osc.py      |    2 +-
 bitbake/lib/bb/fetch2/perforce.py |    2 +-
 bitbake/lib/bb/fetch2/repo.py     |    2 +-
 bitbake/lib/bb/fetch2/ssh.py      |    2 +-
 bitbake/lib/bb/fetch2/svk.py      |    2 +-
 bitbake/lib/bb/fetch2/svn.py      |    2 +-
 bitbake/lib/bb/fetch2/wget.py     |    4 ++--
 13 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 636178c..ca48e57 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -268,7 +268,7 @@ def subprocess_setup():
     # SIGPIPE errors are known issues with gzip/bash
     signal.signal(signal.SIGPIPE, signal.SIG_DFL)
 
-def go(d, urls = None):
+def download(d, urls = None):
     """
     Fetch all urls
     init must have previously been called
@@ -298,7 +298,7 @@ def go(d, urls = None):
         if m.forcefetch(u, ud, d) or not localpath:
             # Next try fetching from the original uri, u
             try:
-                m.go(u, ud, d)
+                m.download(u, ud, d)
                 localpath = ud.localpath
             except FetchError:
                 # Remove any incomplete file
@@ -504,7 +504,7 @@ def try_mirrors(d, uri, mirrors, check = False, force = False):
                     if found:
                         return found
                 else:
-                    ud.method.go(newuri, ud, ld)
+                    ud.method.download(newuri, ud, ld)
                     return ud.localpath
             except (bb.fetch2.MissingParameterError,
                     bb.fetch2.FetchError,
@@ -631,7 +631,7 @@ class Fetch(object):
         """
         return False
 
-    def go(self, url, urldata, d):
+    def download(self, url, urldata, d):
         """
         Fetch urls
         Assumes localpath was called first
diff --git a/bitbake/lib/bb/fetch2/bzr.py b/bitbake/lib/bb/fetch2/bzr.py
index 97b042b..608ecc7 100644
--- a/bitbake/lib/bb/fetch2/bzr.py
+++ b/bitbake/lib/bb/fetch2/bzr.py
@@ -79,7 +79,7 @@ class Bzr(Fetch):
 
         return bzrcmd
 
-    def go(self, loc, ud, d):
+    def download(self, loc, ud, d):
         """Fetch url"""
 
         if os.access(os.path.join(ud.pkgdir, os.path.basename(ud.pkgdir), '.bzr'), os.R_OK):
diff --git a/bitbake/lib/bb/fetch2/cvs.py b/bitbake/lib/bb/fetch2/cvs.py
index 1570cab..8e72090 100644
--- a/bitbake/lib/bb/fetch2/cvs.py
+++ b/bitbake/lib/bb/fetch2/cvs.py
@@ -72,7 +72,7 @@ class Cvs(Fetch):
             return True
         return False
 
-    def go(self, loc, ud, d):
+    def download(self, loc, ud, d):
 
         method = ud.parm.get('method', 'pserver')
         localdir = ud.parm.get('localdir', ud.module)
diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index e85f1da..c40a19c 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -107,7 +107,7 @@ class Git(Fetch):
 
         return True
 
-    def go(self, loc, ud, d):
+    def download(self, loc, ud, d):
         """Fetch url"""
 
         if ud.user:
@@ -320,7 +320,7 @@ class Git(Fetch):
 
         if not os.path.exists(ud.clonedir):
             print("no repo")
-            self.go(None, ud, d)
+            self.download(None, ud, d)
             if not os.path.exists(ud.clonedir):
                 logger.error("GIT repository for %s doesn't exist in %s, cannot get sortable buildnumber, using old value", url, ud.clonedir)
                 return None
@@ -328,7 +328,7 @@ class Git(Fetch):
 
         os.chdir(ud.clonedir)
         if not self._contains_ref(rev, d):
-            self.go(None, ud, d)
+            self.download(None, ud, d)
 
         output = runfetchcmd("%s rev-list %s -- 2> /dev/null | wc -l" % (ud.basecmd, rev), d, quiet=True)
         os.chdir(cwd)
diff --git a/bitbake/lib/bb/fetch2/hg.py b/bitbake/lib/bb/fetch2/hg.py
index 0ba8433..635ecbf 100644
--- a/bitbake/lib/bb/fetch2/hg.py
+++ b/bitbake/lib/bb/fetch2/hg.py
@@ -112,7 +112,7 @@ class Hg(Fetch):
 
         return cmd
 
-    def go(self, loc, ud, d):
+    def download(self, loc, ud, d):
         """Fetch url"""
 
         logger.debug(2, "Fetch: checking for module directory '" + ud.moddir + "'")
diff --git a/bitbake/lib/bb/fetch2/local.py b/bitbake/lib/bb/fetch2/local.py
index bcb30df..89fbdf6 100644
--- a/bitbake/lib/bb/fetch2/local.py
+++ b/bitbake/lib/bb/fetch2/local.py
@@ -56,7 +56,7 @@ class Local(Fetch):
         # We don't set localfile as for this fetcher the file is already local!
         return newpath
 
-    def go(self, url, urldata, d):
+    def download(self, url, urldata, d):
         """Fetch urls (no-op for Local method)"""
         # no need to fetch local files, we'll deal with them in place.
         return 1
diff --git a/bitbake/lib/bb/fetch2/osc.py b/bitbake/lib/bb/fetch2/osc.py
index 06ac5a9..619e2f1 100644
--- a/bitbake/lib/bb/fetch2/osc.py
+++ b/bitbake/lib/bb/fetch2/osc.py
@@ -79,7 +79,7 @@ class Osc(Fetch):
 
         return osccmd
 
-    def go(self, loc, ud, d):
+    def download(self, loc, ud, d):
         """
         Fetch url
         """
diff --git a/bitbake/lib/bb/fetch2/perforce.py b/bitbake/lib/bb/fetch2/perforce.py
index 18b2781..bda0bb8 100644
--- a/bitbake/lib/bb/fetch2/perforce.py
+++ b/bitbake/lib/bb/fetch2/perforce.py
@@ -121,7 +121,7 @@ class Perforce(Fetch):
 
         return os.path.join(data.getVar("DL_DIR", d, 1), ud.localfile)
 
-    def go(self, loc, ud, d):
+    def download(self, loc, ud, d):
         """
         Fetch urls
         """
diff --git a/bitbake/lib/bb/fetch2/repo.py b/bitbake/lib/bb/fetch2/repo.py
index 3330957..510ba46 100644
--- a/bitbake/lib/bb/fetch2/repo.py
+++ b/bitbake/lib/bb/fetch2/repo.py
@@ -55,7 +55,7 @@ class Repo(Fetch):
 
         return os.path.join(data.getVar("DL_DIR", d, True), ud.localfile)
 
-    def go(self, loc, ud, d):
+    def download(self, loc, ud, d):
         """Fetch url"""
 
         if os.access(os.path.join(data.getVar("DL_DIR", d, True), ud.localfile), os.R_OK):
diff --git a/bitbake/lib/bb/fetch2/ssh.py b/bitbake/lib/bb/fetch2/ssh.py
index 8b28322..78f55a6 100644
--- a/bitbake/lib/bb/fetch2/ssh.py
+++ b/bitbake/lib/bb/fetch2/ssh.py
@@ -74,7 +74,7 @@ class SSH(Fetch):
         lpath = os.path.join(data.getVar('DL_DIR', d, True), host, os.path.basename(path))
         return lpath
 
-    def go(self, url, urldata, d):
+    def download(self, url, urldata, d):
         dldir = data.getVar('DL_DIR', d, 1)
 
         m = __pattern__.match(url)
diff --git a/bitbake/lib/bb/fetch2/svk.py b/bitbake/lib/bb/fetch2/svk.py
index 7990ff2..3bb4c38 100644
--- a/bitbake/lib/bb/fetch2/svk.py
+++ b/bitbake/lib/bb/fetch2/svk.py
@@ -57,7 +57,7 @@ class Svk(Fetch):
     def forcefetch(self, url, ud, d):
         return ud.date == "now"
 
-    def go(self, loc, ud, d):
+    def download(self, loc, ud, d):
         """Fetch urls"""
 
         svkroot = ud.host + ud.path
diff --git a/bitbake/lib/bb/fetch2/svn.py b/bitbake/lib/bb/fetch2/svn.py
index 1116795..547c04f 100644
--- a/bitbake/lib/bb/fetch2/svn.py
+++ b/bitbake/lib/bb/fetch2/svn.py
@@ -128,7 +128,7 @@ class Svn(Fetch):
 
         return svncmd
 
-    def go(self, loc, ud, d):
+    def download(self, loc, ud, d):
         """Fetch url"""
 
         logger.debug(2, "Fetch: checking for module directory '" + ud.moddir + "'")
diff --git a/bitbake/lib/bb/fetch2/wget.py b/bitbake/lib/bb/fetch2/wget.py
index cf36cca..91cfafb 100644
--- a/bitbake/lib/bb/fetch2/wget.py
+++ b/bitbake/lib/bb/fetch2/wget.py
@@ -48,7 +48,7 @@ class Wget(Fetch):
 
         return os.path.join(data.getVar("DL_DIR", d, True), ud.localfile)
 
-    def go(self, uri, ud, d, checkonly = False):
+    def download(self, uri, ud, d, checkonly = False):
         """Fetch urls"""
 
         def fetch_uri(uri, ud, d):
@@ -90,4 +90,4 @@ class Wget(Fetch):
 
 
     def checkstatus(self, uri, ud, d):
-        return self.go(uri, ud, d, True)
+        return self.download(uri, ud, d, True)
-- 
1.7.0.4


