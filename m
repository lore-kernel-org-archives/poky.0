Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 688B04C811DD
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 23:18:31 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Dec 2010 21:18:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,359,1288594800"; d="scan'208";a="688061245"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 16 Dec 2010 21:18:30 -0800
Message-Id: <394d6a2df14d43505ee536dc8c2b85fa642a6edd.1292563366.git.ke.yu@intel.com>
In-Reply-To: <cover.1292563366.git.ke.yu@intel.com>
References: <cover.1292563366.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Thu, 16 Dec 2010 14:26:58 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/2] distro_tracking: change owner of some recipe
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
X-List-Received-Date: Fri, 17 Dec 2010 05:18:31 -0000

People already help Kevin to maintain the recipes he owned,
so change the tracking field owner for more accurate tracking.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   46 ++++++++++----------
 1 files changed, 23 insertions(+), 23 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index ed18ff9..7867b70 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -122,7 +122,7 @@ RECIPE_INTEL_SECTION_pn-icu = "base libs"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-icu = "n/a"
 RECIPE_LATEST_RELEASE_DATE_pn-icu = "08/2006"
 RECIPE_COMMENTS_pn-icu = "arm optimizations; license similar to MIT, however sub-license is not allowed; autoreconf is not used and current style is not clean. need enhancement in the future"
-RECIPE_MAINTAINER_pn-icu = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-icu = "Scott Garman <scott.a.garman@intel.com>"
 
 RECIPE_STATUS_pn-eggdbus = "yellow" # patch comment
 DEPENDENCY_CHECK_pn-eggdbus = "not done"
@@ -205,7 +205,7 @@ RECIPE_INTEL_SECTION_pn-dbus = "base libs"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-dbus = "1 months"
 RECIPE_LATEST_RELEASE_DATE_pn-dbus = "03/2010"
 RECIPE_COMMENTS_pn-dbus = "unstable version at 1.3.1; though current latest version in poky is 1.2.14, it's 1.2.4 preferred"
-RECIPE_MAINTAINER_pn-dbus = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-dbus = "Qing He <qing.he@intel.com>"
 
 RECIPE_STATUS_pn-dbus-glib = "green"
 DEPENDENCY_CHECK_pn-dbus-glib = "not done"
@@ -216,7 +216,7 @@ RECIPE_INTEL_SECTION_pn-dbus-glib = "base libs"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-dbus-glib = "6 months"
 RECIPE_LATEST_RELEASE_DATE_pn-dbus-glib = "03/2010"
 RECIPE_COMMENTS_pn-dbus-glib = ""
-RECIPE_MAINTAINER_pn-dbus-glib = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-dbus-glib = "Scott Garman <scott.a.garman@intel.com>"
 
 RECIPE_STATUS_pn-neon="green"
 DEPENDENCY_CHECK_pn-neon = "not done"
@@ -778,7 +778,7 @@ RECIPE_INTEL_SECTION_pn-pax-utils = "base utils"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-pax-utils = "15 months"
 RECIPE_LATEST_RELEASE_DATE_pn-pax-utils = "02/2010"
 RECIPE_COMMENTS_pn-pax-utils = ""
-RECIPE_MAINTAINER_pn-pax-utils = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-pax-utils = "Scott Garman <scott.a.garman@intel.com>"
 
 RECIPE_STATUS_pn-sudo = "green"
 DEPENDENCY_CHECK_pn-sudo = "not done"
@@ -796,7 +796,7 @@ RECIPE_INTEL_SECTION_pn-blktool = "base utils"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-blktool = "3 years"
 RECIPE_LATEST_RELEASE_DATE_pn-blktool = "02/2010"
 RECIPE_COMMENTS_pn-blktool = ""
-RECIPE_MAINTAINER_pn-blktool = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-blktool = "Scott Garman <scott.a.garman@intel.com>"
 DISTRO_PN_ALIAS_pn-blktool = "Debian=blktool Mandriva=blktool"
 
 RECIPE_STATUS_pn-iproute2 = "green"
