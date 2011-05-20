Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 212204C802F2
	for <poky@yoctoproject.org>; Fri, 20 May 2011 18:06:15 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 May 2011 16:06:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,244,1304319600"; 
   d="scan'208";a="4758204"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by fmsmga002.fm.intel.com with ESMTP; 20 May 2011 16:06:14 -0700
Message-Id: <a7b1f9d56b42890f49f020db58c07cc5d955e456.1305932581.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1305932581.git.dvhart@linux.intel.com>
References: <cover.1305932581.git.dvhart@linux.intel.com>
Old-Date: Fri, 20 May 2011 14:13:36 -0700
Date: Fri, 20 May 2011 16:06:12 -0700
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/3] fetch2/git: ensure network check log matches actual command
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
X-List-Received-Date: Fri, 20 May 2011 23:06:15 -0000

From: Darren Hart <dvhart@linux.intel.com>

The git command string logged via check_network_access() does not match
the actual command executed in a few places. Ensure that it does.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/git.py |   16 ++++++++++------
 1 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index 82721c6..c6c4cc9 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -137,8 +137,10 @@ class Git(FetchMethod):
 
         # If the repo still doesn't exist, fallback to cloning it
         if not os.path.exists(ud.clonedir):
-            bb.fetch2.check_network_access(d, "git clone --bare %s%s" % (ud.host, ud.path))
-            runfetchcmd("%s clone --bare %s://%s%s%s %s" % (ud.basecmd, ud.proto, username, ud.host, ud.path, ud.clonedir), d)
+            clone_cmd = "%s clone --bare %s://%s%s%s %s" % \
+                  (ud.basecmd, ud.proto, username, ud.host, ud.path, ud.clonedir)
+            bb.fetch2.check_network_access(d, clone_cmd)
+            runfetchcmd(clone_cmd, d)
 
         os.chdir(ud.clonedir)
         # Update the checkout if needed
@@ -147,7 +149,6 @@ class Git(FetchMethod):
             if not self._contains_ref(ud.revisions[name], d):
                 needupdate = True
         if needupdate:
-            bb.fetch2.check_network_access(d, "git fetch %s%s" % (ud.host, ud.path), ud.url)
             try: 
                 runfetchcmd("%s remote prune origin" % ud.basecmd, d) 
                 runfetchcmd("%s remote rm origin" % ud.basecmd, d) 
@@ -155,7 +156,9 @@ class Git(FetchMethod):
                 logger.debug(1, "No Origin")
             
             runfetchcmd("%s remote add origin %s://%s%s%s" % (ud.basecmd, ud.proto, username, ud.host, ud.path), d)
-            runfetchcmd("%s fetch --all -t" % ud.basecmd, d)
+            fetch_cmd = "%s fetch --all -t" % ud.basecmd
+            bb.fetch2.check_network_access(d, fetch_cmd, ud.url)
+            runfetchcmd(fetch_cmd, d)
             runfetchcmd("%s prune-packed" % ud.basecmd, d)
             runfetchcmd("%s pack-redundant --all | xargs -r rm" % ud.basecmd, d)
             ud.repochanged = True
@@ -216,9 +219,10 @@ class Git(FetchMethod):
         else:
             username = ""
 
-        bb.fetch2.check_network_access(d, "git ls-remote %s%s %s" % (ud.host, ud.path, ud.branches[name]))
         basecmd = data.getVar("FETCHCMD_git", d, True) or "git"
-        cmd = "%s ls-remote %s://%s%s%s %s" % (basecmd, ud.proto, username, ud.host, ud.path, ud.branches[name])
+        cmd = "%s ls-remote %s://%s%s%s %s" % \
+              (basecmd, ud.proto, username, ud.host, ud.path, ud.branches[name])
+        bb.fetch2.check_network_access(d, cmd)
         output = runfetchcmd(cmd, d, True)
         if not output:
             raise bb.fetch2.FetchError("The command %s gave empty output unexpectedly" % cmd, url)
-- 
1.7.1


