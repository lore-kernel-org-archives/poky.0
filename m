Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 33BD74C811D6
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 00:13:03 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 17 Nov 2010 22:13:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,216,1288594800"; d="scan'208";a="858846201"
Received: from unknown (HELO localhost) ([10.255.13.148])
	by fmsmga001.fm.intel.com with ESMTP; 17 Nov 2010 22:13:02 -0800
Message-Id: <bf54aa4840077dee75b4159ba0d0364dc3433add.1290046217.git.sgw@linux.intel.com>
In-Reply-To: <cover.1290046217.git.sgw@linux.intel.com>
References: <cover.1290046217.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Date: Mon, 15 Nov 2010 14:00:45 -0800
To: poky@yoctoproject.org
Cc: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 4/5] subversion: Fix host contamination
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
X-List-Received-Date: Thu, 18 Nov 2010 06:13:03 -0000

The with-sasl check was looking into /usr/local, so a prepend_configure
was added to modify the /usr/local to ${STAGING_DIR} in build/ac-macros/sasl.m4

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../subversion/subversion_1.5.5.bb                 |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/subversion/subversion_1.5.5.bb b/meta/recipes-devtools/subversion/subversion_1.5.5.bb
index 8adac8a..4477274 100644
--- a/meta/recipes-devtools/subversion/subversion_1.5.5.bb
+++ b/meta/recipes-devtools/subversion/subversion_1.5.5.bb
@@ -5,13 +5,15 @@ RDEPENDS = "neon"
 LICENSE = "Apache BSD"
 HOMEPAGE = "http://subversion.tigris.org"
 
-PR = "r6"
+PR = "r7"
 
 SRC_URI = "http://subversion.tigris.org/downloads/${P}.tar.bz2 \
            file://disable-revision-install.patch;patch=1 \
 	   file://neon-detection.patch;patch=1 \
 	   file://libtool2.patch;patch=1"
 
+LIC_FILES_CHKSUM = "file://COPYING;md5=b592c67ecb801ccc95e236f186ec33fd"
+
 EXTRA_OECONF = "--with-neon=${STAGING_EXECPREFIXDIR} \
                 --without-berkeley-db --without-apxs --without-apache \
                 --without-swig --with-apr=${STAGING_BINDIR_CROSS} \
@@ -26,4 +28,5 @@ acpaths = "-I build/ -I build/ac-macros/"
 do_configure_prepend () {
 	rm -f ${S}/libtool
 	rm -f ${S}/build/libtool.m4
+	sed -i -e 's:with_sasl="/usr/local":with_sasl="${STAGING_DIR}":' ${S}/build/ac-macros/sasl.m4
 }
-- 
1.7.1


