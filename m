Return-Path: <ke.yu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1AD404C80A78
	for <poky@yoctoproject.org>; Fri, 27 May 2011 03:49:29 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 27 May 2011 01:49:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,279,1304319600"; 
   d="scan'208";a="2812117"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.187])
	by azsmga001.ch.intel.com with ESMTP; 27 May 2011 01:49:27 -0700
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org,
	richard.purdie@linuxfoundation.org
Date: Fri, 27 May 2011 16:53:41 +0800
Message-Id: <835c9f98d3013ada5b57af13255b550a81392958.1306486223.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <af8447e3f2efe132282f460f8563ad4f045b2336.1306486223.git.ke.yu@intel.com>
References: <af8447e3f2efe132282f460f8563ad4f045b2336.1306486223.git.ke.yu@intel.com>
In-Reply-To: <cover.1306486223.git.ke.yu@intel.com>
References: <cover.1306486223.git.ke.yu@intel.com>
Subject: [PATCH 4/4] fetch2 git: enhance the unpack by using "git checkout"
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
X-List-Received-Date: Fri, 27 May 2011 08:49:29 -0000

current git fetcher unpack method only checkout index and working tree,
but did not did not update the git branch in ref/heads, so user may not
get right info in ${S} by using git.

this patch enhance the unpack by using git checkout to fix this issue.

Fix bug [YOCTO #1089]

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/git.py |    7 +++++--
 1 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index 3b8965e..ae44a49 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -213,8 +213,11 @@ class Git(FetchMethod):
         runfetchcmd("git clone -s -n %s %s" % (ud.clonedir, destdir), d)
         if not ud.nocheckout:
             os.chdir(destdir)
-            runfetchcmd("%s read-tree %s%s" % (ud.basecmd, ud.revisions[ud.names[0]], readpathspec), d)
-            runfetchcmd("%s checkout-index -q -f -a" % ud.basecmd, d)
+            if subdir != "":
+                runfetchcmd("%s read-tree %s%s" % (ud.basecmd, ud.revisions[ud.names[0]], readpathspec), d)
+                runfetchcmd("%s checkout-index -q -f -a" % ud.basecmd, d)
+            else:
+                runfetchcmd("%s checkout %s" % (ud.basecmd, ud.revisions[ud.names[0]]), d)
         return True
 
     def clean(self, ud, d):
-- 
1.7.0.4


