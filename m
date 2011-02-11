Return-Path: <edwin.zhai@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id AF8D44C800BF
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 07:52:43 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 11 Feb 2011 05:52:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,455,1291622400"; d="scan'208";a="601700105"
Received: from gzhai-nhm.sh.intel.com (HELO localhost) ([10.239.36.8])
	by orsmga002.jf.intel.com with ESMTP; 11 Feb 2011 05:52:42 -0800
Message-Id: <a1a97d864718047b9c50614f3da5c961a5bfb185.1297432560.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1297432560.git.edwin.zhai@intel.com>
References: <cover.1297432560.git.edwin.zhai@intel.com>
Old-Date: Fri, 11 Feb 2011 21:55:07 +0800
Date: Fri, 11 Feb 2011 22:01:35 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 1/1] sstate: Fix bugs after new fetcher
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
X-List-Received-Date: Fri, 11 Feb 2011 13:52:43 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Current sstate's fetch code doesn't reflect latest fetcher changes, so old
fetch style cause exception and fail silently.

[BUGID #708] got fixed.

Another issue is "import xxx" in python function from sstate.bbclass can only
sit in the head of the function, else have UnboundLocalError: "local variable
XXX referenced before assignment".

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 meta/classes/sstate.bbclass |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
index e4564e4..4f1bc39 100644
--- a/meta/classes/sstate.bbclass
+++ b/meta/classes/sstate.bbclass
@@ -326,13 +326,13 @@ def sstate_package(ss, d):
     return
 
 def pstaging_fetch(sstatepkg, d):
+    import bb.fetch2
 
     # Only try and fetch if the user has configured a mirror
     mirrors = bb.data.getVar('SSTATE_MIRRORS', d, True)
     if not mirrors:
         return
 
-    import bb.fetch2
     # Copy the data object and override DL_DIR and SRC_URI
     localdata = bb.data.createCopy(d)
     bb.data.update_data(localdata)
@@ -453,8 +453,8 @@ def sstate_checkhashes(sq_fn, sq_task, sq_hash, sq_hashfn, d):
             #bb.note(str(srcuri))
 
             try:
-                bb.fetch.init(srcuri.split(), localdata)
-                bb.fetch.checkstatus(localdata, srcuri.split())
+                fetcher = bb.fetch2.Fetch(srcuri.split(), localdata)
+                fetcher.checkstatus()
                 ret.append(task)
             except:
                 pass     
-- 
1.6.3.3


