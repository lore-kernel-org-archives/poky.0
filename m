Return-Path: <lianhao.lu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id F26A44C800A3
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 21:08:49 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Feb 2011 19:08:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,483,1291622400"; d="scan'208";a="708769410"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.141])
	by orsmga001.jf.intel.com with ESMTP; 16 Feb 2011 19:08:48 -0800
Message-Id: <faf516711049fd164b09ec3be7f1537822df15d9.1297912022.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1297912022.git.lianhao.lu@intel.com>
References: <cover.1297912022.git.lianhao.lu@intel.com>
Old-Date: Thu, 17 Feb 2011 10:51:08 +0800
Date: Thu, 17 Feb 2011 11:08:22 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 3/3] recipe-core/meta/meta-toolchain.bb: Set correct value for CONFIG_SITE.
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
X-List-Received-Date: Thu, 17 Feb 2011 03:08:50 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

Set the value of CONFIG_SITE for correct autoconf config site files.

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


