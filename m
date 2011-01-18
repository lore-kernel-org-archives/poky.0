Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A4FD94C81203
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 11:44:00 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Jan 2011 09:44:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,339,1291622400"; d="scan'208";a="698034956"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 18 Jan 2011 09:43:59 -0800
Message-Id: <3e50d234460dc33a96dfb857da6682f58db1a47b.1295371995.git.ke.yu@intel.com>
In-Reply-To: <cover.1295371995.git.ke.yu@intel.com>
References: <cover.1295371995.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Tue, 18 Jan 2011 23:35:30 +0800
Date: Wed, 19 Jan 2011  1:48:22 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 08/11] bb.fetch2.git: split download to download() + build_mirror_data()
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
X-List-Received-Date: Tue, 18 Jan 2011 17:44:00 -0000

As the name implies, the download is to fetch the source from URL, build_mirror_data is to create the mirror tar ball. the original go() method mix them together, it is more clean to split them.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/__init__.py |    4 ++++
 bitbake/lib/bb/fetch2/git.py      |    8 +++++---
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 8d0f907..3ff5b7b 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -299,6 +299,8 @@ def download(d, urls = None):
             # Next try fetching from the original uri, u
             try:
                 m.download(u, ud, d)
+                if hasattr(m, "build_mirror_data"):
+                    m.build_mirror_data(u, ud, d)
                 localpath = ud.localpath
             except FetchError:
                 # Remove any incomplete file
@@ -505,6 +507,8 @@ def try_mirrors(d, uri, mirrors, check = False, force = False):
                         return found
                 else:
                     ud.method.download(newuri, ud, ld)
+                    if hasattr(ud.method,"build_mirror_data"):
+                        ud.method.build_mirror_data(newuri, ud, ld)
                     return ud.localpath
             except (bb.fetch2.MissingParameterError,
                     bb.fetch2.FetchError,
diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index c40a19c..690bb08 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -118,9 +118,6 @@ class Git(Fetch):
         repofile = os.path.join(data.getVar("DL_DIR", d, 1), ud.mirrortarball)
 
 
-        coname = '%s' % (ud.tag)
-        codir = os.path.join(ud.clonedir, coname)
-
         # If we have no existing clone and no mirror tarball, try and obtain one
         if not os.path.exists(ud.clonedir) and not os.path.exists(repofile):
             try:
@@ -151,7 +148,12 @@ class Git(Fetch):
             runfetchcmd("%s prune-packed" % ud.basecmd, d)
             runfetchcmd("%s pack-redundant --all | xargs -r rm" % ud.basecmd, d)
 
+    def build_mirror_data(self, url, ud, d):
         # Generate a mirror tarball if needed
+        coname = '%s' % (ud.tag)
+        codir = os.path.join(ud.clonedir, coname)
+        repofile = os.path.join(data.getVar("DL_DIR", d, 1), ud.mirrortarball)
+
         os.chdir(ud.clonedir)
         mirror_tarballs = data.getVar("BB_GENERATE_MIRROR_TARBALLS", d, True)
         if mirror_tarballs != "0" or 'fullclone' in ud.parm:
-- 
1.7.0.4


