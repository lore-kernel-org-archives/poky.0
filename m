Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 05DD74C80B70
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 21:44:04 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jan 2011 19:44:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,281,1291622400"; d="scan'208";a="874896317"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by fmsmga001.fm.intel.com with ESMTP; 05 Jan 2011 19:44:04 -0800
Message-Id: <5d63831002e813774499d0c8de12b051cc884a08.1294285115.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1294285114.git.dexuan.cui@intel.com>
References: <cover.1294285114.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Thu, 6 Jan 2011 11:32:36 +0800
Date: Thu, 06 Jan 2011 11:43:47 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/5] libdmx: fix LIC_FILES_CHKSUM
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
X-List-Received-Date: Thu, 06 Jan 2011 03:44:05 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 meta/recipes-graphics/xorg-lib/libdmx_1.1.1.bb |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-graphics/xorg-lib/libdmx_1.1.1.bb b/meta/recipes-graphics/xorg-lib/libdmx_1.1.1.bb
index f007e30..7c5a030 100644
--- a/meta/recipes-graphics/xorg-lib/libdmx_1.1.1.bb
+++ b/meta/recipes-graphics/xorg-lib/libdmx_1.1.1.bb
@@ -3,8 +3,8 @@ require xorg-lib-common.inc
 DESCRIPTION = "X11 Distributed Multihead extension library"
 
 LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://COPYING;md5=4641deddaa80fe7ca88e944e1fd94a94 \
-                    file://src/dmx.c;endline=33;md5=79ff7aacf716dafea0d490316f998a11"
+LIC_FILES_CHKSUM = "file://COPYING;md5=a3c3499231a8035efd0e004cfbd3b72a \
+                    file://src/dmx.c;endline=33;md5=c43f19af03c7c8619cadc9724ed9afe1"
 
 DEPENDS += "libxext dmxproto"
 
-- 
1.7.2


