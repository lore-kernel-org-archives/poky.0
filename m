Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 46A394C800B9
	for <poky@yoctoproject.org>; Wed,  9 Feb 2011 07:58:45 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Feb 2011 05:58:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,446,1291622400"; d="scan'208";a="600954824"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 09 Feb 2011 05:58:44 -0800
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org
Date: Wed,  9 Feb 2011 22:00:52 +0800
Message-Id: <fcbbc5978dc297151b89b34a6aefbc4dfebe02d1.1297258936.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1297258935.git.ke.yu@intel.com>
References: <cover.1297258935.git.ke.yu@intel.com>
Subject: [PATCH 2/4] mesa-7.10: set mesa 7.10 as default instead of 7.8.2
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
X-List-Received-Date: Wed, 09 Feb 2011 13:58:45 -0000

originally mesa 7.8.2 is set as default because 7.10
has depency of GPLv3 talloc. since mesa 7.10 has resolved
the GPLv3 talloc dependency issue, it is safe to set 7.10
as default

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 meta/recipes-graphics/mesa/mesa-dri_7.10.bb        |    5 ++++-
 meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb       |    5 +----
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index 3a4bd33..b164b77 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -135,7 +135,7 @@ PREFERRED_VERSION_xtrans-native ?= "1.2.6"
 PREFERRED_VERSION_xtrans-nativesdk ?= "1.2.6"
 PREFERRED_VERSION_xvinfo ?= "1.1.1"
 PREFERRED_VERSION_xwininfo ?= "1.1.1"
-PREFERRED_VERSION_mesa-dri ?= "7.8.2"
+PREFERRED_VERSION_mesa-dri ?= "7.10"
 PREFERRED_VERSION_libdrm ?= "2.4.23"
 PREFERRED_VERSION_xcb-proto ?= "1.6"
 PREFERRED_VERSION_libxcb ?= "1.7"
diff --git a/meta/recipes-graphics/mesa/mesa-dri_7.10.bb b/meta/recipes-graphics/mesa/mesa-dri_7.10.bb
index 1984ff6..cca1cc9 100644
--- a/meta/recipes-graphics/mesa/mesa-dri_7.10.bb
+++ b/meta/recipes-graphics/mesa/mesa-dri_7.10.bb
@@ -8,7 +8,7 @@ LIB_DEPS = "libdrm virtual/libx11 libxext libxxf86vm libxdamage libxfixes expat
 
 DEPENDS = "${PROTO_DEPS}  ${LIB_DEPS}"
 
-PR = "r1"
+PR = "r2"
 
 SRC_URI = "ftp://ftp.freedesktop.org/pub/mesa/${PV}/MesaLib-${PV}.tar.bz2 \
            file://talloc-removal.patch \
@@ -20,6 +20,9 @@ SRC_URI[sha256sum] = "bcf28f43f39c28da271c0f5857fb32898d4ade3e035e80a0ceece1c2df
 # most of our targets do not have DRI so will use mesa-xlib
 DEFAULT_PREFERENCE = "-1"
 
+# Atom PCs have DRI support so use mesa-dri by default
+DEFAULT_PREFERENCE_atom-pc = "1"
+
 LEAD_SONAME = "libGL.so.1"
 
 EXTRA_OECONF += "--with-driver=dri --disable-egl --disable-gallium"
diff --git a/meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb b/meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb
index 60edddf..1b4606d 100644
--- a/meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb
+++ b/meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb
@@ -7,7 +7,7 @@ LIB_DEPS = "libdrm virtual/libx11 libxext libxxf86vm libxdamage libxfixes expat"
 
 DEPENDS = "${PROTO_DEPS}  ${LIB_DEPS} mesa-dri-glsl-native"
 
-PR = "r2"
+PR = "r3"
 
 SRC_URI += "file://crossfix.patch"
 
@@ -20,9 +20,6 @@ SRC_URI[mesademos.sha256sum] = "ea7b9ebfb7a80de2b275c0c9124c8a505382ec48411a2794
 # most of our targets do not have DRI so will use mesa-xlib
 DEFAULT_PREFERENCE = "-1"
 
-# Atom PCs have DRI support so use mesa-dri by default
-DEFAULT_PREFERENCE_atom-pc = "1"
-
 LEAD_SONAME = "libGL.so.1"
 
 EXTRA_OECONF += "--with-driver=dri --disable-egl --disable-gallium"
-- 
1.7.0.4


