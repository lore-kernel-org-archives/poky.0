Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 129CC4C810DA
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 21:44:46 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jan 2011 19:44:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,281,1291622400"; d="scan'208";a="643922197"
Received: from unknown (HELO localhost) ([10.239.13.108])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jan 2011 19:44:45 -0800
Message-Id: <46f5ff84a9055402e33a608431ab617a262b40be.1294285115.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1294285114.git.dexuan.cui@intel.com>
References: <cover.1294285114.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Thu, 6 Jan 2011 11:33:24 +0800
Date: Thu, 06 Jan 2011 11:43:48 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/5] inputproto: fix LIC_FILES_CHKSUM
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
X-List-Received-Date: Thu, 06 Jan 2011 03:44:46 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../xorg-proto/inputproto_2.0.1.bb                 |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/xorg-proto/inputproto_2.0.1.bb b/meta/recipes-graphics/xorg-proto/inputproto_2.0.1.bb
index 27462ed..29f5526 100644
--- a/meta/recipes-graphics/xorg-proto/inputproto_2.0.1.bb
+++ b/meta/recipes-graphics/xorg-proto/inputproto_2.0.1.bb
@@ -1,7 +1,7 @@
 require xorg-proto-common.inc
 
 LICENSE = "MIT & MIT-style"
-LIC_FILES_CHKSUM = "file://COPYING;md5=b9f79c119df756aeffcb89ec96716a9e \
+LIC_FILES_CHKSUM = "file://COPYING;md5=e562cc0f6587b961f032211d8160f31e \
                     file://XI2proto.h;endline=48;md5=1ac1581e61188da2885cc14ff49b20be"
 
 PR = "r0"
-- 
1.7.2


