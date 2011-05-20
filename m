Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2AD794C804C2
	for <poky@yoctoproject.org>; Fri, 20 May 2011 18:06:16 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 May 2011 16:06:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,244,1304319600"; d="scan'208";a="440046431"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by azsmga001.ch.intel.com with ESMTP; 20 May 2011 16:06:15 -0700
Message-Id: <da8151b8a3dadf13fade0c18b879749be3315095.1305932581.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1305932581.git.dvhart@linux.intel.com>
References: <cover.1305932581.git.dvhart@linux.intel.com>
Old-Date: Fri, 20 May 2011 14:20:48 -0700
Date: Fri, 20 May 2011 16:06:13 -0700
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 2/3] fetch2/git: use urldata basecmd when available
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
X-List-Received-Date: Fri, 20 May 2011 23:06:16 -0000

From: Darren Hart <dvhart@linux.intel.com>

If the urldata object is passed in, use it to determine basecmd rather
than looking it up again.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/git.py |   15 +++++++--------
 1 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index c6c4cc9..7ffaa5e 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -137,10 +137,10 @@ class Git(FetchMethod):
 
         # If the repo still doesn't exist, fallback to cloning it
         if not os.path.exists(ud.clonedir):
-            clone_cmd = "%s clone --bare %s://%s%s%s %s" % \
+            cmd = "%s clone --bare %s://%s%s%s %s" % \
                   (ud.basecmd, ud.proto, username, ud.host, ud.path, ud.clonedir)
-            bb.fetch2.check_network_access(d, clone_cmd)
-            runfetchcmd(clone_cmd, d)
+            bb.fetch2.check_network_access(d, cmd)
+            runfetchcmd(cmd, d)
 
         os.chdir(ud.clonedir)
         # Update the checkout if needed
@@ -156,9 +156,9 @@ class Git(FetchMethod):
                 logger.debug(1, "No Origin")
             
             runfetchcmd("%s remote add origin %s://%s%s%s" % (ud.basecmd, ud.proto, username, ud.host, ud.path), d)
-            fetch_cmd = "%s fetch --all -t" % ud.basecmd
-            bb.fetch2.check_network_access(d, fetch_cmd, ud.url)
-            runfetchcmd(fetch_cmd, d)
+            cmd = "%s fetch --all -t" % ud.basecmd
+            bb.fetch2.check_network_access(d, cmd, ud.url)
+            runfetchcmd(cmd, d)
             runfetchcmd("%s prune-packed" % ud.basecmd, d)
             runfetchcmd("%s pack-redundant --all | xargs -r rm" % ud.basecmd, d)
             ud.repochanged = True
@@ -219,9 +219,8 @@ class Git(FetchMethod):
         else:
             username = ""
 
-        basecmd = data.getVar("FETCHCMD_git", d, True) or "git"
         cmd = "%s ls-remote %s://%s%s%s %s" % \
-              (basecmd, ud.proto, username, ud.host, ud.path, ud.branches[name])
+              (ud.basecmd, ud.proto, username, ud.host, ud.path, ud.branches[name])
         bb.fetch2.check_network_access(d, cmd)
         output = runfetchcmd(cmd, d, True)
         if not output:
-- 
1.7.1


