Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id DC35C4C803A5
	for <poky@yoctoproject.org>; Wed,  1 Dec 2010 18:38:31 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Dec 2010 16:38:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,285,1288594800"; d="scan'208";a="682991997"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga001.jf.intel.com with ESMTP; 01 Dec 2010 16:38:30 -0800
Message-Id: <619fc99f47b66472258ce9e73865c35605bda50c.1291250127.git.lei.mei@intel.com>
In-Reply-To: <cover.1291250127.git.lei.mei@intel.com>
References: <cover.1291250127.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Thu, 2 Dec 2010 08:27:12 +0800
To: poky@yoctoproject.org
Subject: [PATCH 1/1] opkg-config-base: remove the variable "L" from bb file
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
X-List-Received-Date: Thu, 02 Dec 2010 00:38:32 -0000

This variable should remove because of the change to bitbake.conf and insane.bbclass were removed in modutils-collateral patch.
We use ${POKYBASE} to replace the ${L}

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-devtools/opkg/opkg-config-base_1.0.bb |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/opkg/opkg-config-base_1.0.bb b/meta/recipes-devtools/opkg/opkg-config-base_1.0.bb
index 6a73003..c2bf347 100644
--- a/meta/recipes-devtools/opkg/opkg-config-base_1.0.bb
+++ b/meta/recipes-devtools/opkg/opkg-config-base_1.0.bb
@@ -1,5 +1,4 @@
 DESCRIPTION = "Base configuration files for opkg"
-L = ${OEROOT}/meta
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 PACKAGE_ARCH = "${MACHINE_ARCH}"
-- 
1.6.3.3


