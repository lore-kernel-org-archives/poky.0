Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 91F2E4C81146
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 07:42:53 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Nov 2010 05:42:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,206,1288594800"; d="scan'208";a="858118470"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.22])
	by fmsmga001.fm.intel.com with ESMTP; 16 Nov 2010 05:42:52 -0800
Message-Id: <734c2a84e13f336b22050a2b5eb76efa9291303b.1289914983.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1289914982.git.dongxiao.xu@intel.com>
References: <cover.1289914982.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 16 Nov 2010 14:16:45 +0800
To: poky@yoctoproject.org
Subject: [PATCH 12/14] taglib: Upgraded to version 1.6.3
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
X-List-Received-Date: Tue, 16 Nov 2010 13:42:53 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../configuretweak.patch                           |    0
 .../{taglib-1.6.1 => taglib-1.6.3}/nolibtool.patch |    0
 .../taglib/{taglib_1.6.1.bb => taglib_1.6.3.bb}    |    8 ++++++--
 3 files changed, 6 insertions(+), 2 deletions(-)
 rename meta/recipes-support/taglib/{taglib-1.6.1 => taglib-1.6.3}/configuretweak.patch (100%)
 rename meta/recipes-support/taglib/{taglib-1.6.1 => taglib-1.6.3}/nolibtool.patch (100%)
 rename meta/recipes-support/taglib/{taglib_1.6.1.bb => taglib_1.6.3.bb} (67%)

diff --git a/meta/recipes-support/taglib/taglib-1.6.1/configuretweak.patch b/meta/recipes-support/taglib/taglib-1.6.3/configuretweak.patch
similarity index 100%
rename from meta/recipes-support/taglib/taglib-1.6.1/configuretweak.patch
rename to meta/recipes-support/taglib/taglib-1.6.3/configuretweak.patch
diff --git a/meta/recipes-support/taglib/taglib-1.6.1/nolibtool.patch b/meta/recipes-support/taglib/taglib-1.6.3/nolibtool.patch
similarity index 100%
rename from meta/recipes-support/taglib/taglib-1.6.1/nolibtool.patch
rename to meta/recipes-support/taglib/taglib-1.6.3/nolibtool.patch
diff --git a/meta/recipes-support/taglib/taglib_1.6.1.bb b/meta/recipes-support/taglib/taglib_1.6.3.bb
similarity index 67%
rename from meta/recipes-support/taglib/taglib_1.6.1.bb
rename to meta/recipes-support/taglib/taglib_1.6.3.bb
index f1a8736..014c348 100644
--- a/meta/recipes-support/taglib/taglib_1.6.1.bb
+++ b/meta/recipes-support/taglib/taglib_1.6.3.bb
@@ -1,8 +1,12 @@
 DESCRIPTION = "TagLib is a library for reading and editing the meta-data of several popular audio formats"
 SECTION = "libs/multimedia"
 HOMEPAGE = "http://developer.kde.org/~wheeler/taglib.html"
-LICENSE = "LGPL"
-PR = "r3"
+LICENSE = "LGPLv2.1 | MPLv1.1"
+LIC_FILES_CHKSUM = "file://COPYING.LGPL;md5=db979804f025cf55aabec7129cb671ed \
+                    file://COPYING.MPL;md5=bfe1f75d606912a4111c90743d6c7325 \
+                    file://taglib/audioproperties.h;beginline=1;endline=24;md5=39dcdd772f378a0f8c9a41bc929eccce"
+
+PR = "r0"
 
 SRC_URI = "http://developer.kde.org/~wheeler/files/src/taglib-${PV}.tar.gz \
            file://configuretweak.patch;patch=1 \
-- 
1.6.3.3


