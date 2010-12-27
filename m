Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 81DE14C811E0
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 11:26:01 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 30 Dec 2010 09:25:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,250,1291622400"; d="scan'208";a="641841632"
Received: from mukti.sc.intel.com (HELO localhost) ([143.183.140.52])
	by fmsmga002.fm.intel.com with ESMTP; 30 Dec 2010 09:25:31 -0800
Message-Id: <cf4ad54087e82c526799ee829bb314762afac508.1293729977.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1293729977.git.nitin.a.kamble@intel.com>
References: <cover.1293729977.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Date: Mon, 27 Dec 2010 06:10:19 -0800
To: poky@yoctoproject.org
Subject: [PATCH 4/5] python-dbus: upgrade from 0.83.1 to 0.83.2
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
X-List-Received-Date: Thu, 30 Dec 2010 17:26:01 -0000

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 ...python-dbus_0.83.1.bb => python-dbus_0.83.2.bb} |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-devtools/python/{python-dbus_0.83.1.bb => python-dbus_0.83.2.bb} (82%)

diff --git a/meta/recipes-devtools/python/python-dbus_0.83.1.bb b/meta/recipes-devtools/python/python-dbus_0.83.2.bb
similarity index 82%
rename from meta/recipes-devtools/python/python-dbus_0.83.1.bb
rename to meta/recipes-devtools/python/python-dbus_0.83.2.bb
index d405ffa..2830d25 100644
--- a/meta/recipes-devtools/python/python-dbus_0.83.1.bb
+++ b/meta/recipes-devtools/python/python-dbus_0.83.2.bb
@@ -4,12 +4,12 @@ HOMEPAGE = "http://www.freedesktop.org/Software/dbus"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=f5612614133e9a2f2dad527d97554670"
 DEPENDS = "expat dbus dbus-glib virtual/libintl python-pyrex-native"
-PR = "ml0"
+PR = "r0"
 
 SRC_URI = "http://dbus.freedesktop.org/releases/dbus-python/dbus-python-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "5fdf3970aa0c00020289de7ba8f3be18"
-SRC_URI[sha256sum] = "ce283806f1af4f2322e183a276528a880b503c74972932bd09f06bdb7fcc1b99"
+SRC_URI[md5sum] = "4ebcaa905bdcb4132b915196b0a3691b"
+SRC_URI[sha256sum] = "883729c98f40790021e3be0f7028ae863ee1c4a7b922a5578c1342592adfff64"
 S = "${WORKDIR}/dbus-python-${PV}"
 
 inherit distutils-base autotools pkgconfig
-- 
1.7.2.3


