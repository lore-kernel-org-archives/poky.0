Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 08D664C811EE
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 21:44:46 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jan 2011 19:44:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,281,1291622400"; d="scan'208";a="643922204"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jan 2011 19:44:46 -0800
Message-Id: <0f84ed648180a7776b7be0a77ebd9fdccae2a3ae.1294285115.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1294285114.git.dexuan.cui@intel.com>
References: <cover.1294285114.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Thu, 6 Jan 2011 11:33:54 +0800
Date: Thu, 06 Jan 2011 11:44:29 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/5] xproto: fix LIC_FILES_CHKSUM
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
X-List-Received-Date: Thu, 06 Jan 2011 03:44:47 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb b/meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb
index 0586742..0e830eb 100644
--- a/meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb
+++ b/meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb
@@ -1,7 +1,7 @@
 require xorg-proto-common.inc
 
 LICENSE = "MIT & MIT-style"
-LIC_FILES_CHKSUM = "file://COPYING;md5=70c104816b85de375ba1fc09199d0e69"
+LIC_FILES_CHKSUM = "file://COPYING;md5=93ae8952e7d02d855516fbf2efb9a0d2"
 
 PR = "r0"
 PE = "1"
-- 
1.7.2