@@ -808,7 +808,7 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-iproute2 = "3 months"
 RECIPE_LATEST_RELEASE_DATE_pn-iproute2 = "05/2010"
 RECIPE_COMMENTS_pn-iproute2 = ""
 DISTRO_PN_ALIAS_pn-iproute2 = "OSPDT"
-RECIPE_MAINTAINER_pn-iproute2 = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-iproute2 = "Qing He <qing.he@intel.com>"
 
 RECIPE_STATUS_pn-netbase = "green"
 DEPENDENCY_CHECK_pn-netbase = "not done"
@@ -834,7 +834,7 @@ RECIPE_INTEL_SECTION_pn-busybox = "base utils"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-busybox = "3 months"
 RECIPE_LATEST_RELEASE_DATE_pn-busybox = "0i6/2010"
 RECIPE_COMMENTS_pn-busybox = "some special overrides/unsets for CFLAGS, etc. need to understand the tricks behind"
-RECIPE_MAINTAINER_pn-busybox = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-busybox = "Qing He <qing.he@intel.com>"
 
 RECIPE_STATUS_pn-module-init-tools = "green"
 DEPENDENCY_CHECK_pn-module-init-tools = "not done"
@@ -860,7 +860,7 @@ RECIPE_INTEL_SECTION_pn-fakeroot = "base utils"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-fakeroot = "6 months"
 RECIPE_LATEST_RELEASE_DATE_pn-fakeroot = "11/2009"
 RECIPE_COMMENTS_pn-fakeroot = ""
-RECIPE_MAINTAINER_pn-fakeroot = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-fakeroot = "Qing He <qing.he@intel.com>"
 
 RECIPE_STATUS_pn-base-files = "green"
 DEPENDENCY_CHECK_pn-base-files = "not done"
@@ -893,7 +893,7 @@ RECIPE_INTEL_SECTION_pn-apmd = "base utils"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-apmd = "1 year"
 RECIPE_LATEST_RELEASE_DATE_pn-apmd = "07/2009"
 RECIPE_COMMENTS_pn-apmd = ""
-RECIPE_MAINTAINER_pn-apmd = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-apmd = "Scott Garman <scott.a.garman@intel.com>"
 
 RECIPE_STATUS_pn-gperf = "green"
 DEPENDENCY_CHECK_pn-gperf = "not done"
@@ -987,15 +987,15 @@ RECIPE_MAINTAINER_pn-gzip = "Kevin Tian <kevin.tian@intel.com>"
 RECIPE_LATEST_VERSION_pn-gzip = "1.4"
 
 RECIPE_STATUS_pn-iptables = "green"
-RECIPE_MAINTAINER_pn-iptables = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-iptables = "Qing He <qing.he@intel.com>"
 RECIPE_LATEST_VERSION_pn-iptables = "1.4.8"
 
 RECIPE_STATUS_pn-ethtool = "red"
-RECIPE_MAINTAINER_pn-ethtool = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-ethtool = "Edwin Zhai <edwin.zhai@intel.com>"
 RECIPE_LATEST_VERSION_pn-ethtool = "2.6.36"
 
 RECIPE_STATUS_pn-net-tools = "red"
-RECIPE_MAINTAINER_pn-net-tools = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-net-tools = "Dongxiao Xu <dongxiao.xu@intel.com>"
 RECIPE_LATEST_VERSION_pn-net-tools = "1.60-23"
 
 RECIPE_STATUS_pn-shadow = "green"
@@ -1008,7 +1008,7 @@ RECIPE_LATEST_RELEASE_DATE_pn-shadow = "07/2009"
 RECIPE_COMMENTS_pn-formfactor = ""
 
 RECIPE_STATUS_pn-coreutils = "red"
-RECIPE_MAINTAINER_pn-coreutils = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-coreutils = "Qing He <qing.he@intel.com>"
 RECIPE_LATEST_VERSION_pn-coreutils = "8.5"
 
 RECIPE_STATUS_pn-libuser = "green"
