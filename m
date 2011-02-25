Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 413774C800B1
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 13:13:53 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 25 Feb 2011 11:13:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,227,1297065600"; d="scan'208";a="661543553"
Received: from unknown (HELO localhost) ([10.255.16.236])
	by fmsmga002.fm.intel.com with ESMTP; 25 Feb 2011 11:13:52 -0800
Message-Id: <82d3ef44b338806b0af4b4fdbcab54f15108b0e5.1298661117.git.josh@linux.intel.com>
In-Reply-To: <cover.1298661117.git.josh@linux.intel.com>
References: <cover.1298661117.git.josh@linux.intel.com>
Old-Date: Fri, 25 Feb 2011 18:26:57 +0000
Date: Fri, 25 Feb 2011 19:13:46 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 1/3] base.bbclass: enable INCOMPATIBLE_LICENSE to match slight variations
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
X-List-Received-Date: Fri, 25 Feb 2011 19:13:53 -0000

From: Joshua Lock <josh@linux.intel.com>

Add a greedy any-character match to INCOMPATIBLE_LICENSE so that we can match
different permutations of that license, i.e. if INCOMPATIBLE_LICENSE is set
to GPLv3 we should also match GPLv3+

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta/classes/base.bbclass |    9 ++++++++-
 1 files changed, 8 insertions(+), 1 deletions(-)

diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass
index a674f52..3ff11d3 100644
--- a/meta/classes/base.bbclass
+++ b/meta/classes/base.bbclass
@@ -345,7 +345,14 @@ python () {
                 raise bb.parse.SkipPackage("incompatible with machine %s" % this_machine)
 
 
-        dont_want_license = bb.data.getVar('INCOMPATIBLE_LICENSE', d, 1)
+        dont_want_license = bb.data.getVar('INCOMPATIBLE_LICENSE', d, True)
+        # If dont_want_license is set add a greedy any-character match
+        # to it (if not already set) so that we can match permutations
+        # of that license. i.e. if dont_want_license is set to GPLv3 we
+        # also want to match GPLv3+
+        if dont_want_license and not dont_want_license.endswith('.+'):
+	    dont_want_license = dont_want_license + '.+'
+
         if dont_want_license and not pn.endswith("-native") and not pn.endswith("-cross") and not pn.endswith("-cross-initial") and not pn.endswith("-cross-intermediate"):
             hosttools_whitelist = (bb.data.getVar('HOSTTOOLS_WHITELIST_%s' % dont_want_license, d, 1) or "").split()
             lgplv2_whitelist = (bb.data.getVar('LGPLv2_WHITELIST_%s' % dont_want_license, d, 1) or "").split()
-- 
1.7.4


