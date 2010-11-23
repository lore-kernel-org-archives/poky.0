Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id AE7C24C811E4
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 04:07:16 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Nov 2010 02:07:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="680165717"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga001.jf.intel.com with ESMTP; 23 Nov 2010 02:07:15 -0800
Message-Id: <817453e88724f72ff2017c0f690824d5fc9b3819.1290506494.git.lei.mei@intel.com>
In-Reply-To: <cover.1290506494.git.lei.mei@intel.com>
References: <cover.1290506494.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Tue, 23 Nov 2010 14:10:45 +0800
To: poky@yoctoproject.org
Subject: [PATCH 09/25] libxprintutil:Add license checksum to bb file
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
X-List-Received-Date: Tue, 23 Nov 2010 10:07:16 -0000

Get the license checksum information from src/xprintutil.c

Signed-off-by: Mei Lei<lei.mei@intel.com>
---
 .../xorg-lib/libxprintutil_1.0.1.bb                |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/xorg-lib/libxprintutil_1.0.1.bb b/meta/recipes-graphics/xorg-lib/libxprintutil_1.0.1.bb
index 327138e..6fb1af5 100644
--- a/meta/recipes-graphics/xorg-lib/libxprintutil_1.0.1.bb
+++ b/meta/recipes-graphics/xorg-lib/libxprintutil_1.0.1.bb
@@ -1,4 +1,5 @@
 require xorg-lib-common.inc
+LIC_FILES_CHKSUM = "file://src/xprintutil.c;endline=29;md5=22d5a98494dd356a2c6c9c355886f3af"
 
 DESCRIPTION = "Xprint printer utility client library"
 DEPENDS += "libxp libxt"
-- 
1.6.3.3


