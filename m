Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2F2E44C8006D
	for <poky@yoctoproject.org>; Thu, 10 Feb 2011 13:17:06 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Feb 2011 11:17:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,451,1291622400"; d="scan'208";a="656487562"
Received: from unknown (HELO localhost) ([10.255.14.122])
	by fmsmga002.fm.intel.com with ESMTP; 10 Feb 2011 11:17:05 -0800
Message-Id: <205506ae48a8e2a6c23a9f21d70316e6f2381db7.1297365140.git.sgw@linux.intel.com>
In-Reply-To: <cover.1297365140.git.sgw@linux.intel.com>
References: <cover.1297365140.git.sgw@linux.intel.com>
Old-Date: Wed, 9 Feb 2011 14:30:29 -0800
Date: Thu, 10 Feb 2011 11:17:05 -0800
To: poky@yoctoproject.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 1/1] fetch2: Correct the clean() mechanism for the fetcher2 code
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
X-List-Received-Date: Thu, 10 Feb 2011 19:17:06 -0000

From: Saul Wold <sgw@linux.intel.com>

This create a clean() method in each of the fetcher modules
and correctly cleans the .done stamp file and lock files

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 bitbake/lib/bb/fetch2/__init__.py |   34 ++++++++++++++++++++++++++++++++++
 bitbake/lib/bb/fetch2/cvs.py      |   12 ++++++++++++
 bitbake/lib/bb/fetch2/git.py      |    6 ++++++
 bitbake/lib/bb/fetch2/local.py    |    4 ++++
 bitbake/lib/bb/fetch2/svn.py      |    7 +++++++
 meta/classes/base.bbclass         |   24 +++++++++---------------
 6 files changed, 72 insertions(+), 15 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index ef9d75f..1ec4271 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -491,6 +491,7 @@ class FetchData(object):
     """
     def __init__(self, url, d):
         # localpath is the location of a downloaded result. If not set, the file is local.
+        self.donestamp = None
         self.localfile = ""
         self.localpath = None
         self.lockfile = None
@@ -717,6 +718,12 @@ class FetchMethod(object):
 
         return
 
+    def clean(self, urldata, d):
+       """
+       Clean any existing full or partial download
+       """
+       bb.utils.remove(urldata.localpath)
+
     def try_premirror(self, url, urldata, d):
         """
         Should premirrors be used?
@@ -958,6 +965,33 @@ class Fetch(object):
             if ud.lockfile:
                 bb.utils.unlockfile(lf)
 
+    def clean(self, urls = []):
+        """
+        Clean files that the fetcher gets or places
+        """
+
+        if len(urls) == 0:
+            urls = self.urls
+
+        for url in urls:
+            if url not in self.ud:
+                self.ud[url] = FetchData(url, d)
+            ud = self.ud[url]
+            ud.setup_localpath(self.d)
+
+            if not ud.localfile or self.localpath is None:
+                continue
+
+            if ud.lockfile:
+                lf = bb.utils.lockfile(ud.lockfile)
+
+            ud.method.clean(ud, self.d)
+            if ud.donestamp:
+                bb.utils.remove(ud.donestamp)
+
+            if ud.lockfile:
+                bb.utils.unlockfile(lf)
+
 from . import cvs
 from . import git
 from . import local
diff --git a/bitbake/lib/bb/fetch2/cvs.py b/bitbake/lib/bb/fetch2/cvs.py
index 3cd28b1..ae03daf 100644
--- a/bitbake/lib/bb/fetch2/cvs.py
+++ b/bitbake/lib/bb/fetch2/cvs.py
@@ -167,3 +167,15 @@ class Cvs(FetchMethod):
 
         runfetchcmd(cmd, d, cleanup = [ud.localpath])
 
+    def clean(self, ud, d):
+        """ Clean CVS Files and tarballs """
+        
+        pkg = data.expand('${PN}', d)
+        localdata = data.createCopy(d)
+        data.setVar('OVERRIDES', "cvs:%s" % data.getVar('OVERRIDES', localdata), localdata)
+        data.update_data(localdata)
+        pkgdir = os.path.join(data.expand('${CVSDIR}', localdata), pkg)
+
+        bb.utils.remove(pkgdir, True)
+        bb.utils.remove(ud.localpath)
+
diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index 6d99406..6d82bdc 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -172,6 +172,12 @@ class Git(FetchMethod):
             runfetchcmd("%s checkout-index -q -f -a" % ud.basecmd, d)
         return True
 
+    def clean(self, ud, d):
+        """ clean the git directory """
+
+        bb.utils.remove(ud.localpath, True)
+        bb.utils.remove(ud.fullmirror)
+
     def supports_srcrev(self):
         return True
 
diff --git a/bitbake/lib/bb/fetch2/local.py b/bitbake/lib/bb/fetch2/local.py
index d77d393..77a296e 100644
--- a/bitbake/lib/bb/fetch2/local.py
+++ b/bitbake/lib/bb/fetch2/local.py
@@ -74,3 +74,7 @@ class Local(FetchMethod):
         if os.path.exists(urldata.localpath):
             return True
         return False
+
+    def clean(self, urldata, d):
+        return
+
diff --git a/bitbake/lib/bb/fetch2/svn.py b/bitbake/lib/bb/fetch2/svn.py
index 4ab643b..d05dc02 100644
--- a/bitbake/lib/bb/fetch2/svn.py
+++ b/bitbake/lib/bb/fetch2/svn.py
@@ -138,6 +138,13 @@ class Svn(FetchMethod):
         # tar them up to a defined filename
         runfetchcmd("tar %s -czf %s %s" % (tar_flags, ud.localpath, ud.module), d, cleanup = [ud.localpath])
 
+    def clean(self, ud, d):
+        """ Clean SVN specific files and dirs """
+
+        bb.utils.remove(ud.localpath)
+        bb.utils.remove(ud.moddir, True)
+        
+
     def supports_srcrev(self):
         return True
 
diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass
index edb65eb..e4ea69d 100644
--- a/meta/classes/base.bbclass
+++ b/meta/classes/base.bbclass
@@ -464,24 +464,18 @@ addtask cleanall after do_clean
 python do_cleanall() {
         sstate_clean_cachefiles(d)
 
+        src_uri = (bb.data.getVar('SRC_URI', d, True) or "").split()
+        if len(src_uri) == 0:
+            return
+
 	localdata = bb.data.createCopy(d)
 	bb.data.update_data(localdata)
 
-	dl_dir = bb.data.getVar('DL_DIR', localdata, True)
-	dl_dir = os.path.realpath(dl_dir)
-
-	src_uri = (bb.data.getVar('SRC_URI', localdata, True) or "").split()
-	if len(src_uri) == 0:
-		return
-        fetcher = bb.fetch2.Fetch(src_uri, localdata)
-	for url in src_uri:
-                local = fetcher.localpath(url)
-		if local is None:
-			continue
-		local = os.path.realpath(local)
-                if local.startswith(dl_dir):
-			bb.note("Removing %s*" % local)
-			oe.path.remove(local + "*")
+        try:
+            fetcher = bb.fetch2.Fetch(src_uri, localdata)
+            fetcher.clean()
+        except bb.fetch2.BBFetchException, e:
+            raise bb.build.FuncFailed(e)
 }
 do_cleanall[nostamp] = "1"
 
-- 
1.7.1


