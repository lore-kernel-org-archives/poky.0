Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 056214C8007E
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 03:35:46 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 Feb 2011 01:35:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,479,1291622400"; d="scan'208";a="389475387"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.141])
	by azsmga001.ch.intel.com with ESMTP; 16 Feb 2011 01:35:45 -0800
Message-Id: <e9fcd235c16c90fe267cf230c5f9c24f985d32d0.1297848716.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1297848716.git.lianhao.lu@intel.com>
References: <cover.1297848716.git.lianhao.lu@intel.com>
Old-Date: Wed, 16 Feb 2011 17:29:30 +0800
Date: Wed, 16 Feb 2011 17:35:24 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 3/3] meta-toolchain.bb: Set value for CONFIG_SITE.
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
X-List-Received-Date: Wed, 16 Feb 2011 09:35:47 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

Set the value of CONFIG_SITE for pkgconfig site files.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/recipes-core/meta/meta-toolchain.bb |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-core/meta/meta-toolchain.bb b/meta/recipes-core/meta/meta-toolchain.bb
index feff9ac..2443b38 100644
--- a/meta/recipes-core/meta/meta-toolchain.bb
+++ b/meta/recipes-core/meta/meta-toolchain.bb
@@ -1,9 +1,11 @@
 DESCRIPTION = "Meta package for building a installable toolchain"
 LICENSE = "MIT"
 
-PR = "r1"
+PR = "r2"
 
 LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                     file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
 inherit populate_sdk
+
+CONFIG_SITE := "${@siteinfo_get_files(d)}"
-- 
1.7.0.4


