Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2AE624C81021
	for <poky@yoctoproject.org>; Wed, 12 Jan 2011 02:57:01 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Jan 2011 00:57:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,312,1291622400"; d="scan'208";a="646052326"
Received: from unknown (HELO [10.255.14.15]) ([10.255.14.15])
	by fmsmga002.fm.intel.com with ESMTP; 12 Jan 2011 00:57:00 -0800
Message-ID: <4D2D6CDB.3080104@intel.com>
Date: Wed, 12 Jan 2011 00:56:59 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [PULL] Consolidated Pull request
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
X-List-Received-Date: Wed, 12 Jan 2011 08:57:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Richard,

I have built this a number of different ways and check the 
meta-toolchain-sdk output, looks good from my side.

Sau!


Pull URL: git://git.pokylinux.org/poky-contrib.git
   Branch: distro/master
   Browse: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master

Thanks,
     Saul Wold <sgw@linux.intel.com>
---


Bruce Ashfield (1):
   linux-yocto: add routerstation pro and mpc8315e-rdb support

Darren Hart (2):
   trace-cmd: Bump SRCREV and recipe PV and PR values.
   bbvars.py: add a script to look for undocumented variables

Koen Kooi (2):
   wpa-supplicant 0.7: fix GNU HASH QA issue
   wpa-supplicant 0.7.3: fix dbus service activation

Liping Ke (1):
   adt-intaller feature implementation, including the bitbake recipe
     file for creating the intaller tar file under /tmp/deploy/sdk, and
     the adt-installer script files and config files, set the reference
     to adt repo entry empty before it's setup

Nitin A Kamble (4):
   perl, perl-native: upgrade from 5.8.8 to 5.12.2
   cpan.bbclass: use LIBDIR instead of DATADIR
   cpan.bbclass: add a new parameter EXTRA_PERLFLAGS
   libxml-simple-perl: fix build failure with perl 5.12.2

Saul Wold (1):
   puzzles: update SRC_URI Checksum due to file changing upstream

  meta/classes/cpan-base.bbclass                     |    4 +-
  meta/classes/cpan.bbclass                          |    5 +-
  meta/classes/cpan_build.bbclass                    |    4 +-
  .../conf/distro/include/poky-default-revisions.inc |    4 +-
  meta/conf/machine/mpc8315e-rdb.conf                |    4 +-
  meta/conf/machine/routerstationpro.conf            |    4 +-
  .../wpa-supplicant/wpa-supplicant-0.7.inc          |    5 +-
  .../wpa-supplicant/wpa-supplicant_0.7.3.bb         |    2 +-
  .../installer/adt-installer/adt_installer          |  367 +++++++
  .../installer/adt-installer/adt_installer.conf     |   52 +
  .../adt-installer/opkg/conf/opkg-sdk-i586.conf     |    7 +
  .../adt-installer/opkg/conf/opkg-sdk-x86_64.conf   |    7 +
  .../adt-installer/scripts/adt_installer_internal   |  209 ++++
  .../installer/adt-installer/scripts/data_define    |   40 +
  .../installer/adt-installer/scripts/extract_rootfs |   67 ++
  .../installer/adt-installer/scripts/util           |  104 ++
  .../installer/adt-installer_1.0.bb                 |   84 ++
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
  meta/recipes-devtools/perl/perl-rdepends_5.8.8.inc | 1145 
--------------------
  .../perl/perl-rprovides_5.12.2.inc                 |    1 +
  meta/recipes-devtools/perl/perl_5.12.2.bb          |  282 +++++
  meta/recipes-devtools/perl/perl_5.8.8.bb           |  228 ----
  meta/recipes-kernel/linux/linux-yocto_git.bb       |    2 +-
  meta/recipes-kernel/trace-cmd/kernelshark_git.bb   |    2 +-
  meta/recipes-kernel/trace-cmd/trace-cmd_git.bb     |    8 +-
  .../puzzles/{puzzles_r9023.bb => puzzles_r9076.bb} |    4 +-
  scripts/contrib/bbvars.py                          |  186 ++++
  97 files changed, 3748 insertions(+), 2219 deletions(-)
  create mode 100755 
meta/recipes-devtools/installer/adt-installer/adt_installer
  create mode 100644 
meta/recipes-devtools/installer/adt-installer/adt_installer.conf
  create mode 100644 
meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i586.conf
  create mode 100644 
meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-x86_64.conf
  create mode 100755 
meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
  create mode 100644 
meta/recipes-devtools/installer/adt-installer/scripts/data_define
  create mode 100755 
meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
  create mode 100644 
meta/recipes-devtools/installer/adt-installer/scripts/util
  create mode 100644 meta/recipes-devtools/installer/adt-installer_1.0.bb
  delete mode 100644 
