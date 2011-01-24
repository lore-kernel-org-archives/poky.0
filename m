Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B98804C8120D
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 08:29:10 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Jan 2011 06:29:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,370,1291622400"; d="scan'208";a="699968810"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 24 Jan 2011 06:29:06 -0800
Message-Id: <40b12e513629b37bd3532e1d2071468dab7fc694.1295879038.git.ke.yu@intel.com>
In-Reply-To: <cover.1295879038.git.ke.yu@intel.com>
References: <cover.1295879038.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Wed, 19 Jan 2011 00:17:39 +0800
Date: Mon, 24 Jan 2011 22:32:53 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC PATCH 09/21] bb.fetch2: remove the obsolate Fetch.try_mirrors referrence
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
X-List-Received-Date: Mon, 24 Jan 2011 14:29:10 -0000

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


