Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 867674C8005F
	for <poky@yoctoproject.org>; Thu,  5 May 2011 22:36:35 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 May 2011 20:36:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,324,1301900400"; d="scan'208";a="638817576"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga002.jf.intel.com with ESMTP; 05 May 2011 20:36:34 -0700
Message-Id: <604bb0b33ea47d303bcf9671288873195b5a202c.1304652773.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1304652773.git.nitin.a.kamble@intel.com>
References: <cover.1304652773.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 3 May 2011 15:54:41 -0700
Date: Thu, 05 May 2011 20:36:34 -0700
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 05/10] python-imaging: update upstream status for patches
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
X-List-Received-Date: Fri, 06 May 2011 03:36:35 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../python/python-imaging/path.patch               |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/python/python-imaging/path.patch b/meta/recipes-devtools/python/python-imaging/path.patch
index 264dcc0..30bf692 100644
--- a/meta/recipes-devtools/python/python-imaging/path.patch
+++ b/meta/recipes-devtools/python/python-imaging/path.patch
@@ -1,3 +1,5 @@
+Upstream-Status="Inappropriate [embedded specific]"
+
 Index: Imaging-1.1.7/setup.py
 ===================================================================
 --- Imaging-1.1.7.orig/setup.py
-- 
1.7.3.4


