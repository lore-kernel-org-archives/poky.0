Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8DCD84C810BA
	for <poky@yoctoproject.org>; Thu,  5 May 2011 00:55:19 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 04 May 2011 22:55:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,318,1301900400"; d="scan'208";a="638282627"
Received: from unknown (HELO localhost) ([10.255.13.36])
	by orsmga002.jf.intel.com with ESMTP; 04 May 2011 22:55:18 -0700
Message-Id: <4dc696ae28a5ebd56277993f30cd4429a2ad02e3.1304574705.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1304574705.git.tom.zanussi@intel.com>
References: <cover.1304574705.git.tom.zanussi@intel.com>
Old-Date: Thu, 5 May 2011 00:37:11 -0500
Date: Thu, 05 May 2011  0:55:35 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/2] core-image-directdisk: add LIC_FILES_CHECKSUM
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
X-List-Received-Date: Thu, 05 May 2011 05:55:19 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Fix for build failure.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/recipes-core/images/poky-image-directdisk.inc |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-core/images/poky-image-directdisk.inc b/meta/recipes-core/images/poky-image-directdisk.inc
index 64144b9..42e5e14 100644
--- a/meta/recipes-core/images/poky-image-directdisk.inc
+++ b/meta/recipes-core/images/poky-image-directdisk.inc
@@ -1,5 +1,8 @@
 inherit boot-directdisk
 
+LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
+                    file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
 do_bootdirectdisk_prepend () {
 	import bb
 	fstypes = bb.data.getVar('IMAGE_FSTYPES', d, True)
-- 
1.7.0.4


