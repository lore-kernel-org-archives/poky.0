Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id E8E124C80A8C
	for <poky@yoctoproject.org>; Wed, 23 Feb 2011 23:42:47 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 23 Feb 2011 21:42:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,215,1297065600"; d="scan'208";a="890730021"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 23 Feb 2011 21:42:46 -0800
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org
Date: Thu, 24 Feb 2011 13:47:47 +0800
Message-Id: <c9e04826e5800e0d378ac2fd57c5cbb6a595ae11.1298526181.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1298526181.git.ke.yu@intel.com>
References: <cover.1298526181.git.ke.yu@intel.com>
Subject: [PATCH 1/1] sugarbay.conf: add mesa library to fix BUG 727
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
X-List-Received-Date: Thu, 24 Feb 2011 05:42:48 -0000

mesa lib is required for sugarbuy 3D application, so add it in the BSP config.

this fix [BUGID #727]

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta-sugarbay/conf/machine/sugarbay.conf |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index 626131d..14a4aa1 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -26,7 +26,9 @@ XSERVER ?= "xserver-xf86-dri-lite \
            xf86-input-keyboard \
            xf86-input-evdev \
            xf86-input-synaptics \
-           xf86-video-intel"
+           xf86-video-intel \
+           mesa-dri \
+           mesa-dri-driver-i915"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 
-- 
1.7.0.4


