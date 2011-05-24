Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9130B4C80579
	for <poky@yoctoproject.org>; Tue, 24 May 2011 01:54:01 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 May 2011 23:54:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,260,1304319600"; 
   d="scan'208";a="3802295"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.187])
	by orsmga001.jf.intel.com with ESMTP; 23 May 2011 23:54:00 -0700
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 24 May 2011 14:58:44 +0800
Message-Id: <e2bf7f2c627346574195eba57b665f4de4757c8a.1306220205.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1306220205.git.ke.yu@intel.com>
References: <cover.1306220205.git.ke.yu@intel.com>
Subject: [PATCH 1/1] fetcher2/git: add document for git fetcher supported options
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
X-List-Received-Date: Tue, 24 May 2011 06:54:01 -0000

CC: Khem Raj <raj.khem@gmail.com>
CC: Darren Hart <dvhart@linux.intel.com>

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/git.py |   37 ++++++++++++++++++++++++++++++++++---
 1 files changed, 34 insertions(+), 3 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index 82721c6..b07298d 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -3,6 +3,40 @@
 """
 BitBake 'Fetch' git implementation
 
+git fetcher support the SRC_URI with format of:
+SRC_URI = "git://some.host/somepath;OptionA=xxx;OptionB=xxx;..."
+
+Supported SRC_URI options are:
+
+- branch
+   The git branch to retrieve from. The default is "master"
+
+   this option also support multiple branches fetching, branches
+   are seperated by comma. in multiple branches case, the name option
+   must have the same number of names to match the branches, which is
+   used to specify the SRC_REV for the branch
+   e.g:
+   SRC_URI="git://some.host/somepath;branch=branchX,branchY;name=nameX,nameY"
+   SRCREV_nameX = "xxxxxxxxxxxxxxxxxxxx"
+   SRCREV_nameY = "YYYYYYYYYYYYYYYYYYYY"
+
+- tag
+    The git tag to retrieve. The default is "master"
+
+- protocol
+   The method to use to access the repository. Common options are "git",
+   "http", "file" and "rsync". The default is "rsync"
+
+- rebaseable
+   rebaseable indicates that the upstream git repo may rebase in the future,
+   and current revision may disappear from upstream repo. This option will
+   reminder fetcher to preserve local cache carefully for future use.
+   The default value is "0", set rebaseable=1 for rebaseable git repo
+
+- nocheckout
+   Don't checkout source code when unpacking. set this option for the recipe
+   who has its own routine to checkout code. The default is false
+
 """
 
 #Copyright (C) 2005 Richard Purdie
@@ -57,9 +91,6 @@ class Git(FetchMethod):
         if 'nocheckout' in ud.parm:
             ud.nocheckout = True
 
-        # rebaseable means the upstream git repo may rebase in the future,
-        # and current revision may disappear from upstream repo
-        # rebaseable is false by default. set rebaseable=1 in SRC_URI if rebaseable.
         ud.rebaseable = ud.parm.get("rebaseable","0") == "1"
 
         branches = ud.parm.get("branch", "master").split(',')
-- 
1.7.0.4


