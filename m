Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C84104C80050
	for <poky@yoctoproject.org>; Sat, 12 Mar 2011 02:46:21 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Mar 2011 00:46:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,307,1297065600"; d="scan'208";a="666532613"
Received: from unknown (HELO localhost) ([10.255.12.198])
	by fmsmga002.fm.intel.com with ESMTP; 12 Mar 2011 00:46:21 -0800
Message-Id: <5f81f2303bc03ef7b12751599851b97f99d6cf3e.1299919238.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1299919238.git.dvhart@linux.intel.com>
References: <cover.1299919238.git.dvhart@linux.intel.com>
Old-Date: Fri, 11 Mar 2011 15:53:11 -0800
Date: Sat, 12 Mar 2011  0:46:15 -0800
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/2] n450: revamp audio mixer init script
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
X-List-Received-Date: Sat, 12 Mar 2011 08:46:21 -0000

From: Darren Hart <dvhart@linux.intel.com>

Fixes [YOCTO #798]

n450-audiofix suffered from various problems, including not getting installed.
This patch adds it via MACHINE_EXTRA_RRECOMMENDS and cleans up the various
bugs in the implementation. The structure has been renamed and the comments
updated for consistency. This should be considered a stop-gap measure, as
something along the lines of oe's alsa-state is a far better solution.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-n450/conf/machine/n450.conf                   |    2 +
 meta-n450/recipes-bsp/audiofix/audiofix.bb         |   17 --------------
 meta-n450/recipes-bsp/audiofix/files/n450_audiofix |   13 -----------
 meta-n450/recipes-bsp/n450-audio/n450-audio.bb     |   23 ++++++++++++++++++++
 .../recipes-bsp/n450-audio/n450-audio/n450-audio   |   15 +++++++++++++
 5 files changed, 40 insertions(+), 30 deletions(-)
 delete mode 100644 meta-n450/recipes-bsp/audiofix/audiofix.bb
 delete mode 100644 meta-n450/recipes-bsp/audiofix/files/n450_audiofix
 create mode 100644 meta-n450/recipes-bsp/n450-audio/n450-audio.bb
 create mode 100644 meta-n450/recipes-bsp/n450-audio/n450-audio/n450-audio

diff --git a/meta-n450/conf/machine/n450.conf b/meta-n450/conf/machine/n450.conf
index eda91d9..c06cb6c 100644
--- a/meta-n450/conf/machine/n450.conf
+++ b/meta-n450/conf/machine/n450.conf
@@ -11,3 +11,5 @@ APPEND += "console=ttyS0,115200 console=tty0"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-stable"
 
+# Ensure the bsp packages are installed
+MACHINE_EXTRA_RRECOMMENDS += " n450-audio "
diff --git a/meta-n450/recipes-bsp/audiofix/audiofix.bb b/meta-n450/recipes-bsp/audiofix/audiofix.bb
deleted file mode 100644
index 3b1d272..0000000
--- a/meta-n450/recipes-bsp/audiofix/audiofix.bb
+++ /dev/null
@@ -1,17 +0,0 @@
-SUMMARY = "Provide a basic init script to enable audio"
-DESCRIPTION = "This package provides an init script which enables the audio on startup via the amixer command.  It address a problem with the development board that has the audio muted on power on."
-SECTION = "base"
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
-
-PR = "r2"
-RDEPENDS = "alsa-utils-amixer"
-
-SRC_URI = "file://n450_audiofix"
-
-do_install () {
-	install -d ${D}${sysconfdir}/init.d
-	install -d ${D}${sysconfdir}/rc5.d
-	install -m 0755 ${WORKDIR}/n450_audiofix ${D}${sysconfdir}/init.d
-	ln -sf ${D}${sysconfdir}/init.d/n450_audiofix ${D}/${sysconfdir}/rc5.d/S91n450_audiofix
-}
diff --git a/meta-n450/recipes-bsp/audiofix/files/n450_audiofix b/meta-n450/recipes-bsp/audiofix/files/n450_audiofix
deleted file mode 100644
index 9ec0448..0000000
--- a/meta-n450/recipes-bsp/audiofix/files/n450_audiofix
+++ /dev/null
@@ -1,13 +0,0 @@
-#!/bin/sh
-
-AMIXER=`which amixer`
-
-if [ ! -e $AMIXER ]; then
-	if [ -e /usr/bin/amixer ]; then
-		AMIXER=/usr/bin/amixer
-	else
-		echo "No amixer, so unable to reset Front channel ON"
-	fi
-fi
-
-
diff --git a/meta-n450/recipes-bsp/n450-audio/n450-audio.bb b/meta-n450/recipes-bsp/n450-audio/n450-audio.bb
new file mode 100644
index 0000000..20e3a9a
--- /dev/null
+++ b/meta-n450/recipes-bsp/n450-audio/n450-audio.bb
@@ -0,0 +1,23 @@
+SUMMARY = "Provide a basic init script to enable audio"
+DESCRIPTION = "Set the volume and unmute the Front mixer setting during boot."
+SECTION = "base"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
+
+PR = "r3"
+
+inherit update-rc.d
+
+RDEPENDS = "alsa-utils-amixer"
+
+SRC_URI = "file://n450-audio"
+
+INITSCRIPT_NAME = "n450-audio"
+INITSCRIPT_PARAMS = "defaults 90"
+
+do_install() {
+        install -d ${D}${sysconfdir} \
+                   ${D}${sysconfdir}/init.d
+	install -m 0755 ${WORKDIR}/n450-audio ${D}${sysconfdir}/init.d
+}
+
diff --git a/meta-n450/recipes-bsp/n450-audio/n450-audio/n450-audio b/meta-n450/recipes-bsp/n450-audio/n450-audio/n450-audio
new file mode 100644
index 0000000..ad1b0bd
--- /dev/null
+++ b/meta-n450/recipes-bsp/n450-audio/n450-audio/n450-audio
@@ -0,0 +1,15 @@
+#!/bin/sh
+
+AMIXER=`which amixer`
+
+if [ ! -e "$AMIXER" ]; then
+	if [ -e /usr/bin/amixer ]; then
+		AMIXER=/usr/bin/amixer
+	else
+		echo "amixer not found, unable to set default audio settings."
+		exit 1
+	fi
+fi
+
+# Enable the "Front" simple controls (black phones jack)
+$AMIXER sset Front 30 on
-- 
1.7.1


