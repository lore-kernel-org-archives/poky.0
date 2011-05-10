Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 38C424C80A77
	for <poky@yoctoproject.org>; Tue, 10 May 2011 16:16:14 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 May 2011 14:16:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,347,1301900400"; d="scan'208";a="745285953"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga001.jf.intel.com with ESMTP; 10 May 2011 14:16:13 -0700
Message-Id: <1624765bbbd8985d9023da1a708d71a6d0ca7c1d.1305062028.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305062026.git.nitin.a.kamble@intel.com>
References: <cover.1305062026.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 10 May 2011 13:11:11 -0700
Date: Tue, 10 May 2011 14:16:13 -0700
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 09/16] sat-solver: fix Upstream-Status format
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
X-List-Received-Date: Tue, 10 May 2011 21:16:14 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../sat-solver/fix_gcc-4.6.0_compile_issue.patch   |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/sat-solver/sat-solver/fix_gcc-4.6.0_compile_issue.patch b/meta/recipes-extended/sat-solver/sat-solver/fix_gcc-4.6.0_compile_issue.patch
index 11c727d..0a55069 100644
--- a/meta/recipes-extended/sat-solver/sat-solver/fix_gcc-4.6.0_compile_issue.patch
+++ b/meta/recipes-extended/sat-solver/sat-solver/fix_gcc-4.6.0_compile_issue.patch
@@ -1,4 +1,4 @@
-Upstream-Status="Pending"
+Upstream-Status: Pending
 
 Fix the following compilation issues with gcc 4.6.0
 
-- 
1.7.3.4


