Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 996804C811D5
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 00:53:39 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2010 22:53:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,260,1288594800"; d="scan'208";a="681195947"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by orsmga001.jf.intel.com with ESMTP; 25 Nov 2010 22:53:38 -0800
Message-Id: <b6122a8d3e266f334f1262b448a8f14b2049c104.1290736298.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1290736297.git.dongxiao.xu@intel.com>
References: <cover.1290736297.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Thu, 25 Nov 2010 13:48:48 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 08/14] gst-openmax: Upgrade to version 0.10.1
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
X-List-Received-Date: Fri, 26 Nov 2010 06:53:39 -0000

Fixed recipe metadata.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gstreamer/gst-openmax_0.10.0.2.bb              |   19 -------------------
 .../gstreamer/gst-openmax_0.10.1.bb                |   20 ++++++++++++++++++++
 2 files changed, 20 insertions(+), 19 deletions(-)
 delete mode 100644 meta/recipes-multimedia/gstreamer/gst-openmax_0.10.0.2.bb
 create mode 100644 meta/recipes-multimedia/gstreamer/gst-openmax_0.10.1.bb

diff --git a/meta/recipes-multimedia/gstreamer/gst-openmax_0.10.0.2.bb b/meta/recipes-multimedia/gstreamer/gst-openmax_0.10.0.2.bb
deleted file mode 100644
index 9285ef6..0000000
--- a/meta/recipes-multimedia/gstreamer/gst-openmax_0.10.0.2.bb
+++ /dev/null
@@ -1,19 +0,0 @@
-DEPENDS = "gstreamer"
-RDEPENDS = "libomxil"
-LICENSE = "LGPLv2"
-
-SRC_URI = "http://gstreamer.freedesktop.org/src/gst-openmax/pre/gst-openmax-0.10.0.2.tar.bz2"
-
-inherit autotools
-
-EXTRA_OECONF += "--disable-valgrind"
-
-do_configure_prepend() {
-
-    install -d ${S}/m4/
-    install -m 0644 ${S}/common/m4/*.m4 ${S}/m4/
-}
-
-FILES_${PN} += "${libdir}/gstreamer-0.10/libgstomx.so"
-FILES_${PN}-dev += "${libdir}/gstreamer-0.10/libgstomx.*a"
-FILES_${PN}-dbg += "${libdir}/gstreamer-0.10/.debug/"
diff --git a/meta/recipes-multimedia/gstreamer/gst-openmax_0.10.1.bb b/meta/recipes-multimedia/gstreamer/gst-openmax_0.10.1.bb
new file mode 100644
index 0000000..a4cf815
--- /dev/null
+++ b/meta/recipes-multimedia/gstreamer/gst-openmax_0.10.1.bb
@@ -0,0 +1,20 @@
+DEPENDS = "gstreamer"
+RDEPENDS = "libomxil"
+LICENSE = "LGPLv2.1"
+LIC_FILES_CHKSUM = "file://COPYING;md5=fbc093901857fcd118f065f900982c24 \
+                    file://util/sem.h;beginline=1;endline=20;md5=accce5550d5583b839b441a0623f09fc"
+
+SRC_URI = "http://gstreamer.freedesktop.org/src/gst-openmax/gst-openmax-${PV}.tar.bz2"
+
+inherit autotools
+
+EXTRA_OECONF += "--disable-valgrind"
+
+PR = "r0"
+
+FILES_${PN} += "${libdir}/gstreamer-0.10/libgstomx.so"
+FILES_${PN}-dev += "${libdir}/gstreamer-0.10/libgstomx.*a"
+FILES_${PN}-dbg += "${libdir}/gstreamer-0.10/.debug/"
+
+SRC_URI[md5sum] = "4d0370bfe99dea20918c84347abadb4e"
+SRC_URI[sha256sum] = "9074d5a0591995133d19cfb15144f19664f902c1623f996595695cf2c2070e1f"
-- 
1.6.3.3


