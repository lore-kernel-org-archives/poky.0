Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7C9E84C8110B
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 08:29:09 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 24 Jan 2011 06:29:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,370,1291622400"; d="scan'208";a="595906517"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 24 Jan 2011 06:29:08 -0800
Message-Id: <e79ca7eff7b264de69f86da1e53854da88fa44f6.1295879038.git.ke.yu@intel.com>
In-Reply-To: <cover.1295879038.git.ke.yu@intel.com>
References: <cover.1295879038.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Wed, 19 Jan 2011 00:22:13 +0800
Date: Mon, 24 Jan 2011 22:32:54 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC PATCH 10/21] bb.fetch2: add git unpack
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
X-List-Received-Date: Mon, 24 Jan 2011 14:29:09 -0000

git download will clone git repo to local, and git unpack just do a clone with referrence to the original repo

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/git.py |   16 ++++++++++++++++
 1 files changed, 16 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index 438756a..ca9d925 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -193,6 +193,22 @@ class Git(Fetch):
         os.chdir(ud.clonedir)
         bb.utils.prunedir(codir)
 
+    def unpack(self, ud, destdir, d):
+        """ unpack the downloaded src to destdir"""
+        subdir = ud.parm.get("subpath", "")
+        if subdir != "":
+            readpathspec = ":%s" % (subdir)
+        else:
+            readpathspec = ""
+
+		if 'fullclone' in ud.parm:
+			runfetchcmd("cp -pPR %s %s" % (os.path.join(ud.clonedir, ".git"), destdir), d)
+		else:
+			os.chdir(ud.clonedir)
+	        runfetchcmd("%s read-tree %s%s" % (ud.basecmd, ud.tag, readpathspec), d)
+		    runfetchcmd("%s checkout-index -q -f --prefix=%s -a" % (ud.basecmd, os.path.join(destdir,"git/")), d)
+        return True
+
     def supports_srcrev(self):
         return True
 
-- 
1.7.0.4


