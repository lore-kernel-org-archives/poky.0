Return-Path: <qing.he@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id BA2094C80FD4
	for <poky@yoctoproject.org>; Fri, 10 Dec 2010 02:53:11 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Dec 2010 00:53:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,323,1288594800"; d="scan'208";a="635002354"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by fmsmga002.fm.intel.com with ESMTP; 10 Dec 2010 00:53:10 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PQydz-000397-4A; Fri, 10 Dec 2010 16:47:59 +0800
Message-Id: <96fbb88c1fe563710349b6437ffd1cb187c82868.1291970759.git.qing.he@intel.com>
In-Reply-To: <cover.1291970759.git.qing.he@intel.com>
References: <cover.1291970759.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Tue, 7 Dec 2010 15:00:05 +0800
To: poky@yoctoproject.org
Subject: [PATCH 1/8] udev: upgrade to version 164
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
X-List-Received-Date: Fri, 10 Dec 2010 08:53:12 -0000

Signed-off-by: Qing He <qing.he@intel.com>
---
 meta/conf/distro/include/poky-fixed-revisions.inc  |    2 +-
 meta/recipes-core/udev/{udev-158 => udev-164}/init |    0
 .../udev/{udev-158 => udev-164}/local.rules        |    0
 .../udev/{udev-158 => udev-164}/permissions.rules  |    0
 .../udev/{udev-158 => udev-164}/run.rules          |    0
 .../udev/{udev-158 => udev-164}/udev.rules         |    0
 meta/recipes-core/udev/udev_158.bb                 |    6 ------
 meta/recipes-core/udev/udev_164.bb                 |    6 ++++++
 8 files changed, 7 insertions(+), 7 deletions(-)
 rename meta/recipes-core/udev/{udev-158 => udev-164}/init (100%)
 rename meta/recipes-core/udev/{udev-158 => udev-164}/local.rules (100%)
 rename meta/recipes-core/udev/{udev-158 => udev-164}/permissions.rules (100%)
 rename meta/recipes-core/udev/{udev-158 => udev-164}/run.rules (100%)
 rename meta/recipes-core/udev/{udev-158 => udev-164}/udev.rules (100%)
 delete mode 100644 meta/recipes-core/udev/udev_158.bb
 create mode 100644 meta/recipes-core/udev/udev_164.bb

diff --git a/meta/conf/distro/include/poky-fixed-revisions.inc b/meta/conf/distro/include/poky-fixed-revisions.inc
index db348ca..cc47610 100644
--- a/meta/conf/distro/include/poky-fixed-revisions.inc
+++ b/meta/conf/distro/include/poky-fixed-revisions.inc
@@ -5,7 +5,7 @@ PREFERRED_VERSION_matchbox-theme-sato ?= "0.1"
 PREFERRED_VERSION_elfutils ?= "0.89"
 PREFERRED_VERSION_hal ?= "0.5.14"
 PREFERRED_VERSION_hal-info ?= "20091130"
-PREFERRED_VERSION_udev ?= "158"
+PREFERRED_VERSION_udev ?= "164"
 PREFERRED_VERSION_wpa-supplicant ?= "0.7.3"
 
 PULSEAUDIOVERSION ?= "0.9.21"
diff --git a/meta/recipes-core/udev/udev-158/init b/meta/recipes-core/udev/udev-164/init
similarity index 100%
rename from meta/recipes-core/udev/udev-158/init
rename to meta/recipes-core/udev/udev-164/init
diff --git a/meta/recipes-core/udev/udev-158/local.rules b/meta/recipes-core/udev/udev-164/local.rules
similarity index 100%
rename from meta/recipes-core/udev/udev-158/local.rules
rename to meta/recipes-core/udev/udev-164/local.rules
diff --git a/meta/recipes-core/udev/udev-158/permissions.rules b/meta/recipes-core/udev/udev-164/permissions.rules
similarity index 100%
rename from meta/recipes-core/udev/udev-158/permissions.rules
rename to meta/recipes-core/udev/udev-164/permissions.rules
diff --git a/meta/recipes-core/udev/udev-158/run.rules b/meta/recipes-core/udev/udev-164/run.rules
similarity index 100%
rename from meta/recipes-core/udev/udev-158/run.rules
rename to meta/recipes-core/udev/udev-164/run.rules
diff --git a/meta/recipes-core/udev/udev-158/udev.rules b/meta/recipes-core/udev/udev-164/udev.rules
similarity index 100%
rename from meta/recipes-core/udev/udev-158/udev.rules
rename to meta/recipes-core/udev/udev-164/udev.rules
diff --git a/meta/recipes-core/udev/udev_158.bb b/meta/recipes-core/udev/udev_158.bb
deleted file mode 100644
index caf68d8..0000000
--- a/meta/recipes-core/udev/udev_158.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-include udev-new.inc
-
-PR = "r4"
-
-SRC_URI[md5sum] = "d0f21f72f9e8b95d85191b77ff1ad2a0"
-SRC_URI[sha256sum] = "f0a194a0500a07d50ae3f14416a34c8d94ea8a1aff8fc1f06e1d421775dcc902"
diff --git a/meta/recipes-core/udev/udev_164.bb b/meta/recipes-core/udev/udev_164.bb
new file mode 100644
index 0000000..7a4d959
--- /dev/null
+++ b/meta/recipes-core/udev/udev_164.bb
@@ -0,0 +1,6 @@
+include udev-new.inc
+
+PR = "r0"
+
+SRC_URI[md5sum] = "fddac2d54761ea34865af9467377ca9f"
+SRC_URI[sha256sum] = "c12e66280b5e1465f6587a8cfa47d7405c4caa7e52ce5dd13478d04f6ec05e5c"
-- 
1.7.0


