Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id BFCF24C8123C
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 17:41:24 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 15:41:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="597180186"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga002.jf.intel.com with ESMTP; 27 Jan 2011 15:41:22 -0800
Message-Id: <3ae33761df9f87b8d2397303642e37b0a3c71c63.1296171288.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1296171287.git.dexuan.cui@intel.com>
References: <cover.1296171287.git.dexuan.cui@intel.com>
Old-Date: Thu, 27 Jan 2011 19:09:23 +0800
Date: Fri, 28 Jan 2011  7:40:42 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [Dexuan: Jan 28: PULL 02/16] freetype: upgrade from 2.4.3 to 2.4.4
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
X-List-Received-Date: Thu, 27 Jan 2011 23:41:24 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../no-hardcode.patch                              |    0
 .../{freetype_2.4.3.bb => freetype_2.4.4.bb}       |    4 ++--
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-graphics/freetype/{freetype-2.4.3 => freetype-2.4.4}/no-hardcode.patch (100%)
 rename meta/recipes-graphics/freetype/{freetype_2.4.3.bb => freetype_2.4.4.bb} (91%)

diff --git a/meta/recipes-graphics/freetype/freetype-2.4.3/no-hardcode.patch b/meta/recipes-graphics/freetype/freetype-2.4.4/no-hardcode.patch
similarity index 100%
rename from meta/recipes-graphics/freetype/freetype-2.4.3/no-hardcode.patch
rename to meta/recipes-graphics/freetype/freetype-2.4.4/no-hardcode.patch
diff --git a/meta/recipes-graphics/freetype/freetype_2.4.3.bb b/meta/recipes-graphics/freetype/freetype_2.4.4.bb
similarity index 91%
rename from meta/recipes-graphics/freetype/freetype_2.4.3.bb
rename to meta/recipes-graphics/freetype/freetype_2.4.4.bb
index 63061fb..661650c 100644
--- a/meta/recipes-graphics/freetype/freetype_2.4.3.bb
+++ b/meta/recipes-graphics/freetype/freetype_2.4.4.bb
@@ -18,8 +18,8 @@ PR = "r0"
 SRC_URI = "${SOURCEFORGE_MIRROR}/freetype/freetype-${PV}.tar.bz2 \
            file://no-hardcode.patch"
 
-SRC_URI[md5sum] = "75ac7082bde7b3805dc5d6bc806fa045"
-SRC_URI[sha256sum] = "b4e626db62fd1b4549ff5d57f5eca3a41631fd6066adf8a31c11879b51249afc"
+SRC_URI[md5sum] = "b3e2b6e2f1c3e0dffa1fd2a0f848b671"
+SRC_URI[sha256sum] = "4b8281c7dc4d375c6b65d3c6f4808e488a313fab47d7be82aad2c871c8480fef"
 
 S = "${WORKDIR}/freetype-${PV}"
 
-- 
1.7.2


