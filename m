Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9444A4C811DD
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 16:02:12 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Jan 2011 14:02:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,324,1291622400"; d="scan'208";a="877576275"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga001.fm.intel.com with ESMTP; 14 Jan 2011 14:01:11 -0800
Message-Id: <cover.1295042138.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Sat, 15 Jan 2011 05:55:38 +0800
Date: Sat, 15 Jan 2011  6:14:30 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/5][RFC v4] Machine specific sysroot implementation
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
X-List-Received-Date: Fri, 14 Jan 2011 22:02:12 -0000

Hi Richard,

This RFC is the 4th version of machine specific sysroot implementation.
Please help to review.

I tested the build of "poky-image-sdk" and "meta-toolchain-sdk" for atom-pc and emenlow in the same build directory if change emenlow's architecture to core2, and the test could be passed.

Changes from v3:
1) Make bb.build.stampfile() to be the main entry point so most users will be converted to use that, thus the datacache vs d handling code can be only contained in stamp_internal() which calls into siggen. Besides, using True/False to replace 1/0 in the patch.

2) When doing populate_sysroot, some la files need to be relocated. 0002 patch changes the relocation handling in destination dirs ("sysroot-destdirs" dirs) instead of source ("image" dirs). This ensures that, contents in "image" directory are not changed and when populating the second machine, the "sed" command can still find those key words.

3) Change emenlow's BASE_PACKAGE_ARCH and PACKAGE_EXTRA_ARCHS to be core2.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/mach_sysroot_v4
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/mach_sysroot_v4

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (5):
  staging: Use relative path in sysroot-destdir for target recipes
  staging: relocate *.la paths in destination dirs
  bitbake: Introduce stamp-extra-info into build stamp file
  bitbake: machine specific sysroots implementation
  emenlow: Change PACKAGE_EXTRA_ARCHS and BASE_PACKAGE_ARCH to core2

 bitbake/lib/bb/build.py                            |   14 +++-----
 bitbake/lib/bb/cache.py                            |   19 +++++++++-
 bitbake/lib/bb/runqueue.py                         |   12 +++---
 bitbake/lib/bb/siggen.py                           |   20 +++++++++-
 meta-emenlow/conf/machine/emenlow.conf             |    6 ++--
 meta/classes/base.bbclass                          |    2 +-
 meta/classes/binconfig.bbclass                     |    6 ++--
 meta/classes/cross-canadian.bbclass                |    5 ++-
 meta/classes/cross.bbclass                         |    5 +++
 meta/classes/crosssdk.bbclass                      |    2 +
 meta/classes/kernel.bbclass                        |    2 +-
 meta/classes/native.bbclass                        |    4 ++
 meta/classes/nativesdk.bbclass                     |    7 +++-
 meta/classes/package.bbclass                       |    1 +
 meta/classes/siteconfig.bbclass                    |   11 +++---
 meta/classes/sstate.bbclass                        |    6 ++-
 meta/classes/staging.bbclass                       |   37 +++++++++++--------
 meta/classes/toolchain-scripts.bbclass             |    4 +-
 meta/conf/bitbake.conf                             |   11 +++---
 meta/recipes-connectivity/gupnp/gupnp_0.14.0.bb    |    4 +-
 .../gcc/gcc-cross-intermediate.inc                 |    3 ++
 meta/recipes-devtools/libtool/libtool-cross_2.4.bb |    4 +-
 .../libtool/libtool-nativesdk_2.4.bb               |    4 +-
 meta/recipes-devtools/libtool/libtool_2.4.bb       |    6 ++--
 meta/recipes-gnome/gtk+/gtk+.inc                   |    4 +-
 meta/recipes-support/apr/apr_1.3.3.bb              |    2 +-
 26 files changed, 131 insertions(+), 70 deletions(-)


