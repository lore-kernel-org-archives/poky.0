Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFBDAE0157B
	for <poky@yoctoproject.org>; Tue, 27 Aug 2013 13:16:35 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Aug 2013 13:13:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,970,1367996400"; d="scan'208";a="394318732"
Received: from dvhart-mobl4.jf.intel.com (HELO localhost) ([10.7.201.55])
	by orsmga002.jf.intel.com with ESMTP; 27 Aug 2013 13:16:32 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>, Tom Zanussi <tom.zanussi@intel.com>,
	Ross Burton <ross.burton@intel.com>,
	Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Tue, 27 Aug 2013 13:16:12 -0700
Message-Id: <cover.1377634165.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [PATCH 0/3] Add genericx86-64, cleanup residual atom-pc
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
X-List-Received-Date: Tue, 27 Aug 2013 20:16:36 -0000

This new genericx86_64 BSP has been boot tested on a Lenovo x220 and a
Supermicro dual-socket Xeon 5680. Graphics and Ethernet work.

Known issue: fonts are excessively small. DPI listed as about 50. Could use some
             help here with a follow-on patch.

Untested: uClibc config (copied from genericx86 with obvious fixes for x86_64)

The following changes since commit 325ee9b5fcebe902dfea78750502d8f6667d0a97:

  gcc-4.8.inc: Allow lto to be configurable (2013-08-27 13:48:47 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib dvhart/genericx86_64
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=dvhart/genericx86_64

Darren Hart (3):
  meta-yocto-bsp: Add genericx86-64 machine
  local.conf.sample: Add genericx86-64 machine to machine list
  atom-pc: Purge straggling configuration files

 meta-yocto-bsp/conf/machine/genericx86-64.conf     | 34 ++++++++++++++++++++++
 .../{atom-pc => genericx86-64}/machconfig          |  2 +-
 .../{atom-pc => genericx86-64}/uClibc.machine      |  8 ++---
 .../{atom-pc => genericx86-64}/xorg.conf           |  0
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend |  6 +++-
 meta-yocto/conf/local.conf.sample                  |  2 +-
 6 files changed, 45 insertions(+), 7 deletions(-)
 create mode 100644 meta-yocto-bsp/conf/machine/genericx86-64.conf
 rename meta-yocto-bsp/recipes-bsp/formfactor/formfactor/{atom-pc => genericx86-64}/machconfig (97%)
 rename meta-yocto-bsp/recipes-core/uclibc/uclibc/{atom-pc => genericx86-64}/uClibc.machine (94%)
 rename meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/{atom-pc => genericx86-64}/xorg.conf (100%)

-- 
1.8.3.1


