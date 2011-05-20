Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 558FE4C803BA
	for <poky@yoctoproject.org>; Fri, 20 May 2011 18:06:27 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 May 2011 16:06:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,244,1304319600"; 
   d="scan'208";a="1788420"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by orsmga001.jf.intel.com with ESMTP; 20 May 2011 16:06:16 -0700
Message-Id: <c5a21058376ecc4039a67de6a8ffe2a06b9844dd.1305932581.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1305932581.git.dvhart@linux.intel.com>
References: <cover.1305932581.git.dvhart@linux.intel.com>
Old-Date: Fri, 20 May 2011 14:26:01 -0700
Date: Fri, 20 May 2011 16:06:14 -0700
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 3/3] fetch2/git: use logging.debug() and clarify messages
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
X-List-Received-Date: Fri, 20 May 2011 23:06:27 -0000

From: Darren Hart <dvhart@linux.intel.com>

Replace a call to print() with logging.debug() and flesh out the
message to clarify the state being reported.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/git.py |    7 +++++--
 1 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index 7ffaa5e..c14346b 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -241,10 +241,13 @@ class Git(FetchMethod):
         # Check if we have the rev already
 
         if not os.path.exists(ud.clonedir):
-            print("no repo")
+            logging.debug("GIT repository for %s does not exist in %s.  \
+                          Downloading.", url, ud.clonedir)
             self.download(None, ud, d)
             if not os.path.exists(ud.clonedir):
-                logger.error("GIT repository for %s doesn't exist in %s, cannot get sortable buildnumber, using old value", url, ud.clonedir)
+                logger.error("GIT repository for %s does not exist in %s after \
+                             download. Cannot get sortable buildnumber, using \
+                             old value", url, ud.clonedir)
                 return None
 
 
-- 
1.7.1


