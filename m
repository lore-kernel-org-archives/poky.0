Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id ACF394C81207
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 01:48:26 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 26 Jan 2011 23:48:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,385,1291622400"; d="scan'208";a="881437376"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga001.fm.intel.com with ESMTP; 26 Jan 2011 23:48:24 -0800
Message-Id: <ff33a5f7c9fdbc069582bd224809b49b6784fa16.1296115229.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1296115229.git.dongxiao.xu@intel.com>
References: <cover.1296115229.git.dongxiao.xu@intel.com>
Old-Date: Thu, 27 Jan 2011 14:22:25 +0800
Date: Thu, 27 Jan 2011 16:04:29 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 1/3] bitbake: add ${MACHINE} for do_populate_sysroot_setscene and do_package_setscene
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
X-List-Received-Date: Thu, 27 Jan 2011 07:48:26 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

${MACHINE} information is also needed to be tagged on stamps for
do_populate_sysroot_setscene and do_package_setscene, otherwise if
build two machines both from sstate, the second machine's sysroot will
not be populated correctly.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/classes/cross-canadian.bbclass |    2 ++
 meta/classes/crosssdk.bbclass       |    2 ++
 meta/classes/native.bbclass         |    2 ++
 meta/classes/nativesdk.bbclass      |    2 ++
 meta/classes/package.bbclass        |    1 +
 meta/classes/staging.bbclass        |    1 +
 6 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/meta/classes/cross-canadian.bbclass b/meta/classes/cross-canadian.bbclass
index 993f831..db4c356 100644
--- a/meta/classes/cross-canadian.bbclass
+++ b/meta/classes/cross-canadian.bbclass
@@ -82,4 +82,6 @@ export PKG_CONFIG_SYSROOT_DIR = "${STAGING_DIR_HOST}"
 SHLIBSDIR = "${STAGING_DIR}/${SDK_ARCH}-nativesdk${SDK_VENDOR}-${BUILD_OS}/shlibs"
 
 do_populate_sysroot[stamp-extra-info] = ""
+do_populate_sysroot_setscene[stamp-extra-info] = ""
 do_package[stamp-extra-info] = ""
+do_package_setscene[stamp-extra-info] = ""
diff --git a/meta/classes/crosssdk.bbclass b/meta/classes/crosssdk.bbclass
index 75fcfef..98c0204 100644
--- a/meta/classes/crosssdk.bbclass
+++ b/meta/classes/crosssdk.bbclass
@@ -17,4 +17,6 @@ target_prefix = "${SDKPATHNATIVE}${prefix_nativesdk}"
 target_exec_prefix = "${SDKPATHNATIVE}${exec_prefix_nativesdk}"
 
 do_populate_sysroot[stamp-extra-info] = ""
+do_populate_sysroot_setscene[stamp-extra-info] = ""
 do_package[stamp-extra-info] = ""
+do_package_setscene[stamp-extra-info] = ""
diff --git a/meta/classes/native.bbclass b/meta/classes/native.bbclass
index 545a73e..789a163 100644
--- a/meta/classes/native.bbclass
+++ b/meta/classes/native.bbclass
@@ -121,4 +121,6 @@ do_package_write_deb[noexec] = "1"
 do_package_write_rpm[noexec] = "1"
 
 do_populate_sysroot[stamp-extra-info] = ""
+do_populate_sysroot_setscene[stamp-extra-info] = ""
 do_package[stamp-extra-info] = ""
+do_package_setscene[stamp-extra-info] = ""
diff --git a/meta/classes/nativesdk.bbclass b/meta/classes/nativesdk.bbclass
index 587a907..cd642c6 100644
--- a/meta/classes/nativesdk.bbclass
+++ b/meta/classes/nativesdk.bbclass
@@ -82,4 +82,6 @@ python __anonymous () {
 }
 
 do_populate_sysroot[stamp-extra-info] = ""
+do_populate_sysroot_setscene[stamp-extra-info] = ""
 do_package[stamp-extra-info] = ""
+do_package_setscene[stamp-extra-info] = ""
diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index 1b950bb..c4e4276 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -1095,6 +1095,7 @@ do_package[sstate-inputdirs] = "${PKGDESTWORK} ${SHLIBSWORKDIR}"
 do_package[sstate-outputdirs] = "${PKGDATA_DIR} ${SHLIBSDIR}"
 do_package[sstate-lockfile] = "${PACKAGELOCK}"
 do_package[stamp-extra-info] = "${MACHINE}"
+do_package_setscene[stamp-extra-info] = "${MACHINE}"
 do_package_setscene[dirs] = "${STAGING_DIR}"
 
 python do_package_setscene () {
diff --git a/meta/classes/staging.bbclass b/meta/classes/staging.bbclass
index 718b2f1..e2333ca 100644
--- a/meta/classes/staging.bbclass
+++ b/meta/classes/staging.bbclass
@@ -86,6 +86,7 @@ do_populate_sysroot[sstate-name] = "populate-sysroot"
 do_populate_sysroot[sstate-inputdirs] = "${SYSROOT_DESTDIR}"
 do_populate_sysroot[sstate-outputdirs] = "${STAGING_DIR_HOST}/"
 do_populate_sysroot[stamp-extra-info] = "${MACHINE}"
+do_populate_sysroot_setscene[stamp-extra-info] = "${MACHINE}"
 
 python do_populate_sysroot_setscene () {
 	sstate_setscene(d)
-- 
1.6.3.3


