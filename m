Return-Path: <qing.he@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A06A34C80FD4
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 02:47:05 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 17 Nov 2010 00:47:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,210,1288594800"; d="scan'208";a="858463526"
Received: from qhe2-db.sh.intel.com ([10.239.13.109])
	by fmsmga001.fm.intel.com with ESMTP; 17 Nov 2010 00:46:46 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>) id 1PIdah-0007ko-U6
	for poky@yoctoproject.org; Wed, 17 Nov 2010 16:42:07 +0800
Message-Id: <7f3c8857e147f4ae1f7d4a026aef1f8b33d91653.1289983189.git.qing.he@intel.com>
In-Reply-To: <cover.1289983189.git.qing.he@intel.com>
References: <cover.1289983189.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Mon, 15 Nov 2010 17:16:56 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/9] libnl: upgrade to version 2.0
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
X-List-Received-Date: Wed, 17 Nov 2010 08:47:05 -0000

from 1.1
removed outdated patches

Signed-off-by: Qing He <qing.he@intel.com>
---
 meta/recipes-support/libnl/libnl/compilefix.patch  |   12 ------------
 .../libnl/libnl/local-includes.patch               |   11 -----------
 .../libnl/{libnl_1.1.bb => libnl_2.0.bb}           |   11 +++++------
 3 files changed, 5 insertions(+), 29 deletions(-)
 delete mode 100644 meta/recipes-support/libnl/libnl/compilefix.patch
 delete mode 100644 meta/recipes-support/libnl/libnl/local-includes.patch
 rename meta/recipes-support/libnl/{libnl_1.1.bb => libnl_2.0.bb} (61%)

diff --git a/meta/recipes-support/libnl/libnl/compilefix.patch b/meta/recipes-support/libnl/libnl/compilefix.patch
deleted file mode 100644
index f75ff28..0000000
--- a/meta/recipes-support/libnl/libnl/compilefix.patch
+++ /dev/null
@@ -1,12 +0,0 @@
-Index: libnl-1.1/include/netlink-local.h
-===================================================================
---- libnl-1.1.orig/include/netlink-local.h	2009-09-04 10:10:09.000000000 +0100
-+++ libnl-1.1/include/netlink-local.h	2009-09-04 10:10:15.000000000 +0100
-@@ -26,6 +26,7 @@
- #include <sys/socket.h>
- #include <inttypes.h>
- #include <assert.h>
-+#include <limits.h>
- 
- #include <arpa/inet.h>
- #include <netdb.h>
diff --git a/meta/recipes-support/libnl/libnl/local-includes.patch b/meta/recipes-support/libnl/libnl/local-includes.patch
deleted file mode 100644
index 5af4630..0000000
--- a/meta/recipes-support/libnl/libnl/local-includes.patch
+++ /dev/null
@@ -1,11 +0,0 @@
---- libnl-1.0-pre6/Makefile.opts.in.orig	2006-08-24 14:57:42.000000000 +0200
-+++ libnl-1.0-pre6/Makefile.opts.in	2006-08-24 14:58:20.000000000 +0200
-@@ -10,7 +10,7 @@
- #
- 
- CC               := @CC@
--CFLAGS           := @CFLAGS@
-+CFLAGS           := -I./include -I. -I../include @CFLAGS@
- LDFLAGS          := @LDFLAGS@
- CPPFLAGS         := @CPPFLAGS@
- PACKAGE_NAME     := @PACKAGE_NAME@
diff --git a/meta/recipes-support/libnl/libnl_1.1.bb b/meta/recipes-support/libnl/libnl_2.0.bb
similarity index 61%
rename from meta/recipes-support/libnl/libnl_1.1.bb
rename to meta/recipes-support/libnl/libnl_2.0.bb
index 683df91..fa96215 100644
--- a/meta/recipes-support/libnl/libnl_1.1.bb
+++ b/meta/recipes-support/libnl/libnl_2.0.bb
@@ -4,13 +4,12 @@ SECTION = "libs/network"
 PRIORITY = "optional"
 
 LICENSE = "LGPLv2.1"
-LIC_FILES_CHKSUM = "file://COPYING;md5=2b41e13261a330ee784153ecbb6a82bc \
-                    file://src/utils.c;beginline=4;endline=9;md5=6e99dfba5cfd64e92b4eb2c7b31e5e4e"
+LIC_FILES_CHKSUM = "file://COPYING;md5=2b41e13261a330ee784153ecbb6a82bc"
 
-PR = "r1"
+PR = "r0"
 
-SRC_URI= "http://www.infradead.org/~tgr/libnl/files/${PN}-${PV}.tar.gz \
-          file://local-includes.patch;apply=yes \
-          file://compilefix.patch;apply=yes"
+SRC_URI= "http://www.infradead.org/~tgr/libnl/files/${PN}-${PV}.tar.gz"
 
 inherit autotools pkgconfig
+
+LEAD_SONAME = "libnl.so"
-- 
1.7.0


