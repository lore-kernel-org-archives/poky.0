Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3CAFB4C811CE
	for <poky@yoctoproject.org>; Thu, 25 Nov 2010 04:50:31 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 Nov 2010 02:50:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,253,1288594800"; d="scan'208";a="861289309"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2010 02:50:30 -0800
Message-Id: <24bd30ea920525803bd053034daf2b22da0c636e.1290681886.git.lei.mei@intel.com>
In-Reply-To: <cover.1290681886.git.lei.mei@intel.com>
References: <cover.1290681886.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Thu, 25 Nov 2010 13:03:21 +0800
To: poky@yoctoproject.org
Subject: [PATCH 05/20] python-dbus:Add license checksum to bb file
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
X-List-Received-Date: Thu, 25 Nov 2010 10:50:31 -0000

Add LICENSE file checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-devtools/python/python-dbus_0.83.1.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/python/python-dbus_0.83.1.bb b/meta/recipes-devtools/python/python-dbus_0.83.1.bb
index b30e82b..d0c0bc6 100644
--- a/meta/recipes-devtools/python/python-dbus_0.83.1.bb
+++ b/meta/recipes-devtools/python/python-dbus_0.83.1.bb
@@ -2,6 +2,7 @@ DESCRIPTION = "Python bindings for DBus, a socket-based message bus system for i
 SECTION = "devel/python"
 HOMEPAGE = "http://www.freedesktop.org/Software/dbus"
 LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://COPYING;md5=f5612614133e9a2f2dad527d97554670"
 DEPENDS = "expat dbus dbus-glib virtual/libintl python-pyrex-native"
 PR = "ml0"
 
-- 
1.6.3.3


