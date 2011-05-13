Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 91FEF4C81118
	for <poky@yoctoproject.org>; Thu, 12 May 2011 19:20:32 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 12 May 2011 17:20:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; 
   d="scan'208";a="1059401"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga002.fm.intel.com with ESMTP; 12 May 2011 17:20:32 -0700
Message-Id: <7c62ee81642b9a2b7c8dd37fc680f5dbf7ac05f0.1305245924.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305245922.git.nitin.a.kamble@intel.com>
References: <cover.1305245922.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 12 May 2011 16:34:19 -0700
Date: Thu, 12 May 2011 17:20:32 -0700
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 13/25] intltool: update upstream-status of patches
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
X-List-Received-Date: Fri, 13 May 2011 00:20:32 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../intltool-0.40.6/intltool-nowarn-0.40.0.patch   |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/intltool/intltool-0.40.6/intltool-nowarn-0.40.0.patch b/meta/recipes-devtools/intltool/intltool-0.40.6/intltool-nowarn-0.40.0.patch
index 61ecba2..ff9f52e 100644
--- a/meta/recipes-devtools/intltool/intltool-0.40.6/intltool-nowarn-0.40.0.patch
+++ b/meta/recipes-devtools/intltool/intltool-0.40.6/intltool-nowarn-0.40.0.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 Index: intltool-0.40.0/intltool-extract.in
 ===================================================================
 --- intltool-0.40.0.orig/intltool-extract.in	2008-12-17 11:50:19.000000000 +0000
-- 
1.7.3.4


