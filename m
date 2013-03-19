Return-Path: <laurentiu.palcu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97216E006D6
	for <poky@yoctoproject.org>; Tue, 19 Mar 2013 09:29:57 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Mar 2013 09:29:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,872,1355126400"; d="scan'208";a="308920395"
Received: from lpalcu-linux.rb.intel.com (HELO localhost.localdomain)
	([10.237.105.165])
	by fmsmga002.fm.intel.com with ESMTP; 19 Mar 2013 09:29:54 -0700
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 19 Mar 2013 18:29:50 +0200
Message-Id: <1363710591-32021-3-git-send-email-laurentiu.palcu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1363710591-32021-1-git-send-email-laurentiu.palcu@intel.com>
References: <1363710591-32021-1-git-send-email-laurentiu.palcu@intel.com>
Subject: [PATCH 2/3] atom-pc.conf: replace mesa-dri with mesa
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Mar 2013 16:29:57 -0000

This is needed since the mesa-dri recipes in oe-core got renamed to just
mesa.

[YOCTO #3385]

Signed-off-by: Laurentiu Palcu <laurentiu.palcu@intel.com>
---
 meta-yocto-bsp/conf/machine/atom-pc.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/atom-pc.conf b/meta-yocto-bsp/conf/machine/atom-pc.conf
index e97b173..b1c2ae1 100644
--- a/meta-yocto-bsp/conf/machine/atom-pc.conf
+++ b/meta-yocto-bsp/conf/machine/atom-pc.conf
@@ -19,7 +19,7 @@ XSERVER ?= "xserver-xorg \
            xf86-input-evdev \
            xf86-input-synaptics \
            xf86-video-intel \
-           mesa-dri-driver-i915"
+           mesa-driver-i915"
 
 #MACHINE_EXTRA_RDEPENDS = "rt2860"
 
-- 
1.7.9.5


