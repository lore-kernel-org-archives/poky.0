Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D1DB54C80053
	for <poky@yoctoproject.org>; Thu, 10 Feb 2011 08:23:43 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Feb 2011 06:23:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,451,1291622400"; d="scan'208";a="601329985"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 10 Feb 2011 06:23:42 -0800
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org
Date: Thu, 10 Feb 2011 22:25:45 +0800
Message-Id: <35f21866bcb30df5f67ab7b7664109b13fc7454c.1297344410.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1297344409.git.ke.yu@intel.com>
References: <cover.1297344409.git.ke.yu@intel.com>
Subject: [PATCH 1/2] mesa-xlib-7.10: add missing dependency makedepend
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
X-List-Received-Date: Thu, 10 Feb 2011 14:23:44 -0000

mesa 7.10 has dependency on makedepend-native, so add it
to resolve the configure failure

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/recipes-graphics/mesa/mesa-xlib_7.10.bb |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-graphics/mesa/mesa-xlib_7.10.bb b/meta/recipes-graphics/mesa/mesa-xlib_7.10.bb
index 5cc719e..c8eb88f 100644
--- a/meta/recipes-graphics/mesa/mesa-xlib_7.10.bb
+++ b/meta/recipes-graphics/mesa/mesa-xlib_7.10.bb
@@ -12,9 +12,9 @@ LIC_FILES_CHKSUM = "file://docs/license.html;md5=7a3373c039b6b925c427755a4f779c1
 PROTO_DEPS = "xf86driproto glproto"
 LIB_DEPS = "virtual/libx11 libxext libxxf86vm libxdamage libxfixes libxml2-native"
 
-DEPENDS = "${PROTO_DEPS}  ${LIB_DEPS}"
+DEPENDS = "${PROTO_DEPS}  ${LIB_DEPS} makedepend-native"
 
 PE = "1"
-PR = "r0"
+PR = "r1"
 
 EXTRA_OECONF += "--with-driver=xlib"
-- 
1.7.0.4


