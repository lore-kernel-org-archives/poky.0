Return-Path: <lei.mei@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 30A1C4C8110C
	for <poky@yoctoproject.org>; Thu, 25 Nov 2010 04:50:48 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 25 Nov 2010 02:50:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,253,1288594800"; d="scan'208";a="353143018"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by azsmga001.ch.intel.com with ESMTP; 25 Nov 2010 02:50:47 -0800
Message-Id: <b063a2b175b72bec41d544c29f72d3e6e8eb5a73.1290681886.git.lei.mei@intel.com>
In-Reply-To: <cover.1290681886.git.lei.mei@intel.com>
References: <cover.1290681886.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Thu, 25 Nov 2010 17:48:45 +0800
To: poky@yoctoproject.org
Subject: [PATCH 17/20] mc:Add license checksum to bb file
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
X-List-Received-Date: Thu, 25 Nov 2010 10:50:48 -0000

Add COPYING file checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-extended/mc/mc_4.7.3.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-extended/mc/mc_4.7.3.bb b/meta/recipes-extended/mc/mc_4.7.3.bb
index 509fe37..8fd16b1 100644
--- a/meta/recipes-extended/mc/mc_4.7.3.bb
+++ b/meta/recipes-extended/mc/mc_4.7.3.bb
@@ -1,6 +1,7 @@
 DESCRIPTION = "Midnight Commander is an ncurses based file manager."
 HOMEPAGE = "http://www.midnight-commander.org/"
 LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552"
 SECTION = "console/utils"
 DEPENDS = "ncurses glib-2.0"
 RDEPENDS = "ncurses-terminfo"
-- 
1.6.3.3


