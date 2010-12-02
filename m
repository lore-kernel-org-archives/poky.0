Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 596FF4C810EE
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 07:50:42 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 Dec 2010 05:50:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,288,1288594800"; d="scan'208";a="579867208"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2010 05:50:41 -0800
Message-Id: <c6c4dbe3e0dea38a3324a28c9c66477507c71c10.1291296360.git.lei.mei@intel.com>
In-Reply-To: <cover.1291296360.git.lei.mei@intel.com>
References: <cover.1291296360.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Thu, 2 Dec 2010 21:11:53 +0800
To: poky@yoctoproject.org
Subject: [PATCH 5/8] fstests:Add license checksum and update the GPL information
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
X-List-Received-Date: Thu, 02 Dec 2010 13:50:42 -0000

Add source file license checksum to bb file and update the "GPL" to "ZLIB" according to the license information

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-graphics/fstests/fstests_svn.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/fstests/fstests_svn.bb b/meta/recipes-graphics/fstests/fstests_svn.bb
index b407521..241d6b9 100644
--- a/meta/recipes-graphics/fstests/fstests_svn.bb
+++ b/meta/recipes-graphics/fstests/fstests_svn.bb
@@ -1,7 +1,8 @@
 DESCRIPTION = "Various benchmarning tests for X"
 HOMEPAGE = "http://www.o-hand.com"
 SECTION = "devel"
-LICENSE = "GPL"
+LICENSE = "ZLIB"
+LIC_FILES_CHKSUM = "file://test-pango-gdk.c;endline=24;md5=1ee74ec851ecda57eb7ac6cc180f7655"
 DEPENDS = "pango libxext libxft virtual/libx11 gtk+"
 PV = "0.0+svnr${SRCREV}"
 PR = "r1"
-- 
1.6.3.3


