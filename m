Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5B4ED4C80FBB
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:29:39 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 May 2011 23:29:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,350,1301900400"; 
   d="scan'208";a="157911"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by fmsmga002.fm.intel.com with ESMTP; 10 May 2011 23:29:38 -0700
Message-Id: <23d741de2f3f47ad5b02b79931a33dd18c6cea73.1305094351.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1305094351.git.dexuan.cui@intel.com>
References: <cover.1305094351.git.dexuan.cui@intel.com>
Old-Date: Wed, 11 May 2011 13:17:16 +0800
Date: Wed, 11 May 2011 14:27:02 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 14/24] libxcomposite: update its patch's Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 06:29:39 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../libxcomposite/change-include-order.patch       |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/xorg-lib/libxcomposite/change-include-order.patch b/meta/recipes-graphics/xorg-lib/libxcomposite/change-include-order.patch
index 848beff..60331f6 100644
--- a/meta/recipes-graphics/xorg-lib/libxcomposite/change-include-order.patch
+++ b/meta/recipes-graphics/xorg-lib/libxcomposite/change-include-order.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 This patch makes the build use its own Xcomposite.h over rather than an
 older Xcomposite.h that might already be installed in the staging dir.
 
-- 
1.7.2


