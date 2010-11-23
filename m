Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6AEDC4C811D7
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 04:07:02 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Nov 2010 02:07:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="629474877"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga002.fm.intel.com with ESMTP; 23 Nov 2010 02:07:01 -0800
Message-Id: <b9fbe8b32e1ef82a09269aaddba5fc839d8e2ede.1290506494.git.lei.mei@intel.com>
In-Reply-To: <cover.1290506494.git.lei.mei@intel.com>
References: <cover.1290506494.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Tue, 23 Nov 2010 13:46:33 +0800
To: poky@yoctoproject.org
Subject: [PATCH 02/25] gccmakedep: Add license checksum to bb file
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
X-List-Received-Date: Tue, 23 Nov 2010 10:07:02 -0000

Add the license checksum information from Makefile.am to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../recipes-graphics/xorg-util/gccmakedep_1.0.2.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb b/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb
index b103567..5eba970 100644
--- a/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb
+++ b/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb
@@ -1,5 +1,5 @@
 require xorg-util-common.inc
-
+LIC_FILES_CHKSUM = "file://Makefile.am;endline=20;md5=23c277396d690413245ebb89b18c5d4d"
 DESCRIPTION = "create dependencies in makefiles using 'gcc -M'"
 DEPENDS = "util-macros"
 RDEPENDS = "gcc"
-- 
1.6.3.3


