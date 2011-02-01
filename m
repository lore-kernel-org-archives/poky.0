Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0F4B44C8007E
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 12:27:14 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 01 Feb 2011 10:27:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,411,1291622400"; d="scan'208";a="598518760"
Received: from nbuild1.sc.intel.com (HELO localhost) ([172.25.110.36])
	by orsmga002.jf.intel.com with ESMTP; 01 Feb 2011 10:27:14 -0800
Message-Id: <cover.1296560850.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 1 Feb 2011 03:47:30 -0800
Date: Tue, 01 Feb 2011  3:57:21 -0800
To: poky@yoctoproject.org
CC: 
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 0/4] [PATCH 0/4] mklibs library optimization for all arches
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
X-List-Received-Date: Tue, 01 Feb 2011 18:27:15 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

  I tested this with poky-image-minimal and I see some disk space savings by
using the mklibs library optimizations. (76MB rootfs became 75MB)

  The minimal poky image had 106 dynamically linked executables. And the
footprint savings will go up as number of dynamically linked executables in
an image decrease.

  I did not see any improvement on mips and ppc, but could see the footprint
improvement on x86, arm & x86-64.

  Also checked that the executables were not broken after the mklibs 
optimization.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/mklibs
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/mklibs

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (4):
  distro_tracking: update latest upstream versions
  elfutils: add a missing depedancy
  mklibs-native: new recipe for optimizing size of library files
  image-mklibs.bbclass: add the library optimization functionality

 meta/classes/image-mklibs.bbclass                  |   57 ++++++++++++++++++++
 .../conf/distro/include/distro_tracking_fields.inc |   43 ++++++++-------
 meta/conf/local.conf.sample                        |    2 +
 meta/recipes-devtools/elfutils/elfutils_0.148.bb   |    3 +-
 .../mklibs/files/ac_init_fix.patch                 |   17 ++++++
 .../mklibs/mklibs-native_0.1.31.bb                 |   23 ++++++++
 6 files changed, 124 insertions(+), 21 deletions(-)
 create mode 100644 meta/classes/image-mklibs.bbclass
 create mode 100644 meta/recipes-devtools/mklibs/files/ac_init_fix.patch
 create mode 100644 meta/recipes-devtools/mklibs/mklibs-native_0.1.31.bb

-- 
1.7.2.2


