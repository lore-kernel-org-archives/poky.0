Return-Path: <radu.moisan@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D04EE00740
	for <poky@yoctoproject.org>; Thu,  7 Mar 2013 08:46:38 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 07 Mar 2013 08:46:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,803,1355126400"; d="scan'208";a="210557813"
Received: from dell-desktop (HELO localhost.localdomain) ([10.237.105.59])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Mar 2013 08:46:36 -0800
From: Radu Moisan <radu.moisan@intel.com>
To: poky@yoctoproject.org
Date: Thu,  7 Mar 2013 18:46:44 +0200
Message-Id: <1362674804-1689-1-git-send-email-radu.moisan@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] busybox.bbappend: Upgrade to v1.21.0
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
X-List-Received-Date: Thu, 07 Mar 2013 16:46:38 -0000

Signed-off-by: Radu Moisan <radu.moisan@intel.com>
---
 .../poky-tiny/defconfig                            |    0
 ...box_1.20.2.bbappend => busybox_1.21.0.bbappend} |    0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename meta-yocto/recipes-core/busybox/{busybox-1.20.2 => busybox-1.21.0}/poky-tiny/defconfig (100%)
 rename meta-yocto/recipes-core/busybox/{busybox_1.20.2.bbappend => busybox_1.21.0.bbappend} (100%)

diff --git a/meta-yocto/recipes-core/busybox/busybox-1.20.2/poky-tiny/defconfig b/meta-yocto/recipes-core/busybox/busybox-1.21.0/poky-tiny/defconfig
similarity index 100%
rename from meta-yocto/recipes-core/busybox/busybox-1.20.2/poky-tiny/defconfig
rename to meta-yocto/recipes-core/busybox/busybox-1.21.0/poky-tiny/defconfig
diff --git a/meta-yocto/recipes-core/busybox/busybox_1.20.2.bbappend b/meta-yocto/recipes-core/busybox/busybox_1.21.0.bbappend
similarity index 100%
rename from meta-yocto/recipes-core/busybox/busybox_1.20.2.bbappend
rename to meta-yocto/recipes-core/busybox/busybox_1.21.0.bbappend
-- 
1.7.9.5


