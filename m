Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1F4984C80A90
	for <poky@yoctoproject.org>; Mon,  7 Feb 2011 19:13:49 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 07 Feb 2011 17:13:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,439,1291622400"; d="scan'208";a="705096355"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga001.jf.intel.com with ESMTP; 07 Feb 2011 17:13:47 -0800
Message-Id: <ccda1b5eb191c4620860276857cf7a124932ce0f.1297127616.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1297127616.git.scott.a.garman@intel.com>
References: <cover.1297127616.git.scott.a.garman@intel.com>
Old-Date: Sun, 6 Feb 2011 20:46:42 -0800
Date: Mon, 07 Feb 2011 17:14:55 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 5/6] transfig: new recipe v3.2.5d
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
X-List-Received-Date: Tue, 08 Feb 2011 01:13:49 -0000

From: Scott Garman <scott.a.garman@intel.com>

Transfig provides fig2dev, which is used when building
documentation for many packages.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../transfig/transfig-native_3.2.5d.bb             |   40 ++++++++++++++++++++
 1 files changed, 40 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-devtools/transfig/transfig-native_3.2.5d.bb

diff --git a/meta/recipes-devtools/transfig/transfig-native_3.2.5d.bb b/meta/recipes-devtools/transfig/transfig-native_3.2.5d.bb
new file mode 100644
index 0000000..62b8023
--- /dev/null
+++ b/meta/recipes-devtools/transfig/transfig-native_3.2.5d.bb
@@ -0,0 +1,40 @@
+SUMMARY = "Utilities for converting XFig figure files"
+DESCRIPTION = "This package contains utilities (mainly fig2dev) to \
+handle XFig (Facility for Interactive Generation of figures) files."
+HOMEPAGE = "http://www-epb.lbl.gov/xfig/"
+SECTION = "console/utils"
+PRIORITY = "required"
+LICENSE = "xfig"
+LIC_FILES_CHKSUM = "file://fig2dev/fig2dev.c;endline=16;md5=6bab01e017409cf9ab21d3e953b793f7"
+PR = "r0"
+
+DEPENDS = "imake-native xorg-cf-files-native zlib-native jpeg-native libpng-native libxpm-native"
+
+SRC_URI = "${SOURCEFORGE_MIRROR}/mcj/transfig.${PV}.tar.gz"
+
+SRC_URI[md5sum] = "f9eac7f265668ecbfda6aaf7581989ad"
+SRC_URI[sha256sum] = "ae81214177fb05f91f6e43b0b42633b6e0024570cbc6591a3858e12100ce8aaa"
+
+S = "${WORKDIR}/transfig.${PV}"
+
+EXTRA_OEMAKE = "-I${S}"
+
+inherit native
+
+do_configure() {
+	xmkmf
+	make Makefiles
+
+	# Fix hardcoded references to host build locations
+	sed -i -e "s|SYSTEMUSRLIBDIR = /usr/lib64|SYSTEMUSRLIBDIR = ${libdir}|g" fig2dev/Makefile
+	sed -i -e "s|SYSTEMUSRINCDIR = /usr/include|SYSTEMUSRINCDIR = ${includedir}|g" fig2dev/Makefile
+	sed -i -e "s|XPMINC = -I/usr/include/X11|XPMINC = -I${includedir}/X11|g" fig2dev/Makefile 
+	sed -i -e "s|/usr/lib64|/usr/lib|g" fig2dev/Makefile || true
+	sed -i -e "s|/usr/lib64|/usr/lib|g" fig2dev/dev/Makefile || true
+	sed -i -e "s|/usr/local/lib|${libdir}|g" fig2dev/Makefile
+	sed -i -e "s|/usr/local/lib|${libdir}|g" fig2dev/dev/Makefile
+}
+
+do_install() {
+	oe_runmake install DESTDIR=${D}
+}
-- 
1.7.4


