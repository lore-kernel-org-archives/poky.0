Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B697E0158A
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:40:29 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 20 Aug 2013 01:40:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="383551860"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2013 01:40:17 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id 9B5136A4007;
	Tue, 20 Aug 2013 01:40:14 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:44:56 +0200
Message-Id: <bc1996c7d83c0255b97823fa4dfd5a8da794289d.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 014/186] mkfontscale: upgrade to 1.1.1
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 20 Aug 2013 08:40:29 -0000

From: Cristiana Voicu <cristiana.voicu@intel.com>

(From OE-Core rev: d3fcee05e0b3a1ecc9f7481fb41c5c5a29cf9abd)

Signed-off-by: Cristiana Voicu <cristiana.voicu@intel.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../{mkfontscale_1.1.0.bb => mkfontscale_1.1.1.bb} |    6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)
 rename meta/recipes-graphics/xorg-app/{mkfontscale_1.1.0.bb => mkfontscale_1.1.1.bb} (78%)

diff --git a/meta/recipes-graphics/xorg-app/mkfontscale_1.1.0.bb b/meta/recipes-graphics/xorg-app/mkfontscale_1.1.1.bb
similarity index 78%
rename from meta/recipes-graphics/xorg-app/mkfontscale_1.1.0.bb
rename to meta/recipes-graphics/xorg-app/mkfontscale_1.1.1.bb
index d98057b..3d248d1 100644
--- a/meta/recipes-graphics/xorg-app/mkfontscale_1.1.0.bb
+++ b/meta/recipes-graphics/xorg-app/mkfontscale_1.1.1.bb
@@ -10,11 +10,9 @@ is used by the mkfontdir program."
 
 DEPENDS += " zlib libfontenc freetype virtual/libx11"
 
-PR = "${INC_PR}.0"
-
 BBCLASSEXTEND = "native"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=2e0d129d05305176d1a790e0ac1acb7f"
 
-SRC_URI[md5sum] = "414fcb053418fb1418e3a39f4a37e0f7"
-SRC_URI[sha256sum] = "ce55f862679b8ec127d7f7315ac04a8d64a0d90a0309a70dc56c1ba3f9806994"
+SRC_URI[md5sum] = "03de3f15db678e277f5ef9c013aca1ad"
+SRC_URI[sha256sum] = "244017992477ced2397a44fd0ddcfb0f1d9899128613f5c4db81471163b0b731"
-- 
1.7.9.5


