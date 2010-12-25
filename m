Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id BA36A4C81081
	for <poky@yoctoproject.org>; Fri, 24 Dec 2010 21:06:31 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Dec 2010 19:06:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,226,1291622400"; d="scan'208";a="690580437"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga001.jf.intel.com with ESMTP; 24 Dec 2010 19:06:23 -0800
Message-Id: <cover.1293241065.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Sat, 25 Dec 2010 09:37:45 +0800
Date: Sat, 25 Dec 2010 11:15:42 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/2][RFC] Machine Specific Sysroot Implementation
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
X-List-Received-Date: Sat, 25 Dec 2010 03:06:31 -0000

Hi Richard,

This RFC implements the machine specific sysroots, please help to review. Thanks!

Take qemuppc as an example, currently the sysroot directories are something like tmp/sysroots/ppc603e-poky-linux. After implement the machine specific sysroots, the directories will be changed to tmp/sysroots/qemuppc. For native, nativesdk, cross, crosssdk, and cross-canadian, the sysroots directories keep unchanged.

This patchset is tested on qemuppc and mpc6315e-rdb, which are both powerpc architecture. I tested the build for minimal, sato, sdk, and meta-toolchain for both machines.

The patch mainly changes the following parts.

1) STAGING_DIR_TARGET and STRAGING_DIR_HOST.
Change STAGING_DIR_TARGET and STRAGING_DIR_HOST pointing to machine specific sysroots. For native, nativesdk, cross, crosssdk, and cross-canadian, we do not change their STAGING_DIR_TARGET and STRAGING_DIR_HOST.
Besides, PKG_CONFIG_DIR and STAGING_KERNEL_DIR are changd for normal recipes.

2) task stamp files.
If we have already built a machine, and then try to build another machine of the same arch, we need to re-run do_populate_sysroots (handle sysroots population) and do_package (handle shlibs). Previously the stamp file are named with task and PN, along with the architecture path. To re-run the do_populate_sysroots and do_package tasks, differentiate the two task stamp files is needed for different machines. I modified the bitbake and introduce a flag named "stamp-extra-info", which adds a "${MACHINE}" tag into the stamp name. The stamp file code logic change includes the stamp creation in normal build and stamp detection for pre-build.

3) sstate install input and output path.
Previously the sstate install path for do_populate_sysroot are input: ${SYSROOT_DESTDIR}/${STAGING_DIR} and output: ${TMPDIR}/sysroots. After implement the machine specific sysroots, both machine sysroots will be populated into ${SYSROOT_DESTDIR}/${STAGING_DIR}, like ${SYSROOT_DESTDIR}/${STAGING_DIR}/qemuppc and ${SYSROOT_DESTDIR}/${STAGING_DIR}/mpc8315e-rdb, they are two machies of one architecture. Thus when doing sstate install, the path should be one step further in order not to contain other machine files. For normal recipes, the input and output path are changed to ${SYSROOT_DESTDIR}/${STAGING_DIR}/${MACHINE} and ${TMPDIR}/sysroots/${MACHINE}. For cross, crosssdk, native, native sdk, the input and output path are changed to ${SYSROOT_DESTDIR}/${STAGING_DIR}/${BASEPKG_HOST_SYS} and ${TMPDIR}/sysroots/${BASEPKG_HOST_SYS}. For cross-canadian, the input and output path are changed to ${SYSROOT_DESTDIR}/${STAGING_DIR}/${HOST_SYS}-nativesdk and ${TMPDIR}/sysroots/${HOST_SYS}-nativesdk.

4) siteconfig path.
When doing site configuration, we need to separate the site config path for different machines since one machine may adopt the cache file of another machine and thus errors will happen. So we create the directories for site config like: ${WORKDIR}/site_config_${MACHINE}.

5) sstate stamp file.
Since each machine has its own sysroots, some prebuild results could not be shared since sysroots are machine specific. Thus we need to modify the sstate stamps to be machine specific.

6) gcc-cross-intermediate.
Gcc-cross-intermediate will install libgcc_s.so and libgcc_s.so.1 into target sysroots. Because we have changed the sstate input and output path to be machine specific, we need to manually install the special files into target sysroots.

7) toolchain scripts.
Change the environment path to point to machine specific sysroots in toolchain scripts bbclass.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/mach_sysroot
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/mach_sysroot

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (2):
  bitbake: Introduce stamp-extra-info into build stamp file
  bitbake: machine specific sysroots implementation

 bitbake/lib/bb/build.py                            |   13 ++++++++++++-
 bitbake/lib/bb/cache.py                            |    5 ++++-
 bitbake/lib/bb/runqueue.py                         |    6 +++---
 bitbake/lib/bb/siggen.py                           |    7 +++++--
 meta/classes/cross-canadian.bbclass                |    4 +++-
 meta/classes/cross.bbclass                         |    8 ++++++++
 meta/classes/native.bbclass                        |    3 +++
 meta/classes/nativesdk.bbclass                     |    5 +++++
 meta/classes/package.bbclass                       |    1 +
 meta/classes/siteconfig.bbclass                    |    6 +++---
 meta/classes/sstate.bbclass                        |    4 ++--
 meta/classes/staging.bbclass                       |    9 +++++++--
 meta/classes/toolchain-scripts.bbclass             |    4 ++--
 meta/conf/bitbake.conf                             |   10 +++++-----
 .../gcc/gcc-cross-intermediate.inc                 |    4 ++--
 .../gcc/gcc-cross-intermediate_4.5.1.bb            |    2 +-
 .../gcc/gcc-cross-intermediate_csl-arm-2008q1.bb   |    1 +
 17 files changed, 67 insertions(+), 25 deletions(-)


