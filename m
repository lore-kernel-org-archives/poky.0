Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 74BD34C811F9
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:27:15 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 23 Dec 2010 06:27:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="639786550"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by fmsmga002.fm.intel.com with ESMTP; 23 Dec 2010 06:27:14 -0800
Message-Id: <bf72d232d8797f5bdb17443412ee6d6b6ac79f46.1293114004.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293114003.git.sgw@linux.intel.com>
References: <cover.1293114003.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Old-Date: Wed, 22 Dec 2010 16:41:31 -0800
Date: Thu, 23 Dec 2010  6:27:14 -0800
To: poky@yoctoproject.org
Subject: [PATCH 16/28] python-pygobject: remove older install of generate-constants and add BBCLASSEXTEND
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
X-List-Received-Date: Thu, 23 Dec 2010 14:27:15 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../python/python-pygobject-native_2.27.0.bb       |   15 ---------------
 .../python/python-pygobject_2.27.0.bb              |    2 ++
 2 files changed, 2 insertions(+), 15 deletions(-)
 delete mode 100644 meta/recipes-devtools/python/python-pygobject-native_2.27.0.bb

diff --git a/meta/recipes-devtools/python/python-pygobject-native_2.27.0.bb b/meta/recipes-devtools/python/python-pygobject-native_2.27.0.bb
deleted file mode 100644
index d360227..0000000
--- a/meta/recipes-devtools/python/python-pygobject-native_2.27.0.bb
+++ /dev/null
@@ -1,15 +0,0 @@
-require python-pygobject_${PV}.bb
-
-DEPENDS = "python-native glib-2.0-native"
-PR = "r0"
-
-PARALLEL_MAKE = ""
-
-inherit native
-
-SRC_URI = "ftp://ftp.gnome.org/pub/GNOME/sources/pygobject/${MAJ_VER}/pygobject-${PV}.tar.bz2"
-
-do_install_append() {
-	install -d ${D}${bindir}
-	install -m 0755 gobject/generate-constants ${D}${bindir}/gobject-generate-constants
-}
diff --git a/meta/recipes-devtools/python/python-pygobject_2.27.0.bb b/meta/recipes-devtools/python/python-pygobject_2.27.0.bb
index c938e5f..f08eea8 100644
--- a/meta/recipes-devtools/python/python-pygobject_2.27.0.bb
+++ b/meta/recipes-devtools/python/python-pygobject_2.27.0.bb
@@ -32,3 +32,5 @@ FILES_${PN} = "${libdir}/python*"
 FILES_${PN}-lib = "${libdir}/lib*.so.*"
 FILES_${PN}-dev += "${bindir} ${datadir}"
 FILES_${PN}-dbg += "${libdir}/.debug"
+
+BBCLASSEXTEND = "native nativesdk"
-- 
1.7.2.3


