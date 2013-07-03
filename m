Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30B79E003E3
	for <poky@yoctoproject.org>; Wed,  3 Jul 2013 15:11:31 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 Jul 2013 15:11:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,991,1363158000"; d="scan'208";a="326498666"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.13.183])
	by azsmga001.ch.intel.com with ESMTP; 03 Jul 2013 15:11:30 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  3 Jul 2013 15:11:30 -0700
Message-Id: <1372889490-31654-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.1.4
Subject: [PATCH] Upstream_tracking: mark package as not upgradable due to PRS issues
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Jul 2013 22:11:32 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/distro/include/upstream_tracking.inc | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index 3c53451..f6aa799 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -41,6 +41,7 @@ RECIPE_UPSTREAM_DATE_pn-bc = "Nov 01, 2000"
 RECIPE_UPSTREAM_VERSION_pn-bdwgc = "gc-7.2d"
 CHECK_DATE_pn-bdwgc = "Aug 27, 2012"
 RECIPE_NO_UPDATE_REASON_pn-bluez4 = "BlueZ 5.x is not backward-compatible; components that interact with bluez not updated"
+RECIPE_NO_UPDATE_REASON_pn-build-appliance = "Always reports behind"
 RECIPE_NO_UPDATE_REASON_pn-cdrtools = "v3.x uses incompatible CDDL license"
 RECIPE_UPSTREAM_VERSION_pn-clutter = "1.10.0"
 RECIPE_UPSTREAM_DATE_pn-clutter = "Mar 22, 2012"
@@ -52,12 +53,9 @@ RECIPE_UPSTREAM_DATE_pn-cups = "Mar 18, 2013"
 CHECK_DATE_pn-cups = "Jun 11, 2013"
 RECIPE_NO_UPDATE_REASON_pn-db= "API compatibility issue"
 RECIPE_NO_UPDATE_REASON_pn-dbus = "D-BUS 1.7.x is the development version, not stable."
-RECIPE_UPSTREAM_DATE_pn-docbook-sgml-dtd = "May 21, 2010"
-RECIPE_UPSTREAM_VERSION_pn-docbook-sgml-dtd = "4.5"
-CHECK_DATE_pn-docbook-sgml-dtd = "Aug 28, 2012"
-RECIPE_UPSTREAM_VERSION_pn-dtc = "1.3.0"
-RECIPE_UPSTREAM_DATE_pn-dtc = "May 8, 2011"
-CHECK_DATE_pn-dtc = "Aug 28, 2012"
+RECIPE_NO_UPDATE_REASON_pn-docbook-sgml-dtd-3.1-native = "PRS Reports Incorrectly"
+RECIPE_NO_UPDATE_REASON_pn-docbook-sgml-dtd-4.1-native = "PRS Reports Incorrectly"
+RECIPE_NO_UPDATE_REASON_pn-docbook-sgml-dtd-4.5-native = "PRS Reports Incorrectly"
 RECIPE_UPSTREAM_VERSION_pn-eee-acpi-scripts = "1.1.12+9d4cdedca25b396405f8587f9c4fbf8229e041c2"
 RECIPE_UPSTREAM_DATE_pn-eee-acpi-scripts = "Oct 3, 2011"
 CHECK_DATE_pn-eee-acpi-scripts = "Aug 28, 2012"
@@ -79,6 +77,7 @@ RECIPE_NO_UPDATE_REASON_pn-glibc = "two glibc plugins are based on 2.10.1"
 RECIPE_UPSTREAM_VERSION_pn-gmp="5.0.5"
 RECIPE_UPSTREAM_DATE_pn-gmp = "Jul 05, 2012"
 CHECK_DATE_pn-gmp = "Aug 28, 2012"
+RECIPE_NO_UPDATE_REASON_pn-glib-networking = "Pending Glib-2.0 Update"
 RECIPE_UPSTREAM_VERSION_pn-gnome-desktop = "3.7.90"
 RECIPE_UPSTREAM_DATE_pn-gnome-desktop = "Feb 19, 2013"
 CHECK_DATE_pn-gnome-desktop = "Mar 5, 2013"
@@ -102,6 +101,7 @@ RECIPE_NO_UPDATE_REASON_pn-gst-plugins-good = "not compatible with gst-fluendo 0
 RECIPE_NO_UPDATE_REASON_pn-gst-plugins-ugly = "not compatible with gst-fluendo 0.10.x"
 RECIPE_NO_UPDATE_REASON_pn-gstreamer=" not compatible with gst-fluendo 0.10.x "
 RECIPE_NO_UPDATE_REASON_pn-gtk+ = "Do not upgrade to version: 2.99.2 because prefer stable tree"
