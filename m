Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id E2EDB4C811F8
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 07:07:57 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Jan 2011 05:05:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,278,1291622400"; d="scan'208";a="370354701"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by azsmga001.ch.intel.com with ESMTP; 05 Jan 2011 05:05:58 -0800
Message-Id: <3e162a15842c319b27fa82eed09ce4e3d63f54db.1294232460.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1294232460.git.dexuan.cui@intel.com>
References: <cover.1294232460.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Wed, 5 Jan 2011 20:12:10 +0800
Date: Wed, 05 Jan 2011 21:05:42 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 03/12] xproto: upgrade from 7.0.19 to 7.0.20
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
X-List-Received-Date: Wed, 05 Jan 2011 13:07:58 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../{xproto_7.0.19.bb => xproto_7.0.20.bb}         |    7 ++++---
 1 files changed, 4 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{xproto_7.0.19.bb => xproto_7.0.20.bb} (59%)

diff --git a/meta/recipes-graphics/xorg-proto/xproto_7.0.19.bb b/meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb
similarity index 59%
rename from meta/recipes-graphics/xorg-proto/xproto_7.0.19.bb
rename to meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb
index 1e968c5..0586742 100644
--- a/meta/recipes-graphics/xorg-proto/xproto_7.0.19.bb
+++ b/meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb
@@ -3,11 +3,12 @@ require xorg-proto-common.inc
 LICENSE = "MIT & MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=70c104816b85de375ba1fc09199d0e69"
 
-PR = "r1"
+PR = "r0"
 PE = "1"
 
 EXTRA_OECONF_append = "--enable-specs=no"
 BBCLASSEXTEND = "native nativesdk"
 
-SRC_URI[md5sum] = "700f8663c23713c2a81a6038a7d358f0"
-SRC_URI[sha256sum] = "47b14f6da8c57a726ef1cfa5964a4a6cf9505bc6d78f69d3ae89f4b19956fc2a"
+SRC_URI[md5sum] = "65633168e5315c19defb4652cd3d83c1"
+SRC_URI[sha256sum] = "3fe87fe47d9b795e60ba3715d71f90f9929d57e9048f1d2a6ebb558e5aee9e2a"
+
-- 
1.7.2


