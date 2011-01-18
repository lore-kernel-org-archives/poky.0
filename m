Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 22A844C811F6
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 11:44:05 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 18 Jan 2011 09:44:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,339,1291622400"; d="scan'208";a="648294517"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga002.fm.intel.com with ESMTP; 18 Jan 2011 09:44:04 -0800
Message-Id: <201792e914e01a0c91736dd48c261f6b0ebcec83.1295371995.git.ke.yu@intel.com>
In-Reply-To: <cover.1295371995.git.ke.yu@intel.com>
References: <cover.1295371995.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Wed, 19 Jan 2011 00:58:42 +0800
Date: Wed, 19 Jan 2011  1:48:26 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 11/11] git.py: remove the source tree tar ball
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
X-List-Received-Date: Tue, 18 Jan 2011 17:44:05 -0000

we already create repo tar ball, so no need to create the source tree tar ball

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/git.py |   62 +++---------------------------------------
 1 files changed, 4 insertions(+), 58 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index bb62a87..7bfe178 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -61,24 +61,14 @@ class Git(Fetch):
         ud.clonedir = os.path.join(data.expand('${GITDIR}', d), gitsrcname)
 
         ud.basecmd = data.getVar("FETCHCMD_git", d, True) or "git"
+        ud.repochanged = False
 
     def localpath(self, url, ud, d):
         ud.tag = ud.revision
         if not ud.tag or ud.tag == "master":
             ud.tag = self.latest_revision(url, ud, d)
 
-        subdir = ud.parm.get("subpath", "")
-        if subdir != "":
-            if subdir.endswith("/"):
-                subdir = subdir[:-1]
-            subdirpath = os.path.join(ud.path, subdir);
-        else:
-            subdirpath = ud.path;
-
-        if 'fullclone' in ud.parm:
-            ud.localfile = ud.mirrortarball
-        else:
-            ud.localfile = data.expand('git_%s%s_%s.tar.gz' % (ud.host, subdirpath.replace('/', '.'), ud.tag), d)
+        ud.localfile = ud.mirrortarball
 
         if 'noclone' in ud.parm:
             ud.localfile = None
@@ -91,8 +81,6 @@ class Git(Fetch):
             return True
         if 'noclone' in ud.parm:
             return False
-        if os.path.exists(ud.localpath):
-            return False
         if not self._contains_ref(ud.tag, d):
             return True
         return False
@@ -139,60 +127,18 @@ class Git(Fetch):
             runfetchcmd("%s fetch --tags %s://%s%s%s" % (ud.basecmd, ud.proto, username, ud.host, ud.path), d)
             runfetchcmd("%s prune-packed" % ud.basecmd, d)
             runfetchcmd("%s pack-redundant --all | xargs -r rm" % ud.basecmd, d)
+            ud.repochanged = True
 
     def build_mirror_data(self, url, ud, d):
         # Generate a mirror tarball if needed
-        coname = '%s' % (ud.tag)
-        codir = os.path.join(ud.clonedir, coname)
         repofile = os.path.join(data.getVar("DL_DIR", d, 1), ud.mirrortarball)
 
         os.chdir(ud.clonedir)
         mirror_tarballs = data.getVar("BB_GENERATE_MIRROR_TARBALLS", d, True)
-        if mirror_tarballs != "0" or 'fullclone' in ud.parm:
+        if mirror_tarballs != "0" or 'fullclone' in ud.parm or ud.repochanged:
             logger.info("Creating tarball of git repository")
             runfetchcmd("tar -czf %s %s" % (repofile, os.path.join(".", ".git", "*") ), d)
 
-        if 'fullclone' in ud.parm:
-            return
-
-        if os.path.exists(codir):
-            bb.utils.prunedir(codir)
-
-        subdir = ud.parm.get("subpath", "")
-        if subdir != "":
-            if subdir.endswith("/"):
-                subdirbase = os.path.basename(subdir[:-1])
-            else:
-                subdirbase = os.path.basename(subdir)
-        else:
-            subdirbase = ""
-
-        if subdir != "":
-            readpathspec = ":%s" % (subdir)
-            codir = os.path.join(codir, "git")
-            coprefix = os.path.join(codir, subdirbase, "")
-        else:
-            readpathspec = ""
-            coprefix = os.path.join(codir, "git", "")
-
-        scmdata = ud.parm.get("scmdata", "")
-        if scmdata == "keep":
-            runfetchcmd("%s clone -n %s %s" % (ud.basecmd, ud.clonedir, coprefix), d)
-            os.chdir(coprefix)
-            runfetchcmd("%s checkout -q -f %s%s" % (ud.basecmd, ud.tag, readpathspec), d)
-        else:
-            bb.mkdirhier(codir)
-            os.chdir(ud.clonedir)
-            runfetchcmd("%s read-tree %s%s" % (ud.basecmd, ud.tag, readpathspec), d)
-            runfetchcmd("%s checkout-index -q -f --prefix=%s -a" % (ud.basecmd, coprefix), d)
-
-        os.chdir(codir)
-        logger.info("Creating tarball of git checkout")
-        runfetchcmd("tar -czf %s %s" % (ud.localpath, os.path.join(".", "*") ), d)
-
-        os.chdir(ud.clonedir)
-        bb.utils.prunedir(codir)
-
     def unpack(self, ud, destdir, d):
         """ unpack the downloaded src to destdir"""
         subdir = ud.parm.get("subpath", "")
-- 
1.7.0.4


