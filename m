Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8CC614C811E5
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 00:28:16 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 07 Dec 2010 22:28:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,315,1288594800"; d="scan'208";a="634244997"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga002.fm.intel.com with ESMTP; 07 Dec 2010 22:28:15 -0800
Message-Id: <85d519cb63a3b3d9adb7fa88154e18a5b8080ad0.1291790130.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291790130.git.dongxiao.xu@intel.com>
References: <cover.1291790130.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 7 Dec 2010 16:56:37 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/7] gupnp: upgrade to version 0.14.0
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
X-List-Received-Date: Wed, 08 Dec 2010 06:28:16 -0000

Derive introspection.m4 from gobject-introspection package to solve the
autoreconf issue.

Add option "--disable-introspection" since gobject-introspection breaks
cross compile.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gupnp/{gupnp_0.13.2.bb => gupnp_0.14.0.bb}     |   10 ++++++++--
 1 files changed, 8 insertions(+), 2 deletions(-)
 rename meta/recipes-connectivity/gupnp/{gupnp_0.13.2.bb => gupnp_0.14.0.bb} (81%)

diff --git a/meta/recipes-connectivity/gupnp/gupnp_0.13.2.bb b/meta/recipes-connectivity/gupnp/gupnp_0.14.0.bb
similarity index 81%
rename from meta/recipes-connectivity/gupnp/gupnp_0.13.2.bb
rename to meta/recipes-connectivity/gupnp/gupnp_0.14.0.bb
index 1a3517b..2fa2f7b 100644
--- a/meta/recipes-connectivity/gupnp/gupnp_0.13.2.bb
+++ b/meta/recipes-connectivity/gupnp/gupnp_0.14.0.bb
@@ -5,8 +5,11 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7 \
                     file://libgupnp/gupnp.h;beginline=1;endline=20;md5=28c49b17d623afc3335efc2e511879e1"
 DEPENDS = "e2fsprogs gssdp libsoup-2.4 libxml2 gnome-icon-theme"
 
-SRC_URI = "http://gupnp.org/sites/all/files/sources/${PN}-${PV}.tar.gz"
-PR = "r1"
+SRC_URI = "http://gupnp.org/sites/all/files/sources/${PN}-${PV}.tar.gz \
+           file://introspection.patch"
+PR = "r0"
+
+EXTRA_OECONF = "--disable-introspection"
 
 inherit autotools pkgconfig
 
@@ -19,3 +22,6 @@ gupnp_sysroot_preprocess () {
 	install -d ${SYSROOT_DESTDIR}${STAGING_BINDIR_CROSS}/
 	install -m 755 ${D}${bindir}/gupnp-binding-tool ${SYSROOT_DESTDIR}${STAGING_BINDIR_CROSS}/
 }
+
+SRC_URI[md5sum] = "8598922256faa5adb28657d0c10a3e3e"
+SRC_URI[sha256sum] = "6ac13efe46c6f1e5d05e48e1041bf37dfa702839ce5fbb01e0f314f3904b6a16"
-- 
1.6.3.3


