Return-Path: <ke.yu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5319F4C81206
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 08:29:14 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Jan 2011 06:29:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,370,1291622400"; d="scan'208";a="379088443"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by azsmga001.ch.intel.com with ESMTP; 24 Jan 2011 06:29:13 -0800
Message-Id: <692a4bb6b7e6c1e58db350dad34d577aed1ae856.1295879038.git.ke.yu@intel.com>
In-Reply-To: <cover.1295879038.git.ke.yu@intel.com>
References: <cover.1295879038.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Mon, 24 Jan 2011 15:56:54 +0800
Date: Mon, 24 Jan 2011 22:32:59 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC PATCH 13/21] git.py: add no network access check
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
X-List-Received-Date: Mon, 24 Jan 2011 14:29:14 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/git.py |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index acb01c6..8f574b7 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -113,12 +113,14 @@ class Git(Fetch):
 
         # If the repo still doesn't exist, fallback to cloning it
         if not os.path.exists(ud.clonedir):
+            bb.fetch2.check_network_access(d, "git clone %s%s" % (ud.host, ud.path))
             runfetchcmd("%s clone -n %s://%s%s%s %s" % (ud.basecmd, ud.proto, username, ud.host, ud.path, ud.clonedir), d)
 
         os.chdir(ud.clonedir)
         # Update the checkout if needed
         if not self._contains_ref(ud.tag, d) or 'fullclone' in ud.parm:
             # Remove all but the .git directory
+            bb.fetch2.check_network_access(d, "git fetch %s%s" %(ud.host, ud.path))
             runfetchcmd("rm * -Rf", d)
             if 'fullclone' in ud.parm:
                 runfetchcmd("%s fetch --all" % (ud.basecmd), d)
@@ -186,6 +188,7 @@ class Git(Fetch):
         else:
             username = ""
 
+        bb.fetch2.check_network_access(d, "git ls-remote %s%s %s" % (ud.host, ud.path, ud.branch))
         basecmd = data.getVar("FETCHCMD_git", d, True) or "git"
         cmd = "%s ls-remote %s://%s%s%s %s" % (basecmd, ud.proto, username, ud.host, ud.path, ud.branch)
         output = runfetchcmd(cmd, d, True)
-- 
1.7.0.4


