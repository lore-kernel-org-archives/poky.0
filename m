Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9EA7F4C811F5
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 10:54:24 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Jan 2011 08:54:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,333,1291622400"; d="scan'208";a="593742444"
Received: from unknown (HELO helios) ([10.255.16.105])
	by orsmga002.jf.intel.com with SMTP; 17 Jan 2011 08:54:22 -0800
Received: by helios (sSMTP sendmail emulation); Mon, 17 Jan 2011 16:54:15 +0000
Message-Id: <865b865a7493f3c54a7a64cb7c6d8e1b16adcc29.1295282922.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1295282922.git.paul.eggleton@linux.intel.com>
References: <cover.1295282922.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Old-Date: Fri, 14 Jan 2011 11:06:03 +0000
Date: Mon, 17 Jan 2011 16:54:15 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/8] glib-2.0: extend to nativesdk
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
X-List-Received-Date: Mon, 17 Jan 2011 16:54:24 -0000

This needs to be added to nativesdk for meta-toolchain-qte.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb |    2 +-
 meta/recipes-core/glib-2.0/glib.inc           |    1 +
 2 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb b/meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb
index 314d942..fb080b9 100644
--- a/meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb
+++ b/meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb
@@ -12,4 +12,4 @@ SRC_URI[md5sum] = "b7025b581bf78fcd656117bfc113f21f"
 SRC_URI[sha256sum] = "aad3038db865b762e01b1dc455ffd601b4083c069018d290e5fdfe1a61d328dc"
 
 SRC_URI_append_virtclass-native = " file://glib-gettextize-dir.patch"
-BBCLASSEXTEND = "native"
+BBCLASSEXTEND = "native nativesdk"
diff --git a/meta/recipes-core/glib-2.0/glib.inc b/meta/recipes-core/glib-2.0/glib.inc
index b0df84e..ee3f9ad 100644
--- a/meta/recipes-core/glib-2.0/glib.inc
+++ b/meta/recipes-core/glib-2.0/glib.inc
@@ -17,6 +17,7 @@ require glib-2.0.inc
 
 DEPENDS = "glib-2.0-native gtk-doc-native virtual/libiconv virtual/libintl zip"
 DEPENDS_virtclass-native = "gtk-doc-native pkgconfig-native gettext-native"
+DEPENDS_virtclass-nativesdk = "libtool-nativesdk"
 PACKAGES =+ "glib-2.0-utils "
 
 LEAD_SONAME = "libglib-2.0.*"
-- 
1.7.1


