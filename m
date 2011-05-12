Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0E9C74C80A4D
	for <poky@yoctoproject.org>; Thu, 12 May 2011 17:07:58 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 May 2011 15:07:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,360,1301900400"; d="scan'208";a="435224014"
Received: from unknown (HELO localhost) ([10.255.12.106])
	by azsmga001.ch.intel.com with ESMTP; 12 May 2011 15:07:44 -0700
Message-Id: <ea216af1ae372f6237e2d78a0c2b2a5f8cd948c2.1305236058.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1305236058.git.tom.zanussi@intel.com>
References: <cover.1305236058.git.tom.zanussi@intel.com>
Old-Date: Thu, 12 May 2011 09:26:07 -0500
Date: Thu, 12 May 2011 17:07:20 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/4] meta-crownbay: new recipe for emgd 1.6.1 driver binaries
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
X-List-Received-Date: Thu, 12 May 2011 22:07:59 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This adds a new recipe for the emgd 1.6.1 driver binaries.  For emgd
1.6.1, the layout of the binaries has changed, making them easier to
install, and we also take the opportunity to sanitize the naming and
make it more apparent that these are the emgd driver bits
corresponding to a particular emgd release, 1.6.1 in this case.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xorg-xserver/emgd-driver-bin_1.6.1.bb          |   25 ++++++++++++++++++++
 1 files changed, 25 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin-1.6.1/.gitignore
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.6.1.bb

diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin-1.6.1/.gitignore b/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin-1.6.1/.gitignore
new file mode 100644
index 0000000..e69de29
diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.6.1.bb b/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.6.1.bb
new file mode 100644
index 0000000..4619b79
--- /dev/null
+++ b/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.6.1.bb
@@ -0,0 +1,25 @@
+SUMMARY = "EMGD 1.6.1 xserver binaries"
+DESCRIPTION = "EMGD 1.6.1 includes some userspace binaries that use non-free licensing.  Intel Open Source Technology Center unfortunately has no power to change that, but tries to make their use as painless as possible.  Please see the README in meta-crownbay/ for instructions on the (simple) manual steps necessary to make the necessary binaries available to this recipe.  Please do that before building an image."
+
+LICENSE = "Intel-binary-only"
+LIC_FILES_CHKSUM = "file://${WORKDIR}/License.txt;md5=b54f01caaf8483b3cb60c0c40f2bf22d"
+PR = "r0"
+
+FILESPATH = "${FILE_DIRNAME}/emgd-driver-bin-1.6.1"
+
+FILES_${PN} = "${libdir}/*.so.* ${libdir}/dri ${libdir}/xorg/modules/drivers"
+
+SRC_URI = "file://lib \
+           file://License.txt"
+
+S = "${WORKDIR}"
+
+do_install () {
+	install -d -m 0755 ${D}/${libdir}/dri ${D}/${libdir}/xorg/modules/drivers
+
+	cp -PR	${S}/lib/lib*					${D}${libdir}
+	install -m 0755	${S}/lib/xorg/modules/drivers/*		${D}${libdir}/xorg/modules/drivers/
+	install -m 0755	${S}/lib/dri/*				${D}${libdir}/dri/
+}
+
+LEAD_SONAME = "libEGL.so"
-- 
1.7.0.4


