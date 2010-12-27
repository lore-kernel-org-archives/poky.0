Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3E03E4C810A8
	for <poky@yoctoproject.org>; Mon, 27 Dec 2010 07:50:28 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 Dec 2010 05:50:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,234,1291622400"; d="scan'208";a="640752556"
Received: from unknown (HELO localhost) ([10.238.153.102])
	by fmsmga002.fm.intel.com with ESMTP; 27 Dec 2010 05:50:27 -0800
Message-Id: <5a8e3594c349e232fd5f5c95dff884e09f3b02dd.1293457442.git.ke.yu@intel.com>
In-Reply-To: <cover.1293457442.git.ke.yu@intel.com>
References: <cover.1293457442.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Sun, 26 Dec 2010 10:35:14 +0800
Date: Mon, 27 Dec 2010 21:57:04 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/8] Fetch: fix support-srcrev typo
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
X-List-Received-Date: Mon, 27 Dec 2010 13:50:28 -0000

Fix the typo of suppports_srcrev -> supports_srcrev.
no functional change, just make spell correct

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch/__init__.py |    6 +++---
 bitbake/lib/bb/fetch/bzr.py      |    2 +-
 bitbake/lib/bb/fetch/git.py      |    2 +-
 bitbake/lib/bb/fetch/hg.py       |    2 +-
 bitbake/lib/bb/fetch/repo.py     |    2 +-
 bitbake/lib/bb/fetch/svn.py      |    2 +-
 6 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/bitbake/lib/bb/fetch/__init__.py b/bitbake/lib/bb/fetch/__init__.py
index 364bdff..d4a5fa3 100644
--- a/bitbake/lib/bb/fetch/__init__.py
+++ b/bitbake/lib/bb/fetch/__init__.py
@@ -388,11 +388,11 @@ def get_srcrev(d):
 
     scms = []
 
-    # Only call setup_localpath on URIs which suppports_srcrev()
+    # Only call setup_localpath on URIs which supports_srcrev()
     urldata = init(bb.data.getVar('SRC_URI', d, 1).split(), d, False)
     for u in urldata:
         ud = urldata[u]
-        if ud.method.suppports_srcrev():
+        if ud.method.supports_srcrev():
             if not ud.setup:
                 ud.setup_localpath(d)
             scms.append(u)
@@ -625,7 +625,7 @@ class Fetch(object):
         """
         return False
 
-    def suppports_srcrev(self):
+    def supports_srcrev(self):
         """
         The fetcher supports auto source revisions (SRCREV)
         """
diff --git a/bitbake/lib/bb/fetch/bzr.py b/bitbake/lib/bb/fetch/bzr.py
index 813d7d8..2f73adf 100644
--- a/bitbake/lib/bb/fetch/bzr.py
+++ b/bitbake/lib/bb/fetch/bzr.py
@@ -117,7 +117,7 @@ class Bzr(Fetch):
                 pass
             raise t, v, tb
 
-    def suppports_srcrev(self):
+    def supports_srcrev(self):
         return True
 
     def _revision_key(self, url, ud, d):
diff --git a/bitbake/lib/bb/fetch/git.py b/bitbake/lib/bb/fetch/git.py
index 9bd447f..a8ec104 100644
--- a/bitbake/lib/bb/fetch/git.py
+++ b/bitbake/lib/bb/fetch/git.py
@@ -191,7 +191,7 @@ class Git(Fetch):
         os.chdir(ud.clonedir)
         bb.utils.prunedir(codir)
 
-    def suppports_srcrev(self):
+    def supports_srcrev(self):
         return True
 
     def _contains_ref(self, tag, d):
diff --git a/bitbake/lib/bb/fetch/hg.py b/bitbake/lib/bb/fetch/hg.py
index efb3b5c..6dd75cb 100644
--- a/bitbake/lib/bb/fetch/hg.py
+++ b/bitbake/lib/bb/fetch/hg.py
@@ -152,7 +152,7 @@ class Hg(Fetch):
                 pass
             raise t, v, tb
 
-    def suppports_srcrev(self):
+    def supports_srcrev(self):
         return True
 
     def _latest_revision(self, url, ud, d):
diff --git a/bitbake/lib/bb/fetch/repo.py b/bitbake/lib/bb/fetch/repo.py
index 883310b..e76fadf 100644
--- a/bitbake/lib/bb/fetch/repo.py
+++ b/bitbake/lib/bb/fetch/repo.py
@@ -95,7 +95,7 @@ class Repo(Fetch):
         # Create a cache
         runfetchcmd("tar --exclude=.repo --exclude=.git -czf %s %s" % (ud.localpath, os.path.join(".", "*") ), d)
 
-    def suppports_srcrev(self):
+    def supports_srcrev(self):
         return False
 
     def _build_revision(self, url, ud, d):
diff --git a/bitbake/lib/bb/fetch/svn.py b/bitbake/lib/bb/fetch/svn.py
index 375e8df..42058f5 100644
--- a/bitbake/lib/bb/fetch/svn.py
+++ b/bitbake/lib/bb/fetch/svn.py
@@ -166,7 +166,7 @@ class Svn(Fetch):
                 pass
             raise t, v, tb
 
-    def suppports_srcrev(self):
+    def supports_srcrev(self):
         return True
 
     def _revision_key(self, url, ud, d):
-- 
1.7.0.4


