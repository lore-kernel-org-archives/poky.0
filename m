Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 466604C81146
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 20:30:20 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 28 Jan 2011 18:30:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,395,1291622400"; d="scan'208";a="882142135"
Received: from unknown (HELO helios) ([10.255.16.169])
	by fmsmga001.fm.intel.com with SMTP; 28 Jan 2011 18:30:18 -0800
Received: by helios (sSMTP sendmail emulation); Sat, 29 Jan 2011 02:30:17 +0000
Message-Id: <008c3679faf3118402a69e978ece9abc62366329.1296267951.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1296267951.git.paul.eggleton@linux.intel.com>
References: <cover.1296267951.git.paul.eggleton@linux.intel.com>
Old-Date: Fri, 14 Jan 2011 11:07:51 +0000
Date: Sat, 29 Jan 2011  2:30:17 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 07/12] dbus: extend to nativesdk
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
X-List-Received-Date: Sat, 29 Jan 2011 02:30:20 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

BBCLASSEXTEND dbus to nativesdk for meta-toolchain-qte, and disable the
dependency on libsm when building in this context (thus avoiding a number of
sub-dependencies).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/recipes-core/dbus/dbus.inc |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-core/dbus/dbus.inc b/meta/recipes-core/dbus/dbus.inc
index beb2072..da77819 100644
--- a/meta/recipes-core/dbus/dbus.inc
+++ b/meta/recipes-core/dbus/dbus.inc
@@ -6,6 +6,7 @@ LICENSE = "AFL2.1 | GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=10dded3b58148f3f1fd804b26354af3e \
                     file://dbus/dbus.h;firstline=6;endline=20;md5=6eea2e0c7750dd8e620dcb1437312fa5"
 DEPENDS = "expat virtual/libintl virtual/libx11 libsm"
+DEPENDS_virtclass-nativesdk = "expat virtual/libintl virtual/libx11"
 
 SRC_URI = "http://dbus.freedesktop.org/releases/dbus/dbus-${PV}.tar.gz \
            file://tmpdir.patch; \
@@ -88,4 +89,4 @@ do_install_virtclass-native() {
 	# dbus-glib-native and dbus-glib need this xml file
 	./bus/dbus-daemon --introspect > ${STAGING_DATADIR_NATIVE}/dbus/dbus-bus-introspect.xml
 }
-BBCLASSEXTEND = "native"
+BBCLASSEXTEND = "native nativesdk"
-- 
1.7.1


