Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4F2E74C80861
	for <poky@yoctoproject.org>; Fri, 11 Mar 2011 05:43:20 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 Mar 2011 03:43:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,302,1297065600"; d="scan'208";a="719070780"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by orsmga001.jf.intel.com with ESMTP; 11 Mar 2011 03:43:19 -0800
Message-Id: <e8db1316621f048126d08de9ce2b0b7e82cb5792.1299843601.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1299843601.git.dexuan.cui@intel.com>
References: <cover.1299843601.git.dexuan.cui@intel.com>
Old-Date: Fri, 11 Mar 2011 19:25:24 +0800
Date: Fri, 11 Mar 2011 19:41:53 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 1/1] sugarbay.conf: add mesa library: correct previous wrong modification
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
X-List-Received-Date: Fri, 11 Mar 2011 11:43:20 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

This fixes [BUGID #727]

766c20ef2141d058f15074e866313ab119332ea8 added
mesa-dri-driver-i915, but actually it should be
mesa-dri-driver-i965.

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
Signed-off-by: Ke Yu <ke.yu@intel.com>
---
 meta-sugarbay/conf/machine/sugarbay.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index 92d7c54..00534a5 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -28,7 +28,7 @@ XSERVER ?= "xserver-xf86-dri-lite \
            xf86-input-synaptics \
            xf86-video-intel \
            mesa-dri \
-           mesa-dri-driver-i915"
+           mesa-dri-driver-i965"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 
-- 
1.7.2


