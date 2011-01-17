Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C7E944C811FF
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 10:54:26 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 17 Jan 2011 08:54:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,333,1291622400"; d="scan'208";a="878175353"
Received: from unknown (HELO helios) ([10.255.16.105])
	by fmsmga001.fm.intel.com with SMTP; 17 Jan 2011 08:54:25 -0800
Received: by helios (sSMTP sendmail emulation); Mon, 17 Jan 2011 16:54:18 +0000
Message-Id: <1186ec7fa213bedd579dc4f06c926e1fee57bebe.1295282922.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1295282922.git.paul.eggleton@linux.intel.com>
References: <cover.1295282922.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Old-Date: Fri, 14 Jan 2011 11:07:51 +0000
Date: Mon, 17 Jan 2011 16:54:18 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 4/8] dbus: extend to nativesdk
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
X-List-Received-Date: Mon, 17 Jan 2011 16:54:27 -0000

BBCLASSEXTEND dbus to nativesdk for meta-toolchain-qte, and disable the
dependency on libsm when building in this context (thus avoiding a number of
sub-dependencies).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/recipes-core/dbus/dbus.inc |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-core/dbus/dbus.inc b/meta/recipes-core/dbus/dbus.inc
index 402cf13..57da793 100644
--- a/meta/recipes-core/dbus/dbus.inc
+++ b/meta/recipes-core/dbus/dbus.inc
@@ -6,6 +6,7 @@ LICENSE = "AFL2.1 | GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=10dded3b58148f3f1fd804b26354af3e \
                     file://dbus/dbus.h;firstline=6;endline=20;md5=6eea2e0c7750dd8e620dcb1437312fa5"
 DEPENDS = "expat glib-2.0 virtual/libintl virtual/libx11 libsm"
+DEPENDS_virtclass-nativesdk = "expat glib-2.0 virtual/libintl virtual/libx11"
 
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


