Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B7FFD4C80104
	for <poky@yoctoproject.org>; Fri,  6 May 2011 13:47:01 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 May 2011 11:47:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,327,1301900400"; d="scan'208";a="743432170"
Received: from unknown (HELO localhost) ([10.255.12.39])
	by orsmga001.jf.intel.com with ESMTP; 06 May 2011 11:47:01 -0700
Message-Id: <f84aab2a71b49321c4975325b17767b3ca6abbcc.1304707415.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1304707415.git.dvhart@linux.intel.com>
References: <cover.1304707415.git.dvhart@linux.intel.com>
Old-Date: Fri, 6 May 2011 11:39:02 -0700
Date: Fri, 06 May 2011 11:47:04 -0700
To: poky@yoctoproject.org
CC: 
From: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH] u-boot: correct COPYING MD5SUM
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
X-List-Received-Date: Fri, 06 May 2011 18:47:01 -0000

From: Darren Hart <dvhart@linux.intel.com>

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/u-boot
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/u-boot

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (1):
  u-boot: correct COPYING MD5SUM

 meta/recipes-bsp/uboot/u-boot_git.bb |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)


Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/recipes-bsp/uboot/u-boot_git.bb |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-bsp/uboot/u-boot_git.bb b/meta/recipes-bsp/uboot/u-boot_git.bb
index 66e7898..d8c196a 100644
--- a/meta/recipes-bsp/uboot/u-boot_git.bb
+++ b/meta/recipes-bsp/uboot/u-boot_git.bb
@@ -1,14 +1,14 @@
 require u-boot.inc
 
 LICENSE = "GPLv2+"
-LIC_FILES_CHKSUM = "file://COPYING;md5=1707d6db1d42237583f50183a5651ecb \
+LIC_FILES_CHKSUM = "file://COPYING;md5=4c6cde5df68eff615d36789dc18edd3b \
                     file://README;beginline=1;endline=22;md5=3a00ef51d3fc96e9d6c1bc4708ccd3b5"
 
 FILESDIR = "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/u-boot-git/${MACHINE}"
 
 SRCREV = "v2010.12"
 PV = "v2010.12+${PR}+git${SRCPV}"
-PR="r1"
+PR="r2"
 
 SRC_URI = "git://git.denx.de/u-boot.git;branch=master;protocol=git"
 
-- 
1.7.1


