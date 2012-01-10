Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA180E006E9
	for <poky@yoctoproject.org>; Tue, 10 Jan 2012 09:39:24 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 10 Jan 2012 09:39:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="96630058"
Received: from unknown (HELO shamshir.amr.corp.intel.com) ([10.255.14.3])
	by orsmga002.jf.intel.com with ESMTP; 10 Jan 2012 09:39:24 -0800
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 10 Jan 2012 09:39:23 -0800
Message-Id: <c8348ca5f224050eda364d5195e38c8a1ca5f125.1326216193.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7.5
In-Reply-To: <cover.1326216193.git.josh@linux.intel.com>
References: <cover.1326216193.git.josh@linux.intel.com>
In-Reply-To: <cover.1326216193.git.josh@linux.intel.com>
References: <cover.1326216193.git.josh@linux.intel.com>
Subject: [PATCH 2/2] beagleboard-audio: drop in favour of alsa-state
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
X-List-Received-Date: Tue, 10 Jan 2012 17:39:25 -0000

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta-yocto/conf/machine/beagleboard.conf           |    3 -
 .../beagleboard-audio/beagleboard-audio.bb         |   33 ---------------
 .../beagleboard-audio/beagleboard-audio            |   44 --------------------
 3 files changed, 0 insertions(+), 80 deletions(-)
 delete mode 100644 meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio.bb
 delete mode 100644 meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio/beagleboard-audio

diff --git a/meta-yocto/conf/machine/beagleboard.conf b/meta-yocto/conf/machine/beagleboard.conf
index dd549d0..fa2f8e7 100644
--- a/meta-yocto/conf/machine/beagleboard.conf
+++ b/meta-yocto/conf/machine/beagleboard.conf
@@ -12,9 +12,6 @@ XSERVER = "xserver-xorg-lite \
 # Ship all kernel modules by default
 MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
 
-# Setup sane default mixer settings
-MACHINE_EXTRA_RRECOMMENDS += "beagleboard-audio"
-
 # Allow for MMC booting (required by the NAND-less Beagleboard XM)
 EXTRA_IMAGEDEPENDS += "u-boot x-load"
 
diff --git a/meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio.bb b/meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio.bb
deleted file mode 100644
index 0bfd7dc..0000000
--- a/meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio.bb
+++ /dev/null
@@ -1,33 +0,0 @@
-SUMMARY = "Provide a basic init script to enable audio"
-DESCRIPTION = "Set the volume and unmute the Front mixer setting during boot."
-SECTION = "base"
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
-
-PR = "r5"
-
-inherit update-rc.d
-
-RDEPENDS_${PN} = "alsa-utils-amixer"
-
-SRC_URI = "file://beagleboard-audio"
-
-INITSCRIPT_NAME = "beagleboard-audio"
-INITSCRIPT_PARAMS = "defaults 90"
-
-COMPATIBLE_MACHINE = "beagleboard"
-INHIBIT_DEFAULT_DEPS = "1"
-
-do_install() {
-	install -d ${D}${sysconfdir} \
-	           ${D}${sysconfdir}/init.d
-	install -m 0755 ${WORKDIR}/beagleboard-audio ${D}${sysconfdir}/init.d
-        cat ${WORKDIR}/${INITSCRIPT_NAME} | \
-            sed -e 's,/etc,${sysconfdir},g' \
-                -e 's,/usr/sbin,${sbindir},g' \
-                -e 's,/var,${localstatedir},g' \
-                -e 's,/usr/bin,${bindir},g' \
-                -e 's,/usr,${prefix},g' > ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
-        chmod 755 ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
-}
-
diff --git a/meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio/beagleboard-audio b/meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio/beagleboard-audio
deleted file mode 100644
index ed2bd50..0000000
--- a/meta-yocto/recipes-bsp/beagleboard-audio/beagleboard-audio/beagleboard-audio
+++ /dev/null
@@ -1,44 +0,0 @@
-#!/bin/sh
-### BEGIN INIT INFO
-# Provides:          beagleboard mixer setup
-# Required-Start:    $syslog
-# Required-Stop:     $syslog
-# Default-Start:     2 3 4 5
-# Default-Stop:      0 1 6
-# Short-Description: Initialize the beagleboard audio mixer
-# Description:       Unmute FRONT and set volume to ~70%.
-### END INIT INFO
-
-# Author: Darren Hart <dvhart@linux.intel.com>
-# Based on /etc/init.d/skeleton
-
-PATH=/sbin:/usr/sbin:/bin:/usr/bin
-DESC="Audio mixer settings"
-NAME=beagleboard-audio
-AMIXER=`which amixer`
-SCRIPTNAME=/etc/init.d/$NAME
-
-# Exit if amixer is not installed
-[ -x "$AMIXER" ] || exit 0
-
-do_start() {
-	# Enable the Headset (Audio Out)
-	$AMIXER sset "Headset" 2 > /dev/null
-	$AMIXER sset "HeadsetL Mixer AudioL1" on > /dev/null
-	$AMIXER sset "HeadsetR Mixer AudioR1" on > /dev/null
-}
-
-case "$1" in
-start)
-	echo "$NAME: setting default mixer settings."
-	do_start
-	;;
-stop)
-	;;
-*)
-	echo "Usage: $SCRIPTNAME {start|stop}" >&2
-	exit 3
-	;;
-esac
-
-exit 0
-- 
1.7.7.5


