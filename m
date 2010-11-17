Return-Path: <qing.he@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3A88E4C80FAC
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 02:46:47 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Nov 2010 00:46:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,210,1288594800"; d="scan'208";a="627604022"
Received: from qhe2-db.sh.intel.com ([10.239.13.109])
	by fmsmga002.fm.intel.com with ESMTP; 17 Nov 2010 00:46:46 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>) id 1PIdah-0007l6-WB
	for poky@yoctoproject.org; Wed, 17 Nov 2010 16:42:08 +0800
Message-Id: <368bc202ae4626cbae23c63f1e1daf0514c29a63.1289983189.git.qing.he@intel.com>
In-Reply-To: <cover.1289983189.git.qing.he@intel.com>
References: <cover.1289983189.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Wed, 17 Nov 2010 10:51:45 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 4/9] busybox: upgrade to version 1.17.3
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
X-List-Received-Date: Wed, 17 Nov 2010 08:46:47 -0000

from 1.16.2
update license info: add checksum and change gplv2+ to gplv2

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../B921600.patch                                  |    0
 .../busybox-appletlib-dependency.patch             |    0
 .../{busybox-1.16.2 => busybox-1.17.3}/defconfig   |    0
 .../get_header_tar.patch                           |    0
 .../make-382-fix.patch                             |    0
 .../run-parts.in.usr-bin.patch                     |    6 +++---
 .../udhcpc-fix-nfsroot.patch                       |    0
 .../udhcpscript.patch                              |    0
 meta/recipes-core/busybox/busybox.inc              |    9 ++++++++-
 .../{busybox_1.16.2.bb => busybox_1.17.3.bb}       |    2 +-
 10 files changed, 12 insertions(+), 5 deletions(-)
 rename meta/recipes-core/busybox/{busybox-1.16.2 => busybox-1.17.3}/B921600.patch (100%)
 rename meta/recipes-core/busybox/{busybox-1.16.2 => busybox-1.17.3}/busybox-appletlib-dependency.patch (100%)
 rename meta/recipes-core/busybox/{busybox-1.16.2 => busybox-1.17.3}/defconfig (100%)
 rename meta/recipes-core/busybox/{busybox-1.16.2 => busybox-1.17.3}/get_header_tar.patch (100%)
 rename meta/recipes-core/busybox/{busybox-1.16.2 => busybox-1.17.3}/make-382-fix.patch (100%)
 rename meta/recipes-core/busybox/{busybox-1.16.2 => busybox-1.17.3}/run-parts.in.usr-bin.patch (82%)
 rename meta/recipes-core/busybox/{busybox-1.16.2 => busybox-1.17.3}/udhcpc-fix-nfsroot.patch (100%)
 rename meta/recipes-core/busybox/{busybox-1.16.2 => busybox-1.17.3}/udhcpscript.patch (100%)
 rename meta/recipes-core/busybox/{busybox_1.16.2.bb => busybox_1.17.3.bb} (98%)

diff --git a/meta/recipes-core/busybox/busybox-1.16.2/B921600.patch b/meta/recipes-core/busybox/busybox-1.17.3/B921600.patch
similarity index 100%
rename from meta/recipes-core/busybox/busybox-1.16.2/B921600.patch
rename to meta/recipes-core/busybox/busybox-1.17.3/B921600.patch
diff --git a/meta/recipes-core/busybox/busybox-1.16.2/busybox-appletlib-dependency.patch b/meta/recipes-core/busybox/busybox-1.17.3/busybox-appletlib-dependency.patch
similarity index 100%
rename from meta/recipes-core/busybox/busybox-1.16.2/busybox-appletlib-dependency.patch
rename to meta/recipes-core/busybox/busybox-1.17.3/busybox-appletlib-dependency.patch
diff --git a/meta/recipes-core/busybox/busybox-1.16.2/defconfig b/meta/recipes-core/busybox/busybox-1.17.3/defconfig
similarity index 100%
rename from meta/recipes-core/busybox/busybox-1.16.2/defconfig
rename to meta/recipes-core/busybox/busybox-1.17.3/defconfig
diff --git a/meta/recipes-core/busybox/busybox-1.16.2/get_header_tar.patch b/meta/recipes-core/busybox/busybox-1.17.3/get_header_tar.patch
similarity index 100%
rename from meta/recipes-core/busybox/busybox-1.16.2/get_header_tar.patch
rename to meta/recipes-core/busybox/busybox-1.17.3/get_header_tar.patch
diff --git a/meta/recipes-core/busybox/busybox-1.16.2/make-382-fix.patch b/meta/recipes-core/busybox/busybox-1.17.3/make-382-fix.patch
similarity index 100%
rename from meta/recipes-core/busybox/busybox-1.16.2/make-382-fix.patch
rename to meta/recipes-core/busybox/busybox-1.17.3/make-382-fix.patch
diff --git a/meta/recipes-core/busybox/busybox-1.16.2/run-parts.in.usr-bin.patch b/meta/recipes-core/busybox/busybox-1.17.3/run-parts.in.usr-bin.patch
similarity index 82%
rename from meta/recipes-core/busybox/busybox-1.16.2/run-parts.in.usr-bin.patch
rename to meta/recipes-core/busybox/busybox-1.17.3/run-parts.in.usr-bin.patch
index bedb974..e01fdc7 100644
--- a/meta/recipes-core/busybox/busybox-1.16.2/run-parts.in.usr-bin.patch
+++ b/meta/recipes-core/busybox/busybox-1.17.3/run-parts.in.usr-bin.patch
@@ -13,9 +13,9 @@
 # Poky doesn't have debianutils, but let's keep it for safety
 # above comment added by Kevin Tian <kevin.tian@intel.com>, 2010-07-06
 
