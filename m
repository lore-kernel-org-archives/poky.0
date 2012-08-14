Return-Path: <radu.moisan@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CE34E00346
	for <poky@yoctoproject.org>; Tue, 14 Aug 2012 04:37:22 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 14 Aug 2012 04:37:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,766,1336374000"; d="scan'208";a="200595635"
Received: from dell-desktop (HELO localhost.localdomain) ([10.237.105.32])
	by fmsmga001.fm.intel.com with ESMTP; 14 Aug 2012 04:37:20 -0700
From: Radu Moisan <radu.moisan@intel.com>
To: poky@yoctoproject.org
Date: Tue, 14 Aug 2012 14:39:24 +0300
Message-Id: <1344944364-2240-1-git-send-email-radu.moisan@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] busybox: Upgrade to upstream 1.20.2
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
X-List-Received-Date: Tue, 14 Aug 2012 11:37:22 -0000

Signed-off-by: Radu Moisan <radu.moisan@intel.com>
---
 .../poky-tiny/defconfig                            |    0
 ...box_1.19.4.bbappend => busybox_1.20.2.bbappend} |    0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename meta-yocto/recipes-core/busybox/{busybox-1.19.4 => busybox-1.20.2}/poky-tiny/defconfig (100%)
 rename meta-yocto/recipes-core/busybox/{busybox_1.19.4.bbappend => busybox_1.20.2.bbappend} (100%)

diff --git a/meta-yocto/recipes-core/busybox/busybox-1.19.4/poky-tiny/defconfig b/meta-yocto/recipes-core/busybox/busybox-1.20.2/poky-tiny/defconfig
similarity index 100%
rename from meta-yocto/recipes-core/busybox/busybox-1.19.4/poky-tiny/defconfig
rename to meta-yocto/recipes-core/busybox/busybox-1.20.2/poky-tiny/defconfig
diff --git a/meta-yocto/recipes-core/busybox/busybox_1.19.4.bbappend b/meta-yocto/recipes-core/busybox/busybox_1.20.2.bbappend
similarity index 100%
rename from meta-yocto/recipes-core/busybox/busybox_1.19.4.bbappend
rename to meta-yocto/recipes-core/busybox/busybox_1.20.2.bbappend
-- 
1.7.9.5


