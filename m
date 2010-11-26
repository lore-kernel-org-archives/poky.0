Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id EA9404C8110E
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 09:35:55 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 26 Nov 2010 07:35:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,261,1288594800"; d="scan'208";a="630558952"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga002.fm.intel.com with ESMTP; 26 Nov 2010 07:35:55 -0800
Message-Id: <ec34b479f50821e2d2c443f2934371516c08bfa5.1290785519.git.lei.mei@intel.com>
In-Reply-To: <cover.1290785519.git.lei.mei@intel.com>
References: <cover.1290785519.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Fri, 26 Nov 2010 16:00:36 +0800
To: poky@yoctoproject.org
Subject: [PATCH 05/14] poky-feed-config-opkg:Add license checksum to bb file
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
X-List-Received-Date: Fri, 26 Nov 2010 15:35:56 -0000

Add COPYING file checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../feed-config/poky-feed-config-opkg_1.0.bb       |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-core/feed-config/poky-feed-config-opkg_1.0.bb b/meta/recipes-core/feed-config/poky-feed-config-opkg_1.0.bb
index f36b38a..d355979 100644
--- a/meta/recipes-core/feed-config/poky-feed-config-opkg_1.0.bb
+++ b/meta/recipes-core/feed-config/poky-feed-config-opkg_1.0.bb
@@ -1,6 +1,7 @@
 DESCRIPTION = "Poky example feed configuration"
+L = ${OEROOT}/meta
 LICENSE = "MIT"
-
+LIC_FILES_CHKSUM = "file://COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 PR = "r1"
 PACKAGE_ARCH = "${MACHINE_ARCH}"
 
-- 
1.6.3.3


