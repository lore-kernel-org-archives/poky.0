Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2A0454C81218
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 01:19:11 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Nov 2010 23:19:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,275,1288594800"; d="scan'208";a="631109693"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga002.fm.intel.com with ESMTP; 28 Nov 2010 23:19:10 -0800
Message-Id: <77b77750daa793a9105f9b060f84651206466c00.1291014682.git.lei.mei@intel.com>
In-Reply-To: <cover.1291014682.git.lei.mei@intel.com>
References: <cover.1291014682.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Mon, 29 Nov 2010 15:06:03 +0800
To: poky@yoctoproject.org
Subject: [PATCH 2/6] Keymaps:Add license checksum 'n/a' for this local recipe
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
X-List-Received-Date: Mon, 29 Nov 2010 07:19:11 -0000

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-bsp/keymaps/keymaps_1.0.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-bsp/keymaps/keymaps_1.0.bb b/meta/recipes-bsp/keymaps/keymaps_1.0.bb
index 7c42758..cea8ba4 100644
--- a/meta/recipes-bsp/keymaps/keymaps_1.0.bb
+++ b/meta/recipes-bsp/keymaps/keymaps_1.0.bb
@@ -3,6 +3,7 @@ DESCRIPTION = "Keymaps and initscript to set the keymap on bootup."
 SECTION = "base"
 RDEPENDS_${PN} = "initscripts console-tools"
 LICENSE = "GPL"
+LIC_FILES_CHKSUM = "n/a"
 PACKAGE_ARCH = "${MACHINE}"
 PR = "r17"
 
-- 
1.6.3.3


