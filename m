Return-Path: <lei.mei@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 97A434C811CE
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 09:35:53 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 Nov 2010 07:35:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,261,1288594800"; d="scan'208";a="353579524"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by azsmga001.ch.intel.com with ESMTP; 26 Nov 2010 07:35:52 -0800
Message-Id: <523f5276331c897b41629bb66149ea6fd07c97db.1290785519.git.lei.mei@intel.com>
In-Reply-To: <cover.1290785519.git.lei.mei@intel.com>
References: <cover.1290785519.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Fri, 26 Nov 2010 15:52:18 +0800
To: poky@yoctoproject.org
Subject: [PATCH 03/14] opkg-config-base:Add license checksum to bb file
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
X-List-Received-Date: Fri, 26 Nov 2010 15:35:53 -0000

Add COPYING.MIT file checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-devtools/opkg/opkg-config-base_1.0.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/opkg/opkg-config-base_1.0.bb b/meta/recipes-devtools/opkg/opkg-config-base_1.0.bb
index 9e27e93..54ab7d8 100644
--- a/meta/recipes-devtools/opkg/opkg-config-base_1.0.bb
+++ b/meta/recipes-devtools/opkg/opkg-config-base_1.0.bb
@@ -1,6 +1,7 @@
 DESCRIPTION = "Base configuration files for opkg"
+L = ${OEROOT}/meta
 LICENSE = "MIT"
-
+LIC_FILES_CHKSUM = "file://COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 PACKAGE_ARCH = "${MACHINE_ARCH}"
 
 do_compile() {
-- 
1.6.3.3


