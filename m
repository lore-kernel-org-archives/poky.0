Return-Path: <richard@tim.rpsys.net>
Received: from smtp.elevenwireless.com (smtp.elevenwireless.com
	[69.48.211.177])
	by mx1.pokylinux.org (Postfix) with ESMTP id 742684C81200
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 16:16:43 -0600 (CST)
Received: from [216.151.15.131] (helo=rex)
	by smtp.elevenwireless.com with esmtp (Exim 4.63)
	(envelope-from <richard@tim.rpsys.net>) id 1PMpV0-00019x-H1
	for poky@pokylinux.org; Sun, 28 Nov 2010 14:13:35 -0800
Received: by rex (Postfix, from userid 1000)
	id 6F5B52AA5D; Sun, 28 Nov 2010 14:16:10 -0800 (PST)
Message-Id: <a146aa1e7e500981ff3f59d0917fcb59083cc6b0.1290982058.git.rpurdie@linux.intel.com>
In-Reply-To: <cover.1290982058.git.rpurdie@linux.intel.com>
References: <cover.1290982058.git.rpurdie@linux.intel.com>
From: Richard Purdie <rpurdie@linux.intel.com>
Date: Sun, 28 Nov 2010 15:02:44 +0000
To: poky@pokylinux.org
Subject: [PATCH 11/16] font-util: Set RDEPENDS for virtclass-native to exclude encodings to copy DEPENDS
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
X-List-Received-Date: Sun, 28 Nov 2010 22:16:43 -0000

Signed-off-by: Richard Purdie <rpurdie@linux.intel.com>
---
 meta/recipes-graphics/xorg-font/font-util_1.2.0.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb b/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb
index b9251e1..8f90176 100644
--- a/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb
+++ b/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb
@@ -13,6 +13,7 @@ PACKAGE_ARCH = "${BASE_PACKAGE_ARCH}"
 DEPENDS = "encodings util-macros"
 DEPENDS_virtclass-native = "util-macros-native"
 RDEPENDS = "mkfontdir mkfontscale encodings"
+RDEPENDS_virtclass-native = "mkfontdir-native mkfontscale-native"
 
 PR = "${INC_PR}.0"
 
-- 
1.7.0.4


