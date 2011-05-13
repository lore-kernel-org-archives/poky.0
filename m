Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id A386A4C811A9
	for <poky@yoctoproject.org>; Thu, 12 May 2011 19:20:33 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 May 2011 17:20:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; 
   d="scan'208";a="1582734"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga001.fm.intel.com with ESMTP; 12 May 2011 17:20:33 -0700
Message-Id: <d5fac56e533befcde09738f3492dbdcd45a438dd.1305245924.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305245922.git.nitin.a.kamble@intel.com>
References: <cover.1305245922.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 12 May 2011 16:47:49 -0700
Date: Thu, 12 May 2011 17:20:33 -0700
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 19/25] python-pygobject: update upstream status for patches
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
X-List-Received-Date: Fri, 13 May 2011 00:20:33 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../python-pygobject/generate-constants.patch      |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/python/python-pygobject/generate-constants.patch b/meta/recipes-devtools/python/python-pygobject/generate-constants.patch
index 57a9380..be2ecd3 100644
--- a/meta/recipes-devtools/python/python-pygobject/generate-constants.patch
+++ b/meta/recipes-devtools/python/python-pygobject/generate-constants.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: pygobject-2.14.2/gobject/Makefile.am
 ===================================================================
 --- pygobject-2.14.2.orig/gobject/Makefile.am
-- 
1.7.3.4


