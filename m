Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 884D94C811D0
	for <poky@yoctoproject.org>; Mon, 15 Nov 2010 18:56:06 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 15 Nov 2010 16:56:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,203,1288594800"; d="scan'208";a="349122315"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.22])
	by azsmga001.ch.intel.com with ESMTP; 15 Nov 2010 16:56:05 -0800
Message-Id: <8f4ff767c231cc5d9d85c4be77481a33b41b054a.1289868964.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1289868964.git.dongxiao.xu@intel.com>
References: <cover.1289868964.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Mon, 15 Nov 2010 22:15:52 +0800
To: poky@yoctoproject.org
Subject: [PATCH 6/8] taglib: Upgraded to version 1.6.3
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
X-List-Received-Date: Tue, 16 Nov 2010 00:56:06 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../configuretweak.patch                           |    0
 .../{taglib-1.6.1 => taglib-1.6.3}/nolibtool.patch |    0
 .../taglib/{taglib_1.6.1.bb => taglib_1.6.3.bb}    |    2 +-
 3 files changed, 1 insertions(+), 1 deletions(-)
 rename meta/recipes-support/taglib/{taglib-1.6.1 => taglib-1.6.3}/configuretweak.patch (100%)
 rename meta/recipes-support/taglib/{taglib-1.6.1 => taglib-1.6.3}/nolibtool.patch (100%)
 rename meta/recipes-support/taglib/{taglib_1.6.1.bb => taglib_1.6.3.bb} (98%)

diff --git a/meta/recipes-support/taglib/taglib-1.6.1/configuretweak.patch b/meta/recipes-support/taglib/taglib-1.6.3/configuretweak.patch
similarity index 100%
rename from meta/recipes-support/taglib/taglib-1.6.1/configuretweak.patch
rename to meta/recipes-support/taglib/taglib-1.6.3/configuretweak.patch
diff --git a/meta/recipes-support/taglib/taglib-1.6.1/nolibtool.patch b/meta/recipes-support/taglib/taglib-1.6.3/nolibtool.patch
similarity index 100%
rename from meta/recipes-support/taglib/taglib-1.6.1/nolibtool.patch
rename to meta/recipes-support/taglib/taglib-1.6.3/nolibtool.patch
diff --git a/meta/recipes-support/taglib/taglib_1.6.1.bb b/meta/recipes-support/taglib/taglib_1.6.3.bb
similarity index 98%
rename from meta/recipes-support/taglib/taglib_1.6.1.bb
rename to meta/recipes-support/taglib/taglib_1.6.3.bb
index f1a8736..e0c2451 100644
--- a/meta/recipes-support/taglib/taglib_1.6.1.bb
+++ b/meta/recipes-support/taglib/taglib_1.6.3.bb
@@ -2,7 +2,7 @@ DESCRIPTION = "TagLib is a library for reading and editing the meta-data of seve
 SECTION = "libs/multimedia"
 HOMEPAGE = "http://developer.kde.org/~wheeler/taglib.html"
 LICENSE = "LGPL"
-PR = "r3"
+PR = "r0"
 
 SRC_URI = "http://developer.kde.org/~wheeler/files/src/taglib-${PV}.tar.gz \
            file://configuretweak.patch;patch=1 \
-- 
1.6.3.3


