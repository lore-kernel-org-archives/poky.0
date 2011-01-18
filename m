Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0F2404C81205
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 11:44:01 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 18 Jan 2011 09:44:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,339,1291622400"; d="scan'208";a="594121345"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 18 Jan 2011 09:44:01 -0800
Message-Id: <2adf94e7ea75c104a756536b4a0bcc90c0e6ba40.1295371995.git.ke.yu@intel.com>
In-Reply-To: <cover.1295371995.git.ke.yu@intel.com>
References: <cover.1295371995.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Wed, 19 Jan 2011 00:17:39 +0800
Date: Wed, 19 Jan 2011  1:48:23 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 09/11] bb.fetch2: remove the obsolate Fetch.try_mirrors referrence
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
X-List-Received-Date: Tue, 18 Jan 2011 17:44:02 -0000

Fetch.try_mirrors is no longer exists, so the code is obsolate

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/git.py |    8 --------
 1 files changed, 0 insertions(+), 8 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index 690bb08..438756a 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -117,14 +117,6 @@ class Git(Fetch):
 
         repofile = os.path.join(data.getVar("DL_DIR", d, 1), ud.mirrortarball)
 
-
-        # If we have no existing clone and no mirror tarball, try and obtain one
-        if not os.path.exists(ud.clonedir) and not os.path.exists(repofile):
-            try:
-                Fetch.try_mirrors(ud.mirrortarball)
-            except:
-                pass
-
         # If the checkout doesn't exist and the mirror tarball does, extract it
         if not os.path.exists(ud.clonedir) and os.path.exists(repofile):
             bb.mkdirhier(ud.clonedir)
-- 
1.7.0.4


