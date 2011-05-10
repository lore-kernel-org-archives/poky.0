Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 29F624C80523
	for <poky@yoctoproject.org>; Tue, 10 May 2011 16:16:13 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 10 May 2011 14:16:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,347,1301900400"; d="scan'208";a="640907873"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga002.jf.intel.com with ESMTP; 10 May 2011 14:16:12 -0700
Message-Id: <5a735b7135c2985010614b43a4febf4aff86cabb.1305062028.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305062026.git.nitin.a.kamble@intel.com>
References: <cover.1305062026.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 10 May 2011 13:10:34 -0700
Date: Tue, 10 May 2011 14:16:12 -0700
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 08/16] tar: fix Upstream-Status format
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
X-List-Received-Date: Tue, 10 May 2011 21:16:13 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../tar/tar-1.17/avoid_heap_overflow.patch         |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/tar/tar-1.17/avoid_heap_overflow.patch b/meta/recipes-extended/tar/tar-1.17/avoid_heap_overflow.patch
index b1b2de6..da2ae3c 100644
--- a/meta/recipes-extended/tar/tar-1.17/avoid_heap_overflow.patch
+++ b/meta/recipes-extended/tar/tar-1.17/avoid_heap_overflow.patch
@@ -1,4 +1,4 @@
-Upstream-Status="Inappropriate [bugfix: http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2010-0624]"
+Upstream-Status: Inappropriate [bugfix: http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2010-0624]
 
 This patch avoids heap overflow reported by :
 http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2010-0624
-- 
1.7.3.4


