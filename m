Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 45C2D4C811F6
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 20:29:27 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Dec 2010 18:29:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,247,1291622400"; d="scan'208";a="691842783"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga001.jf.intel.com with ESMTP; 29 Dec 2010 18:29:26 -0800
Message-Id: <15f4f701f2c7c2119492479c9cdac25578d90d6f.1293676328.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1293676328.git.dongxiao.xu@intel.com>
References: <cover.1293676328.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Wed, 29 Dec 2010 14:56:01 +0800
Date: Thu, 30 Dec 2010 10:39:12 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 12/19] glib-2.0: upgrade to version 2.27.5
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
X-List-Received-Date: Thu, 30 Dec 2010 02:29:27 -0000

upgrade from 2.27.3 to 2.27.5

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../60_wait-longer-for-threads-to-die.patch        |    0
 .../configure-libtool.patch                        |    0
 .../glib-gettextize-dir.patch                      |    0
 .../{glib-2.0_2.27.3.bb => glib-2.0_2.27.5.bb}     |    4 ++--
 4 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-core/glib-2.0/{glib-2.0-2.27.3 => glib-2.0-2.27.5}/60_wait-longer-for-threads-to-die.patch (100%)
 rename meta/recipes-core/glib-2.0/{glib-2.0-2.27.3 => glib-2.0-2.27.5}/configure-libtool.patch (100%)
 rename meta/recipes-core/glib-2.0/{glib-2.0-2.27.3 => glib-2.0-2.27.5}/glib-gettextize-dir.patch (100%)
 rename meta/recipes-core/glib-2.0/{glib-2.0_2.27.3.bb => glib-2.0_2.27.5.bb} (68%)

diff --git a/meta/recipes-core/glib-2.0/glib-2.0-2.27.3/60_wait-longer-for-threads-to-die.patch b/meta/recipes-core/glib-2.0/glib-2.0-2.27.5/60_wait-longer-for-threads-to-die.patch
similarity index 100%
rename from meta/recipes-core/glib-2.0/glib-2.0-2.27.3/60_wait-longer-for-threads-to-die.patch
rename to meta/recipes-core/glib-2.0/glib-2.0-2.27.5/60_wait-longer-for-threads-to-die.patch
diff --git a/meta/recipes-core/glib-2.0/glib-2.0-2.27.3/configure-libtool.patch b/meta/recipes-core/glib-2.0/glib-2.0-2.27.5/configure-libtool.patch
similarity index 100%
rename from meta/recipes-core/glib-2.0/glib-2.0-2.27.3/configure-libtool.patch
rename to meta/recipes-core/glib-2.0/glib-2.0-2.27.5/configure-libtool.patch
diff --git a/meta/recipes-core/glib-2.0/glib-2.0-2.27.3/glib-gettextize-dir.patch b/meta/recipes-core/glib-2.0/glib-2.0-2.27.5/glib-gettextize-dir.patch
similarity index 100%
rename from meta/recipes-core/glib-2.0/glib-2.0-2.27.3/glib-gettextize-dir.patch
rename to meta/recipes-core/glib-2.0/glib-2.0-2.27.5/glib-gettextize-dir.patch
diff --git a/meta/recipes-core/glib-2.0/glib-2.0_2.27.3.bb b/meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb
similarity index 68%
rename from meta/recipes-core/glib-2.0/glib-2.0_2.27.3.bb
rename to meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb
index 30e208a..442738a 100644
--- a/meta/recipes-core/glib-2.0/glib-2.0_2.27.3.bb
+++ b/meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb
@@ -6,8 +6,8 @@ SRC_URI = "http://ftp.gnome.org/pub/GNOME/sources/glib/2.27/glib-${PV}.tar.bz2 \
            file://configure-libtool.patch \
            file://60_wait-longer-for-threads-to-die.patch"
 
-SRC_URI[md5sum] = "d3e976ff92b55b6064a0eb3110f36158"
-SRC_URI[sha256sum] = "c44177b635e88639361eb1daf7aaa33315a00aaf46db5accf2f11920c7ff1919"
+SRC_URI[md5sum] = "b7025b581bf78fcd656117bfc113f21f"
+SRC_URI[sha256sum] = "aad3038db865b762e01b1dc455ffd601b4083c069018d290e5fdfe1a61d328dc"
 
 SRC_URI_append_virtclass-native = " file://glib-gettextize-dir.patch"
 BBCLASSEXTEND = "native"
-- 
1.6.3.3


