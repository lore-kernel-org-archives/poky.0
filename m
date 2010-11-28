Return-Path: <edwin.zhai@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id B77AF4C810EE
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 23:31:51 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Dec 2010 21:31:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,291,1288594800"; d="scan'208";a="356478203"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by azsmga001.ch.intel.com with ESMTP; 02 Dec 2010 21:31:51 -0800
Message-Id: <54692d6a5316bd2c4932e085337aab68703b7dbb.1291354553.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1291354552.git.edwin.zhai@intel.com>
References: <cover.1291354552.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Sun, 28 Nov 2010 15:24:13 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 05/14] consolekit: Update to 0.4.3
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
X-List-Received-Date: Fri, 03 Dec 2010 05:31:51 -0000

Rebased nopolkit.patch.

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../recipes-support/consolekit/consolekit_0.3.0.bb |   16 ---------------
 .../consolekit/files/nopolkit.patch                |    8 +++---
 meta/recipes-tbd/consolekit/consolekit_0.4.3.bb    |   21 ++++++++++++++++++++
 3 files changed, 25 insertions(+), 20 deletions(-)
 delete mode 100644 meta/recipes-support/consolekit/consolekit_0.3.0.bb
 create mode 100644 meta/recipes-tbd/consolekit/consolekit_0.4.3.bb

diff --git a/meta/recipes-support/consolekit/consolekit_0.3.0.bb b/meta/recipes-support/consolekit/consolekit_0.3.0.bb
deleted file mode 100644
index 0d0dfea..0000000
--- a/meta/recipes-support/consolekit/consolekit_0.3.0.bb
+++ /dev/null
@@ -1,16 +0,0 @@
-DESCRIPTION = "ConsoleKit is a framework for defining and tracking users, login sessions, and seats."
-LICENSE = "GPLv2"
-LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552"
-DEPENDS = "dbus"
-
-inherit gnome
-
-SRC_URI = "http://people.freedesktop.org/~mccann/dist/ConsoleKit-${PV}.tar.bz2 \
-           file://nopolkit.patch;patch=1"
-S = "${WORKDIR}/ConsoleKit-${PV}"
-
-FILES_${PN} += "${libdir}/ConsoleKit ${datadir}/dbus-1 ${datadir}/PolicyKit"
-
-
-
-
diff --git a/meta/recipes-support/consolekit/files/nopolkit.patch b/meta/recipes-support/consolekit/files/nopolkit.patch
index bebbcaf..7a1f02a 100644
--- a/meta/recipes-support/consolekit/files/nopolkit.patch
+++ b/meta/recipes-support/consolekit/files/nopolkit.patch
@@ -1,13 +1,13 @@
-Index: ConsoleKit-0.3.0/configure.ac
+Index: ConsoleKit-0.4.3/configure.ac
 ===================================================================
---- ConsoleKit-0.3.0.orig/configure.ac	2009-05-22 12:53:27.000000000 +0100
-+++ ConsoleKit-0.3.0/configure.ac	2009-05-22 12:53:56.000000000 +0100
+--- ConsoleKit-0.4.3.orig/configure.ac	2010-10-26 22:34:03.000000000 +0800
++++ ConsoleKit-0.4.3/configure.ac	2010-11-28 15:28:26.000000000 +0800
 @@ -55,10 +55,7 @@
    gthread-2.0 >= $GLIB_REQUIRED_VERSION
  )
  
 -PKG_CHECK_MODULES(POLKIT,
--  polkit >= $POLKIT_REQUIRED_VERSION,
+-  polkit-gobject-1 >= $POLKIT_REQUIRED_VERSION,
 -  have_polkit=yes,
 -  have_polkit=no)
 +have_polkit=no
diff --git a/meta/recipes-tbd/consolekit/consolekit_0.4.3.bb b/meta/recipes-tbd/consolekit/consolekit_0.4.3.bb
new file mode 100644
index 0000000..f1da72b
--- /dev/null
+++ b/meta/recipes-tbd/consolekit/consolekit_0.4.3.bb
@@ -0,0 +1,21 @@
+DESCRIPTION = "ConsoleKit is a framework for defining and tracking users, login sessions, and seats."
+HOMEPAGE="http://www.freedesktop.org/wiki/Software/ConsoleKit"
+BUGTRACKER="https://bugs.freedesktop.org/buglist.cgi?query_format=specific&product=ConsoleKit"
+
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
+                    file://src/main.c;endline=21;md5=0a994e09769780220163255d8f9071c3"
+
+DEPENDS = "dbus"
+
+inherit gnome
+
+SRC_URI = "http://www.freedesktop.org/software/ConsoleKit/dist/ConsoleKit-0.4.3.tar.bz2 \
+           file://nopolkit.patch;patch=1"
+S = "${WORKDIR}/ConsoleKit-${PV}"
+
+FILES_${PN} += "${libdir}/ConsoleKit ${datadir}/dbus-1 ${datadir}/PolicyKit"
+
+
+
+
-- 
1.7.0.4


