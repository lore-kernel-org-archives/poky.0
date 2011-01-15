Return-Path: <dexuan.cui@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id DCEE74C81003
	for <poky@yoctoproject.org>; Sat, 15 Jan 2011 05:24:00 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Jan 2011 03:24:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,326,1291622400"; d="scan'208";a="375040392"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by azsmga001.ch.intel.com with ESMTP; 15 Jan 2011 03:23:59 -0800
Message-Id: <cover.1295089968.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Sat, 15 Jan 2011 19:12:48 +0800
Date: Sat, 15 Jan 2011 19:23:32 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/2] upgrade libc-package.bbclass; add libgcc
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
X-List-Received-Date: Sat, 15 Jan 2011 11:24:01 -0000

I tested on qemux86 and qemumips: bitbake poky-image-sdk and
meta-toolchain-sdk can build fine.

The patches are straightforward and should not incur regression.
Anyway, please review them carefully in case I made mistakes. :-)

thanks,
-- Dexuan

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dcui/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/master

Thanks,
    Dexuan Cui <dexuan.cui@intel.com>
---


Dexuan Cui (2):
  libgcc: use the new recipe (rather than gcc-runtime) to install
    libgcc_s.so* and crt*.o
  libc-package.bbclass: should not rm scsi/*.h

 meta/classes/libc-package.bbclass                  |    3 -
 meta/conf/distro/include/poky-default.inc          |    1 +
 .../recipes-devtools/gcc/gcc-configure-runtime.inc |   16 +-------
 meta/recipes-devtools/gcc/gcc-package-runtime.inc  |    8 ----
 meta/recipes-devtools/gcc/gcc-runtime_4.3.3.bb     |    2 +-
 meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb     |    2 +-
 meta/recipes-devtools/gcc/libgcc_4.5.1.bb          |   43 ++++++++++++++++++++
 7 files changed, 47 insertions(+), 28 deletions(-)
 create mode 100644 meta/recipes-devtools/gcc/libgcc_4.5.1.bb

-- 
1.7.2


