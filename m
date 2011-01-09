Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9C7024C8108C
	for <poky@yoctoproject.org>; Sun,  9 Jan 2011 05:41:00 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Jan 2011 03:41:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,295,1291622400"; d="scan'208";a="694997804"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 09 Jan 2011 03:40:59 -0800
Message-Id: <fa9f4edd6cad016e3974120231fe9dbce55d71ca.1294571866.git.ke.yu@intel.com>
In-Reply-To: <cover.1294571866.git.ke.yu@intel.com>
References: <cover.1294571866.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Mon, 27 Dec 2010 09:50:25 +0800
Date: Sun, 09 Jan 2011 19:50:11 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/8] bb.fetch2.git.py: add git urldata_init
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
X-List-Received-Date: Sun, 09 Jan 2011 11:41:00 -0000

move the git specific urldata init from localpath to urldata_init
so that it can be called early

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/git.py |   13 +++++++++----
 1 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index e8ad3b4..58ed1f4 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -41,8 +41,11 @@ class Git(Fetch):
         """
         return ud.type in ['git']
 
-    def localpath(self, url, ud, d):
-
+    def urldata_init(self, ud, d):
+        """
+        init git specific variable within url data
+        so that the git method like latest_revision() can work
+        """
         if 'protocol' in ud.parm:
             ud.proto = ud.parm['protocol']
         elif not ud.host:
@@ -56,6 +59,10 @@ class Git(Fetch):
         ud.mirrortarball = 'git_%s.tar.gz' % (gitsrcname)
         ud.clonedir = os.path.join(data.expand('${GITDIR}', d), gitsrcname)
 
+        ud.basecmd = data.getVar("FETCHCMD_git", d, True) or "git"
+
+    def localpath(self, url, ud, d):
+
         tag = Fetch.srcrev_internal_helper(ud, d)
         if tag is True:
             ud.tag = self.latest_revision(url, ud, d)
@@ -78,8 +85,6 @@ class Git(Fetch):
         else:
             ud.localfile = data.expand('git_%s%s_%s.tar.gz' % (ud.host, subdirpath.replace('/', '.'), ud.tag), d)
 
-        ud.basecmd = data.getVar("FETCHCMD_git", d, True) or "git"
-
         if 'noclone' in ud.parm:
             ud.localfile = None
             return None
-- 
1.7.0.4


