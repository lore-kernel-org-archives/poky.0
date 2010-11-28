Return-Path: <richard@tim.rpsys.net>
Received: from smtp.elevenwireless.com (smtp.elevenwireless.com
	[69.48.211.177])
	by mx1.pokylinux.org (Postfix) with ESMTP id 54CFC4C811FD
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 16:16:43 -0600 (CST)
Received: from [216.151.15.131] (helo=rex)
	by smtp.elevenwireless.com with esmtp (Exim 4.63)
	(envelope-from <richard@tim.rpsys.net>) id 1PMpV0-00019w-H9
	for poky@pokylinux.org; Sun, 28 Nov 2010 14:13:35 -0800
Received: by rex (Postfix, from userid 1000)
	id 7D23A2AA5E; Sun, 28 Nov 2010 14:16:10 -0800 (PST)
Message-Id: <2bcbb2f93f18fd9a087fd24717d153d3e556bf66.1290982058.git.rpurdie@linux.intel.com>
In-Reply-To: <cover.1290982058.git.rpurdie@linux.intel.com>
References: <cover.1290982058.git.rpurdie@linux.intel.com>
From: Richard Purdie <rpurdie@linux.intel.com>
Date: Sun, 28 Nov 2010 15:19:44 +0000
To: poky@pokylinux.org
Subject: [PATCH 12/16] font-alias: Set RDEPENDS to exclude encodings in the native case
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
 .../recipes-graphics/xorg-font/font-alias_1.0.3.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb b/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb
index 11ad407..667d615 100644
--- a/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb
+++ b/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb
@@ -13,6 +13,7 @@ SRC_URI += "file://fix_COPYING_1f8141a5e3b585dfccc748400b05c9c24b41e767.patch"
 
 DEPENDS = "virtual/xserver font-util"
 RDEPENDS = "encodings font-util"
+RDEPENDS_virtclass-native = "font-util"
 
 PE = "1"
 PR = "${INC_PR}.0"
-- 
1.7.0.4


