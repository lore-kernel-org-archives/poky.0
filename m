Return-Path: <lei.mei@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 208F84C811D1
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 05:02:52 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Nov 2010 03:02:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,247,1288594800"; d="scan'208";a="352684337"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by azsmga001.ch.intel.com with ESMTP; 24 Nov 2010 03:02:51 -0800
Message-Id: <9e4e8ce475620ced759be5f2a2ad0e092bb9ee9d.1290596255.git.lei.mei@intel.com>
In-Reply-To: <cover.1290596255.git.lei.mei@intel.com>
References: <cover.1290596255.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Wed, 24 Nov 2010 14:46:44 +0800
To: poky@yoctoproject.org
Subject: [PATCH 07/20] pax-utils:Add license checksum to bb file
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
X-List-Received-Date: Wed, 24 Nov 2010 11:02:52 -0000

Add COPYING file checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb b/meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb
index f450f32..441797b 100644
--- a/meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb
+++ b/meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb
@@ -1,7 +1,7 @@
 DESCRIPTION = "pax-utils is a small set of various PaX aware and related utilities for ELF binaries. PaX's main goal is to research various defense mechanisms against the exploitation of software bugs that give an attacker arbitrary read/write access to the attacked task's address space"
 HOMEPAGE    = "http://www.gentoo.org/proj/en/hardened/pax-utils.xml"
 LICENSE     = "GPLv2+"
-
+LIC_FILES_CHKSUM = "file://COPYING;md5=eb723b61539feef013de476e68b5c50a"
 SRC_URI     = "http://gentoo.osuosl.org/distfiles/pax-utils-${PV}.tar.bz2"
 
 PR = "r0"
-- 
1.6.3.3


