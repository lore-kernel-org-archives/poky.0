Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8869C4C811C4
	for <poky@yoctoproject.org>; Fri, 10 Dec 2010 13:56:07 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Dec 2010 11:56:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,325,1288594800"; d="scan'208";a="685959881"
Received: from doubt.jf.intel.com (HELO localhost) ([10.7.199.164])
	by orsmga001.jf.intel.com with ESMTP; 10 Dec 2010 11:55:55 -0800
Message-Id: <6d64f7df084448846bf38f26bbbe2fa7ad84f335.1292010816.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1292010816.git.dvhart@linux.intel.com>
References: <cover.1292010816.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Fri, 10 Dec 2010 11:35:14 -0800
To: sgw@linux.intel.com,poky@yoctoproject.org
Subject: [PATCH 4/5] tcl: Correct license checksums
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

Correct a typo in LIC_FILES_CHKSUM in the tcl recipe and the changed md5sums
that appeared during a test build.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/recipes-devtools/tcltk/tcl_8.5.9.bb |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta/recipes-devtools/tcltk/tcl_8.5.9.bb b/meta/recipes-devtools/tcltk/tcl_8.5.9.bb
index aa1805b..12e2bd0 100644
--- a/meta/recipes-devtools/tcltk/tcl_8.5.9.bb
+++ b/meta/recipes-devtools/tcltk/tcl_8.5.9.bb
@@ -3,12 +3,12 @@ LICENSE = "tcl"
 SECTION = "devel/tcltk"
 HOMEPAGE = "http://tcl.sourceforge.net"
 DEPENDS = "tcl-native"
-LIC_CHKSUM_FILES = "file://../license.terms;md5=7b4d3c71b2d9a8c1b373609867975570 \
-    file://../compat/license.terms;md5=7b4d3c71b2d9a8c1b373609867975570 \
-    file://../library/license.terms;md5=7b4d3c71b2d9a8c1b373609867975570 \
-    file://../macosx/license.terms;md5=7b4d3c71b2d9a8c1b373609867975570 \
-    file://../tests/license.terms;md5=7b4d3c71b2d9a8c1b373609867975570 \
-    file://../win/license.terms;md5=7b4d3c71b2d9a8c1b373609867975570 \
+LIC_FILES_CHKSUM = "file://../license.terms;md5=a47a9be26d03f925fc1fbd2784f27e11 \
+    file://../compat/license.terms;md5=a47a9be26d03f925fc1fbd2784f27e11 \
+    file://../library/license.terms;md5=a47a9be26d03f925fc1fbd2784f27e11 \
+    file://../macosx/license.terms;md5=a47a9be26d03f925fc1fbd2784f27e11 \
+    file://../tests/license.terms;md5=a47a9be26d03f925fc1fbd2784f27e11 \
+    file://../win/license.terms;md5=a47a9be26d03f925fc1fbd2784f27e11 \
     "
 
 PR = "r0"
-- 
1.7.1