meta/recipes-devtools/perl/files/perl-5.8.8-gcc-4.2.patch
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/09_fix_installperl.patch
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/Makefile.SH.patch
  rename meta/recipes-devtools/perl/{perl-5.8.8 => 
perl-5.12.2}/Makefile.patch (81%)
  rename meta/recipes-devtools/perl/{perl-5.8.8 => 
perl-5.12.2}/asm-pageh-fix.patch (72%)
  rename meta/recipes-devtools/perl/{perl-5.8.8 => 
perl-5.12.2}/config.sh (66%)
  create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/config.sh-32
  rename meta/recipes-devtools/perl/{perl-5.8.8 => 
perl-5.12.2}/config.sh-32-be (100%)
  rename meta/recipes-devtools/perl/{perl-5.8.8 => 
perl-5.12.2}/config.sh-32-le (100%)
  create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/config.sh-64
  rename meta/recipes-devtools/perl/{perl-5.8.8 => 
perl-5.12.2}/config.sh-64-be (100%)
  rename meta/recipes-devtools/perl/{perl-5.8.8 => 
perl-5.12.2}/config.sh-64-le (100%)
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/cross-generate_uudmap.patch
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/arm_optim.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/arm_thread_stress_timeout.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/cpan_config_path.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/cpan_definstalldirs.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/cpanplus_config_path.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/cpanplus_definstalldirs.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/db_file_ver.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/deprecate-with-apt.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/devel-ppport-ia64-optim.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/disable-zlib-bundling.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/doc_info.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/enc2xs_inc.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/errno_ver.diff
  rename 
meta/recipes-devtools/perl/{perl-5.8.8/52_debian_extutils_hacks.patch => 
perl-5.12.2/debian/extutils_hacks.diff} (55%)
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/fakeroot.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/autodie-flock.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/concat-stack-corruption.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/cpanplus-without-home.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/h2ph-gcc-4.5.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/hurd-ccflags.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/lc-numeric-docs.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/lc-numeric-sprintf.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/net_smtp_docs.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/fixes/processPL.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/instmodsh_doc.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/ld_run_path.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/libnet_config_path.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/m68k_thread_stress.diff
  rename 
meta/recipes-devtools/perl/{perl-5.8.8/53_debian_mod_paths.patch => 
perl-5.12.2/debian/mod_paths.diff} (59%)
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/module_build_man_extensions.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/perlivp.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/prune_libs.diff
  create mode 100644 
meta/recipes-devtools/perl/perl-5.12.2/debian/squelch-locale-warnings.diff
  rename meta/recipes-devtools/perl/{perl-5.8.8 => 
perl-5.12.2}/generate-sh.patch (100%)
  rename meta/recipes-devtools/perl/{perl-5.8.8 => 
perl-5.12.2}/installperl.patch (57%)
  rename meta/recipes-devtools/perl/{perl-5.8.8 => 
perl-5.12.2}/native-nopacklist.patch (76%)
  rename meta/recipes-devtools/perl/{perl-5.8.8 => 
perl-5.12.2}/native-perlinc.patch (80%)
  rename meta/recipes-devtools/perl/{perl-5.8.8 => 
perl-5.12.2}/native-ssp.patch (100%)
  rename meta/recipes-devtools/perl/{perl-5.8.8 => 
perl-5.12.2}/perl-configpm-switch.patch (100%)
  rename meta/recipes-devtools/perl/{perl-5.8.8 => 
perl-5.12.2}/perl-configure.sh (94%)
  rename meta/recipes-devtools/perl/{perl-5.8.8 => 
perl-5.12.2}/perl-dynloader.patch (87%)
  rename meta/recipes-devtools/perl/{perl-5.8.8 => 
perl-5.12.2}/perl-enable-gdbm.patch (100%)
  rename meta/recipes-devtools/perl/{perl-5.8.8 => 
perl-5.12.2}/perl-moreconfig.patch (100%)
  delete mode 100644 
meta/recipes-devtools/perl/perl-5.8.8/09_fix_installperl.patch
  delete mode 100644 
meta/recipes-devtools/perl/perl-5.8.8/54_debian_perldoc-r.patch
  delete mode 100644 
meta/recipes-devtools/perl/perl-5.8.8/58_debian_cpan_config_path.patch
  delete mode 100644 
meta/recipes-devtools/perl/perl-5.8.8/60_debian_libnet_config_path.patch
  delete mode 100644 
meta/recipes-devtools/perl/perl-5.8.8/62_debian_cpan_definstalldirs.patch
  delete mode 100644 
meta/recipes-devtools/perl/perl-5.8.8/64_debian_enc2xs_inc.patch
  delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/Makefile.SH.patch
  delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/config.sh-32
  delete mode 100644 meta/recipes-devtools/perl/perl-5.8.8/config.sh-64
  delete mode 100644 
meta/recipes-devtools/perl/perl-5.8.8/makedepend-dash.patch
  delete mode 100644 
meta/recipes-devtools/perl/perl-5.8.8/native-no-gdbminc.patch
  rename meta/recipes-devtools/perl/{perl-native_5.8.8.bb => 
perl-native_5.12.2.bb} (83%)
  create mode 100644 meta/recipes-devtools/perl/perl-rdepends_5.12.2.inc
  delete mode 100644 meta/recipes-devtools/perl/perl-rdepends_5.8.8.inc
  create mode 100644 meta/recipes-devtools/perl/perl-rprovides_5.12.2.inc
  create mode 100644 meta/recipes-devtools/perl/perl_5.12.2.bb
  delete mode 100644 meta/recipes-devtools/perl/perl_5.8.8.bb
  rename meta/recipes-sato/puzzles/{puzzles_r9023.bb => 
puzzles_r9076.bb} (91%)
  create mode 100755 scripts/contrib/bbvars.py


