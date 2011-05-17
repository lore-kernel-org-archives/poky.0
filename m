Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 23E0B4C80FD4
	for <poky@yoctoproject.org>; Tue, 17 May 2011 17:29:57 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 17 May 2011 15:29:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,227,1304319600"; 
   d="scan'208";a="3617287"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga001.fm.intel.com with ESMTP; 17 May 2011 15:29:52 -0700
Message-Id: <cover.1305671306.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 17 May 2011 15:28:26 -0700
Date: Tue, 17 May 2011 15:29:52 -0700
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 0/1] patch upstream status and cleaning
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
X-List-Received-Date: Tue, 17 May 2011 22:29:57 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

This commit removes unused patches
and updates the patch-upstream status of these recipes

eglibc, glibc, gcc, libtool, m4, python


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/misc
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (1):
  gcc: remove unused patches and move patches in proper dir

 .../eglibc/eglibc-2.12/IO-acquire-lock-fix.patch   |    2 +
 .../eglibc/eglibc-2.12/armv4t-interworking.patch   |   78 -----
 .../eglibc-svn-arm-lowlevellock-include-tls.patch  |    2 +
 .../eglibc/eglibc-2.12/fix-for-make-3.82.diff      |    2 +
 .../eglibc/eglibc-2.12/ld-search-order.patch       |    2 +
 .../eglibc/eglibc-2.12/mips-rld-map-check.patch    |    2 +
 .../eglibc-2.12/shorten-build-commands.patch       |    2 +
 .../eglibc/eglibc-2.13/armv4t-interworking.patch   |   82 ------
 .../eglibc/eglibc-2.13/ld-search-order.patch       |    2 +
 .../eglibc/eglibc-2.13/mips-rld-map-check.patch    |    2 +
 .../eglibc-2.13/shorten-build-commands.patch       |    2 +
 .../eglibc/ldconfig-native-2.12.1/32and64bit.patch |    8 +
 .../endian-ness_handling.patch                     |    5 +-
 .../eglibc/ldconfig-native-2.12.1/flag_fix.patch   |    2 +
 .../eglibc/ldconfig-native-2.12.1/ldconfig.patch   |    4 +
 .../ldconfig_aux-cache_path_fix.patch              |    2 +
 .../glibc/glibc-2.10.1/arm-check-pf.patch          |   16 -
 .../arm-lowlevellock-include-tls.patch             |   14 -
 .../glibc-2.9-enable-binutils-2.2.patch            |    2 +
 .../glibc/glibc-2.10.1/glibc-check_pf.patch        |    2 +
 .../glibc/glibc-2.10.1/local-args6.diff            |   14 -
 .../files/canadian-build-modules-configure.patch   |   22 --
 .../gcc/files/gcc-4.3.3-fix-EXTRA_BUILD.patch      |   12 -
 .../gcc/files/gcc-4.3.x-fix-EXTRA_BUILD.patch      |   13 -
 .../gcc/files/gcc-posix-open-fix.patch             |   11 -
 .../gcc/files/gcc4-mtune-compat.patch              |   14 -
 .../gcc/files/gfortran-4.3.x.patch                 |   40 ---
 .../gcc/files/pr22133-mingw-path-fixup.patch       |   29 --
 .../gcc/files/pr33281-mingw-host-fragment.patch    |   38 ---
 ...35916-mingw-__USE_MINGW_ACCESS-everywhere.patch |   13 -
 .../fedora/gcc43-c++-builtin-redecl.patch          |    1 +
 .../gcc/gcc-4.5.1/fedora/gcc43-cpp-pragma.patch    |    1 +
 .../gcc/gcc-4.5.1/fedora/gcc43-i386-libgomp.patch  |    1 +
 .../gcc-4.5.1/fedora/gcc43-ia64-libunwind.patch    |    1 +
 .../fedora/gcc43-java-debug-iface-type.patch       |    1 +
 .../gcc/gcc-4.5.1/fedora/gcc43-java-nomulti.patch  |    1 +
 .../gcc-4.5.1/fedora/gcc43-libgomp-speedup.patch   |    1 +
 .../gcc/gcc-4.5.1/fedora/gcc43-ppc32-retaddr.patch |    1 +
 .../gcc/gcc-4.5.1/fedora/gcc43-pr27898.patch       |    1 +
 .../gcc/gcc-4.5.1/fedora/gcc43-pr32139.patch       |    1 +
 .../gcc/gcc-4.5.1/fedora/gcc43-pr33763.patch       |    1 +
 .../gcc/gcc-4.5.1/fedora/gcc43-rh251682.patch      |    1 +
 .../gcc/gcc-4.5.1/fedora/gcc43-rh330771.patch      |    1 +
 .../gcc/gcc-4.5.1/fedora/gcc43-rh341221.patch      |    1 +
 .../gcc/gcc-4.5.1/fedora/gcc45-no-add-needed.patch |    1 +
 meta/recipes-devtools/gcc/gcc-csl-arm/15342.patch  |   22 --
 .../gcc/gcc-csl-arm/arm-nolibfloat.patch           |    1 +
 .../gcc/gcc-csl-arm/arm-softfloat.patch            |    1 +
 .../gcc/gcc-csl-arm/cache-amnesia.patch            |   13 -
 .../gcc/gcc-csl-arm/fortran-static-linking.patch   |   48 ---
 .../gcc/gcc-csl-arm/gcc-3.4.0-arm-lib1asm.patch    |   24 --
 .../gcc/gcc-csl-arm/gcc-3.4.4-eabi-bigendian.patch |    1 +
 .../gcc/gcc-csl-arm/gcc-3.4.4-makefile-fix.patch   |    1 +
 .../gcc/gcc-csl-arm/gcc-configure-no-fortran.patch |    1 +
 .../gcc/gcc-csl-arm/gcc-new-makeinfo.patch         |    1 +
 .../gcc/gcc-csl-arm/gcc34-arm-tune.patch           |    9 -
 .../gcc/gcc-csl-arm/gcc41-configure.in.patch       |    2 +
 .../gcc/gcc-csl-arm/gcc_optab_arm.patch            |    2 +
 .../gcc/{files => gcc-csl-arm}/gfortran.patch      |    2 +
 .../gcc/gcc-csl-arm/no-libfloat.patch              |   11 -
 .../gcc/gcc-csl-arm/pic-without-sl.patch           |  303 --------------------
 .../recipes-devtools/gcc/gcc-csl-arm/pr34130.patch |   16 -
 .../gcc/gcc-csl-arm/zecke-no-host-includes.patch   |    2 +
 .../gcc/gcc-csl-arm/zecke-xgcc-cpp.patch           |    1 +
 .../libtool/libtool/fix-final-rpath.patch          |    2 +-
 .../libtool/libtool/prefix-manpage-fix.patch       |    2 +-
 meta/recipes-devtools/libtool/libtool/prefix.patch |    2 +-
 meta/recipes-devtools/m4/m4/ac_config_links.patch  |    2 +
 .../m4/m4/fix_for_circular_dependency.patch        |    2 +
 meta/recipes-devtools/m4/m4/make.patch             |    1 +
 .../python-native/04-default-is-optimized.patch    |    2 +
 .../10-distutils-fix-swig-parameter.patch          |    2 +
 .../11-distutils-never-modify-shebang-line.patch   |    2 +
 ...2-distutils-prefix-is-inside-staging-area.patch |    2 +
 .../python/python-native/debug.patch               |    2 +
 .../python/python-native/nohostlibs.patch          |    2 +
 76 files changed, 92 insertions(+), 846 deletions(-)
 delete mode 100644 meta/recipes-core/eglibc/eglibc-2.12/armv4t-interworking.patch
 delete mode 100644 meta/recipes-core/eglibc/eglibc-2.13/armv4t-interworking.patch
 delete mode 100644 meta/recipes-core/glibc/glibc-2.10.1/arm-check-pf.patch
 delete mode 100644 meta/recipes-core/glibc/glibc-2.10.1/arm-lowlevellock-include-tls.patch
 delete mode 100644 meta/recipes-core/glibc/glibc-2.10.1/local-args6.diff
 delete mode 100644 meta/recipes-devtools/gcc/files/canadian-build-modules-configure.patch
 delete mode 100644 meta/recipes-devtools/gcc/files/gcc-4.3.3-fix-EXTRA_BUILD.patch
 delete mode 100644 meta/recipes-devtools/gcc/files/gcc-4.3.x-fix-EXTRA_BUILD.patch
 delete mode 100644 meta/recipes-devtools/gcc/files/gcc-posix-open-fix.patch
 delete mode 100644 meta/recipes-devtools/gcc/files/gcc4-mtune-compat.patch
 delete mode 100644 meta/recipes-devtools/gcc/files/gfortran-4.3.x.patch
 delete mode 100644 meta/recipes-devtools/gcc/files/pr22133-mingw-path-fixup.patch
 delete mode 100644 meta/recipes-devtools/gcc/files/pr33281-mingw-host-fragment.patch
 delete mode 100644 meta/recipes-devtools/gcc/files/pr35916-mingw-__USE_MINGW_ACCESS-everywhere.patch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-csl-arm/15342.patch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-csl-arm/cache-amnesia.patch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-csl-arm/fortran-static-linking.patch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-csl-arm/gcc-3.4.0-arm-lib1asm.patch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-csl-arm/gcc34-arm-tune.patch
 rename meta/recipes-devtools/gcc/{files => gcc-csl-arm}/gfortran.patch (98%)
 delete mode 100644 meta/recipes-devtools/gcc/gcc-csl-arm/no-libfloat.patch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-csl-arm/pic-without-sl.patch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-csl-arm/pr34130.patch

-- 
1.7.3.4


