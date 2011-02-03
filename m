Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 761C04C800A3
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 13:43:44 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 03 Feb 2011 11:43:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,421,1291622400"; d="scan'208";a="383840351"
Received: from doubt.jf.intel.com (HELO localhost) ([10.24.5.197])
	by azsmga001.ch.intel.com with ESMTP; 03 Feb 2011 11:43:43 -0800
Message-Id: <4b95de17b587caf8e284658df91ef345c829471e.1296762098.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1296762098.git.dvhart@linux.intel.com>
References: <cover.1296762098.git.dvhart@linux.intel.com>
Old-Date: Tue, 1 Feb 2011 08:24:48 -0800
Date: Thu, 03 Feb 2011 11:43:49 -0800
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH] beagleboard: set kernel provider to linux-yocto (2.6.37)
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
X-List-Received-Date: Thu, 03 Feb 2011 19:43:44 -0000

From: Darren Hart <dvhart@linux.intel.com>

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/beagle
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/beagle

Thanks,
    Darren Hart <dvhart@linux.intel.com>

Support has been added for basic Beagleboard xM functionality,
including networking, to the linux-yocto kernel repository.
Tested on the Beagleboard xM.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/conf/machine/beagleboard.conf           |    2 +-
 meta/recipes-kernel/linux/linux-yocto_git.bb |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/conf/machine/beagleboard.conf b/meta/conf/machine/beagleboard.conf
index f21638c..04947c0 100644
--- a/meta/conf/machine/beagleboard.conf
+++ b/meta/conf/machine/beagleboard.conf
@@ -24,7 +24,7 @@ EXTRA_IMAGECMD_jffs2 = "-lnp "
 # Guesswork
 SERIAL_CONSOLE = "115200 ttyO2"
 
-PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-stable"
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 
 KERNEL_IMAGETYPE = "uImage"
diff --git a/meta/recipes-kernel/linux/linux-yocto_git.bb b/meta/recipes-kernel/linux/linux-yocto_git.bb
index 5f126b3..cc52397 100644
--- a/meta/recipes-kernel/linux/linux-yocto_git.bb
+++ b/meta/recipes-kernel/linux/linux-yocto_git.bb
@@ -20,7 +20,7 @@ SRCREV_FORMAT = "meta_machine"
 SRC_URI = "git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta \
            file://tools-perf-no-scripting.patch"
 
-COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|mpc8315e-rdb|routerstationpro)"
+COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|mpc8315e-rdb|routerstationpro|beagleboard)"
 
 # Functionality flags
 KERNEL_REVISION_CHECKING ?= "t"
-- 
1.7.1


