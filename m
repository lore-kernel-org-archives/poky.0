Return-Path: <edwin.zhai@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 000044C810C1
	for <poky@yoctoproject.org>; Wed,  1 Dec 2010 23:55:32 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 01 Dec 2010 21:55:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,286,1288594800"; d="scan'208";a="579745488"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by orsmga002.jf.intel.com with ESMTP; 01 Dec 2010 21:55:32 -0800
Message-Id: <843629a20eb6aced08301efd48635132a5988fa2.1291269468.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1291269468.git.edwin.zhai@intel.com>
References: <cover.1291269468.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Sun, 28 Nov 2010 15:48:25 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 06/14] eee-acpi-scripts: Update to 1.1.11
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
X-List-Received-Date: Thu, 02 Dec 2010 05:55:33 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 .../eee-acpi-scripts/eee-acpi-scripts_git.bb       |   15 +++--
 .../eee-acpi-scripts/files/remove-doc-check.patch  |   76 ++++++++++----------
 3 files changed, 47 insertions(+), 46 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index eb0eda6..015df5a 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -35,7 +35,7 @@ SRCREV_pn-dtc ??= "73dca9ae0b9abe6924ba640164ecce9f8df69c5a"
 SRCREV_pn-dtc-native ??= "73dca9ae0b9abe6924ba640164ecce9f8df69c5a"
 SRCREV_pn-eds-dbus ??= "3c9933541d722c0b17a95a23d5f518745d4aad27"
 SRCREV_pn-eds-tools ??= "2008-02-04"
-SRCREV_pn-eee-acpi-scripts ??= "df785afdacedf869b20fb88a793c13b539819270"
+SRCREV_pn-eee-acpi-scripts ??= "e224937ba51165e2a52252f9a113c8a82c01bb36"
 EGLIBCREV = "11982"
 SRCREV_pn-eglibc ??= "${EGLIBCREV}"
 SRCREV_pn-eglibc-initial ??= "${EGLIBCREV}"
diff --git a/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb b/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb
index 4c26504..d186727 100644
--- a/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb
+++ b/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb
@@ -1,8 +1,11 @@
-SECTION = "base"
 DESCRIPTION = "eeePC specific ACPI scripts"
+HOMEPAGE = "http://alioth.debian.org/projects/debian-eeepc/"
+SECTION = "base"
+
 LICENSE="GPL"
+LIC_FILES_CHKSUM = "file://debian/copyright;md5=77ef83ab5f4af938a93edb61f7b74f2c"
 
-PV = "0.0+git${SRCREV}"
+PV = "1.1.11+git${SRCREV}"
 PR = "r3"
 
 RDEPENDS = "pm-utils"
