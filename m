Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5F8134C80BBC
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 00:35:57 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 14 Apr 2011 22:35:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,216,1301900400"; d="scan'208";a="419668280"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 14 Apr 2011 22:35:56 -0700
Message-Id: <15d621f080db617692b9178f4d00eb0890c4c3d0.1302845703.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1302845703.git.dongxiao.xu@intel.com>
References: <cover.1302845703.git.dongxiao.xu@intel.com>
Old-Date: Wed, 13 Apr 2011 13:38:25 +0800
Date: Fri, 15 Apr 2011 13:36:50 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 07/14] alsa-lib: upgrade to version 1.0.24.1
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
X-List-Received-Date: Fri, 15 Apr 2011 05:35:57 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../fix-tstamp-declaration.patch                   |    2 ++
 .../unbreak_plugindir.patch                        |    2 ++
 .../{alsa-lib_1.0.23.bb => alsa-lib_1.0.24.1.bb}   |    4 ++--
 3 files changed, 6 insertions(+), 2 deletions(-)
 rename meta/recipes-multimedia/alsa/{alsa-lib-1.0.23 => alsa-lib-1.0.24.1}/fix-tstamp-declaration.patch (95%)
 rename meta/recipes-multimedia/alsa/{alsa-lib-1.0.23 => alsa-lib-1.0.24.1}/unbreak_plugindir.patch (91%)
 rename meta/recipes-multimedia/alsa/{alsa-lib_1.0.23.bb => alsa-lib_1.0.24.1.bb} (91%)

diff --git a/meta/recipes-multimedia/alsa/alsa-lib-1.0.23/fix-tstamp-declaration.patch b/meta/recipes-multimedia/alsa/alsa-lib-1.0.24.1/fix-tstamp-declaration.patch
similarity index 95%
rename from meta/recipes-multimedia/alsa/alsa-lib-1.0.23/fix-tstamp-declaration.patch
rename to meta/recipes-multimedia/alsa/alsa-lib-1.0.24.1/fix-tstamp-declaration.patch
index 9016b34..32b84b7 100644
--- a/meta/recipes-multimedia/alsa/alsa-lib-1.0.23/fix-tstamp-declaration.patch
+++ b/meta/recipes-multimedia/alsa/alsa-lib-1.0.24.1/fix-tstamp-declaration.patch
@@ -4,6 +4,8 @@
 #
 # Acquired from OpenEmbedded
 
+Upstream-Status: Pending
+
 Index: alsa-lib-1.0.13/include/global.h
 ===================================================================
 --- alsa-lib-1.0.13.orig/include/global.h
diff --git a/meta/recipes-multimedia/alsa/alsa-lib-1.0.23/unbreak_plugindir.patch b/meta/recipes-multimedia/alsa/alsa-lib-1.0.24.1/unbreak_plugindir.patch
similarity index 91%
rename from meta/recipes-multimedia/alsa/alsa-lib-1.0.23/unbreak_plugindir.patch
rename to meta/recipes-multimedia/alsa/alsa-lib-1.0.24.1/unbreak_plugindir.patch
index 7d13166..1f3edd0 100644
--- a/meta/recipes-multimedia/alsa/alsa-lib-1.0.23/unbreak_plugindir.patch
+++ b/meta/recipes-multimedia/alsa/alsa-lib-1.0.24.1/unbreak_plugindir.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 diff -Nur alsa-lib-1.0.14.orig/configure.in alsa-lib-1.0.14/configure.in
 --- alsa-lib-1.0.14.orig/configure.in	2007-05-31 03:05:13.000000000 -0500
 +++ alsa-lib-1.0.14/configure.in	2007-08-18 13:05:49.000000000 -0500
diff --git a/meta/recipes-multimedia/alsa/alsa-lib_1.0.23.bb b/meta/recipes-multimedia/alsa/alsa-lib_1.0.24.1.bb
similarity index 91%
rename from meta/recipes-multimedia/alsa/alsa-lib_1.0.23.bb
rename to meta/recipes-multimedia/alsa/alsa-lib_1.0.24.1.bb
index 936f299..53f4d29 100644
--- a/meta/recipes-multimedia/alsa/alsa-lib_1.0.23.bb
+++ b/meta/recipes-multimedia/alsa/alsa-lib_1.0.24.1.bb
@@ -19,8 +19,8 @@ PR = "r0"
 SRC_URI = "ftp://ftp.alsa-project.org/pub/lib/alsa-lib-${PV}.tar.bz2 \
            file://fix-tstamp-declaration.patch;patch=1"
 
-SRC_URI[md5sum] = "f48b50421d8a69d2d806d9c47e534f0d"
-SRC_URI[sha256sum] = "b4238ecaba5e4a1383af06180611a57ef29f9bf47bc177136dba1bb5b70ff423"
+SRC_URI[md5sum] = "7cc05f25e1d5b65da8fb3fdcd540f226"
+SRC_URI[sha256sum] = "a32f7c21015b6c71f9a80ff70a2b6a50e4ff4d5c77c744ff0793dea7ba7a2517"
 
 inherit autotools pkgconfig
 
-- 
1.7.1


