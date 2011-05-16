Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 96F174C808DE
	for <poky@yoctoproject.org>; Sun, 15 May 2011 20:10:27 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 May 2011 18:10:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,371,1301900400"; d="scan'208";a="436553864"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.187])
	by azsmga001.ch.intel.com with ESMTP; 15 May 2011 18:10:26 -0700
Message-Id: <95d6b08eb7982baacb334d6d774a204670b1ca1c.1305508488.git.ke.yu@intel.com>
In-Reply-To: <cover.1305508488.git.ke.yu@intel.com>
References: <cover.1305508488.git.ke.yu@intel.com>
Old-Date: Sun, 15 May 2011 22:33:30 +0800
Date: Mon, 16 May 2011  9:16:09 +0800
To: poky@yoctoproject.org
CC: 
From: Yu Ke <ke.yu@intel.com>
Subject: [PATCH 1/1] git fetcher: add support for rebaseable git repo
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
X-List-Received-Date: Mon, 16 May 2011 01:10:27 -0000

From: Yu Ke <ke.yu@intel.com>

Some upstream git repo may rebase in the future, which means current
revision may disappear from the upstream repo after the rebase.

current git fetcher can not handle this case, because the git mirror
tar ball is per repo, and may also change in the rebase and lost the
current revision info.

To fix this issue, this patch
- add rebaseable tag in the SRC_URI
- for rebaseable repo, make git mirror tar ball per revision, in this
  case, even upstream rebase, the git mirror still has the current
  revision info.
- for rebaseable repo, generate mirror tar ball by default, since the
  repo may change in the future.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/git.py |   28 ++++++++++++++++++++--------
 1 files changed, 20 insertions(+), 8 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index 811acbf..82721c6 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -57,6 +57,11 @@ class Git(FetchMethod):
         if 'nocheckout' in ud.parm:
             ud.nocheckout = True
 
+        # rebaseable means the upstream git repo may rebase in the future,
+        # and current revision may disappear from upstream repo
+        # rebaseable is false by default. set rebaseable=1 in SRC_URI if rebaseable.
+        ud.rebaseable = ud.parm.get("rebaseable","0") == "1"
+
         branches = ud.parm.get("branch", "master").split(',')
         if len(branches) != len(ud.names):
             raise bb.fetch2.ParameterError("The number of name and branch parameters is not balanced", ud.url)
@@ -65,16 +70,9 @@ class Git(FetchMethod):
             branch = branches[ud.names.index(name)]
             ud.branches[name] = branch
 
-        gitsrcname = '%s%s' % (ud.host, ud.path.replace('/', '.'))
-        ud.mirrortarball = 'git2_%s.tar.gz' % (gitsrcname)
-        ud.fullmirror = os.path.join(data.getVar("DL_DIR", d, True), ud.mirrortarball)
-        ud.clonedir = os.path.join(data.expand('${GITDIR}', d), gitsrcname)
-
         ud.basecmd = data.getVar("FETCHCMD_git", d, True) or "git"
 
-        ud.write_tarballs = (data.getVar("BB_GENERATE_MIRROR_TARBALLS", d, True) or "0") != "0"
-
-        ud.localfile = ud.clonedir
+        ud.write_tarballs = ((data.getVar("BB_GENERATE_MIRROR_TARBALLS", d, True) or "0") != "0") or ud.rebaseable
 
         ud.setup_revisons(d)
 
@@ -84,6 +82,20 @@ class Git(FetchMethod):
                 ud.branches[name] = ud.revisions[name]
                 ud.revisions[name] = self.latest_revision(ud.url, ud, d, name)
 
+        gitsrcname = '%s%s' % (ud.host, ud.path.replace('/', '.'))
+        # for rebaseable git repo, it is necessary to keep mirror tar ball
+        # per revision, so that even the revision disappears from the
+        # upstream repo in the future, the mirror will remain intact and still
+        # contains the revision
+        if ud.rebaseable:
+            for name in ud.names:
+                gitsrcname = gitsrcname + '_' + ud.revisions[name]
+        ud.mirrortarball = 'git2_%s.tar.gz' % (gitsrcname)
+        ud.fullmirror = os.path.join(data.getVar("DL_DIR", d, True), ud.mirrortarball)
+        ud.clonedir = os.path.join(data.expand('${GITDIR}', d), gitsrcname)
+
+        ud.localfile = ud.clonedir
+
     def localpath(self, url, ud, d):
         return ud.clonedir
 
-- 
1.7.0.4


