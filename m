Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C13B34C811E2
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 04:07:20 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 23 Nov 2010 02:07:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="629474962"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga002.fm.intel.com with ESMTP; 23 Nov 2010 02:07:19 -0800
Message-Id: <4ff0334d25d80a026f107a66f35571f1ca133fa3.1290506494.git.lei.mei@intel.com>
In-Reply-To: <cover.1290506494.git.lei.mei@intel.com>
References: <cover.1290506494.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Tue, 23 Nov 2010 14:10:45 +0800
To: poky@yoctoproject.org
Subject: [PATCH 11/25] libxtrap:Add license file checksum to bb file
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
X-List-Received-Date: Tue, 23 Nov 2010 10:07:20 -0000

Add COPYING file checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb b/meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb
index 7a25ae5..39c7bef 100644
--- a/meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb
@@ -1,5 +1,5 @@
 require xorg-lib-common.inc
-
+LIC_FILES_CHKSUM = "file://COPYING;md5=fe7cbb8cc97683303f7814685cc47305"
 DESCRIPTION = "X11 event trapping extension library"
 DEPENDS += "libxt trapproto libxext"
 PR = "r1"
-- 
1.6.3.3


