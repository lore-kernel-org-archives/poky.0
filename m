Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B48394C811F8
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 06:15:18 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Jan 2011 04:15:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,329,1291622400"; d="scan'208";a="877893683"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 16 Jan 2011 04:15:18 -0800
Message-Id: <f7c231a439d14d3d4b998d544b185d8821279873.1295179186.git.ke.yu@intel.com>
In-Reply-To: <cover.1295179186.git.ke.yu@intel.com>
References: <cover.1295179186.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Fri, 14 Jan 2011 16:39:59 +0800
Date: Sun, 16 Jan 2011 20:19:54 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 16/19] mesa: upgrade to mesa 7.10
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
X-List-Received-Date: Sun, 16 Jan 2011 12:15:18 -0000

- add SRC_URI checksum
- remove the DEFAULT_PREFERENCE for atom_pc, since mesa 7.10 has dependency on GPLv3 talloc. the latest non-GPLv3 one is mesa 7.8.2, atom_pc can use that vesion.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../mesa/{mesa-dri_7.9.bb => mesa-dri_7.10.bb}     |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)
 rename meta/recipes-graphics/mesa/{mesa-dri_7.9.bb => mesa-dri_7.10.bb} (83%)

diff --git a/meta/recipes-graphics/mesa/mesa-dri_7.9.bb b/meta/recipes-graphics/mesa/mesa-dri_7.10.bb
similarity index 83%
rename from meta/recipes-graphics/mesa/mesa-dri_7.9.bb
rename to meta/recipes-graphics/mesa/mesa-dri_7.10.bb
index 313b655..3031e4b 100644
--- a/meta/recipes-graphics/mesa/mesa-dri_7.9.bb
+++ b/meta/recipes-graphics/mesa/mesa-dri_7.10.bb
@@ -6,19 +6,19 @@ PROTO_DEPS = "xf86driproto glproto dri2proto"
 LIB_DEPS = "libdrm virtual/libx11 libxext libxxf86vm libxdamage libxfixes expat \
             libxml2-native talloc"
 
-DEPENDS = "${PROTO_DEPS}  ${LIB_DEPS} mesa-dri-glsl-native"
+DEPENDS = "${PROTO_DEPS}  ${LIB_DEPS}"
 
-PR = "r1"
+PR = "r0"
 
 SRC_URI = "ftp://ftp.freedesktop.org/pub/mesa/${PV}/MesaLib-${PV}.tar.bz2 \
            file://crossfix.patch"
 
+SRC_URI[md5sum] = "33fb94eccc02cbb4d8d1365615e38e46"
+SRC_URI[sha256sum] = "bcf28f43f39c28da271c0f5857fb32898d4ade3e035e80a0ceece1c2df6e0aca"
+
 # most of our targets do not have DRI so will use mesa-xlib
 DEFAULT_PREFERENCE = "-1"
 
-# Atom PCs have DRI support so use mesa-dri by default
-DEFAULT_PREFERENCE_atom-pc = "1"
-
 LEAD_SONAME = "libGL.so.1"
 
 EXTRA_OECONF += "--with-driver=dri --disable-egl --disable-gallium"
-- 
1.7.0.4


