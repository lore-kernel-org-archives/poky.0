Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 723A24C811DD
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 05:03:09 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Nov 2010 03:03:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,247,1288594800"; d="scan'208";a="577108350"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga002.jf.intel.com with ESMTP; 24 Nov 2010 03:03:08 -0800
Message-Id: <0b4362336481e71cd62d2c72fbe160ce03397133.1290596255.git.lei.mei@intel.com>
In-Reply-To: <cover.1290596255.git.lei.mei@intel.com>
References: <cover.1290596255.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Wed, 24 Nov 2010 18:44:14 +0800
To: poky@yoctoproject.org
Subject: [PATCH 19/20] m4:Add license checksum to bb file
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
X-List-Received-Date: Wed, 24 Nov 2010 11:03:09 -0000

Add COPYING file checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-devtools/m4/m4_1.4.13.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/m4/m4_1.4.13.bb b/meta/recipes-devtools/m4/m4_1.4.13.bb
index 32d153e..339c33c 100644
--- a/meta/recipes-devtools/m4/m4_1.4.13.bb
+++ b/meta/recipes-devtools/m4/m4_1.4.13.bb
@@ -1,5 +1,6 @@
 DESCRIPTION = "GNU m4 is an implementation of the traditional Unix macro processor."
 LICENSE = "GPLv3"
+LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
 SRC_URI = "${GNU_MIRROR}/m4/m4-${PV}.tar.gz \
            file://ac_config_links.patch;patch=1"
 PR = "r2"
-- 
1.6.3.3


