Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 15AEF4C810D2
	for <poky@yoctoproject.org>; Thu, 12 May 2011 19:20:30 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 May 2011 17:20:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; d="scan'208";a="642035965"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga002.jf.intel.com with ESMTP; 12 May 2011 17:20:29 -0700
Message-Id: <cover.1305245922.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 12 May 2011 17:18:42 -0700
Date: Thu, 12 May 2011 17:20:29 -0700
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 00/25] Misc commits
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
X-List-Received-Date: Fri, 13 May 2011 00:20:30 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

This series includes:
fix some gcc 4.6.0 issues
delete some unused patches
and lots os upstream-status updates for patches


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin.misc
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin.misc

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (25):
  gcc: fix target gcc runtime issue
  tcmode-default: fix a typo
  gcc 4.5.1 4.6.0: remove unused patches
  python: update upstream-status for patches
  binutils: update upstream-status for patches
  gcc 4.5.1 4.6.0: update upstream-status for patches
  autoconf: update upstream-status for patches
  automake: update upstream-status for patches
  bison: update upstream-status for patches
  distcc: update upstream-status of patches
  fstests: update upstream-status for patches
  gdb: update upstream-status of patches
  intltool: update upstream-status of patches
  libtool: update upstream status of patches
  linux-libc-headers: update upstream-status for patches
  make: update upstream-status for patches
  perl: update upstream-status for patches
  python-pycurl: update upstream-status for patches
  python-pygobject: update upstream status for patches
  python-pyrex: update upstream-status for patches
  quilt: update upstream-status of patches
  tcl: update upstream-status for patches
  gnu-config: update upstream-status for patches
  gmp: update upstream-status for patches
  m4: update upstream-status for patches

 meta/conf/distro/include/tcmode-default.inc        |    2 +-
 .../autoconf/autoconf-2.65/autoconf-x.patch        |    2 +
 .../autoheader-nonfatal-warnings.patch             |    2 +
 .../autoconf-2.65/autoreconf-exclude.patch         |    2 +
 .../autoconf-2.65/autoreconf-foreign.patch         |    2 +
 .../autoconf-2.65/autoreconf-gnuconfigize.patch    |    1 +
 .../autoconf-2.65/autoreconf-include.patch         |    2 +
 .../autoconf/autoconf-2.65/config_site.patch       |    2 +
 .../autoconf/autoconf-2.65/fix_path_xtra.patch     |    2 +
 .../autoconf/autoconf-2.65/path_prog_fixes.patch   |    2 +
 .../autoconf/autoconf-2.65/program_prefix.patch    |    1 +
 .../automake/automake/path_prog_fixes.patch        |    2 +
 ...binutils-uclibc-300-001_ld_makefile_patch.patch |    1 +
 ...binutils-uclibc-300-006_better_file_error.patch |    1 +
 ...ils-uclibc-300-012_check_ldrunpath_length.patch |    1 +
 .../binutils-uclibc-gas-needs-libm.patch           |    1 +
 .../binutils-x86_64_i386_biarch.patch              |    1 +
 .../binutils-2.21/libiberty_path_fix.patch         |    2 +
 .../binutils-2.21/libtool-2.4-update.patch         |    2 +
 .../binutils/binutils-2.21/libtool-rpath-fix.patch |    2 +
 .../bison/bison/bison-2.3_m4.patch                 |    1 +
 .../bison/bison/fix_cross_manpage_building.patch   |    2 +
 meta/recipes-devtools/bison/bison/m4.patch         |    1 +
 .../bison/bison/uclibc-sched_param-def.patch       |    2 +
 .../distcc/files/distcc-avahi.patch                |    2 +
 .../gcc/gcc-4.5.1/307-locale_facets.patch          |   21 --
 .../gcc/gcc-4.5.1/602-sdk-libstdc++-includes.patch |   22 --
 .../gcc/gcc-4.5.1/COLLECT_GCC_OPTIONS.patch        |    2 +
 .../GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch       |    2 +
 .../gcc/gcc-4.5.1/arm-unbreak-eabi-armv4t.dpatch   |   36 ---
 .../gcc/gcc-4.5.1/cache-amnesia.patch              |    2 +
 .../gcc-4.5.1/disable_relax_pic_calls_flag.patch   |    2 +
 .../gcc/gcc-4.5.1/fortran-cross-compile-hack.patch |    2 +
 .../gcc/gcc-4.5.1/gcc-4.0.2-e300c2c3.patch         |  319 -------------------
 .../gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch          |    2 +
 .../gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch      |    2 +
 .../gcc/gcc-4.5.1/gcc-arm-frename-registers.patch  |   25 --
 .../gcc/gcc-4.5.1/gcc-flags-for-build.patch        |    2 +
 .../gcc/gcc-4.5.1/gcc-ice-hack.dpatch              |  331 --------------------
 .../gcc/gcc-4.5.1/gcc-poison-dir-extend.patch      |    2 +
 .../gcc/gcc-4.5.1/gcc-poison-parameters.patch      |    2 +
 .../gcc-4.5.1/gcc-poison-system-directories.patch  |    2 +
 .../gcc-uclibc-locale-ctype_touplow_t.patch        |    2 +
 .../libstdc++-emit-__cxa_end_cleanup-in-text.patch |    2 +
 .../gcc/gcc-4.5.1/libstdc++-pic.dpatch             |   71 -----
 .../gcc/gcc-4.5.1/optional_libstdc.patch           |    2 +
 meta/recipes-devtools/gcc/gcc-4.5.1/pr30961.dpatch |  179 -----------
 meta/recipes-devtools/gcc/gcc-4.5.1/pr35942.patch  |   38 ---
 .../gcc/gcc-4.5.1/zecke-xgcc-cpp.patch             |    1 +
 meta/recipes-devtools/gcc/gcc-4.6.0.inc            |    2 +-
 .../gcc/gcc-4.6.0/100-uclibc-conf.patch            |    2 +
 .../gcc/gcc-4.6.0/103-uclibc-conf-noupstream.patch |    2 +
 .../gcc/gcc-4.6.0/200-uclibc-locale.patch          |    2 +
 .../gcc/gcc-4.6.0/203-uclibc-locale-no__x.patch    |    2 +
 .../gcc-4.6.0/204-uclibc-locale-wchar_fix.patch    |    2 +
 .../gcc/gcc-4.6.0/205-uclibc-locale-update.patch   |    2 +
 .../gcc/gcc-4.6.0/301-missing-execinfo_h.patch     |    2 +
 .../gcc/gcc-4.6.0/302-c99-snprintf.patch           |    2 +
 .../gcc/gcc-4.6.0/303-c99-complex-ugly-hack.patch  |    2 +
 .../gcc/gcc-4.6.0/304-index_macro.patch            |    2 +
 .../gcc-4.6.0/305-libmudflap-susv3-legacy.patch    |    2 +
 .../gcc/gcc-4.6.0/306-libstdc++-namespace.patch    |    2 +
 .../gcc/gcc-4.6.0/307-locale_facets.patch          |   19 --
 .../gcc/gcc-4.6.0/602-sdk-libstdc++-includes.patch |   20 --
 .../recipes-devtools/gcc/gcc-4.6.0/64bithack.patch |    2 +
 .../gcc/gcc-4.6.0/740-sh-pr24836.patch             |    2 +
 .../gcc/gcc-4.6.0/800-arm-bigendian.patch          |    2 +
 .../gcc/gcc-4.6.0/904-flatten-switch-stmt-00.patch |    2 +
 .../gcc/gcc-4.6.0/COLLECT_GCC_OPTIONS.patch        |    2 +
 .../GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch       |    2 +
 .../gcc/gcc-4.6.0/arm-bswapsi2.patch               |   13 -
 .../gcc/gcc-4.6.0/arm-nolibfloat.patch             |    2 +
 .../gcc/gcc-4.6.0/arm-softfloat.patch              |    2 +
 .../gcc/gcc-4.6.0/arm-unbreak-eabi-armv4t.dpatch   |   36 ---
 .../gcc/gcc-4.6.0/cache-amnesia.patch              |    2 +
 .../gcc-4.6.0/disable_relax_pic_calls_flag.patch   |    2 +
 .../gcc/gcc-4.6.0/fortran-cross-compile-hack.patch |    2 +
 .../gcc/gcc-4.6.0/gcc-4.0.2-e300c2c3.patch         |  319 -------------------
 .../gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch          |    2 +
 .../gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch      |    2 +
 .../0002-Backport-from-mainline.patch              |    1 +
 .../0003-Backport-from-mainline.patch              |    1 +
 .../0004-Backport-from-mainline.patch              |    1 +
 .../0005-Backport-from-mainline.patch              |    1 +
 .../0006-Backport-from-mainline.patch              |    1 +
 .../0007-Backport-from-mainline.patch              |    1 +
 ...26-Paolo-Carlini-paolo.carlini-oracle.com.patch |    1 +
 .../0009-Backport-from-mainline.patch              |    1 +
 ...-27-Jonathan-Wakely-jwakely.gcc-gmail.com.patch |    1 +
 ...-03-28-Richard-Guenther-rguenther-suse.de.patch |    1 +
 .../gcc-4_6-branch-backports/0015-gcc.patch        |    1 +
 .../0016-Backport-from-mainline.patch              |    1 +
 .../0017-libgfortran.patch                         |    1 +
 ...Andreas-Krebbel-Andreas.Krebbel-de.ibm.co.patch |    1 +
 ...-rx-rx.h-LABEL_ALIGN_AFTER_BARRIER-Define.patch |    1 +
 .../0021-c.opt-Add-std-c-03.patch                  |    1 +
 .../gcc-4_6-branch-backports/0022-PR-c-47570.patch |    1 +
 .../gcc-4_6-branch-backports/0023-PR-c-47504.patch |    1 +
 ...ild_noexcept_spec-Call-cxx_constant_value.patch |    1 +
 .../gcc-4_6-branch-backports/0025-c-family.patch   |    1 +
 ...026-decl2.c-cp_check_const_attributes-New.patch |    1 +
 .../gcc-4_6-branch-backports/0027-Core-1148.patch  |    1 +
 .../gcc-4_6-branch-backports/0028-PR-c-48313.patch |    1 +
 .../gcc-4_6-branch-backports/0029-PR-c-47999.patch |    1 +
 ...non_dependent_expr-Keep-dereferences-outs.patch |    1 +
 ...rence_binding-Allow-direct-binding-to-an-.patch |    1 +
 .../gcc-4_6-branch-backports/0032-Core-1232.patch  |    1 +
 ...-is_valid_constexpr_fn-Specify-input-loca.patch |    1 +
 .../gcc-4_6-branch-backports/0034-PR-c-48296.patch |    1 +
 .../gcc-4_6-branch-backports/0035-PR-c-48166.patch |    1 +
 ...a-alpha.c-alpha_sr_alias_set-Don-t-define.patch |    1 +
 .../gcc-4_6-branch-backports/0038-PR-c-48319.patch |    1 +
 .../0039-PR-preprocessor-48248.patch               |    1 +
 .../0040-PR-debug-48253.patch                      |    1 +
 .../gcc-4_6-branch-backports/0042-PR-c-48265.patch |    1 +
 .../0043-Fix-a-typo-in-FLOAT_SSE_REGS.patch        |    1 +
 .../gcc-4_6-branch-backports/0044-PR-c-48281.patch |    1 +
 .../gcc-4_6-branch-backports/0045-PR-c-48369.patch |    1 +
 .../gcc-4_6-branch-backports/0046-PR-c-48212.patch |    1 +
 ...-03-31-Richard-Guenther-rguenther-suse.de.patch |    1 +
 .../0049-PR-target-48142.patch                     |    1 +
 .../0050-PR-target-16292.patch                     |    1 +
 .../gcc-4_6-branch-backports/0051-PR-c-48280.patch |    1 +
 ...07-from-trunk-to-the-4.6-release-branch-t.patch |    1 +
 .../0054-Backport-from-mainline.patch              |    1 +
 ...fig-spu-t-spu-elf-dp-bit.c-Use-instead-of.patch |    1 +
 ...11-04-02-Jonathan-Wakely-redi-gcc.gnu.org.patch |    1 +
 ...-de.po-el.po-es.po-fi.po-fr.po-id.po-ja.p.patch |    1 +
 ...-da.po-de.po-el.po-es.po-fi.po-fr.po-id.p.patch |    1 +
 ...n.dg-bessel_6.f90-Use-dg-add-options-ieee.patch |    1 +
 ...4-2011-04-04-Janus-Weil-janus-gcc.gnu.org.patch |    1 +
 .../0065-es.po-Update.patch                        |    1 +
 ...ers-for-functions-from-the-frexp-family-w.patch |    1 +
 ...-04-05-Richard-Guenther-rguenther-suse.de.patch |    1 +
 ....c-self_referential_size-Fix-2010-07-13-c.patch |    1 +
 .../0070-de.po-Update.patch                        |    1 +
 ...ov-io.c-Use-GCC-Runtime-Library-Exception.patch |    1 +
 .../0073-Backported-from-mainline.patch            |    1 +
 .../0074-PR-debug-48466.patch                      |    1 +
 ...73-from-trunk-to-the-4.6-release-branch-t.patch |    1 +
 .../0077-Backport-from-mainline.patch              |    1 +
 .../0078-de.po-Update.patch                        |    1 +
 .../0079-PR-debug-48343.patch                      |    1 +
 .../0080-PR-fortran-48117.patch                    |    1 +
 ...-config-i386-sse.md-Update-copyright-year.patch |    1 +
 ...ure-stackalign-non-local-goto-5.c-Fix-for.patch |    1 +
 .../0084-PR-tree-optimization-48377.patch          |    1 +
 .../0085-de.po-Update.patch                        |    1 +
 .../gcc-4_6-branch-backports/0086-PR-c-48450.patch |    1 +
 ....c-finish_decltype_type-Add-complain-parm.patch |    1 +
 .../gcc-4_6-branch-backports/0088-PR-c-48452.patch |    1 +
 .../gcc-4_6-branch-backports/0089-PR-c-48468.patch |    1 +
 .../gcc-4_6-branch-backports/0090-PR-c-48500.patch |    1 +
 ...1-04-08-Steven-G.-Kargl-kargl-gcc.gnu.org.patch |    1 +
 .../0092-PR-testsuite-48506.patch                  |    1 +
 ...ther-than-crashing-in-array_type_nelts-if.patch |    1 +
 .../gcc-4_6-branch-backports/0095-PR-c-48528.patch |    1 +
 ...-10-Jonathan-Wakely-jwakely.gcc-gmail.com.patch |    1 +
 ...-10-Jonathan-Wakely-jwakely.gcc-gmail.com.patch |    1 +
 ...-10-Jonathan-Wakely-jwakely.gcc-gmail.com.patch |    1 +
 .../0101-Backport-from-mainline.patch              |    1 +
 ...2-common.opt-Tbss-Tdata-Ttext-New-options.patch |    1 +
 .../gcc-4_6-branch-backports/0104-PR-c-48523.patch |    1 +
 .../gcc-4_6-branch-backports/0105-PR-c-48534.patch |    1 +
 .../gcc-4_6-branch-backports/0106-PR-c-48517.patch |    1 +
 ...011-04-12-Allan-McRae-allan-archlinux.org.patch |    1 +
 ...-v850.c-expand_prologue-Do-not-use-the-CA.patch |    1 +
 .../0109-PR-rtl-optimization-48549.patch           |    1 +
 ...-2011-04-12-Martin-Jambor-mjambor-suse.cz.patch |    1 +
 .../0112-Fix-PR-target-48090.patch                 |    1 +
 .../0113-Fix-PR-c-48574.patch                      |    1 +
 .../gcc-4_6-branch-backports/0114-PR-c-48570.patch |    1 +
 .../0115-PR-middle-end-48591.patch                 |    1 +
 ...-2011-04-13-Paul-Thomas-pault-gcc.gnu.org.patch |    1 +
 .../gcc-4_6-branch-backports/0117-PR-c-48594.patch |    1 +
 .../0118-sv.po-Update.patch                        |    1 +
 .../0119-Backport-from-mainline.patch              |    1 +
 .../0122-PR-target-48605.patch                     |    1 +
 .../0123-PR-target-48614.patch                     |    1 +
 ...Andreas-Krebbel-Andreas.Krebbel-de.ibm.co.patch |    1 +
 ...04-15-Takaya-Saito-gintensubaru-gmail.com.patch |    1 +
 ...15-Paolo-Carlini-paolo.carlini-oracle.com.patch |    1 +
 ...ibjava.jni-jni.exp-gcj_jni_get_cxxflags_i.patch |    1 +
 ...Daniel-Krugler-daniel.kruegler-googlemail.patch |    1 +
 ...Daniel-Krugler-daniel.kruegler-googlemail.patch |    1 +
 .../0132-PR-lto-48538.patch                        |    1 +
 ...c-freebsd.h-CPP_CPU64_DEFAULT_SPEC-Replac.patch |    1 +
 ...Daniel-Krugler-daniel.kruegler-googlemail.patch |    1 +
 .../0135-doc-passes.texi-Fill-crossref-nodes.patch |    1 +
 ...ce-Make-lang.in-gnatbind-Replace-ALL_CFLA.patch |    1 +
 .../0138-PR-tree-optimization-48616.patch          |    1 +
 ...-04-18-Richard-Guenther-rguenther-suse.de.patch |    1 +
 ...x-weakref-trickery-breakage-on-alpha-dec-.patch |    1 +
 ...-is_redundant_typedef-Add-inline-to-proto.patch |    1 +
 .../gcc-4_6-branch-backports/0142-PR-c-48632.patch |    1 +
 .../0143-PR-middle-end-48661.patch                 |    1 +
 .../gcc-4_6-branch-backports/0144-PR-c-48537.patch |    1 +
 .../0146-PR-testsuite-48675.patch                  |    1 +
 ...-04-18-Richard-Guenther-rguenther-suse.de.patch |    1 +
 .../0149-PR-target-48678.patch                     |    1 +
 .../gcc-4_6-branch-backports/0151-PR-c-46304.patch |    1 +
 ...tstrap-lto.mk-Remove-obsolete-requirement.patch |    1 +
 ...-04-20-Richard-Guenther-rguenther-suse.de.patch |    1 +
 .../0154-Backport-from-mainline.patch              |    1 +
 .../0155-PR-tree-optimization-48611.patch          |    1 +
 .../gcc-4_6-branch-backports/0156-PR-c-48657.patch |    1 +
 .../0157-PR-target-48288.patch                     |    1 +
 .../gcc-4_6-branch-backports/0159-PR-c-48594.patch |    1 +
 ...-finish_compound_literal-Don-t-put-an-arr.patch |    1 +
 ...lk_gimple_op-GIMPLE_CALL-Fix-couple-of-ov.patch |    1 +
 ...-04-21-Richard-Guenther-rguenther-suse.de.patch |    1 +
 .../0163-de.po-Update.patch                        |    1 +
 .../0164-PR-target-48708.patch                     |    1 +
 .../gcc-4_6-branch-backports/0166-PR-c-48716.patch |    1 +
 .../0167-PR-target-48723.patch                     |    1 +
 .../0168-PR-tree-optimization-48717.patch          |    1 +
 .../gcc-4_6-branch-backports/0170-Revert.patch     |    1 +
 .../gcc-4_6-branch-backports/0171-PR-c-48685.patch |    1 +
 ...616.c-dg-options-Add-fno-common-to-option.patch |    1 +
 ...-23-Jonathan-Wakely-jwakely.gcc-gmail.com.patch |    1 +
 .../0174-PR-preprocessor-48740.patch               |    1 +
 ...24-Paolo-Carlini-paolo.carlini-oracle.com.patch |    1 +
 .../gcc-4_6-branch-backports/0178-PR-c-48707.patch |    1 +
 ...-2011-04-26-Tobias-Burnus-burnus-net-b.de.patch |    1 +
 ...-04-26-Richard-Guenther-rguenther-suse.de.patch |    1 +
 .../0182-PR-tree-optimization-48734.patch          |    1 +
 .../0183-PR-debug-48768.patch                      |    1 +
 .../0184-de.po-Update.patch                        |    1 +
 .../gcc-4_6-branch-backports/0185-PR-c-48726.patch |    1 +
 .../gcc-4_6-branch-backports/0187-PR-c-42687.patch |    1 +
 .../gcc-4_6-branch-backports/0188-PR-c-48742.patch |    1 +
 ...gcc.dg-20020312-2.c-Add-definition-for-RX.patch |    1 +
 .../gcc-4_6-branch-backports/0190-PR-c-48046.patch |    1 +
 .../0192-PR-middle-end-48597.patch                 |    1 +
 ...-2011-04-28-Tobias-Burnus-burnus-net-b.de.patch |    1 +
 ...-2011-04-28-Tobias-Burnus-burnus-net-b.de.patch |    1 +
 .../0195-Fix-PR-c-48656.patch                      |    1 +
 .../0196-Backport-4.7-patchtes-to-4.6.patch        |    1 +
 ...-2011-04-29-Tobias-Burnus-burnus-net-b.de.patch |    1 +
 ...29-Paolo-Carlini-paolo.carlini-oracle.com.patch |    1 +
 .../gcc/gcc-4.6.0/gcc-arm-frename-registers.patch  |   25 --
 .../gcc/gcc-4.6.0/gcc-flags-for-build.patch        |    2 +
 .../gcc/gcc-4.6.0/gcc-ice-hack.dpatch              |  331 --------------------
 .../gcc/gcc-4.6.0/gcc-poison-dir-extend.patch      |    2 +
 .../gcc/gcc-4.6.0/gcc-poison-parameters.patch      |    2 +
 .../gcc-4.6.0/gcc-poison-system-directories.patch  |    2 +
 .../gcc-uclibc-locale-ctype_touplow_t.patch        |    2 +
 .../gcc/gcc-4.6.0/libstdc++-pic.dpatch             |   71 -----
 .../gcc/gcc-4.6.0/optional_libstdc.patch           |    2 +
 meta/recipes-devtools/gcc/gcc-4.6.0/pr30961.dpatch |  179 -----------
 meta/recipes-devtools/gcc/gcc-4.6.0/pr35942.patch  |   38 ---
 .../gcc/gcc-4.6.0/zecke-xgcc-cpp.patch             |    2 +
 meta/recipes-devtools/gcc/gcc-package-target.inc   |    1 +
 meta/recipes-devtools/gcc/gcc_4.3.3.bb             |    2 +-
 meta/recipes-devtools/gcc/gcc_4.5.1.bb             |    2 +-
 meta/recipes-devtools/gcc/gcc_csl-arm-2008q1.bb    |    2 +-
 .../fix_for_build_error_internal_error_call.patch  |    2 +
 .../gdb/gdb/gdbserver-cflags-last.diff             |    2 +
 .../gdb/gdb/kill_arm_map_symbols.patch             |    2 +
 .../recipes-devtools/gdb/gdb/libiberty-cross.patch |    2 +
 meta/recipes-devtools/gdb/gdb/no-werror.patch      |    2 +
 .../recipes-devtools/gdb/gdb/sim-install-6.6.patch |    2 +
 meta/recipes-devtools/gdb/gdb/sim-install.patch    |    2 +
 meta/recipes-devtools/gdb/gdb/uclibc.patch         |    2 +
 .../gnu-config/gnu-config/uclibc.patch             |    2 +
 .../intltool-0.40.6/intltool-nowarn-0.40.0.patch   |    2 +
 .../avoid_absolute_paths_for_general_utils.patch   |    2 +
 .../libtool/libtool/fix-final-rpath.patch          |    2 +
 .../libtool/libtool/prefix-manpage-fix.patch       |    2 +
 meta/recipes-devtools/libtool/libtool/prefix.patch |    2 +
 .../libtool/libtool/rename-with-sysroot.patch      |    2 +
 .../libtool/libtool/resolve-sysroot.patch          |    2 +
 .../libtool/libtool/trailingslash.patch            |    2 +
 .../libtool/libtool/use-sysroot-in-libpath.patch   |    2 +
 meta/recipes-devtools/m4/m4/ac_config_links.patch  |    2 +
 .../m4/m4/fix_for_circular_dependency.patch        |    2 +
 .../m4/m4/m4-1.4.9_extra_options.patch             |  169 ++++++++++
 meta/recipes-devtools/m4/m4/make.patch             |    1 +
 meta/recipes-devtools/make/files/SCCS.patch        |    1 +
 .../perl/files/Configure-multilib.patch            |    2 +
 .../python/python-pycurl/no-static-link.patch      |    2 +
 .../python-pygobject/generate-constants.patch      |    2 +
 .../python-pyrex/pyrex-fix-optimized-mode.patch    |    2 +
 .../01-use-proper-tools-for-cross-build.patch      |    2 +
 .../python/python/02-remove-test-for-cross.patch   |    2 +
 .../python/python/03-fix-tkinter-detection.patch   |    2 +
 .../python/python/04-default-is-optimized.patch    |    2 +
 .../python/05-enable-ctypes-cross-build.patch      |    2 +
 .../06-avoid_usr_lib_termcap_path_in_linking.patch |    2 +
 .../python/99-ignore-optimization-flag.patch       |    2 +
 meta/recipes-devtools/quilt/quilt/aclocal.patch    |    2 +
 .../quilt/quilt/gnu_patch_test_fix.patch           |    2 +
 meta/recipes-devtools/quilt/quilt/install.patch    |    2 +
 meta/recipes-devtools/quilt/quilt/non-gnu.patch    |    2 +
 .../recipes-devtools/tcltk/tcl/fix-configure.patch |    2 +
 .../tcltk/tcl/fix_non_native_build_issue.patch     |    2 +
 .../tcltk/tcl/tcl-add-soname.patch                 |    2 +
 .../files/dso_linking_change_build_fix.patch       |    2 +
 .../connector-msg-size-fix.patch                   |    2 +
 .../gmp/gmp-4.2.1/disable-stdc.patch               |    2 +
 meta/recipes-support/gmp/gmp/amd64.patch           |    2 +
 meta/recipes-support/gmp/gmp/configure.patch       |    2 +
 meta/recipes-support/gmp/gmp/sh4-asmfix.patch      |    2 +
 meta/recipes-support/gmp/gmp/use-includedir.patch  |    2 +
 304 files changed, 559 insertions(+), 2098 deletions(-)
 delete mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1/307-locale_facets.patch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1/602-sdk-libstdc++-includes.patch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1/arm-unbreak-eabi-armv4t.dpatch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1/gcc-4.0.2-e300c2c3.patch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1/gcc-arm-frename-registers.patch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1/gcc-ice-hack.dpatch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1/libstdc++-pic.dpatch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1/pr30961.dpatch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1/pr35942.patch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-4.6.0/307-locale_facets.patch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-4.6.0/602-sdk-libstdc++-includes.patch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-4.6.0/arm-bswapsi2.patch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-4.6.0/arm-unbreak-eabi-armv4t.dpatch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4.0.2-e300c2c3.patch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-4.6.0/gcc-arm-frename-registers.patch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-4.6.0/gcc-ice-hack.dpatch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-4.6.0/libstdc++-pic.dpatch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-4.6.0/pr30961.dpatch
 delete mode 100644 meta/recipes-devtools/gcc/gcc-4.6.0/pr35942.patch
 create mode 100644 meta/recipes-devtools/m4/m4/m4-1.4.9_extra_options.patch

-- 
1.7.3.4


