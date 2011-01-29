Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0A6E44C81211
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 20:30:27 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 28 Jan 2011 18:30:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,395,1291622400"; d="scan'208";a="597546015"
Received: from unknown (HELO helios) ([10.255.16.169])
	by orsmga002.jf.intel.com with SMTP; 28 Jan 2011 18:30:26 -0800
Received: by helios (sSMTP sendmail emulation); Sat, 29 Jan 2011 02:30:25 +0000
Message-Id: <69b4385aa08845b5d75fb5db075e7edc5aeab87a.1296267951.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1296267951.git.paul.eggleton@linux.intel.com>
References: <cover.1296267951.git.paul.eggleton@linux.intel.com>
Old-Date: Mon, 17 Jan 2011 15:31:11 +0000
Date: Sat, 29 Jan 2011  2:30:25 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 10/12] avahi: prevent unnecessary runtime dependency on gtk+
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
X-List-Received-Date: Sat, 29 Jan 2011 02:30:28 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

* Move avahi-discover-standalone to avahi-ui-utils as it's a GUI tool
* Split out avahi-ui dev files from avahi-dev to a libavahi-ui-dev package
  (using the new nodeprrecs flag to avoid automatic RRECOMMENDS calculation
  for avahi-dev)

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/recipes-connectivity/avahi/avahi.inc       |    9 ++++++++-
 meta/recipes-connectivity/avahi/avahi_0.6.28.bb |    2 +-
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-connectivity/avahi/avahi.inc b/meta/recipes-connectivity/avahi/avahi.inc
index 5c3b4dd..9f83d8d 100644
--- a/meta/recipes-connectivity/avahi/avahi.inc
+++ b/meta/recipes-connectivity/avahi/avahi.inc
@@ -37,11 +37,14 @@ EXTRA_OECONF = "--with-distro=debian \
              --disable-python \
              --disable-doxygen-doc"
 
-PACKAGES =+ "avahi-daemon libavahi-common libavahi-core libavahi-client avahi-dnsconfd libavahi-glib libavahi-gobject avahi-autoipd avahi-utils libavahi-ui avahi-ui-utils"
+PACKAGES =+ "avahi-daemon libavahi-common libavahi-core libavahi-client avahi-dnsconfd libavahi-glib libavahi-gobject avahi-autoipd avahi-ui-utils avahi-utils libavahi-ui libavahi-ui-dev"
 
 FILES_libavahi-common = "${libdir}/libavahi-common.so.*"
 FILES_libavahi-core = "${libdir}/libavahi-core.so.*"
 FILES_libavahi-ui = "${libdir}/libavahi-ui.so.*"
+FILES_libavahi-ui-dev = "${libdir}/libavahi-ui.* \
+                         ${includedir}/avahi-ui/* \
+                         ${libdir}/pkgconfig/avahi-ui.pc"
 FILES_avahi-daemon = "${sbindir}/avahi-daemon \
                       ${sysconfdir}/avahi/avahi-daemon.conf \
                       ${sysconfdir}/avahi/hosts \
@@ -59,9 +62,13 @@ FILES_libavahi-glib = "${libdir}/libavahi-glib.so.*"
 FILES_libavahi-gobject = "${libdir}/libavahi-gobject.so.*"
 FILES_avahi-utils = "${bindir}/avahi-*"
 FILES_avahi-ui-utils = "${bindir}/bssh ${bindir}/bvnc ${bindir}/bshell \
+                        ${bindir}/avahi-discover-standalone \
                         ${datadir}/applications \
                         ${datadir}/avahi/interfaces"
 
+RRECOMMENDS_avahi-dev = "gettext-dev expat-dev libcap-dev libdaemon-dev dbus-dev glib-2.0-dev update-rc.d-dev"
+RRECOMMENDS_avahi-dev[nodeprrecs] = 1
+
 CONFFILES_avahi-daemon = "${sysconfdir}/avahi/avahi-daemon.conf"
 
 INITSCRIPT_PACKAGES = "avahi-daemon avahi-dnsconfd"
diff --git a/meta/recipes-connectivity/avahi/avahi_0.6.28.bb b/meta/recipes-connectivity/avahi/avahi_0.6.28.bb
index fb339e7..6e034b0 100644
--- a/meta/recipes-connectivity/avahi/avahi_0.6.28.bb
+++ b/meta/recipes-connectivity/avahi/avahi_0.6.28.bb
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=2d5025d4aa3495befef8f17206a5b0a1 \
                     file://avahi-client/client.h;endline=23;md5=f4ac741a25c4f434039ba3e18c8674cf"
 
 RDEPENDS_avahi-daemon = "sysvinit-pidof"
-PR = "r1"
+PR = "r2"
 
 EXTRA_OECONF += "--disable-gtk3"
 
-- 
1.7.1


