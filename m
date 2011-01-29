Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 987A94C811F9
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 20:30:17 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 28 Jan 2011 18:30:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,395,1291622400"; d="scan'208";a="597545984"
Received: from unknown (HELO helios) ([10.255.16.169])
	by orsmga002.jf.intel.com with SMTP; 28 Jan 2011 18:30:15 -0800
Received: by helios (sSMTP sendmail emulation); Sat, 29 Jan 2011 02:30:15 +0000
Message-Id: <90a2d3b277fe8aa838124072f4fb9ba24f089125.1296267951.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1296267951.git.paul.eggleton@linux.intel.com>
References: <cover.1296267951.git.paul.eggleton@linux.intel.com>
Old-Date: Fri, 14 Jan 2011 11:06:03 +0000
Date: Sat, 29 Jan 2011  2:30:15 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 06/12] glib-2.0: extend to nativesdk
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
X-List-Received-Date: Sat, 29 Jan 2011 02:30:17 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

This needs to be added to nativesdk for meta-toolchain-qte.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb |    2 +-
 meta/recipes-core/glib-2.0/glib.inc           |    1 +
 2 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb b/meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb
index b26da7b..cddb7ef 100644
--- a/meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb
+++ b/meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb
@@ -12,4 +12,4 @@ SRC_URI[md5sum] = "b7025b581bf78fcd656117bfc113f21f"
 SRC_URI[sha256sum] = "aad3038db865b762e01b1dc455ffd601b4083c069018d290e5fdfe1a61d328dc"
 
 SRC_URI_append_virtclass-native = " file://glib-gettextize-dir.patch"
-BBCLASSEXTEND = "native"
+BBCLASSEXTEND = "native nativesdk"
diff --git a/meta/recipes-core/glib-2.0/glib.inc b/meta/recipes-core/glib-2.0/glib.inc
index 0b6e752..0319b9d 100644
--- a/meta/recipes-core/glib-2.0/glib.inc
+++ b/meta/recipes-core/glib-2.0/glib.inc
@@ -17,6 +17,7 @@ require glib-2.0.inc
 
 DEPENDS = "glib-2.0-native gtk-doc-native virtual/libiconv virtual/libintl zip dbus"
 DEPENDS_virtclass-native = "gtk-doc-native pkgconfig-native gettext-native dbus-native"
+DEPENDS_virtclass-nativesdk = "libtool-nativesdk"
 PACKAGES =+ "glib-2.0-utils "
 
 LEAD_SONAME = "libglib-2.0.*"
-- 
1.7.1


