Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id C1EF44C80A7E
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 00:36:04 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 14 Apr 2011 22:36:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,216,1301900400"; d="scan'208";a="419668338"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 14 Apr 2011 22:36:04 -0700
Message-Id: <ed246b07c1d76ebb371890bb52463376d175af6a.1302845703.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1302845703.git.dongxiao.xu@intel.com>
References: <cover.1302845703.git.dongxiao.xu@intel.com>
Old-Date: Wed, 13 Apr 2011 16:25:26 +0800
Date: Fri, 15 Apr 2011 13:36:58 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 13/14] gupnp: upgrade to version 0.16.0
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
X-List-Received-Date: Fri, 15 Apr 2011 05:36:05 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Remove introspection.patch since it is already in upsteram.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gupnp/{gupnp_0.14.0.bb => gupnp_0.16.0.bb}     |    7 +++----
 1 files changed, 3 insertions(+), 4 deletions(-)
 rename meta/recipes-connectivity/gupnp/{gupnp_0.14.0.bb => gupnp_0.16.0.bb} (85%)

diff --git a/meta/recipes-connectivity/gupnp/gupnp_0.14.0.bb b/meta/recipes-connectivity/gupnp/gupnp_0.16.0.bb
similarity index 85%
rename from meta/recipes-connectivity/gupnp/gupnp_0.14.0.bb
rename to meta/recipes-connectivity/gupnp/gupnp_0.16.0.bb
index 43a3645..07b6b90 100644
--- a/meta/recipes-connectivity/gupnp/gupnp_0.14.0.bb
+++ b/meta/recipes-connectivity/gupnp/gupnp_0.16.0.bb
@@ -5,11 +5,10 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7 \
                     file://libgupnp/gupnp.h;beginline=1;endline=20;md5=28c49b17d623afc3335efc2e511879e1"
 DEPENDS = "e2fsprogs gssdp libsoup-2.4 libxml2 gnome-icon-theme"
 
-SRC_URI = "http://gupnp.org/sites/all/files/sources/${BPN}-${PV}.tar.gz \
-           file://introspection.patch"
+SRC_URI = "http://gupnp.org/sites/all/files/sources/${BPN}-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "8598922256faa5adb28657d0c10a3e3e"
-SRC_URI[sha256sum] = "6ac13efe46c6f1e5d05e48e1041bf37dfa702839ce5fbb01e0f314f3904b6a16"
+SRC_URI[md5sum] = "61b240c1a9fdf8ca82c5c3adde0d6757"
+SRC_URI[sha256sum] = "1b77201866b7632fb68bc2a3bdea22ef8ead34ba850b3ee367797432cfc0f04a"
 
 PR = "r0"
 
-- 
1.7.1


