Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2A47A4C81118
	for <poky@yoctoproject.org>; Thu, 12 May 2011 19:20:32 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 May 2011 17:20:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; d="scan'208";a="642035980"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga002.jf.intel.com with ESMTP; 12 May 2011 17:20:31 -0700
Message-Id: <36c6ec9df4e0fafb4a7bfb5c741082ddcb947291.1305245924.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305245922.git.nitin.a.kamble@intel.com>
References: <cover.1305245922.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 12 May 2011 16:26:57 -0700
Date: Thu, 12 May 2011 17:20:31 -0700
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 10/25] distcc: update upstream-status of patches
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
 .../distcc/files/distcc-avahi.patch                |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/distcc/files/distcc-avahi.patch b/meta/recipes-devtools/distcc/files/distcc-avahi.patch
index 1702ea7..30b4c91 100644
--- a/meta/recipes-devtools/distcc/files/distcc-avahi.patch
+++ b/meta/recipes-devtools/distcc/files/distcc-avahi.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 --- upstream/aclocal.m4	1970-01-01 01:00:00.000000000 +0100
 +++ lennart/aclocal.m4	2005-11-18 04:19:18.000000000 +0100
 @@ -0,0 +1,171 @@
-- 
1.7.3.4


