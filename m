Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 07B1A4C800B9
	for <poky@yoctoproject.org>; Wed,  9 Feb 2011 07:58:46 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 09 Feb 2011 05:58:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,446,1291622400"; d="scan'208";a="885852628"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 09 Feb 2011 05:58:46 -0800
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org
Date: Wed,  9 Feb 2011 22:00:54 +0800
Message-Id: <706c6eb85054d71967f8fcebd2bdb0bb70e2f1e4.1297258936.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1297258935.git.ke.yu@intel.com>
References: <cover.1297258935.git.ke.yu@intel.com>
Subject: [PATCH 3/4] mesa-xlib: upgrade to 7.10
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
X-List-Received-Date: Wed, 09 Feb 2011 13:58:47 -0000

- add patch to replace GPLv3 talloc with ralloc
- add SRC_URI checksum

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../mesa/{mesa-xlib_7.9.bb => mesa-xlib_7.10.bb}   |   11 ++++++++---
 1 files changed, 8 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/mesa/{mesa-xlib_7.9.bb => mesa-xlib_7.10.bb} (60%)

diff --git a/meta/recipes-graphics/mesa/mesa-xlib_7.9.bb b/meta/recipes-graphics/mesa/mesa-xlib_7.10.bb
similarity index 60%
rename from meta/recipes-graphics/mesa/mesa-xlib_7.9.bb
rename to meta/recipes-graphics/mesa/mesa-xlib_7.10.bb
index a816e93..5cc719e 100644
--- a/meta/recipes-graphics/mesa/mesa-xlib_7.9.bb
+++ b/meta/recipes-graphics/mesa/mesa-xlib_7.10.bb
@@ -1,15 +1,20 @@
 include mesa-common.inc
 
-SRC_URI = "ftp://ftp.freedesktop.org/pub/mesa/${PV}/MesaLib-${PV}.tar.bz2"
+SRC_URI = "ftp://ftp.freedesktop.org/pub/mesa/${PV}/MesaLib-${PV}.tar.bz2 \
+           file://talloc-removal.patch \
+           "
+
+SRC_URI[md5sum] = "33fb94eccc02cbb4d8d1365615e38e46"
+SRC_URI[sha256sum] = "bcf28f43f39c28da271c0f5857fb32898d4ade3e035e80a0ceece1c2df6e0aca"
 
 LIC_FILES_CHKSUM = "file://docs/license.html;md5=7a3373c039b6b925c427755a4f779c1d"
 
 PROTO_DEPS = "xf86driproto glproto"
-LIB_DEPS = "virtual/libx11 libxext libxxf86vm libxdamage libxfixes talloc libxml2-native"
+LIB_DEPS = "virtual/libx11 libxext libxxf86vm libxdamage libxfixes libxml2-native"
 
 DEPENDS = "${PROTO_DEPS}  ${LIB_DEPS}"
 
 PE = "1"
-PR = "r1"
+PR = "r0"
 
 EXTRA_OECONF += "--with-driver=xlib"
-- 
1.7.0.4


