Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id A07624C810AE
	for <poky@yoctoproject.org>; Wed,  1 Dec 2010 10:46:24 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Dec 2010 08:46:24 -0800
Message-Id: <849307$aj3uth@azsmga001.ch.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,284,1288594800"; d="scan'208";a="355597238"
Received: from unknown (HELO localhost) ([10.255.13.244])
	by azsmga001.ch.intel.com with ESMTP; 01 Dec 2010 08:46:23 -0800
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Date: Wed, 24 Nov 2010 11:08:58 -0800
To: poky@yoctoproject.org,tom.zanussi@intel.com,bruce.ashfield@windriver.com
Subject: [PATCH 3/3] beagleboard-linaro machine: use linaro gcc for this machine
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
X-List-Received-Date: Wed, 01 Dec 2010 16:46:24 -0000

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 conf/machine/beagleboard-linaro.conf |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/conf/machine/beagleboard-linaro.conf b/conf/machine/beagleboard-linaro.conf
index e2bc8cd..08391de 100644
--- a/conf/machine/beagleboard-linaro.conf
+++ b/conf/machine/beagleboard-linaro.conf
@@ -23,6 +23,8 @@ EXTRA_IMAGECMD_jffs2 = "-lnp "
 SERIAL_CONSOLE = "115200 ttyS2"
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-linaro-2.6.35"
+GCCVERSION = "4.5.1.linaro"
+SDKGCCVERSION = "4.5.1.linaro"
 
 KERNEL_IMAGETYPE = "uImage"
 
-- 
1.7.1


