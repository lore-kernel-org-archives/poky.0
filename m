Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 03B3B4C8108C
	for <poky@yoctoproject.org>; Sat,  8 Jan 2011 09:40:48 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 08 Jan 2011 07:40:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,293,1291622400"; d="scan'208";a="591103770"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga002.jf.intel.com with ESMTP; 08 Jan 2011 07:40:47 -0800
Message-Id: <cover.1294501386.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Sat, 8 Jan 2011 23:43:06 +0800
Date: Sat, 08 Jan 2011 23:52:41 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/3][RFC v2] Machine specific sysroot implementation
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
X-List-Received-Date: Sat, 08 Jan 2011 15:40:49 -0000

Hi Richard,

This RFC is the second version of machine specific sysroot implementation.
Please help to review.

I tested the patchset with a full build of poky-image-sdk and meta-toolchain-sdk for both qemuppc and mpc8315e-rdb machines that are powerpc architecture.

Changes from v1:
1) Re-implementation the mechanism adding ${MACHINE} into stamp file based on the latest bitbake. Also this can avoid adding unnecessary ${MACHINE} information for native/nativesdk/crosssdk/cross-canadian task stamps.
2) Change staging directories layout. Use relative path in sysroot-destdir for target recipes.
3) gcc-cross-intermediate will populate files into two sysroots. The modification in v1 patchset is incorrect. This version uses two sstate input/output dirs to handle it.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/mach_sysroot_v2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/mach_sysroot_v2

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (3):
  staging: Use relative path in sysroot-destdir for target recipes
  bitbake: Introduce stamp-extra-info into build stamp file
  bitbake: machine specific sysroots implementation

 bitbake/lib/bb/siggen.py                           |   14 +++++++++-
 meta/classes/binconfig.bbclass                     |    6 ++--
 meta/classes/cross-canadian.bbclass                |    3 +-
 meta/classes/cross.bbclass                         |    5 +++
 meta/classes/kernel.bbclass                        |    2 +-
 meta/classes/native.bbclass                        |    2 +
 meta/classes/nativesdk.bbclass                     |    6 +++-
 meta/classes/package.bbclass                       |    1 +
 meta/classes/siteconfig.bbclass                    |   11 ++++---
 meta/classes/sstate.bbclass                        |    6 +++-
 meta/classes/staging.bbclass                       |   28 ++++++++++---------
 meta/classes/toolchain-scripts.bbclass             |    4 +-
 meta/conf/bitbake.conf                             |   11 ++++---
 meta/recipes-connectivity/gupnp/gupnp_0.14.0.bb    |    4 +-
 .../gcc/gcc-cross-intermediate.inc                 |    3 ++
 meta/recipes-devtools/libtool/libtool-cross_2.4.bb |    4 +-
 .../libtool/libtool-nativesdk_2.4.bb               |    4 +-
 meta/recipes-devtools/libtool/libtool_2.4.bb       |    6 ++--
 meta/recipes-gnome/gtk+/gtk+.inc                   |    4 +-
 meta/recipes-support/apr/apr_1.3.3.bb              |    2 +-
 20 files changed, 79 insertions(+), 47 deletions(-)


