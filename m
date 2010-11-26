Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 152E54C811CE
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 09:35:51 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 26 Nov 2010 07:35:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,261,1288594800"; d="scan'208";a="630558930"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga002.fm.intel.com with ESMTP; 26 Nov 2010 07:35:50 -0800
Message-Id: <fbd2b57ef0b17dd2ad3a5eb930b15cb3c5832801.1290785519.git.lei.mei@intel.com>
In-Reply-To: <cover.1290785519.git.lei.mei@intel.com>
References: <cover.1290785519.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Fri, 26 Nov 2010 15:23:38 +0800
To: poky@yoctoproject.org
Subject: [PATCH 02/14] modutils-collateral:Add license checksum to bb file
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
X-List-Received-Date: Fri, 26 Nov 2010 15:35:52 -0000

Get md5sum of COPYING.MIT file which under the meta directory, because this recipe is a local recipe, so we need to find the license file under the meta.
Import a new varible "L" to record the license file path.

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/classes/insane.bbclass                        |    2 +-
 meta/conf/bitbake.conf                             |    2 +-
 .../recipes-kernel/modutils/modutils-collateral.bb |    5 +++--
 3 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/meta/classes/insane.bbclass b/meta/classes/insane.bbclass
index b06d021..0f3ddb8 100644
--- a/meta/classes/insane.bbclass
+++ b/meta/classes/insane.bbclass
@@ -351,7 +351,7 @@ def package_qa_check_license(workdir, d):
         bb.warn(pn + ": Recipe file does not have license file information (LIC_FILES_CHKSUM)")
         return True
 
-    srcdir = bb.data.getVar('S', d, True)
+    srcdir = bb.data.getVar('L', d, True)
 
     for url in lic_files.split():
         (type, host, path, user, pswd, parm) = bb.decodeurl(url)
diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
index abd2bb5..9982b48 100644
--- a/meta/conf/bitbake.conf
+++ b/meta/conf/bitbake.conf
@@ -243,7 +243,7 @@ FILESDIR = "${@bb.which(bb.data.getVar('FILESPATH', d, 1), '.')}"
 ##################################################################
 # General work and output directories for the build system.
 ##################################################################
-
+L = ${S}
 TMPDIR ?= "${TOPDIR}/tmp"
 CACHE = "${TMPDIR}/cache${@['', '/' + str(bb.data.getVar('MACHINE', d, 1))][bool(bb.data.getVar('MACHINE', d, 1))]}${@['', '/' + str(bb.data.getVar('SDKMACHINE', d, 1))][bool(bb.data.getVar('SDKMACHINE', d, 1))]}"
 # The persistent cache should be shared by all builds
diff --git a/meta/recipes-kernel/modutils/modutils-collateral.bb b/meta/recipes-kernel/modutils/modutils-collateral.bb
index 6d010a5..1924770 100644
--- a/meta/recipes-kernel/modutils/modutils-collateral.bb
+++ b/meta/recipes-kernel/modutils/modutils-collateral.bb
@@ -2,9 +2,10 @@ SECTION = "base"
 DESCRIPTION = "modutils configuration files"
 PR = "r3"
 LICENSE = "MIT"
-
+L = ${OEROOT}/meta
+LIC_FILES_CHKSUM = "file://COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 SRC_URI = "file://modules \
-	   file://modules.conf"
+	   file://modules.conf" 
 
 do_compile () {
 }
-- 
1.6.3.3


