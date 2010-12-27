Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 27FF74C8110B
	for <poky@yoctoproject.org>; Mon, 27 Dec 2010 07:50:30 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 27 Dec 2010 05:50:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,234,1291622400"; d="scan'208";a="366898867"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by azsmga001.ch.intel.com with ESMTP; 27 Dec 2010 05:50:28 -0800
Message-Id: <c9580df3dfe41b22e6cee32ac7c228197fcecd01.1293457442.git.ke.yu@intel.com>
In-Reply-To: <cover.1293457442.git.ke.yu@intel.com>
References: <cover.1293457442.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Mon, 27 Dec 2010 09:50:25 +0800
Date: Mon, 27 Dec 2010 21:57:25 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/8] git.py: move git specific url data initialization earlier
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
X-List-Received-Date: Mon, 27 Dec 2010 13:50:30 -0000

move the url data init earlier, so that Git.latest_revision()
can work before Git.localpath()

This change allow FetchData:__init__ to set FetchData.revison by
Git.latest_revision()

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch/git.py |   19 ++++++++++++++-----
 1 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/bitbake/lib/bb/fetch/git.py b/bitbake/lib/bb/fetch/git.py
index a8ec104..df582a3 100644
--- a/bitbake/lib/bb/fetch/git.py
+++ b/bitbake/lib/bb/fetch/git.py
@@ -38,10 +38,17 @@ class Git(Fetch):
         """
         Check to see if a given url can be fetched with git.
         """
-        return ud.type in ['git']
-
-    def localpath(self, url, ud, d):
+        if ud.type in ['git']:
+            self.urldata_init(ud, d)
+            return True
+        else:
+            return False
 
+    def urldata_init(self, ud, d):
+        """
+        init git specific variable within url data
+        so that the git method like latest_revision() can work
+        """
         if 'protocol' in ud.parm:
             ud.proto = ud.parm['protocol']
         elif not ud.host:
@@ -55,6 +62,10 @@ class Git(Fetch):
         ud.mirrortarball = 'git_%s.tar.gz' % (gitsrcname)
         ud.clonedir = os.path.join(data.expand('${GITDIR}', d), gitsrcname)
 
+        ud.basecmd = data.getVar("FETCHCMD_git", d, True) or "git"
+
+    def localpath(self, url, ud, d):
+
         tag = Fetch.srcrev_internal_helper(ud, d)
         if tag is True:
             ud.tag = self.latest_revision(url, ud, d)
@@ -77,8 +88,6 @@ class Git(Fetch):
         else:
             ud.localfile = data.expand('git_%s%s_%s.tar.gz' % (ud.host, subdirpath.replace('/', '.'), ud.tag), d)
 
-        ud.basecmd = data.getVar("FETCHCMD_git", d, True) or "git"
-
         if 'noclone' in ud.parm:
             ud.localfile = None
             return None
-- 
1.7.0.4