@@ -23,13 +26,13 @@ do_install () {
 	install -d ${D}${sysconfdir}/default/
 	install -d ${D}${sysconfdir}/acpi/actions/
 	install -d ${D}${sysconfdir}/acpi/events/
-	install -d ${D}${sysconfdir}/acpi/lib/
+	install -d ${D}${sysconfdir}/acpi/lib/udev/rules.d
 	install -d ${D}${datadir}/eeepc-acpi-scripts/
 	install -d ${D}${datadir}/acpi-support/
 	install -m 644 ${S}/events/* ${D}${sysconfdir}/acpi/events/
-	install -m 644 ${S}/lib/* ${D}${sysconfdir}/acpi/lib/
+	install -m 644 ${S}/lib/udev/rules.d/* ${D}${sysconfdir}/acpi/lib/udev/rules.d/
 	install ${S}/actions/* ${D}${sysconfdir}/acpi/actions/
-	install -m 0644 ${S}/functions.sh ${D}${datadir}/eeepc-acpi-scripts/
+	install -m 0644 ${S}/acpilib/functions.sh ${D}${datadir}/eeepc-acpi-scripts/
 	install -m 0644 ${WORKDIR}/policy-funcs ${D}${datadir}/acpi-support/
-	install -m 0644 ${S}/debian/eeepc-acpi-scripts.default ${D}${sysconfdir}/default/
+	install -m 0644 ${S}/debian/eeepc-acpi-scripts.default* ${D}${sysconfdir}/default/
 }
diff --git a/meta/recipes-bsp/eee-acpi-scripts/files/remove-doc-check.patch b/meta/recipes-bsp/eee-acpi-scripts/files/remove-doc-check.patch
index 8f6c4fc..3e80b7f 100644
--- a/meta/recipes-bsp/eee-acpi-scripts/files/remove-doc-check.patch
+++ b/meta/recipes-bsp/eee-acpi-scripts/files/remove-doc-check.patch
@@ -5,56 +5,54 @@
  actions/volume.sh     |    3 ---
  4 files changed, 12 deletions(-)
 
-Index: git/actions/hotkey.sh
+Index: git/eeepc-acpi-scripts/hotkey.sh
 ===================================================================
---- git.orig/actions/hotkey.sh	2008-09-25 11:00:58.000000000 +0200
-+++ git/actions/hotkey.sh	2008-09-25 11:01:04.000000000 +0200
-@@ -1,8 +1,5 @@
+--- git.orig/eeepc-acpi-scripts/hotkey.sh	2010-11-28 16:02:17.000000000 +0800
++++ git/eeepc-acpi-scripts/hotkey.sh	2010-11-28 16:02:44.000000000 +0800
+@@ -1,12 +1,10 @@
  #!/bin/sh
  
+ test -d /sys/bus/platform/devices/eeepc || exit 0
 -# do nothing if package is removed
--[ -d /usr/share/doc/eeepc-acpi-scripts ] || exit 0
--
- . /etc/default/eeepc-acpi-scripts
- . /usr/share/eeepc-acpi-scripts/functions.sh
- . /etc/acpi/lib/notify.sh
-Index: git/actions/suspend.sh
-===================================================================
---- git.orig/actions/suspend.sh	2008-09-25 11:00:32.000000000 +0200
-+++ git/actions/suspend.sh	2008-09-25 11:00:37.000000000 +0200
-@@ -1,8 +1,5 @@
- #!/bin/sh
+ PKG=eeepc-acpi-scripts
+ PKG_DIR=/usr/share/acpi-support/$PKG
+ FUNC_LIB=$PKG_DIR/lib/functions.sh
+ DEFAULT=/etc/default/$PKG
+-[ -e "$FUNC_LIB" ] || exit 0
  
--# do nothing if package is removed
--[ -d /usr/share/doc/eeepc-acpi-scripts ] || exit 0
--
- if (runlevel | grep -q [06]) || (pidof '/sbin/shutdown' > /dev/null); then
-     exit 0
- fi
-Index: git/actions/vga-toggle.sh
+ case $(runlevel) in
+     *0|*6)
+Index: git/eeepc-acpi-scripts/vga-toggle.sh
 ===================================================================
---- git.orig/actions/vga-toggle.sh	2008-09-25 11:02:00.000000000 +0200
-+++ git/actions/vga-toggle.sh	2008-09-25 11:02:06.000000000 +0200
-@@ -1,8 +1,5 @@
+--- git.orig/eeepc-acpi-scripts/vga-toggle.sh	2010-11-28 16:03:57.000000000 +0800
++++ git/eeepc-acpi-scripts/vga-toggle.sh	2010-11-28 16:04:03.000000000 +0800
+@@ -1,12 +1,10 @@
  #!/bin/sh
  
+ test -d /sys/bus/platform/devices/eeepc || exit 0
 -# do nothing if package is removed
--[ -d /usr/share/doc/eeepc-acpi-scripts ] || exit 0
--
- . /etc/default/eeepc-acpi-scripts
+ PKG=eeepc-acpi-scripts
+ PKG_DIR=/usr/share/acpi-support/$PKG
+ FUNC_LIB=$PKG_DIR/lib/functions.sh
+ DEFAULT=/etc/default/$PKG
+-[ -e "$FUNC_LIB" ] || exit 0
  
- # return: 0 on disconnect, 1 on connected vga, 2 else
-Index: git/actions/volume.sh
+ if [ -e "$DEFAULT" ]; then . "$DEFAULT"; fi
+ . $FUNC_LIB
+Index: git/eeepc-acpi-scripts/volume.sh
 ===================================================================
---- git.orig/actions/volume.sh	2008-09-25 11:02:13.000000000 +0200
-+++ git/actions/volume.sh	2008-09-25 11:02:19.000000000 +0200
-@@ -2,9 +2,6 @@
- 
+--- git.orig/eeepc-acpi-scripts/volume.sh	2010-11-28 16:04:34.000000000 +0800
++++ git/eeepc-acpi-scripts/volume.sh	2010-11-28 16:04:40.000000000 +0800
+@@ -3,12 +3,10 @@
+ test -d /sys/bus/platform/devices/eeepc || exit 0
  # Volume controls
  
 -# do nothing if package is removed
--[ -d /usr/share/doc/eeepc-acpi-scripts ] || exit 0
--
- . /etc/default/eeepc-acpi-scripts
- . /usr/share/eeepc-acpi-scripts/functions.sh
- . /etc/acpi/lib/notify.sh
+ PKG=eeepc-acpi-scripts
+ PKG_DIR=/usr/share/acpi-support/$PKG
+ FUNC_LIB=$PKG_DIR/lib/functions.sh
+ DEFAULT=/etc/default/$PKG
+-[ -e "$FUNC_LIB" ] || exit 0
+ 
+ . $FUNC_LIB
+ . $PKG_DIR/lib/sound.sh
-- 
1.7.0.4


