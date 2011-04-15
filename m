Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 696054C80A7E
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 00:36:03 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Apr 2011 22:36:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,216,1301900400"; d="scan'208";a="679366632"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga002.fm.intel.com with ESMTP; 14 Apr 2011 22:36:02 -0700
Message-Id: <9b5685436a78a08ba3b79288b1c11848e833cf01.1302845703.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1302845703.git.dongxiao.xu@intel.com>
References: <cover.1302845703.git.dongxiao.xu@intel.com>
Old-Date: Wed, 13 Apr 2011 16:15:01 +0800
Date: Fri, 15 Apr 2011 13:36:57 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 12/14] gssdp: upgrade to version 0.10.0
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
X-List-Received-Date: Fri, 15 Apr 2011 05:36:03 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../{files => gssdp-0.10.0}/introspection.patch    |    5 ++++-
 .../gupnp/{gssdp_0.9.0.bb => gssdp_0.10.0.bb}      |    4 ++--
 2 files changed, 6 insertions(+), 3 deletions(-)
 rename meta/recipes-connectivity/gupnp/{files => gssdp-0.10.0}/introspection.patch (97%)
 rename meta/recipes-connectivity/gupnp/{gssdp_0.9.0.bb => gssdp_0.10.0.bb} (83%)

diff --git a/meta/recipes-connectivity/gupnp/files/introspection.patch b/meta/recipes-connectivity/gupnp/gssdp-0.10.0/introspection.patch
similarity index 97%
rename from meta/recipes-connectivity/gupnp/files/introspection.patch
rename to meta/recipes-connectivity/gupnp/gssdp-0.10.0/introspection.patch
index 15de41f..39c1502 100644
--- a/meta/recipes-connectivity/gupnp/files/introspection.patch
+++ b/meta/recipes-connectivity/gupnp/gssdp-0.10.0/introspection.patch
@@ -1,5 +1,8 @@
 Copied from gobject-introspection/m4/introspection.m4
-By Dongxiao Xu <dongxiao.xu@intel.com>
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-By: Dongxiao Xu <dongxiao.xu@intel.com>
 
 diff -ruN gssdp-0.9.0-orig/m4/introspection.m4 gssdp-0.9.0/m4/introspection.m4
 --- gssdp-0.9.0-orig/m4/introspection.m4	1970-01-01 08:00:00.000000000 +0800
diff --git a/meta/recipes-connectivity/gupnp/gssdp_0.9.0.bb b/meta/recipes-connectivity/gupnp/gssdp_0.10.0.bb
similarity index 83%
rename from meta/recipes-connectivity/gupnp/gssdp_0.9.0.bb
rename to meta/recipes-connectivity/gupnp/gssdp_0.10.0.bb
index 3c8c698..310d8a9 100644
--- a/meta/recipes-connectivity/gupnp/gssdp_0.9.0.bb
+++ b/meta/recipes-connectivity/gupnp/gssdp_0.10.0.bb
@@ -20,7 +20,7 @@ EXTRA_OECONF = "--disable-introspection"
 
 PR = "r0"
 
-SRC_URI[md5sum] = "8605138eac1e7fb8ec8cf502a928ea81"
-SRC_URI[sha256sum] = "6e4de2ecc90d2ac8b3694af1954984d04de25fb01dd2f2748d7221add8ead9e0" 
+SRC_URI[md5sum] = "aec6a56ac1d4f8a4837da83f2d152556"
+SRC_URI[sha256sum] = "94de92bb4f7906ed2f047b0146a3b21d53d09908fe1f0149484f61c6afc598ea" 
 
 
-- 
1.7.1


