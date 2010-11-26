Return-Path: <lei.mei@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A46514C811DB
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 09:36:08 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Nov 2010 07:36:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,261,1288594800"; d="scan'208";a="577893282"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga002.jf.intel.com with ESMTP; 26 Nov 2010 07:36:07 -0800
Message-Id: <6437ae231cbda834bc2b692f797a60143ca948e7.1290785519.git.lei.mei@intel.com>
In-Reply-To: <cover.1290785519.git.lei.mei@intel.com>
References: <cover.1290785519.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Fri, 26 Nov 2010 22:44:56 +0800
To: poky@yoctoproject.org
Subject: [PATCH 14/14] gcc:Add license checksum and update the GPL information
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
X-List-Received-Date: Fri, 26 Nov 2010 15:36:08 -0000

Add COPYING COPYING3 COPYING.LIB COPYING3.LIB COPYING.RUNTIME files checksum to bb file and add the "GCC RUNTIME LIBRARY EXCEPTION"
 "GPLv3" "GPLv2" "LGPLv2" "LGPLv3" information according to the COPYING file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-devtools/gcc/gcc_4.5.1.bb |    7 ++++++-
 1 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/gcc/gcc_4.5.1.bb b/meta/recipes-devtools/gcc/gcc_4.5.1.bb
index 0e77725..91b782f 100644
--- a/meta/recipes-devtools/gcc/gcc_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc_4.5.1.bb
@@ -1,5 +1,10 @@
 PR = "r0"
-
+LICENSE="GCC RUNTIME LIBRARY EXCEPTION & GPLv2 & GPLv3 & LGPLv2.1 & LGPLv3"
+LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
+                   file://COPYING3;md5=d32239bcb673463ab874e80d47fae504 \
+                   file://COPYING3.LIB;md5=6a6a8e020838b23406c81b19c1d46df6 \
+                   file://COPYING.LIB;md5=2d5025d4aa3495befef8f17206a5b0a1 \
+		   file://COPYING.RUNTIME;md5=fe60d87048567d4fe8c8a0ed2448bcc8"
 require gcc-${PV}.inc
 require gcc-configure-target.inc
 require gcc-package-target.inc
-- 
1.6.3.3


