Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C348B4C811CD
	for <poky@yoctoproject.org>; Fri, 10 Dec 2010 13:56:07 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Dec 2010 11:56:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,325,1288594800"; d="scan'208";a="685959882"
Received: from doubt.jf.intel.com (HELO localhost) ([10.7.199.164])
	by orsmga001.jf.intel.com with ESMTP; 10 Dec 2010 11:55:55 -0800
Message-Id: <959c8bf8a17e0c4bd2669ebe7a033b11d65277bc.1292010816.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1292010816.git.dvhart@linux.intel.com>
References: <cover.1292010816.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Fri, 10 Dec 2010 11:38:04 -0800
To: sgw@linux.intel.com,poky@yoctoproject.org
Subject: [PATCH 5/5] linux-libc-headers: Correct license checksum
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
X-List-Received-Date: Fri, 10 Dec 2010 19:56:07 -0000

Correct a typo in LIC_FILES_CHKSUM for linux-libc-headers as well as update
the md5sum.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../linux-libc-headers/linux-libc-headers.inc      |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers.inc b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers.inc
index e6cb1d8..f25aed4 100644
--- a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers.inc
+++ b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers.inc
@@ -2,7 +2,7 @@ DESCRIPTION = "Sanitized set of 2.6 kernel headers for the C library's use."
 SECTION = "devel"
 LICENSE = "GPLv2"
 
-LIC_CHKSUM_FILES = "file://COPYING " 
+LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7" 
 SRC_URI = "${KERNELORG_MIRROR}/pub/linux/kernel/v2.6/linux-${PV}.tar.bz2"
 
 #DEPENDS = "cross-linkage"
-- 
1.7.1


