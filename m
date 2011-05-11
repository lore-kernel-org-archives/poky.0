Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id E50DF4C80AB4
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:29:30 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 May 2011 23:29:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,350,1301900400"; 
   d="scan'208";a="157886"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by fmsmga002.fm.intel.com with ESMTP; 10 May 2011 23:29:29 -0700
Message-Id: <7487eb2a9a29f6cdd9354f6cd133a807edd057b5.1305094351.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1305094351.git.dexuan.cui@intel.com>
References: <cover.1305094351.git.dexuan.cui@intel.com>
Old-Date: Wed, 11 May 2011 11:41:56 +0800
Date: Wed, 11 May 2011 14:26:54 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 07/24] fontconfig: update its patch's Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 06:29:31 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../fontconfig-2.8.0/fix-pkgconfig.patch           |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/fontconfig/fontconfig-2.8.0/fix-pkgconfig.patch b/meta/recipes-graphics/fontconfig/fontconfig-2.8.0/fix-pkgconfig.patch
index 7fec1e9..c8a3bf5 100644
--- a/meta/recipes-graphics/fontconfig/fontconfig-2.8.0/fix-pkgconfig.patch
+++ b/meta/recipes-graphics/fontconfig/fontconfig-2.8.0/fix-pkgconfig.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 ---
  fontconfig.pc.in |    2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
-- 
1.7.2


