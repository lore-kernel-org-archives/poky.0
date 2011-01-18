Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id AA7BE4C81205
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 11:44:03 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Jan 2011 09:44:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,339,1291622400"; d="scan'208";a="878550027"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 18 Jan 2011 09:44:02 -0800
Message-Id: <8dfcbdd661ed90787b9680ea1bcdae45c4372a67.1295371995.git.ke.yu@intel.com>
In-Reply-To: <cover.1295371995.git.ke.yu@intel.com>
References: <cover.1295371995.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Wed, 19 Jan 2011 00:22:13 +0800
Date: Wed, 19 Jan 2011  1:48:25 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 10/11] bb.fetch2: add git unpack
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
X-List-Received-Date: Tue, 18 Jan 2011 17:44:03 -0000

git download will clone git repo to local, and git unpack just do a clone with referrence to the original repo

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/git.py |   16 ++++++++++++++++
 1 files changed, 16 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index 438756a..bb62a87 100644
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
+        # extract to ${WORKDIR}/git
+        destdir = destdir + "/git/"
+
+        os.chdir(ud.clonedir)
+        runfetchcmd("%s read-tree %s%s" % (ud.basecmd, ud.tag, readpathspec), d)
+        runfetchcmd("%s checkout-index -q -f --prefix=%s -a" % (ud.basecmd, destdir), d)
+        return 1
+
     def supports_srcrev(self):
         return True
 
-- 
1.7.0.4