-diff -uNr busybox-1.15.3.orig//include/applets.h busybox-1.15.3/include/applets.h
---- busybox-1.15.3.orig//include/applets.h	2009-12-12 22:13:28.000000000 +0100
-+++ busybox-1.15.3/include/applets.h	2010-04-30 15:35:40.000000000 +0200
+diff -uNr busybox-1.15.3.orig//include/applets.src.h busybox-1.15.3/include/applets.src.h
+--- busybox-1.15.3.orig//include/applets.src.h	2009-12-12 22:13:28.000000000 +0100
++++ busybox-1.15.3/include/applets.src.h	2010-04-30 15:35:40.000000000 +0200
 @@ -323,7 +323,7 @@
  IF_RPM(APPLET(rpm, _BB_DIR_BIN, _BB_SUID_DROP))
  IF_RPM2CPIO(APPLET(rpm2cpio, _BB_DIR_USR_BIN, _BB_SUID_DROP))
diff --git a/meta/recipes-core/busybox/busybox-1.16.2/udhcpc-fix-nfsroot.patch b/meta/recipes-core/busybox/busybox-1.17.3/udhcpc-fix-nfsroot.patch
similarity index 100%
rename from meta/recipes-core/busybox/busybox-1.16.2/udhcpc-fix-nfsroot.patch
rename to meta/recipes-core/busybox/busybox-1.17.3/udhcpc-fix-nfsroot.patch
diff --git a/meta/recipes-core/busybox/busybox-1.16.2/udhcpscript.patch b/meta/recipes-core/busybox/busybox-1.17.3/udhcpscript.patch
similarity index 100%
rename from meta/recipes-core/busybox/busybox-1.16.2/udhcpscript.patch
rename to meta/recipes-core/busybox/busybox-1.17.3/udhcpscript.patch
diff --git a/meta/recipes-core/busybox/busybox.inc b/meta/recipes-core/busybox/busybox.inc
index 24f9120..142c72f 100644
--- a/meta/recipes-core/busybox/busybox.inc
+++ b/meta/recipes-core/busybox/busybox.inc
@@ -2,8 +2,12 @@ SUMMARY = "Tiny versions of many common UNIX utilities in a single small executa
 DESCRIPTION = "BusyBox combines tiny versions of many common UNIX utilities into a single small executable. It provides minimalist replacements for most of the utilities you usually find in GNU fileutils, shellutils, etc. The utilities in BusyBox generally have fewer options than their full-featured GNU cousins; however, the options that are included provide the expected functionality and behave very much like their GNU counterparts. BusyBox provides a fairly complete POSIX environment for any small or embedded system."
 HOMEPAGE = "http://www.busybox.net"
 BUGTRACKER = "https://bugs.busybox.net/"
+
 # bzip2 applet in busybox is based on lightly-modified bzip2 source
-LICENSE = "GPLv2+ & bzip2"
+# the GPL is version 2 only
+LICENSE = "GPLv2 & bzip2"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=de10de48642ab74318e893a61105afbb"
+
 SECTION = "base"
 PRIORITY = "required"
 
@@ -96,6 +100,9 @@ do_install () {
 	fi
 
 	install -m 0644 ${S}/busybox.links ${D}${sysconfdir}
+
+	# remove the temp dir to suppress warning, we are done with it
+	rm -rf ${D}/busybox
 }
 
 pkg_postinst_${PN} () {
diff --git a/meta/recipes-core/busybox/busybox_1.16.2.bb b/meta/recipes-core/busybox/busybox_1.17.3.bb
similarity index 98%
rename from meta/recipes-core/busybox/busybox_1.16.2.bb
rename to meta/recipes-core/busybox/busybox_1.17.3.bb
index 6e53502..473eabf 100644
--- a/meta/recipes-core/busybox/busybox_1.16.2.bb
+++ b/meta/recipes-core/busybox/busybox_1.17.3.bb
@@ -1,5 +1,5 @@
 require busybox.inc
-PR = "r3"
+PR = "r0"
 
 SRC_URI = "http://www.busybox.net/downloads/busybox-${PV}.tar.bz2;name=tarball \
            file://udhcpscript.patch \
-- 
1.7.0


