Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B1A6E4C811C5
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 09:07:58 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Dec 2010 07:07:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="690200830"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by orsmga001.jf.intel.com with ESMTP; 23 Dec 2010 07:07:34 -0800
Message-Id: <1666c02ea3dba58f802b354a1337c5323d19730c.1293116649.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293116649.git.sgw@linux.intel.com>
References: <cover.1293116649.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Old-Date: Thu, 23 Dec 2010 07:02:23 -0800
Date: Thu, 23 Dec 2010  7:07:34 -0800
To: poky@yoctoproject.org
Subject: [PATCH 2/4] qemu-helper: add LIC_FILES_CHKSUM
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
X-List-Received-Date: Thu, 23 Dec 2010 15:07:58 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../qemu/qemu-helper-native_1.0.bb                 |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/qemu/qemu-helper-native_1.0.bb b/meta/recipes-devtools/qemu/qemu-helper-native_1.0.bb
index 7b15dfe..87e96f3 100644
--- a/meta/recipes-devtools/qemu/qemu-helper-native_1.0.bb
+++ b/meta/recipes-devtools/qemu/qemu-helper-native_1.0.bb
@@ -3,7 +3,7 @@ LICENSE = "GPLv2"
 RDEPENDS = "qemu-native"
 PR = "r0"
 
-LIC_FILES_CHKSUM = "file://${WORKDIR}/tunctl.c;endline=4;md5="
+LIC_FILES_CHKSUM = "file://${WORKDIR}/tunctl.c;endline=4;md5=ff3a09996bc5fff6bc5d4e0b4c28f999"
 
 FILESPATH = "${FILE_DIRNAME}/qemu-helper"
 
-- 
1.7.2.3


