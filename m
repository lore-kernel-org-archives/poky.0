Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E38A94C811E7
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 21:44:48 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 05 Jan 2011 19:44:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,281,1291622400"; d="scan'208";a="590330657"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga002.jf.intel.com with ESMTP; 05 Jan 2011 19:44:47 -0800
Message-Id: <18cf32927416f5303907635df3e4d0073fcca7f1.1294285115.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1294285114.git.dexuan.cui@intel.com>
References: <cover.1294285114.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Thu, 6 Jan 2011 11:34:13 +0800
Date: Thu, 06 Jan 2011 11:44:30 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 4/5] compositeproto: fix LIC_FILES_CHKSUM
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
 .../xorg-proto/compositeproto_0.4.2.bb             |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-graphics/xorg-proto/compositeproto_0.4.2.bb b/meta/recipes-graphics/xorg-proto/compositeproto_0.4.2.bb
index 8f1e9e6..e78e173 100644
--- a/meta/recipes-graphics/xorg-proto/compositeproto_0.4.2.bb
+++ b/meta/recipes-graphics/xorg-proto/compositeproto_0.4.2.bb
@@ -1,8 +1,8 @@
 require xorg-proto-common.inc
 
-LICENSE = "MIT-style"
-LIC_FILES_CHKSUM = "file://COPYING;md5=f8cdfa47489609f305b91521f3a8803f \
-                    file://composite.h;endline=43;md5=11420a347713de702a1fe60949085464"
+LICENSE = "MIT & MIT-style"
+LIC_FILES_CHKSUM = "file://COPYING;md5=2c4bfe136f4a4418ea2f2a96b7c8f3c5 \
+                    file://composite.h;endline=43;md5=cbd44d4079053aa75930ed2f02b92926"
 
 CONFLICTS = "compositeext"
 
-- 
1.7.2


