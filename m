Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 765EB4C81110
	for <poky@yoctoproject.org>; Tue, 11 Jan 2011 00:06:04 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 10 Jan 2011 22:06:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,305,1291622400"; d="scan'208";a="876311852"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga001.fm.intel.com with ESMTP; 10 Jan 2011 22:06:03 -0800
Message-Id: <cover.1294726280.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Tue, 11 Jan 2011 14:11:20 +0800
Date: Tue, 11 Jan 2011 14:18:32 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/3][RFC] Machine specific sysroot implementation
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
X-List-Received-Date: Tue, 11 Jan 2011 06:06:04 -0000

Hi Richard,

This RFC is the third version of machine specific sysroot implementation.
Please help to review.

Testings could pass for qemuppc and mpc8315d-rdb. 

However if modify emenlow architecture to be "core2" and test builds for atom-pc and emenlow, it failed due to an libtool sysroot issue, which is stated in another email. But I think we can have a review of the patchset first.

After the libtool sysroot support is enabled, I will test again for atom-pc and emenlow.

Changes from v2:
1) Use the v1 approach to add ${MACHINE} into stamp file, and rebase the patch against latest bitbake which did a merge with upstream. This also can avoid adding unnecessary ${MACHINE} information for native/nativesdk/crosssdk/cross-canadian task stamps.

RFC URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/mach_sysroot_v3
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/mach_sysroot_v3

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (3):
  staging: Use relative path in sysroot-destdir for target recipes
  bitbake: Introduce stamp-extra-info into build stamp file
  bitbake: machine specific sysroots implementation

 bitbake/lib/bb/build.py                            |   10 ++-----
 bitbake/lib/bb/cache.py                            |   19 ++++++++++++-
 bitbake/lib/bb/runqueue.py                         |   12 ++++----
 bitbake/lib/bb/siggen.py                           |   20 ++++++++++++-
 meta/classes/binconfig.bbclass                     |    6 ++--
 meta/classes/cross-canadian.bbclass                |    5 +++-
 meta/classes/cross.bbclass                         |    5 +++
 meta/classes/crosssdk.bbclass                      |    2 +
 meta/classes/kernel.bbclass                        |    2 +-
 meta/classes/native.bbclass                        |    4 +++
 meta/classes/nativesdk.bbclass                     |    7 ++++-
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
 24 files changed, 119 insertions(+), 61 deletions(-)


