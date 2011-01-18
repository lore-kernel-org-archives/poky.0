Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 21CAF4C80BEF
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 07:58:11 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 18 Jan 2011 05:58:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,339,1291622400"; d="scan'208";a="648196407"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by fmsmga002.fm.intel.com with ESMTP; 18 Jan 2011 05:58:10 -0800
Message-Id: <cover.1295359004.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Tue, 18 Jan 2011 21:56:44 +0800
Date: Tue, 18 Jan 2011 21:57:37 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC: enhance toolchain bootstrap process: v3: 0/7] enhance the toolchain bootstrap process
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
X-List-Received-Date: Tue, 18 Jan 2011 13:58:11 -0000

Hi Richard and all,

The patch set enhances the toolchain bootstrap process by installing a separate sysroot for each step of the process.
The purpose is to avoid file overwriting in the current global sysroot, namely, to fix Bug 239: http://bugzilla.pokylinux.org/show_bug.cgi?id=239


The basic idea is straightforward:
1) For gcc-cross-initial and -intermediate, by changing MULTIMACH_TARGET_SYS to install the files into new locations;
2) Fix the build of eglibc-initial, eglibc by using the appropriate compilers, libs, headers;
3) Also make proper changes for the crosssdk/nativesdk version.

I've split all the changes into small git commits and each commit should be basically self-explanatory. :-)

Please review the commits and comment. Thanks!

Test Results:
I've tested building poky-image-sdk on various qemu targets: the qemu target can boot fine.
I'm also testing building meta-toolchain-sdk -- not finished yet, but I think it should be fine because "bitbake gcc-runtime-nativesdk" and "bitbake gcc-cross-canadian-mips" can succeed.
I'll be doing more tests.

TODO:
1) changes to gcc-4.3.3 not completely finished (Should we still support gcc-4.3.3 since we have gcc-4.5.1?)
   However I think I should be able to add the missing changes soon, supposing here 4.3.3 and 4.5.1 have no big difference.
2) do more tests against glibc rather than eglibc.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dcui/tcbp-v3
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/tcbp-v3

Thanks,
    Dexuan Cui <dexuan.cui@intel.com>
---


Dexuan Cui (7):
  sstate.bbclass: allow each step of toolchain bootstrap processes to
    do populate_sysroot independently
  cross.bbclass: make MULTIMACH_TARGET_SYS adjustable for bindir,
    libdir, libexecdir
  gcc-cross-initial, gcc-crosssdk-initial: change CROSS_TARGET_SYS_DIR
    and insall into new locations
  eglibc-initial, eglibc-initial-nativesdk: install into individual
    sysroots
  gcc-cross-intermediate, gcc-crosssdk-intermediate: change
    CROSS_TARGET_SYS_DIR and insall into new locations
  cross.bbclass: modify sysroot_stage_all to allow
    gcc-{cross,crossdk}-intermediate to populate the libgcc_s.so* files
  eglibc, eglibc-nativesdk: fix the build due to changes to
    eglibc-initial and gcc-cross-intermediate

 meta/classes/cross.bbclass                         |   17 +++++---
 meta/classes/sstate.bbclass                        |   24 ------------
 meta/recipes-core/eglibc/eglibc-initial.inc        |   10 +++++
 meta/recipes-core/eglibc/eglibc.inc                |    9 ++++
 meta/recipes-core/eglibc/eglibc_2.12.bb            |    8 +---
 .../fix_CPPFLAGS_LDFLAGS_FOR_TARGET.patch          |   40 ++++++++++++++++++++
 meta/recipes-devtools/gcc/gcc-cross-initial.inc    |    2 +
 .../gcc/gcc-cross-initial_4.3.3.bb                 |    2 +-
 .../gcc/gcc-cross-initial_4.5.1.bb                 |    2 +-
 .../gcc/gcc-cross-intermediate.inc                 |   32 ++++++++++++++-
 .../gcc/gcc-cross-intermediate_4.3.3.bb            |    2 +-
 .../gcc/gcc-cross-intermediate_4.5.1.bb            |    2 +-
 .../gcc/gcc-crosssdk-initial_4.3.3.bb              |    2 +-
 .../gcc/gcc-crosssdk-initial_4.5.1.bb              |    2 +-
 .../gcc/gcc-crosssdk-intermediate.inc              |    3 +
 .../gcc/gcc-crosssdk-intermediate_4.3.3.bb         |    2 +-
 .../gcc/gcc-crosssdk-intermediate_4.5.1.bb         |    2 +-
 17 files changed, 113 insertions(+), 48 deletions(-)
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1/fix_CPPFLAGS_LDFLAGS_FOR_TARGET.patch

-- 
1.7.2


