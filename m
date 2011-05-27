Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8F6484C80A5B
	for <poky@yoctoproject.org>; Fri, 27 May 2011 03:49:23 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 May 2011 01:49:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,279,1304319600"; 
   d="scan'208";a="8537532"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.187])
	by fmsmga002.fm.intel.com with ESMTP; 27 May 2011 01:49:22 -0700
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org,
	richard.purdie@linuxfoundation.org
Date: Fri, 27 May 2011 16:53:38 +0800
Message-Id: <af8447e3f2efe132282f460f8563ad4f045b2336.1306486223.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1306486223.git.ke.yu@intel.com>
References: <cover.1306486223.git.ke.yu@intel.com>
Subject: [PATCH 1/4] fetche2 git: change default protocol from rsync to git
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
X-List-Received-Date: Fri, 27 May 2011 08:49:23 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/git.py |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index 82721c6..12dabe3 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -51,7 +51,7 @@ class Git(FetchMethod):
         elif not ud.host:
             ud.proto = 'file'
         else:
-            ud.proto = "rsync"
+            ud.proto = "git"
 
         ud.nocheckout = False
         if 'nocheckout' in ud.parm:
-- 
1.7.0.4


