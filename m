Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 95C8E4C811E7
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 07:07:57 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Jan 2011 05:05:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,278,1291622400"; d="scan'208";a="370354697"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by azsmga001.ch.intel.com with ESMTP; 05 Jan 2011 05:05:57 -0800
Message-Id: <f610afd0fb61cfe92b158d83001e2449ac43867e.1294232460.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1294232460.git.dexuan.cui@intel.com>
References: <cover.1294232460.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Wed, 5 Jan 2011 20:10:52 +0800
Date: Wed, 05 Jan 2011 21:05:41 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 02/12] inputproto: upgrade from 2.0 to 2.0.1
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
X-List-Received-Date: Wed, 05 Jan 2011 13:07:57 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../{inputproto_2.0.bb => inputproto_2.0.1.bb}     |    7 ++++---
 1 files changed, 4 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{inputproto_2.0.bb => inputproto_2.0.1.bb} (65%)

diff --git a/meta/recipes-graphics/xorg-proto/inputproto_2.0.bb b/meta/recipes-graphics/xorg-proto/inputproto_2.0.1.bb
similarity index 65%
rename from meta/recipes-graphics/xorg-proto/inputproto_2.0.bb
rename to meta/recipes-graphics/xorg-proto/inputproto_2.0.1.bb
index 1b63be5..27462ed 100644
--- a/meta/recipes-graphics/xorg-proto/inputproto_2.0.bb
+++ b/meta/recipes-graphics/xorg-proto/inputproto_2.0.1.bb
@@ -4,12 +4,13 @@ LICENSE = "MIT & MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=b9f79c119df756aeffcb89ec96716a9e \
                     file://XI2proto.h;endline=48;md5=1ac1581e61188da2885cc14ff49b20be"
 
-PR = "r2"
+PR = "r0"
 PE = "1"
 
 inherit gettext
 
 BBCLASSEXTEND = "native nativesdk"
 
-SRC_URI[md5sum] = "0f7acbc14a082f9ae03744396527d23d"
-SRC_URI[sha256sum] = "472f57f7928ab20a1303a25982c4091db9674c2729bbd692c9a7204e23ea1af4"
+SRC_URI[md5sum] = "da9bf9e5d174163f597d2d72757d9038"
+SRC_URI[sha256sum] = "63663dd88df812738e0efdc52a18868c0756128f09748cbe89c8ec6d17124a44"
+
-- 
1.7.2


