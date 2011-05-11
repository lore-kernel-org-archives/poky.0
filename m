Return-Path: <dexuan.cui@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1157C4C80FC8
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:29:40 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 May 2011 23:29:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,350,1301900400"; d="scan'208";a="434107471"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by azsmga001.ch.intel.com with ESMTP; 10 May 2011 23:29:40 -0700
Message-Id: <91a07b226187b4ebfe3e2b7cab401ecd25fb7e7c.1305094351.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1305094351.git.dexuan.cui@intel.com>
References: <cover.1305094351.git.dexuan.cui@intel.com>
Old-Date: Wed, 11 May 2011 13:17:57 +0800
Date: Wed, 11 May 2011 14:27:04 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 15/24] libxfont: update its patch's Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 06:29:41 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../xorg-lib/libxfont/no-scalable-crash.patch      |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/xorg-lib/libxfont/no-scalable-crash.patch b/meta/recipes-graphics/xorg-lib/libxfont/no-scalable-crash.patch
index 90bded6..b3c58af 100644
--- a/meta/recipes-graphics/xorg-lib/libxfont/no-scalable-crash.patch
+++ b/meta/recipes-graphics/xorg-lib/libxfont/no-scalable-crash.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 --- /tmp/fontdir.c	2006-08-01 16:17:22.000000000 +0200
 +++ libXfont-1.2.0/src/fontfile/fontdir.c	2006-08-01 16:20:37.248306000 +0200
 @@ -695,6 +695,11 @@
-- 
1.7.2


