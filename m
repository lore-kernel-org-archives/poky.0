Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 15A674C80039
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 02:18:15 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 22 Dec 2010 00:18:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,212,1291622400"; d="scan'208";a="870783877"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 22 Dec 2010 00:18:14 -0800
Message-Id: <f7c2964b57105cf811aa45ad3ac8ec2919ec8e7a.1293006082.git.ke.yu@intel.com>
In-Reply-To: <cover.1293006082.git.ke.yu@intel.com>
References: <cover.1293006082.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Wed, 22 Dec 2010 15:36:58 +0800
Date: Wed, 22 Dec 2010 16:23:55 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] sanity.bbclass: check if DL_DIR is writeable
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
X-List-Received-Date: Wed, 22 Dec 2010 08:18:15 -0000

bug 606 report that when DL_DIR is read-only, bitbake
will silently hang, which is not informative

This patch add sanity check to make sure DL_DIR is
writeable, and report error message if not

Fix [BUGID #606]

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/classes/sanity.bbclass |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
index e9217f9..696629e 100644
--- a/meta/classes/sanity.bbclass
+++ b/meta/classes/sanity.bbclass
@@ -261,6 +261,12 @@ def check_sanity(e):
     f.close()
 
     #
+    # DL_DIR should be writable for fetcher to be functional
+    #
+    if not os.access(bb.data.getVar("DL_DIR", e.data, True), os.W_OK):
+        messages = messages + "Error: DL_DIR is not writeable"
+
+    #
     # Check the 'ABI' of TMPDIR
     #
     current_abi = data.getVar('OELAYOUT_ABI', e.data, True)
-- 
1.7.0.4


