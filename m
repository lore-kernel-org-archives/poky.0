Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6A29B4C8106A
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 15:36:48 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 05 Jan 2011 13:36:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,279,1291622400"; d="scan'208";a="590234310"
Received: from nbuild1.sc.intel.com (HELO localhost) ([172.25.110.36])
	by orsmga002.jf.intel.com with ESMTP; 05 Jan 2011 13:36:47 -0800
Message-Id: <cover.1294237909.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Wed, 5 Jan 2011 06:31:49 -0800
Date: Wed, 05 Jan 2011  7:06:46 -0800
To: poky@yoctoproject.org
Subject: [PATCH 0/8] perl and other devel/toolchain recipes upgrades
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
X-List-Received-Date: Wed, 05 Jan 2011 21:36:48 -0000

I had few issues with earlier perl commits pull request. like 
depedancy format for built perl module packages was not right. 
These issues have been resolved in this pull request. Some changes 
are made to cpan.bbclass to accomodate changes in the newer perl. 
All the perl modules from the poky tree are building with 
the newer 5.12.2 perl now, on all architectures.

And upgrades of few devel/toolchain recipes for which upstream has moved ahead.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/perl-5.12.2_rebased_to_master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/perl-5.12.2_rebased_to_master

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (8):
  distro-tracking: update recently updated recipes
  git: upgrade from 1.7.3.2 to 1.7.3.4
  byacc: upgrade recipe from 20100610 to 20101127
  python-dbus: upgrade from 0.83.1 to 0.83.2
  perl, perl-native: upgrade from 5.8.8 to 5.12.2
  cpan.bbclass: use LIBDIR instead of DATADIR
  cpan.bbclass: add a new parameter EXTRA_PERLFLAGS
  libxml-simple-perl: fix build failure with perl 5.12.2

 meta/classes/cpan-base.bbclass                     |    4 +-
 meta/classes/cpan.bbclass                          |    5 +-
 meta/classes/cpan_build.bbclass                    |    4 +-
 .../conf/distro/include/distro_tracking_fields.inc |   13 +-
 .../git/{git_1.7.3.2.bb => git_1.7.3.4.bb}         |    4 +-
 .../perl/files/letgcc-find-errno.patch             |   14 +-
 .../perl/files/perl-5.8.8-gcc-4.2.patch            |   13 -
 .../perl/libxml-simple-perl_2.18.bb                |    4 +-
 .../perl/perl-5.12.2/09_fix_installperl.patch      |   19 +
 .../perl/perl-5.12.2/Makefile.SH.patch             |  288 +++++
 .../{perl-5.8.8 => perl-5.12.2}/Makefile.patch     |   20 +-
 .../asm-pageh-fix.patch                            |    6 +-
 .../perl/{perl-5.8.8 => perl-5.12.2}/config.sh     |  322 ++++---
 .../recipes-devtools/perl/perl-5.12.2/config.sh-32 |   38 +
 .../{perl-5.8.8 => perl-5.12.2}/config.sh-32-be    |    0
 .../{perl-5.8.8 => perl-5.12.2}/config.sh-32-le    |    0
 .../recipes-devtools/perl/perl-5.12.2/config.sh-64 |   38 +
 .../{perl-5.8.8 => perl-5.12.2}/config.sh-64-be    |    0
 .../{perl-5.8.8 => perl-5.12.2}/config.sh-64-le    |    0
 .../perl/perl-5.12.2/cross-generate_uudmap.patch   |   13 +
 .../perl/perl-5.12.2/debian/arm_optim.diff         |   32 +
 .../debian/arm_thread_stress_timeout.diff          |   23 +
 .../perl/perl-5.12.2/debian/cpan_config_path.diff  |   22 +
 .../perl-5.12.2/debian/cpan_definstalldirs.diff    |   35 +
 .../perl-5.12.2/debian/cpanplus_config_path.diff   |   43 +
 .../debian/cpanplus_definstalldirs.diff            |   52 +
 .../perl/perl-5.12.2/debian/db_file_ver.diff       |   32 +
 .../perl-5.12.2/debian/deprecate-with-apt.diff     |   59 +
 .../debian/devel-ppport-ia64-optim.diff            |   32 +
 .../perl-5.12.2/debian/disable-zlib-bundling.diff  |   29 +
 .../perl/perl-5.12.2/debian/doc_info.diff          |   34 +
 .../perl/perl-5.12.2/debian/enc2xs_inc.diff        |   49 +
 .../perl/perl-5.12.2/debian/errno_ver.diff         |   32 +
 .../debian/extutils_hacks.diff}                    |  199 +++-
 .../perl/perl-5.12.2/debian/fakeroot.diff          |   43 +
 .../perl-5.12.2/debian/fixes/autodie-flock.diff    |   98 ++
 .../debian/fixes/concat-stack-corruption.diff      |   37 +
 .../debian/fixes/cpanplus-without-home.diff        |   30 +
 .../perl-5.12.2/debian/fixes/h2ph-gcc-4.5.diff     |  106 ++
 .../perl-5.12.2/debian/fixes/hurd-ccflags.diff     |   26 +
 .../perl-5.12.2/debian/fixes/lc-numeric-docs.diff  |   95 ++
 .../debian/fixes/lc-numeric-sprintf.diff           |   29 +
 .../perl-5.12.2/debian/fixes/net_smtp_docs.diff    |   23 +
 .../perl/perl-5.12.2/debian/fixes/processPL.diff   |   43 +
 .../perl/perl-5.12.2/debian/instmodsh_doc.diff     |   26 +
 .../perl/perl-5.12.2/debian/ld_run_path.diff       |   23 +
 .../perl-5.12.2/debian/libnet_config_path.diff     |   35 +
 .../perl-5.12.2/debian/m68k_thread_stress.diff     |   43 +
 .../debian/mod_paths.diff}                         |   67 +-
 .../debian/module_build_man_extensions.diff        |   31 +
 .../perl/perl-5.12.2/debian/perlivp.diff           |   38 +
 .../perl/perl-5.12.2/debian/prune_libs.diff        |   36 +
 .../debian/squelch-locale-warnings.diff            |   53 +
 .../{perl-5.8.8 => perl-5.12.2}/generate-sh.patch  |    0
 .../{perl-5.8.8 => perl-5.12.2}/installperl.patch  |   10 +-
 .../native-nopacklist.patch                        |   36 +-
 .../native-perlinc.patch                           |    4 +-
 .../{perl-5.8.8 => perl-5.12.2}/native-ssp.patch   |    0
 .../perl-configpm-switch.patch                     |    0
 .../{perl-5.8.8 => perl-5.12.2}/perl-configure.sh  |    4 +-
 .../perl-dynloader.patch                           |    4 +-
 .../perl-enable-gdbm.patch                         |    0
 .../perl-moreconfig.patch                          |    0
 .../perl/perl-5.8.8/09_fix_installperl.patch       |   32 -
 .../perl/perl-5.8.8/54_debian_perldoc-r.patch      |   16 -
 .../perl-5.8.8/58_debian_cpan_config_path.patch    |   14 -
 .../perl-5.8.8/60_debian_libnet_config_path.patch  |   16 -
 .../perl-5.8.8/62_debian_cpan_definstalldirs.patch |   16 -
 .../perl/perl-5.8.8/64_debian_enc2xs_inc.patch     |   28 -
 .../perl/perl-5.8.8/Makefile.SH.patch              |  253 -----
 meta/recipes-devtools/perl/perl-5.8.8/config.sh-32 |   58 -
 meta/recipes-devtools/perl/perl-5.8.8/config.sh-64 |   58 -
 .../perl/perl-5.8.8/makedepend-dash.patch          |   13 -
 .../perl/perl-5.8.8/native-no-gdbminc.patch        |   18 -
 ...{perl-native_5.8.8.bb => perl-native_5.12.2.bb} |   20 +-
 .../recipes-devtools/perl/perl-rdepends_5.12.2.inc |  210 ++++
 meta/recipes-devtools/perl/perl-rdepends_5.8.8.inc | 1145 --------------------
 .../perl/perl-rprovides_5.12.2.inc                 |    1 +
 meta/recipes-devtools/perl/perl_5.12.2.bb          |  282 +++++
 meta/recipes-devtools/perl/perl_5.8.8.bb           |  228 ----
 ...python-dbus_0.83.1.bb => python-dbus_0.83.2.bb} |    6 +-
 meta/recipes-extended/byacc/byacc_20100610.bb      |    7 -
 meta/recipes-extended/byacc/byacc_20101127.bb      |    7 +
 83 files changed, 2623 insertions(+), 2223 deletions(-)
 rename meta/recipes-devtools/git/{git_1.7.3.2.bb => git_1.7.3.4.bb} (59%)
 delete mode 100644 meta/recipes-devtools/perl/files/perl-5.8.8-gcc-4.2.patch
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/09_fix_installperl.patch
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/Makefile.SH.patch
 rename meta/recipes-devtools/perl/{perl-5.8.8 => perl-5.12.2}/Makefile.patch (81%)
 rename meta/recipes-devtools/perl/{perl-5.8.8 => perl-5.12.2}/asm-pageh-fix.patch (72%)
 rename meta/recipes-devtools/perl/{perl-5.8.8 => perl-5.12.2}/config.sh (66%)
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/config.sh-32
 rename meta/recipes-devtools/perl/{perl-5.8.8 => perl-5.12.2}/config.sh-32-be (100%)
 rename meta/recipes-devtools/perl/{perl-5.8.8 => perl-5.12.2}/config.sh-32-le (100%)
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/config.sh-64
 rename meta/recipes-devtools/perl/{perl-5.8.8 => perl-5.12.2}/config.sh-64-be (100%)
 rename meta/recipes-devtools/perl/{perl-5.8.8 => perl-5.12.2}/config.sh-64-le (100%)
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/cross-generate_uudmap.patch
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/arm_optim.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/arm_thread_stress_timeout.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/cpan_config_path.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/cpan_definstalldirs.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/cpanplus_config_path.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/cpanplus_definstalldirs.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/db_file_ver.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/deprecate-with-apt.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/devel-ppport-ia64-optim.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/disable-zlib-bundling.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/doc_info.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/enc2xs_inc.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/errno_ver.diff
 rename meta/recipes-devtools/perl/{perl-5.8.8/52_debian_extutils_hacks.patch => perl-5.12.2/debian/extutils_hacks.diff} (55%)
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/fakeroot.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/autodie-flock.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/concat-stack-corruption.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/cpanplus-without-home.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/h2ph-gcc-4.5.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/hurd-ccflags.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/lc-numeric-docs.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/lc-numeric-sprintf.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/net_smtp_docs.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/processPL.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/instmodsh_doc.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/ld_run_path.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/libnet_config_path.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/m68k_thread_stress.diff
 rename meta/recipes-devtools/perl/{perl-5.8.8/53_debian_mod_paths.patch => perl-5.12.2/debian/mod_paths.diff} (59%)
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/module_build_man_extensions.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/perlivp.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/prune_libs.diff
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/debian/squelch-locale-warnings.diff
 rename meta/recipes-devtools/perl/{perl-5.8.8 => perl-5.12.2}/generate-sh.patch (100%)
 rename meta/recipes-devtools/perl/{perl-5.8.8 => perl-5.12.2}/installperl.patch (57%)
 rename meta/recipes-devtools/perl/{perl-5.8.8 => perl-5.12.2}/native-nopacklist.patch (76%)
 rename meta/recipes-devtools/perl/{perl-5.8.8 => perl-5.12.2}/native-perlinc.patch (80%)
 rename meta/recipes-devtools/perl/{perl-5.8.8 => perl-5.12.2}/native-ssp.patch (100%)
 rename meta/recipes-devtools/perl/{perl-5.8.8 => perl-5.12.2}/perl-configpm-switch.patch (100%)
 rename meta/recipes-devtools/perl/{perl-5.8.8 => perl-5.12.2}/perl-configure.sh (94%)
 rename meta/recipes-devtools/perl/{perl-5.8.8 => perl-5.12.2}/perl-dynloader.patch (87%)
 rename meta/recipes-devtools/perl/{perl-5.8.8 => perl-5.12.2}/perl-enable-gdbm.patch (100%)
 rename meta/recipes-devtools/perl/{perl-5.8.8 => perl-5.12.2}/perl-moreconfig.patch (100%)
 delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/09_fix_installperl.patch
 delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/54_debian_perldoc-r.patch
 delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/58_debian_cpan_config_path.patch
 delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/60_debian_libnet_config_path.patch
 delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/62_debian_cpan_definstalldirs.patch
 delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/64_debian_enc2xs_inc.patch
 delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/Makefile.SH.patch
 delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/config.sh-32
 delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/config.sh-64
 delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/makedepend-dash.patch
 delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/native-no-gdbminc.patch
 rename meta/recipes-devtools/perl/{perl-native_5.8.8.bb => perl-native_5.12.2.bb} (83%)
 create mode 100644 meta/recipes-devtools/perl/perl-rdepends_5.12.2.inc
 delete mode 100644 meta/recipes-devtools/perl/perl-rdepends_5.8.8.inc
 create mode 100644 meta/recipes-devtools/perl/perl-rprovides_5.12.2.inc
 create mode 100644 meta/recipes-devtools/perl/perl_5.12.2.bb
 delete mode 100644 meta/recipes-devtools/perl/perl_5.8.8.bb
 rename meta/recipes-devtools/python/{python-dbus_0.83.1.bb => python-dbus_0.83.2.bb} (82%)
 delete mode 100644 meta/recipes-extended/byacc/byacc_20100610.bb
 create mode 100644 meta/recipes-extended/byacc/byacc_20101127.bb

-- 
1.7.2.2


