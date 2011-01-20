Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id DA63A4C81110
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 03:30:27 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Jan 2011 01:30:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,350,1291622400"; d="scan'208";a="594758373"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by orsmga002.jf.intel.com with ESMTP; 20 Jan 2011 01:30:26 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1Pfqko-0001yV-Rj; Thu, 20 Jan 2011 17:24:30 +0800
Message-Id: <bd3f13ef95cc78f43f3d1d215783b601fc698c2c.1295515302.git.qing.he@intel.com>
In-Reply-To: <cover.1295515302.git.qing.he@intel.com>
References: <cover.1295515302.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Old-Date: Thu, 20 Jan 2011 16:57:21 +0800
Date: Thu, 20 Jan 2011 17:24:30 +0800
To: poky@yoctoproject.org
Subject: [PATCH 7/7] resolvconf: upgrade to version 1.48
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
X-List-Received-Date: Thu, 20 Jan 2011 09:30:28 -0000

from 1.43

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |    6 +++---
 .../{resolvconf_1.43.bb => resolvconf_1.48.bb}     |    7 ++++---
 2 files changed, 7 insertions(+), 6 deletions(-)
 rename meta/recipes-connectivity/resolvconf/{resolvconf_1.43.bb => resolvconf_1.48.bb} (87%)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 449124e..514f727 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -1804,9 +1804,9 @@ RECIPE_LATEST_VERSION_pn-parted = "2.3"
 RECIPE_LAST_UPDATE_pn-parted = "Dec 30, 2010"
 RECIPE_MAINTAINER_pn-parted = "Qing He <qing.he@intel.com>"
 
-RECIPE_STATUS_pn-resolvconf = "red"
-RECIPE_LATEST_VERSION_pn-resolvconf = "1.45"
-RECIPE_LAST_UPDATE_pn-resolvconf = "Dec 31, 2008"
+RECIPE_STATUS_pn-resolvconf = "green"
+RECIPE_LATEST_VERSION_pn-resolvconf = "1.48"
+RECIPE_LAST_UPDATE_pn-resolvconf = "Jan 20, 2011"
 RECIPE_MAINTAINER_pn-resolvconf = "Qing He <qing.he@intel.com>"
 
 RECIPE_STATUS_pn-openswan = "red"
diff --git a/meta/recipes-connectivity/resolvconf/resolvconf_1.43.bb b/meta/recipes-connectivity/resolvconf/resolvconf_1.48.bb
similarity index 87%
rename from meta/recipes-connectivity/resolvconf/resolvconf_1.43.bb
rename to meta/recipes-connectivity/resolvconf/resolvconf_1.48.bb
index 02aed1d..cb8aaaf 100644
--- a/meta/recipes-connectivity/resolvconf/resolvconf_1.43.bb
+++ b/meta/recipes-connectivity/resolvconf/resolvconf_1.48.bb
@@ -11,12 +11,13 @@ AUTHOR = "Thomas Hood"
 HOMEPAGE = "http://packages.debian.org/resolvconf"
 DEPENDS = "bash"
 RDEPENDS_${PN} = "bash"
-PR = "r2"
+PR = "r0"
 
 SRC_URI = "${DEBIAN_MIRROR}/main/r/resolvconf/resolvconf_${PV}.tar.gz"
 
-SRC_URI[md5sum] = "15faef2aba7b99782f3b0b8b5d30f80a"
-SRC_URI[sha256sum] = "17e1105cddd928adf7d47e050f9bb49557850687f800b3e24cbbf22933ff31ae"
+SRC_URI[md5sum] = "b226e02704a545238eac5ef70f6d3c4c"
+SRC_URI[sha256sum] = "4b07832680b82d401a76132cd6bbe13961231235287f2662a6604edbcac82bb1"
+
 
 do_compile () {
 	:
-- 
1.7.0


