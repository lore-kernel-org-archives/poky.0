Return-Path: <radu.moisan@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B774EE0146C
	for <poky@yoctoproject.org>; Tue,  4 Sep 2012 00:51:09 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 04 Sep 2012 00:51:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,365,1344236400"; d="scan'208";a="217791731"
Received: from dell-desktop (HELO localhost.localdomain) ([10.237.105.32])
	by fmsmga001.fm.intel.com with ESMTP; 04 Sep 2012 00:51:08 -0700
From: Radu Moisan <radu.moisan@intel.com>
To: poky@yoctoproject.org
Date: Tue,  4 Sep 2012 10:53:51 +0300
Message-Id: <1346745231-11227-1-git-send-email-radu.moisan@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] pango: Add missing sign-off-by and upstream-status
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 04 Sep 2012 07:51:09 -0000

Signed-off-by: Radu Moisan <radu.moisan@intel.com>
---
 .../pango/pango-1.30.0/no-tests.patch              |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta/recipes-graphics/pango/pango-1.30.0/no-tests.patch b/meta/recipes-graphics/pango/pango-1.30.0/no-tests.patch
index 5a6e4c1..ddfc126 100644
--- a/meta/recipes-graphics/pango/pango-1.30.0/no-tests.patch
+++ b/meta/recipes-graphics/pango/pango-1.30.0/no-tests.patch
@@ -1,3 +1,6 @@
+Signed-off-by: Radu Moisan <radu.moisan@intel.com>
+Upstream-Status: Pending
+
 Index: pango-1.30.0/Makefile.am
 ===================================================================
 --- pango-1.30.0.orig/Makefile.am	2011-08-16 04:11:08.000000000 +0300
-- 
1.7.9.5


