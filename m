Return-Path: <qing.he@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 428194C811F8
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 03:30:33 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Jan 2011 01:30:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,350,1291622400"; d="scan'208";a="879228886"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by fmsmga001.fm.intel.com with ESMTP; 20 Jan 2011 01:30:26 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1Pfqko-0001yH-Qs; Thu, 20 Jan 2011 17:24:30 +0800
Message-Id: <0aeae803cf037bb416a5c8b4c26d363b2a72ee8b.1295515302.git.qing.he@intel.com>
In-Reply-To: <cover.1295515302.git.qing.he@intel.com>
References: <cover.1295515302.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Old-Date: Thu, 20 Jan 2011 14:22:37 +0800
Date: Thu, 20 Jan 2011 17:24:30 +0800
To: poky@yoctoproject.org
Subject: [PATCH 5/7] dbus: upgrade to version 1.4.1
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
X-List-Received-Date: Thu, 20 Jan 2011 09:30:33 -0000

from 1.4.0

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |    4 ++--
 .../dbus/{dbus-1.4.0 => dbus-1.4.1}/dbus-1.init    |    0
 .../dbus/{dbus-1.4.0 => dbus-1.4.1}/tmpdir.patch   |    0
 meta/recipes-core/dbus/dbus_1.4.0.bb               |    6 ------
 meta/recipes-core/dbus/dbus_1.4.1.bb               |    6 ++++++
 5 files changed, 8 insertions(+), 8 deletions(-)
 rename meta/recipes-core/dbus/{dbus-1.4.0 => dbus-1.4.1}/dbus-1.init (100%)
 rename meta/recipes-core/dbus/{dbus-1.4.0 => dbus-1.4.1}/tmpdir.patch (100%)
 delete mode 100644 meta/recipes-core/dbus/dbus_1.4.0.bb
 create mode 100644 meta/recipes-core/dbus/dbus_1.4.1.bb

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index abc723d..9f20b52 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -217,8 +217,8 @@ RECIPE_MAINTAINER_pn-expat = "Kevin Tian <kevin.tian@intel.com>"
 RECIPE_STATUS_pn-dbus = "green"
 RECIPE_LATEST_VERSION_pn-dbus = "1.4.1"
 RECIPE_INTEL_SECTION_pn-dbus = "base libs"
-RECIPE_LATEST_RELEASE_DATE_pn-dbus = "03/2010"
-RECIPE_LAST_UPDATE_pn-dbus = "Nov 17, 2010"
+RECIPE_LATEST_RELEASE_DATE_pn-dbus = "12/2010"
+RECIPE_LAST_UPDATE_pn-dbus = "Jan 20, 2011"
 RECIPE_MAINTAINER_pn-dbus = "Qing He <qing.he@intel.com>"
 
 RECIPE_STATUS_pn-dbus-glib = "green"
diff --git a/meta/recipes-core/dbus/dbus-1.4.0/dbus-1.init b/meta/recipes-core/dbus/dbus-1.4.1/dbus-1.init
similarity index 100%
rename from meta/recipes-core/dbus/dbus-1.4.0/dbus-1.init
rename to meta/recipes-core/dbus/dbus-1.4.1/dbus-1.init
diff --git a/meta/recipes-core/dbus/dbus-1.4.0/tmpdir.patch b/meta/recipes-core/dbus/dbus-1.4.1/tmpdir.patch
similarity index 100%
rename from meta/recipes-core/dbus/dbus-1.4.0/tmpdir.patch
rename to meta/recipes-core/dbus/dbus-1.4.1/tmpdir.patch
diff --git a/meta/recipes-core/dbus/dbus_1.4.0.bb b/meta/recipes-core/dbus/dbus_1.4.0.bb
deleted file mode 100644
index a666336..0000000
--- a/meta/recipes-core/dbus/dbus_1.4.0.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-include dbus.inc
-
-PR = "r0"
-
-SRC_URI[md5sum] = "f59618b18d2fb2bd1fce9e1c5a2a3282"
-SRC_URI[sha256sum] = "c96d2f86d40e158e2bf405925a0a42cce0533a8466098e2f2238aa1614926652"
diff --git a/meta/recipes-core/dbus/dbus_1.4.1.bb b/meta/recipes-core/dbus/dbus_1.4.1.bb
new file mode 100644
index 0000000..7c5627b
--- /dev/null
+++ b/meta/recipes-core/dbus/dbus_1.4.1.bb
@@ -0,0 +1,6 @@
+include dbus.inc
+
+PR = "r0"
+
+SRC_URI[md5sum] = "99cb057700c0455fb68f8d57902f77ac"
+SRC_URI[sha256sum] = "caa1a0ded2d0f2e95c1d4ec7e3c8bd44834928c5b0ed41a7189963f3593983bd"
-- 
1.7.0


