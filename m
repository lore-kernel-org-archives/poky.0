Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0BB534C804D9
	for <poky@yoctoproject.org>; Sat, 12 Mar 2011 02:46:22 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Mar 2011 00:46:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,307,1297065600"; d="scan'208";a="401580654"
Received: from unknown (HELO localhost) ([10.255.12.198])
	by azsmga001.ch.intel.com with ESMTP; 12 Mar 2011 00:46:22 -0800
Message-Id: <d55011a9ab18368c7fd0a8fe14f8703bde22963a.1299919238.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1299919238.git.dvhart@linux.intel.com>
References: <cover.1299919238.git.dvhart@linux.intel.com>
Old-Date: Sat, 12 Mar 2011 00:15:41 -0800
Date: Sat, 12 Mar 2011  0:46:16 -0800
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 2/2] n450: replace n450-audio with a proper init script
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
X-List-Received-Date: Sat, 12 Mar 2011 08:46:23 -0000

From: Darren Hart <dvhart@linux.intel.com>

Rewrite n450-audio based on /etc/init.d/skeleton. Update the install to
rewrite all the system paths.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-n450/recipes-bsp/n450-audio/n450-audio.bb     |   13 ++++-
 .../recipes-bsp/n450-audio/n450-audio/n450-audio   |   49 +++++++++++++++----
 2 files changed, 48 insertions(+), 14 deletions(-)

diff --git a/meta-n450/recipes-bsp/n450-audio/n450-audio.bb b/meta-n450/recipes-bsp/n450-audio/n450-audio.bb
index 20e3a9a..90ec267 100644
--- a/meta-n450/recipes-bsp/n450-audio/n450-audio.bb
+++ b/meta-n450/recipes-bsp/n450-audio/n450-audio.bb
@@ -4,7 +4,7 @@ SECTION = "base"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
 
-PR = "r3"
+PR = "r4"
 
 inherit update-rc.d
 
@@ -16,8 +16,15 @@ INITSCRIPT_NAME = "n450-audio"
 INITSCRIPT_PARAMS = "defaults 90"
 
 do_install() {
-        install -d ${D}${sysconfdir} \
-                   ${D}${sysconfdir}/init.d
+	install -d ${D}${sysconfdir} \
+	           ${D}${sysconfdir}/init.d
 	install -m 0755 ${WORKDIR}/n450-audio ${D}${sysconfdir}/init.d
+        cat ${WORKDIR}/${INITSCRIPT_NAME} | \
+            sed -e 's,/etc,${sysconfdir},g' \
+                -e 's,/usr/sbin,${sbindir},g' \
+                -e 's,/var,${localstatedir},g' \
+                -e 's,/usr/bin,${bindir},g' \
+                -e 's,/usr,${prefix},g' > ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
+        chmod 755 ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
 }
 
diff --git a/meta-n450/recipes-bsp/n450-audio/n450-audio/n450-audio b/meta-n450/recipes-bsp/n450-audio/n450-audio/n450-audio
index ad1b0bd..c5a0044 100644
--- a/meta-n450/recipes-bsp/n450-audio/n450-audio/n450-audio
+++ b/meta-n450/recipes-bsp/n450-audio/n450-audio/n450-audio
@@ -1,15 +1,42 @@
 #!/bin/sh
+### BEGIN INIT INFO
+# Provides:          n450 mixer setup
+# Required-Start:    $syslog
+# Required-Stop:     $syslog
+# Default-Start:     2 3 4 5
+# Default-Stop:      0 1 6
+# Short-Description: Initialize the n450 audio mixer
+# Description:       Unmute FRONT and set volume to ~70%.
+### END INIT INFO
 
+# Author: Darren Hart <dvhart@linux.intel.com>
+# Based on /etc/init.d/skeleton
+
+PATH=/sbin:/usr/sbin:/bin:/usr/bin
+DESC="Audio mixer settings"
+NAME=n450-audio
 AMIXER=`which amixer`
+SCRIPTNAME=/etc/init.d/$NAME
+
+# Exit if amixer is not installed
+[ -x "$AMIXER" ] || exit 0
+
+do_start() {
+	# Enable the "Front" simple controls (black phones jack)
+	$AMIXER sset Front 30 on > /dev/null
+}
+
+case "$1" in
+start)
+	echo "$NAME: setting default mixer settings."
+	do_start
+	;;
+stop)
+	;;
+*)
+	echo "Usage: $SCRIPTNAME {start|stop}" >&2
+	exit 3
+	;;
+esac
 
-if [ ! -e "$AMIXER" ]; then
-	if [ -e /usr/bin/amixer ]; then
-		AMIXER=/usr/bin/amixer
-	else
-		echo "amixer not found, unable to set default audio settings."
-		exit 1
-	fi
-fi
-
-# Enable the "Front" simple controls (black phones jack)
-$AMIXER sset Front 30 on
+exit 0
-- 
1.7.1


