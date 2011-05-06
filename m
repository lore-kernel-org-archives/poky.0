Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id F1DB34C80104
	for <poky@yoctoproject.org>; Fri,  6 May 2011 14:28:25 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 May 2011 12:28:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,327,1301900400"; d="scan'208";a="431916572"
Received: from unknown (HELO localhost) ([10.255.12.39])
	by azsmga001.ch.intel.com with ESMTP; 06 May 2011 12:28:24 -0700
Message-Id: <59d2c786f63843c31a236080fbd1b7e5402cc111.1304710036.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1304710036.git.dvhart@linux.intel.com>
References: <cover.1304710036.git.dvhart@linux.intel.com>
Old-Date: Fri, 6 May 2011 12:12:50 -0700
Date: Fri, 06 May 2011 12:28:26 -0700
To: poky@yoctoproject.org
CC: 
From: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH] atom-pc: use linux-yocto (2.6.37) kernel
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
X-List-Received-Date: Fri, 06 May 2011 19:28:26 -0000

From: Darren Hart <dvhart@linux.intel.com>

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/atom-pc
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/atom-pc

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (1):
  atom-pc: use linux-yocto (2.6.37) kernel

 meta-yocto/conf/machine/atom-pc.conf               |    2 +-
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)


Tested boot, network, sato desktop, amixer, and audio playback on a Toshiba
NB305 netbook.

Depends on "linux-yocto: move non-core machines to meta-yocto" from
Bruce Ashfield to the yocto list:
Message-Id: <a258388e5b8d134009bb37cfc9f6b1c1dd8ba94e.1304707341.git.bruce.ashfield@windriver.com>

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-yocto/conf/machine/atom-pc.conf               |    2 +-
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/machine/atom-pc.conf b/meta-yocto/conf/machine/atom-pc.conf
index b94deb2..5220efe 100644
--- a/meta-yocto/conf/machine/atom-pc.conf
+++ b/meta-yocto/conf/machine/atom-pc.conf
@@ -12,7 +12,7 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 wifi \
 
 KERNEL_IMAGETYPE = "bzImage"
 
-PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-stable"
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 #PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend
index e4aa7fd..3f2d795 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -9,4 +9,4 @@ SRCREV_machine_routerstationpro = "95ca94d2e71ca2db6822a37a7f575fa79c3d05d0"
 SRCREV_machine_mpc8315e-rdb = "53c800c244e73d81d2832f6da306eeae3b09e5dc"
 SRCREV_machine_beagleboard = "b906f358fd404a1e74a961f25079274e0d933ee1"
 
-COMPATIBLE_MACHINE = "(mpc8315e-rdb|routerstationpro|beagleboard)"
+COMPATIBLE_MACHINE = "(mpc8315e-rdb|routerstationpro|beagleboard|atom-pc)"
-- 
1.7.1


