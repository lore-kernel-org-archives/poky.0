Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C22994C80A79
	for <poky@yoctoproject.org>; Fri, 27 May 2011 03:49:24 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 May 2011 01:49:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,279,1304319600"; 
   d="scan'208";a="8537539"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.187])
	by fmsmga002.fm.intel.com with ESMTP; 27 May 2011 01:49:23 -0700
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org,
	richard.purdie@linuxfoundation.org
Date: Fri, 27 May 2011 16:53:39 +0800
Message-Id: <9bfc6a2cb46396bbe6c3771ffe7bbe38c8e76340.1306486223.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <af8447e3f2efe132282f460f8563ad4f045b2336.1306486223.git.ke.yu@intel.com>
References: <af8447e3f2efe132282f460f8563ad4f045b2336.1306486223.git.ke.yu@intel.com>
In-Reply-To: <cover.1306486223.git.ke.yu@intel.com>
References: <cover.1306486223.git.ke.yu@intel.com>
Subject: [PATCH 2/4] fetcher2 git: unify the nocheckout option format
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
X-List-Received-Date: Fri, 27 May 2011 08:49:24 -0000

make the nocheckout option format to be: default is "0",
use nocheckou=1 to set this option

with this patch, the format will be consistant with other bitbake options
like rebaseable

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/git.py |    4 +---
 1 files changed, 1 insertions(+), 3 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index 12dabe3..a05402a 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -53,9 +53,7 @@ class Git(FetchMethod):
         else:
             ud.proto = "git"
 
-        ud.nocheckout = False
-        if 'nocheckout' in ud.parm:
-            ud.nocheckout = True
+        ud.nocheckout = ud.parm.get("nocheckout","0") == "1"
 
         # rebaseable means the upstream git repo may rebase in the future,
         # and current revision may disappear from upstream repo
-- 
1.7.0.4