@@ -1092,15 +1092,15 @@ RECIPE_MAINTAINER_pn-libgdbus  = "Kevin Tian <kevin.tian@intel.com>"
 
 RECIPE_STATUS_pn-apr = "red"
 RECIPE_LATEST_VERSION_pn-apr = "1.4.2"
-RECIPE_MAINTAINER_pn-apr = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-apr = "Edwin Zhai <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-apr-util = "red"
 RECIPE_LATEST_VERSION_pn-apr-util = "1.3.9"
-RECIPE_MAINTAINER_pn-apr-util = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-apr-util = "Edwin Zhai <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-apt = "red"
 RECIPE_LATEST_VERSION_pn-apt = "0.7.25.3"
-RECIPE_MAINTAINER_pn-apt = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-apt = "Qing He <qing.he@intel.com>"
 
 RECIPE_STATUS_pn-chrpath = "red"
 RECIPE_LATEST_VERSION_pn-chrpath = "0.13-2"
@@ -1112,7 +1112,7 @@ RECIPE_MAINTAINER_pn-dosfstools = "Kevin Tian <kevin.tian@intel.com>"
 
 RECIPE_STATUS_pn-eee-acpi-scripts = "red"
 RECIPE_LATEST_VERSION_pn-eee-acpi-scripts = "1.1.10+eaaa266e8c3b91b19d8ac861334b41ce7530e8c5"
-RECIPE_MAINTAINER_pn-eee-acpi-scripts = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-eee-acpi-scripts = "Edwin Zhai <edwin.zhai@intel.com>"
 DISTRO_PN_ALIAS_pn-eee-acpi-scripts = "Debian=eeepc-acpi-scripts Ubuntu=eeepc-acpi-scripts"
 
 RECIPE_STATUS_pn-gssdp = "green"
@@ -1149,19 +1149,19 @@ RECIPE_MAINTAINER_pn-ohm = "Kevin Tian <kevin.tian@intel.com>"
 
 RECIPE_STATUS_pn-procps = "red"
 RECIPE_LATEST_VERSION_pn-procps = "3.2.8"
-RECIPE_MAINTAINER_pn-procps = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-procps = "Qing He <qing.he@intel.com>"
 
 RECIPE_STATUS_pn-iso-codes = "red"
 RECIPE_LATEST_VERSION_pn-iso-codes = "3.16"
-RECIPE_MAINTAINER_pn-iso-codes = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-iso-codes = "Dexuan Cui <dexuan.cui@intel.com>"
 
 RECIPE_STATUS_pn-libgsf = "red"
 RECIPE_LATEST_VERSION_pn-libgsf = "1.14.18"
-RECIPE_MAINTAINER_pn-libgsf = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-libgsf = "Dexuan Cui <dexuan.cui@intel.com>"
 
 RECIPE_STATUS_pn-beecrypt = "red"
 RECIPE_LATEST_VERSION_pn-beecrypt = "4.1.2"
-RECIPE_MAINTAINER_pn-beecrypt = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-beecrypt = "Edwin Zhai <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-libacpi = "red"
 RECIPE_LATEST_VERSION_pn-libacpi = "0.2"
@@ -1170,11 +1170,11 @@ DISTRO_PN_ALIAS_pn-libacpi="Ubuntu=libacpi Mandriva=libacpi"
 
 RECIPE_STATUS_pn-acpid = "red"
 RECIPE_LATEST_VERSION_pn-acpid = "1.0.10"
-RECIPE_MAINTAINER_pn-acpid = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-acpid = "Edwin Zhai <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-consolekit = "red"
 RECIPE_LATEST_VERSION_pn-consolekit = "0.4.1"
-RECIPE_MAINTAINER_pn-consolekit = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-consolekit = "Edwin Zhai <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-console-tools = "red"
 RECIPE_LATEST_VERSION_pn-console-tools = "0.3.2"
-- 
1.7.0.4


