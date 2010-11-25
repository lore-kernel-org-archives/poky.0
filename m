Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 406F54C8112F
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 00:53:38 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 25 Nov 2010 22:53:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,259,1288594800"; d="scan'208";a="353434695"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by azsmga001.ch.intel.com with ESMTP; 25 Nov 2010 22:53:37 -0800
Message-Id: <8c363b8bf3bff2d85ef05fafe56ee63cae1337f7.1290736298.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1290736297.git.dongxiao.xu@intel.com>
References: <cover.1290736297.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Thu, 25 Nov 2010 13:48:07 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 07/14] wpa-supplicant: Upgrade to version 0.7.3
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
X-List-Received-Date: Fri, 26 Nov 2010 06:53:38 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/conf/distro/include/poky-fixed-revisions.inc  |    2 +-
 .../99_wpa_supplicant                              |    0
 .../defaults-sane                                  |    0
 .../defconfig                                      |    0
 .../defconfig-gnutls                               |    0
 .../init.sh                                        |    0
 .../wpa-supplicant.sh                              |    0
 .../wpa_supplicant-0.5.7-always-scan.patch         |    0
 ...a_supplicant-fix-deprecated-dbus-function.patch |    0
 .../wpa_supplicant.conf                            |    0
 .../wpa_supplicant.conf-sane                       |    0
 .../wpa_supplicant_default.conf                    |    0
 .../wpa-supplicant/wpa-supplicant_0.7.2.bb         |    3 ---
 .../wpa-supplicant/wpa-supplicant_0.7.3.bb         |    6 ++++++
 14 files changed, 7 insertions(+), 4 deletions(-)
 rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 => wpa-supplicant-0.7.3}/99_wpa_supplicant (100%)
 rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 => wpa-supplicant-0.7.3}/defaults-sane (100%)
 rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 => wpa-supplicant-0.7.3}/defconfig (100%)
 rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 => wpa-supplicant-0.7.3}/defconfig-gnutls (100%)
 rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 => wpa-supplicant-0.7.3}/init.sh (100%)
 rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 => wpa-supplicant-0.7.3}/wpa-supplicant.sh (100%)
 rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 => wpa-supplicant-0.7.3}/wpa_supplicant-0.5.7-always-scan.patch (100%)
 rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 => wpa-supplicant-0.7.3}/wpa_supplicant-fix-deprecated-dbus-function.patch (100%)
 rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 => wpa-supplicant-0.7.3}/wpa_supplicant.conf (100%)
 rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 => wpa-supplicant-0.7.3}/wpa_supplicant.conf-sane (100%)
 rename meta/recipes-connectivity/wpa-supplicant/{wpa-supplicant-0.7.2 => wpa-supplicant-0.7.3}/wpa_supplicant_default.conf (100%)
 delete mode 100644 meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.2.bb
 create mode 100644 meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb

diff --git a/meta/conf/distro/include/poky-fixed-revisions.inc b/meta/conf/distro/include/poky-fixed-revisions.inc
index 0eb2af4..c437a1c 100644
--- a/meta/conf/distro/include/poky-fixed-revisions.inc
+++ b/meta/conf/distro/include/poky-fixed-revisions.inc
@@ -6,7 +6,7 @@ PREFERRED_VERSION_elfutils ?= "0.89"
 PREFERRED_VERSION_hal ?= "0.5.14"
 PREFERRED_VERSION_hal-info ?= "20091130"
 PREFERRED_VERSION_udev ?= "158"
-PREFERRED_VERSION_wpa-supplicant ?= "0.6.10"
+PREFERRED_VERSION_wpa-supplicant ?= "0.7.3"
 
 # Force the python versions in one place
 PYTHON_BASEVERSION ?= "2.6"
diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.2/99_wpa_supplicant b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/99_wpa_supplicant
similarity index 100%
rename from meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.2/99_wpa_supplicant
rename to meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/99_wpa_supplicant
diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.2/defaults-sane b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/defaults-sane
similarity index 100%
rename from meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.2/defaults-sane
rename to meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/defaults-sane
diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.2/defconfig b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/defconfig
similarity index 100%
rename from meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.2/defconfig
rename to meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/defconfig
diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.2/defconfig-gnutls b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/defconfig-gnutls
similarity index 100%
rename from meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.2/defconfig-gnutls
rename to meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/defconfig-gnutls
diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.2/init.sh b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/init.sh
similarity index 100%
rename from meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.2/init.sh
rename to meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/init.sh
diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.2/wpa-supplicant.sh b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/wpa-supplicant.sh
similarity index 100%
rename from meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.2/wpa-supplicant.sh
rename to meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/wpa-supplicant.sh
diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.2/wpa_supplicant-0.5.7-always-scan.patch b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/wpa_supplicant-0.5.7-always-scan.patch
similarity index 100%
rename from meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.2/wpa_supplicant-0.5.7-always-scan.patch
rename to meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/wpa_supplicant-0.5.7-always-scan.patch
diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.2/wpa_supplicant-fix-deprecated-dbus-function.patch b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/wpa_supplicant-fix-deprecated-dbus-function.patch
similarity index 100%
rename from meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.2/wpa_supplicant-fix-deprecated-dbus-function.patch
rename to meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/wpa_supplicant-fix-deprecated-dbus-function.patch
diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.2/wpa_supplicant.conf b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/wpa_supplicant.conf
similarity index 100%
rename from meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.2/wpa_supplicant.conf
rename to meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/wpa_supplicant.conf
diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.2/wpa_supplicant.conf-sane b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/wpa_supplicant.conf-sane
similarity index 100%
rename from meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.2/wpa_supplicant.conf-sane
rename to meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/wpa_supplicant.conf-sane
diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.2/wpa_supplicant_default.conf b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/wpa_supplicant_default.conf
similarity index 100%
rename from meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.2/wpa_supplicant_default.conf
rename to meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/wpa_supplicant_default.conf
diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.2.bb b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.2.bb
deleted file mode 100644
index d1f6c6d..0000000
--- a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.2.bb
+++ /dev/null
@@ -1,3 +0,0 @@
-require wpa-supplicant-0.7.inc
-
-PR = "r1"
diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb
new file mode 100644
index 0000000..2d7729c
--- /dev/null
+++ b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb
@@ -0,0 +1,6 @@
+require wpa-supplicant-0.7.inc
+
+PR = "r0"
+
+SRC_URI[md5sum] = "f516f191384a9a546e3f5145c08addda"
+SRC_URI[sha256sum] = "d0cd50caa85346ccc376dcda5ed3c258eef19a93b3cade39d25760118ad59443"
-- 
1.6.3.3


