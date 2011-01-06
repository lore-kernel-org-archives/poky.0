Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id AA7024C811E7
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 21:44:49 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jan 2011 19:44:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,281,1291622400"; d="scan'208";a="643922208"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jan 2011 19:44:49 -0800
Message-Id: <3e502d45859650c23781690d064c187d01e8c66c.1294285115.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1294285114.git.dexuan.cui@intel.com>
References: <cover.1294285114.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Thu, 6 Jan 2011 11:34:52 +0800
Date: Thu, 06 Jan 2011 11:44:32 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 5/5] pixman: fix LIC_FILES_CHKSUM
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
X-List-Received-Date: Thu, 06 Jan 2011 03:44:49 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 meta/recipes-graphics/xorg-lib/pixman_0.21.2.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/xorg-lib/pixman_0.21.2.bb b/meta/recipes-graphics/xorg-lib/pixman_0.21.2.bb
index 224b160..562ba14 100644
--- a/meta/recipes-graphics/xorg-lib/pixman_0.21.2.bb
+++ b/meta/recipes-graphics/xorg-lib/pixman_0.21.2.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "Library for lowlevel pixel operations"
 require xorg-lib-common.inc
 
 LICENSE = "MIT & MIT-style & Public Domain"
-LIC_FILES_CHKSUM = "file://COPYING;md5=fea989a44fb012b5e79584972a863d22 \
+LIC_FILES_CHKSUM = "file://COPYING;md5=71e682cc54eaaf251f96a9038423a5c3 \
                     file://pixman/pixman-matrix.c;endline=25;md5=ba6e8769bfaaee2c41698755af04c4be \
                     file://pixman/pixman-arm-neon-asm.h;endline=24;md5=9a9cc1e51abbf1da58f4d9528ec9d49b \
                     file://pixman/pixman-x64-mmx-emulation.h;beginline=4;endline=9;md5=4e32716f2efaa6c4659222667c339bb8"
-- 
1.7.2


