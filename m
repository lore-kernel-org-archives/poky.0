Return-Path: <lei.mei@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id AAFAA4C81103
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 10:39:42 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 22 Nov 2010 08:39:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,237,1288594800"; d="scan'208";a="351806655"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by azsmga001.ch.intel.com with ESMTP; 22 Nov 2010 08:39:33 -0800
Message-Id: <ed2fe9735d937d5476cfdbf6dbd82f71914c0486.1290443719.git.lei.mei@intel.com>
In-Reply-To: <cover.1290443719.git.lei.mei@intel.com>
References: <cover.1290443719.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Tue, 23 Nov 2010 00:32:07 +0800
To: poky@yoctoproject.org
Subject: [PATCH 1/1] This patch contains four recipes license checksum information
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
X-List-Received-Date: Mon, 22 Nov 2010 16:39:42 -0000

    libxtrap
    lttng-control
    dpkg
    minicom

    Signed-off-by: Mei Lei<lei.mei@intel.com>
---
 meta/recipes-devtools/dpkg/dpkg_1.15.8.5.bb      |    1 +
 meta/recipes-extended/minicom/minicom_2.3.bb     |    1 +
 meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb |    2 +-
 meta/recipes-kernel/lttng/lttng-control_0.87.bb  |    2 +-
 4 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-devtools/dpkg/dpkg_1.15.8.5.bb b/meta/recipes-devtools/dpkg/dpkg_1.15.8.5.bb
index c8069fe..43ab8f6 100644
--- a/meta/recipes-devtools/dpkg/dpkg_1.15.8.5.bb
+++ b/meta/recipes-devtools/dpkg/dpkg_1.15.8.5.bb
@@ -1,4 +1,5 @@
 require dpkg.inc
+LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
 
 SRC_URI += "file://noman.patch;patch=1 \
             file://check_snprintf.patch \
diff --git a/meta/recipes-extended/minicom/minicom_2.3.bb b/meta/recipes-extended/minicom/minicom_2.3.bb
index a114e30..a6d2224 100644
--- a/meta/recipes-extended/minicom/minicom_2.3.bb
+++ b/meta/recipes-extended/minicom/minicom_2.3.bb
@@ -1,6 +1,7 @@
 SECTION = "console/network"
 DEPENDS = "ncurses"
 LICENSE = "GPL"
+LIC_FILES_CHKSUM = "file://COPYING;md5=420477abc567404debca0a2a1cb6b645"
 SRC_URI = "http://alioth.debian.org/frs/download.php/2332/minicom-${PV}.tar.gz \
 	file://rename-conflicting-functions.patch \
 	"
diff --git a/meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb b/meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb
index 7a25ae5..39c7bef 100644
--- a/meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb
@@ -1,5 +1,5 @@
 require xorg-lib-common.inc
-
+LIC_FILES_CHKSUM = "file://COPYING;md5=fe7cbb8cc97683303f7814685cc47305"
 DESCRIPTION = "X11 event trapping extension library"
 DEPENDS += "libxt trapproto libxext"
 PR = "r1"
diff --git a/meta/recipes-kernel/lttng/lttng-control_0.87.bb b/meta/recipes-kernel/lttng/lttng-control_0.87.bb
index da6a6c6..6c162b4 100644
--- a/meta/recipes-kernel/lttng/lttng-control_0.87.bb
+++ b/meta/recipes-kernel/lttng/lttng-control_0.87.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "The Linux trace toolkit is a suite of tools designed to \
 extract program execution details from the Linux operating system and  \
 interpret them."
 LICENSE = "GPL"
-
+LIC_FILES_CHKSUM = "file://COPYING;md5=id32239bcb673463ab874e80d47fae504"
 PR = "r0"
 
 LTTDATE = "09062010"
-- 
1.6.3.3


