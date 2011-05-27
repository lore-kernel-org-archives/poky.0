Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 008524C80A72
	for <poky@yoctoproject.org>; Fri, 27 May 2011 03:49:44 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 May 2011 01:49:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,279,1304319600"; 
   d="scan'208";a="8537552"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.187])
	by fmsmga002.fm.intel.com with ESMTP; 27 May 2011 01:49:25 -0700
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org,
	richard.purdie@linuxfoundation.org
Date: Fri, 27 May 2011 16:53:40 +0800
Message-Id: <3e361d4b80a23d5077d89108b2bb8d0bb45dea4b.1306486223.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <af8447e3f2efe132282f460f8563ad4f045b2336.1306486223.git.ke.yu@intel.com>
References: <af8447e3f2efe132282f460f8563ad4f045b2336.1306486223.git.ke.yu@intel.com>
In-Reply-To: <cover.1306486223.git.ke.yu@intel.com>
References: <cover.1306486223.git.ke.yu@intel.com>
Subject: [PATCH 3/4] fetcher2/git: add document for git fetcher supported options
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
X-List-Received-Date: Fri, 27 May 2011 08:49:45 -0000

CC: Khem Raj <raj.khem@gmail.com>
CC: Darren Hart <dvhart@linux.intel.com>

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/git.py |   38 +++++++++++++++++++++++++++++++++++---
 1 files changed, 35 insertions(+), 3 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index a05402a..3b8965e 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -3,6 +3,41 @@
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
+   "http", "file" and "rsync". The default is "git"
+
+- rebaseable
+   rebaseable indicates that the upstream git repo may rebase in the future,
+   and current revision may disappear from upstream repo. This option will
+   reminder fetcher to preserve local cache carefully for future use.
+   The default value is "0", set rebaseable=1 for rebaseable git repo
+
+- nocheckout
+   Don't checkout source code when unpacking. set this option for the recipe
+   who has its own routine to checkout code.
+   The default is "0", set nocheckout=1 if needed.
+
 """
 
 #Copyright (C) 2005 Richard Purdie
@@ -55,9 +90,6 @@ class Git(FetchMethod):
 
         ud.nocheckout = ud.parm.get("nocheckout","0") == "1"
 
-        # rebaseable means the upstream git repo may rebase in the future,
-        # and current revision may disappear from upstream repo
-        # rebaseable is false by default. set rebaseable=1 in SRC_URI if rebaseable.
         ud.rebaseable = ud.parm.get("rebaseable","0") == "1"
 
         branches = ud.parm.get("branch", "master").split(',')
-- 
1.7.0.4


