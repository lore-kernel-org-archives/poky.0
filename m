Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4A0DF4C803A5
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 00:11:34 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Nov 2010 22:11:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,216,1288594800"; d="scan'208";a="678639626"
Received: from unknown (HELO localhost) ([10.255.13.148])
	by orsmga001.jf.intel.com with ESMTP; 17 Nov 2010 22:11:33 -0800
Message-Id: <f3e26ffd3bfc71777224890f2a1e0d146cea6b72.1290046217.git.sgw@linux.intel.com>
In-Reply-To: <cover.1290046217.git.sgw@linux.intel.com>
References: <cover.1290046217.git.sgw@linux.intel.com>
From: Saul Wold <Saul.Wold@intel.com>
Date: Thu, 11 Nov 2010 16:40:36 -0800
To: poky@yoctoproject.org
Cc: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 3/5] telepathy: initial update
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
X-List-Received-Date: Thu, 18 Nov 2010 06:11:34 -0000

Signed-off-by: Saul Wold <Saul.Wold@intel.com>
---
 ...athy-glib_0.9.2.bb => telepathy-glib_0.13.5.bb} |    2 +-
 ...pathy-idle_0.1.2.bb => telepathy-idle_0.1.6.bb} |    1 +
 2 files changed, 2 insertions(+), 1 deletions(-)
 rename meta/recipes-connectivity/telepathy/{telepathy-glib_0.9.2.bb => telepathy-glib_0.13.5.bb} (97%)
 rename meta/recipes-connectivity/telepathy/{telepathy-idle_0.1.2.bb => telepathy-idle_0.1.6.bb} (97%)

diff --git a/meta/recipes-connectivity/telepathy/telepathy-glib_0.9.2.bb b/meta/recipes-connectivity/telepathy/telepathy-glib_0.13.5.bb
similarity index 97%
rename from meta/recipes-connectivity/telepathy/telepathy-glib_0.9.2.bb
rename to meta/recipes-connectivity/telepathy/telepathy-glib_0.13.5.bb
index e7d9a92..16cf72d 100644
--- a/meta/recipes-connectivity/telepathy/telepathy-glib_0.9.2.bb
+++ b/meta/recipes-connectivity/telepathy/telepathy-glib_0.13.5.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "Telepathy Framework: GLib-based helper library for connection man
 HOMEPAGE = "http://telepathy.freedesktop.org/wiki/"
 DEPENDS = "glib-2.0 dbus python-native-runtime dbus-native dbus-glib gettext"
 LICENSE = "LGPL"
-PR = "r1"
+PR = "r0"
 
 SRC_URI = "http://telepathy.freedesktop.org/releases/telepathy-glib/${P}.tar.gz"
 
diff --git a/meta/recipes-connectivity/telepathy/telepathy-idle_0.1.2.bb b/meta/recipes-connectivity/telepathy/telepathy-idle_0.1.6.bb
similarity index 97%
rename from meta/recipes-connectivity/telepathy/telepathy-idle_0.1.2.bb
rename to meta/recipes-connectivity/telepathy/telepathy-idle_0.1.6.bb
index d82c43d..446e7be 100644
--- a/meta/recipes-connectivity/telepathy/telepathy-idle_0.1.2.bb
+++ b/meta/recipes-connectivity/telepathy/telepathy-idle_0.1.6.bb
@@ -3,6 +3,7 @@ DESCRIPTION = "Telepathy implementation of the Internet Relay Chat protocols."
 HOMEPAGE = "http://telepathy.freedesktop.org/wiki/"
 DEPENDS = "glib-2.0 dbus telepathy-glib openssl"
 LICENSE = "LGPL"
+PR = "r0"
 
 SRC_URI = "http://telepathy.freedesktop.org/releases/${PN}/${P}.tar.gz"
 
-- 
1.7.1


