Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E43364C81226
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 08:14:46 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Jan 2011 06:14:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,386,1291622400"; d="scan'208";a="597005918"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 27 Jan 2011 06:14:45 -0800
Message-Id: <1d78acda41e0ae4577ddf6c6fa3a471d93c59c13.1296137142.git.ke.yu@intel.com>
In-Reply-To: <cover.1296137142.git.ke.yu@intel.com>
References: <cover.1296137142.git.ke.yu@intel.com>
Old-Date: Wed, 19 Jan 2011 00:22:13 +0800
Date: Thu, 27 Jan 2011 22:18:13 +0800
To: poky@yoctoproject.org
CC: 
From: Yu Ke <ke.yu@intel.com>
Subject: [PATCH 1/3] bb.fetch2: add git unpack
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
X-List-Received-Date: Thu, 27 Jan 2011 14:14:47 -0000

From: Yu Ke <ke.yu@intel.com>

git download will clone git repo to local, so git unpack can be simplified
to only checkouting the code to the work dir. For fullclone case, we also
need to manually copy all the ref info, which is needed by the later do_kernel_checkout()

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/git.py |   25 +++++++++++++++++++++++++
 1 files changed, 25 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index 08daa20..eadbf33 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -194,6 +194,31 @@ class Git(Fetch):
         os.chdir(ud.clonedir)
         bb.utils.prunedir(codir)
 
+    def unpack(self, ud, destdir, d):
+        """ unpack the downloaded src to destdir"""
+
+        subdir = ud.parm.get("subpath", "")
+        if subdir != "":
+            readpathspec = ":%s" % (subdir)
+        else:
+            readpathspec = ""
+
+        destdir = os.path.join(destdir, "git/")
+        if os.path.exists(destdir):
+            bb.utils.prunedir(destdir)
+
+        if 'fullclone' in ud.parm:
+            runfetchcmd("git clone -l -n %s %s" % (ud.clonedir, destdir), d)
+            if os.path.exists("%s/.git/refs/remotes/origin" % ud.clonedir):
+                runfetchcmd("cp -af %s/.git/refs/remotes/origin/* %s/.git/refs/remotes/origin/" %(ud.clonedir, destdir), d)
+            if os.path.exists("%s/.git/packed-refs" % ud.clonedir):
+                runfetchcmd("cp -af %s/.git/packed-refs %s/.git/" %(ud.clonedir, destdir), d)
+        else:
+            os.chdir(ud.clonedir)
+            runfetchcmd("%s read-tree %s%s" % (ud.basecmd, ud.tag, readpathspec), d)
+            runfetchcmd("%s checkout-index -q -f --prefix=%s -a" % (ud.basecmd, destdir), d)
+        return True
+
     def supports_srcrev(self):
         return True
 
-- 
1.7.0.4


