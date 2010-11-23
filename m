Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D3E1F4C811E2
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 04:07:14 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Nov 2010 02:07:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="680165708"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga001.jf.intel.com with ESMTP; 23 Nov 2010 02:07:13 -0800
Message-Id: <654255e40382a33d5a09e67bf22c633c673ab802.1290506494.git.lei.mei@intel.com>
In-Reply-To: <cover.1290506494.git.lei.mei@intel.com>
References: <cover.1290506494.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Tue, 23 Nov 2010 14:10:45 +0800
To: poky@yoctoproject.org
Subject: [PATCH 08/25] libxprintapputil:Add license checksum to bb file
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
X-List-Received-Date: Tue, 23 Nov 2010 10:07:15 -0000

Get the license checksum information from the /src/xpapputil.c

Signed-off-by: Mei Lei<lei.mei@intel.com>
---
 .../xorg-lib/libxprintapputil_1.0.1.bb             |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/xorg-lib/libxprintapputil_1.0.1.bb b/meta/recipes-graphics/xorg-lib/libxprintapputil_1.0.1.bb
index 3a24a88..75723aa 100644
--- a/meta/recipes-graphics/xorg-lib/libxprintapputil_1.0.1.bb
+++ b/meta/recipes-graphics/xorg-lib/libxprintapputil_1.0.1.bb
@@ -3,6 +3,7 @@ require xorg-lib-common.inc
 DESCRIPTION = "Xprint job utility client library"
 DEPENDS += "libxp libxt libxprintutil"
 PR = "r1"
+LIC_FILES_CHKSUM = "file://src/xpapputil.c;beginline=2;endline=27;md5=be811cca90200613a672dc96206a767b"
 PE = "1"
 
 XORG_PN = "libXprintAppUtil"
-- 
1.6.3.3


