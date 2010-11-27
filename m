Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B4AD64C811F4
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 00:09:39 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 28 Nov 2010 22:09:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,274,1288594800"; d="scan'208";a="862205758"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga001.fm.intel.com with ESMTP; 28 Nov 2010 22:09:39 -0800
Message-Id: <72b22a13db7233c2c5f7440ece7a9058a2622fa7.1291011420.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291011420.git.dongxiao.xu@intel.com>
References: <cover.1291011420.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Sat, 27 Nov 2010 23:51:20 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 06/13] gupnp: Update LICENSE and LIC_FILES_CHKSUM info
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
X-List-Received-Date: Mon, 29 Nov 2010 06:09:39 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-connectivity/gupnp/gupnp_0.13.2.bb |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-connectivity/gupnp/gupnp_0.13.2.bb b/meta/recipes-connectivity/gupnp/gupnp_0.13.2.bb
index c9de798..5fb9d23 100644
--- a/meta/recipes-connectivity/gupnp/gupnp_0.13.2.bb
+++ b/meta/recipes-connectivity/gupnp/gupnp_0.13.2.bb
@@ -1,6 +1,8 @@
 SUMMARY = "UPnP framework"
 DESCRIPTION = "GUPnP is an elegant, object-oriented open source framework for creating UPnP  devices and control points, written in C using GObject and libsoup. The GUPnP API is intended to be easy to use, efficient and flexible. It provides the same set of features as libupnp, but shields the developer from most of UPnP's internals."
-LICENSE = "LGPL"
+LICENSE = "LGPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7 \
+                    file://libgupnp/gupnp.h;beginline=1;endline=20;md5=28c49b17d623afc3335efc2e511879e1"
 DEPENDS = "e2fsprogs gssdp libsoup-2.4 libxml2"
 
 SRC_URI = "http://gupnp.org/sites/all/files/sources/${PN}-${PV}.tar.gz"
-- 
1.6.3.3


