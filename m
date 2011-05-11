Return-Path: <dexuan.cui@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 61A0F4C80AC3
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:29:32 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 May 2011 23:29:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,350,1301900400"; d="scan'208";a="434107429"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by azsmga001.ch.intel.com with ESMTP; 10 May 2011 23:29:31 -0700
Message-Id: <3843f9149f43520c8c56d032fea9fb215a9eb3c2.1305094351.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1305094351.git.dexuan.cui@intel.com>
References: <cover.1305094351.git.dexuan.cui@intel.com>
Old-Date: Wed, 11 May 2011 11:43:45 +0800
Date: Wed, 11 May 2011 14:26:55 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 08/24] freetype: update its patch's Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 06:29:32 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../freetype/freetype-2.4.4/no-hardcode.patch      |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/freetype/freetype-2.4.4/no-hardcode.patch b/meta/recipes-graphics/freetype/freetype-2.4.4/no-hardcode.patch
index 44ae450..0f21d1f 100644
--- a/meta/recipes-graphics/freetype/freetype-2.4.4/no-hardcode.patch
+++ b/meta/recipes-graphics/freetype/freetype-2.4.4/no-hardcode.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 --- freetype-2.1.10/builds/unix/freetype-config.in.old	2006-05-01 12:39:20.000000000 +0100
 +++ freetype-2.1.10/builds/unix/freetype-config.in	2006-05-01 12:39:34.000000000 +0100
 @@ -16,7 +16,7 @@
-- 
1.7.2


