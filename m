Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D64044C81215
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 08:29:15 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 24 Jan 2011 06:29:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,370,1291622400"; d="scan'208";a="699968830"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 24 Jan 2011 06:29:14 -0800
Message-Id: <73cc58427b0dde3e63f2b2e12a5e9bf0f146eaca.1295879038.git.ke.yu@intel.com>
In-Reply-To: <cover.1295879038.git.ke.yu@intel.com>
References: <cover.1295879038.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Mon, 24 Jan 2011 16:56:30 +0800
Date: Mon, 24 Jan 2011 22:33:01 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC PATCH 14/21] wget.py: add no network check
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
X-List-Received-Date: Mon, 24 Jan 2011 14:29:16 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/wget.py |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/wget.py b/bitbake/lib/bb/fetch2/wget.py
index 91cfafb..88cb8c7 100644
--- a/bitbake/lib/bb/fetch2/wget.py
+++ b/bitbake/lib/bb/fetch2/wget.py
@@ -69,6 +69,7 @@ class Wget(Fetch):
             fetchcmd = fetchcmd.replace("${FILE}", ud.basename)
             logger.info("fetch " + uri)
             logger.debug(2, "executing " + fetchcmd)
+            bb.fetch2.check_network_access(d, fetchcmd)
             runfetchcmd(fetchcmd, d)
 
             # Sanity check since wget can pretend it succeed when it didn't
-- 
1.7.0.4


