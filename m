Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 407354C80A84
	for <poky@yoctoproject.org>; Tue, 10 May 2011 16:16:16 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 May 2011 14:16:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,347,1301900400"; d="scan'208";a="433888037"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by azsmga001.ch.intel.com with ESMTP; 10 May 2011 14:16:13 -0700
Message-Id: <5121786f93b4e66ee2e781dce3e30f576f263f7e.1305062028.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305062026.git.nitin.a.kamble@intel.com>
References: <cover.1305062026.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 10 May 2011 13:13:37 -0700
Date: Tue, 10 May 2011 14:16:13 -0700
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 10/16] cpio: fix upstream-status format
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
X-List-Received-Date: Tue, 10 May 2011 21:16:16 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../cpio/cpio-2.8/avoid_heap_overflow.patch        |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/cpio/cpio-2.8/avoid_heap_overflow.patch b/meta/recipes-extended/cpio/cpio-2.8/avoid_heap_overflow.patch
index cf068fa..49a7cf5 100644
--- a/meta/recipes-extended/cpio/cpio-2.8/avoid_heap_overflow.patch
+++ b/meta/recipes-extended/cpio/cpio-2.8/avoid_heap_overflow.patch
@@ -1,4 +1,4 @@
-Upstream-Status="Inappropriate [bugfix: http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2010-0624]"
+Upstream-Status: Inappropriate [bugfix: http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2010-0624]
 
 This patch avoids heap overflow reported by :
 http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2010-0624
-- 
1.7.3.4


