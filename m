Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 35DB94C81174
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 05:21:26 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Nov 2010 03:21:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,222,1288594800"; d="scan'208";a="679076578"
Received: from gzhai-nhm.sh.intel.com (HELO localhost) ([10.239.36.111])
	by orsmga001.jf.intel.com with ESMTP; 19 Nov 2010 03:21:25 -0800
Message-Id: <4fd0f6d4177b6d20be8e9a8bb370a993bbe81e19.1290165996.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290165996.git.edwin.zhai@intel.com>
References: <cover.1290165996.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 19 Nov 2010 08:00:34 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 02/17] libassuan: Update to 2.0.1
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
X-List-Received-Date: Fri, 19 Nov 2010 11:21:26 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../{libassuan_2.0.0.bb => libassuan_2.0.1.bb}     |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-support/libassuan/{libassuan_2.0.0.bb => libassuan_2.0.1.bb} (72%)

diff --git a/meta/recipes-support/libassuan/libassuan_2.0.0.bb b/meta/recipes-support/libassuan/libassuan_2.0.1.bb
similarity index 72%
rename from meta/recipes-support/libassuan/libassuan_2.0.0.bb
rename to meta/recipes-support/libassuan/libassuan_2.0.1.bb
index 1193401..ef918f4 100644
--- a/meta/recipes-support/libassuan/libassuan_2.0.0.bb
+++ b/meta/recipes-support/libassuan/libassuan_2.0.1.bb
@@ -5,8 +5,8 @@ BUGTRACKER = "https://bugs.g10code.com/gnupg/index"
 LICENSE = "GPLv3 & LGPLv2.1+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=f27defe1e96c2e1ecd4e0c9be8967949 \
                     file://COPYING.LIB;md5=2d5025d4aa3495befef8f17206a5b0a1 \
-                    file://src/assuan.h;endline=20;md5=8a6f091b9d114f0e06aa91cb3460154c \
-                    file://src/assuan-defs.h;endline=20;md5=c51ca5e56b000d79d500eee7cd8dc2e5"
+                    file://src/assuan.c;endline=20;md5=fbd7f2a44aab170430d59380f94f85f8 \
+                    file://src/assuan-defs.h;endline=20;md5=20cd55535260ca1779edae5c7b80b21e"
 
 DEPENDS = "libgpg-error"
 
-- 
1.6.3.3


