Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8A4D54C81224
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:27:23 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 23 Dec 2010 06:27:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="871314140"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by fmsmga001.fm.intel.com with ESMTP; 23 Dec 2010 06:27:23 -0800
Message-Id: <8d8e598b97912beda2260ac9e95852bc3cd7918a.1293114004.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293114003.git.sgw@linux.intel.com>
References: <cover.1293114003.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Old-Date: Wed, 22 Dec 2010 22:30:42 -0800
Date: Thu, 23 Dec 2010  6:27:22 -0800
To: poky@yoctoproject.org
Subject: [PATCH 25/28] qemu-helper: Add LIC_FILE_CHKSUMS
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
X-List-Received-Date: Thu, 23 Dec 2010 14:27:23 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../qemu/qemu-helper-native_1.0.bb                 |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/qemu/qemu-helper-native_1.0.bb b/meta/recipes-devtools/qemu/qemu-helper-native_1.0.bb
index 19fb6f4..7b15dfe 100644
--- a/meta/recipes-devtools/qemu/qemu-helper-native_1.0.bb
+++ b/meta/recipes-devtools/qemu/qemu-helper-native_1.0.bb
@@ -3,6 +3,8 @@ LICENSE = "GPLv2"
 RDEPENDS = "qemu-native"
 PR = "r0"
 
+LIC_FILES_CHKSUM = "file://${WORKDIR}/tunctl.c;endline=4;md5="
+
 FILESPATH = "${FILE_DIRNAME}/qemu-helper"
 
 SRC_URI = "file://tunctl.c"
-- 
1.7.2.3