+RECIPE_NO_UPDATE_REASON_pn-gtk-doc-stub = "PRS Reports Incorrectly"
 RECIPE_UPSTREAM_VERSION_pn-gtk-engines = "2.91.1"
 RECIPE_UPSTREAM_DATE_pn-gtk-engines = "Oct 9, 2010"
 CHECK_DATE_pn-gtk-engines = "Mar 5, 2013"
@@ -120,6 +120,7 @@ RECIPE_UPSTREAM_VERSION_pn-jpeg = "9"
 RECIPE_UPSTREAM_DATE_pn-jpeg = "Jan 13, 2013"
 CHECK_DATE_pn-jpeg = "Mar 5, 2013"
 RECIPE_NO_UPDATE_REASON_pn-jpeg = "webkit-gtk 1.8.3 doesn't work with jpeg 9"
+RECIPE_NO_UPDATE_REASON_pn-kconfig-frontends = "PRS Reports Incorrectly"
 RECIPE_NO_UPDATE_REASON_pn-kernelshark = "0.2 is the latest version."
 RECIPE_UPSTREAM_VERSION_pn-keymaps = "1.0"
 RECIPE_UPSTREAM_DATE_pn-keymaps = "n/a"
@@ -168,12 +169,14 @@ RECIPE_UPSTREAM_VERSION_pn-module-init-tools = "3.15"
 CHECK_DATE_pn-module-init-tools = "Aug 31, 2012"
 RECIPE_UPSTREAM_DATE_pn-modutils-initscripts = "n/a"
 RECIPE_NO_UPDATE_REASON_pn-mpeg2dec = "Why are we currently at 0.4.1?"
+RECIPE_NO_UPDATE_REASON_pn-mx-1.0 = "PRS 1.99 is dev version"
 RECIPE_UPSTREAM_VERSION_pn-ofono = "1.6"
 RECIPE_UPSTREAM_DATE_pn-ofono="Apr 20, 2012"
 CHECK_DATE_pn-ofono = "Aug 31, 2012"
 RECIPE_NO_UPDATE_REASON_pn-openssl = "1.0.1 is beta 1.0.0c is latest"
 RECIPE_UPSTREAM_DATE_pn-opkg-collateral = "n/a"
 RECIPE_UPSTREAM_VERSION_pn-opkg = "0.1.8"
+RECIPE_NO_UPDATE_REASON_pn-oprofileui-server = "PRS Reports Incorrectly"
 CHECK_DATE_pn-opkg = "Aug 31, 2012"
 RECIPE_UPSTREAM_DATE_pn-opkg = "Feb 01, 2010"
 RECIPE_NO_UPDATE_REASON_pn-pkgconfig = "removes glib-conf, adds circular depends"
@@ -196,6 +199,7 @@ RECIPE_UPSTREAM_VERSION_pn-rpm = "5.4.10"
 RECIPE_UPSTREAM_DATE_pn-rpm = "Jul 06, 2012"
 CHECK_DATE_pn-rpm = "Sep 03, 2012"
 RECIPE_UPSTREAM_VERSION_pn-run-postinsts = "check"
+RECIPE_NO_UPDATE_REASON_pn-sato-screenshot = "PRS Reports Incorrectly"
 RECIPE_NO_UPDATE_REASON_pn-socat = "2.0.0 is beta"
 RECIPE_UPSTREAM_VERSION_pn-sqlite3 = "3.7.14.1"
 RECIPE_UPSTREAM_DATE_pn-sqlite3 = "Oct 22, 2012"
@@ -226,6 +230,7 @@ RECIPE_UPSTREAM_VERSION_pn-usbinit = "n/a"
 RECIPE_UPSTREAM_VERSION_pn-usbutils = "006"
 RECIPE_UPSTREAM_DATE_pn-usbutils = "Jul 06, 2012"
 CHECK_DATE_pn-usbutils = "Sep 03, 2012"
+RECIPE_NO_UPDATE_REASON_pn-vte = "Pending Glib-2.0 Update"
 RECIPE_UPSTREAM_VERSION_pn-webkit-gtk = "1.10.2"
 RECIPE_UPSTREAM_DATE_pn-webkit-gtk = "Dec 12, 2012"
 CHECK_DATE_pn-webkit-gtk = "Mar 5, 2013"
-- 
1.8.1.4


