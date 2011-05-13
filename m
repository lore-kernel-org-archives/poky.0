Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E3D014C810FF
	for <poky@yoctoproject.org>; Thu, 12 May 2011 19:20:31 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 May 2011 17:20:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; d="scan'208";a="746532585"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga001.jf.intel.com with ESMTP; 12 May 2011 17:20:31 -0700
Message-Id: <c354513316be0de2074924b93271fc433d6dd144.1305245923.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305245922.git.nitin.a.kamble@intel.com>
References: <cover.1305245922.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 12 May 2011 16:13:47 -0700
Date: Thu, 12 May 2011 17:20:30 -0700
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
X-Mailman-Approved-At: Fri, 13 May 2011 00:07:12 -0500
Subject: [PATCH 06/25] gcc 4.5.1 4.6.0: update upstream-status for patches
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
X-List-Received-Date: Fri, 13 May 2011 00:20:33 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../gcc/gcc-4.5.1/COLLECT_GCC_OPTIONS.patch        |    2 ++
 .../GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch       |    2 ++
 .../gcc/gcc-4.5.1/cache-amnesia.patch              |    2 ++
 .../gcc-4.5.1/disable_relax_pic_calls_flag.patch   |    2 ++
 .../gcc/gcc-4.5.1/fortran-cross-compile-hack.patch |    2 ++
 .../gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch          |    2 ++
 .../gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch      |    2 ++
 .../gcc/gcc-4.5.1/gcc-flags-for-build.patch        |    2 ++
 .../gcc/gcc-4.5.1/gcc-poison-dir-extend.patch      |    2 ++
 .../gcc/gcc-4.5.1/gcc-poison-parameters.patch      |    2 ++
 .../gcc-4.5.1/gcc-poison-system-directories.patch  |    2 ++
 .../gcc-uclibc-locale-ctype_touplow_t.patch        |    2 ++
 .../libstdc++-emit-__cxa_end_cleanup-in-text.patch |    2 ++
 .../gcc/gcc-4.5.1/optional_libstdc.patch           |    2 ++
 .../gcc/gcc-4.5.1/zecke-xgcc-cpp.patch             |    1 +
 .../gcc/gcc-4.6.0/100-uclibc-conf.patch            |    2 ++
 .../gcc/gcc-4.6.0/103-uclibc-conf-noupstream.patch |    2 ++
 .../gcc/gcc-4.6.0/200-uclibc-locale.patch          |    2 ++
 .../gcc/gcc-4.6.0/203-uclibc-locale-no__x.patch    |    2 ++
 .../gcc-4.6.0/204-uclibc-locale-wchar_fix.patch    |    2 ++
 .../gcc/gcc-4.6.0/205-uclibc-locale-update.patch   |    2 ++
 .../gcc/gcc-4.6.0/301-missing-execinfo_h.patch     |    2 ++
 .../gcc/gcc-4.6.0/302-c99-snprintf.patch           |    2 ++
 .../gcc/gcc-4.6.0/303-c99-complex-ugly-hack.patch  |    2 ++
 .../gcc/gcc-4.6.0/304-index_macro.patch            |    2 ++
 .../gcc-4.6.0/305-libmudflap-susv3-legacy.patch    |    2 ++
 .../gcc/gcc-4.6.0/306-libstdc++-namespace.patch    |    2 ++
 .../recipes-devtools/gcc/gcc-4.6.0/64bithack.patch |    2 ++
 .../gcc/gcc-4.6.0/740-sh-pr24836.patch             |    2 ++
 .../gcc/gcc-4.6.0/800-arm-bigendian.patch          |    2 ++
 .../gcc/gcc-4.6.0/904-flatten-switch-stmt-00.patch |    2 ++
 .../gcc/gcc-4.6.0/COLLECT_GCC_OPTIONS.patch        |    2 ++
 .../GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch       |    2 ++
 .../gcc/gcc-4.6.0/arm-nolibfloat.patch             |    2 ++
 .../gcc/gcc-4.6.0/arm-softfloat.patch              |    2 ++
 .../gcc/gcc-4.6.0/cache-amnesia.patch              |    2 ++
 .../gcc-4.6.0/disable_relax_pic_calls_flag.patch   |    2 ++
 .../gcc/gcc-4.6.0/fortran-cross-compile-hack.patch |    2 ++
 .../gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch          |    2 ++
 .../gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch      |    2 ++
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
 .../gcc/gcc-4.6.0/gcc-flags-for-build.patch        |    2 ++
 .../gcc/gcc-4.6.0/gcc-poison-dir-extend.patch      |    2 ++
 .../gcc/gcc-4.6.0/gcc-poison-parameters.patch      |    2 ++
 .../gcc-4.6.0/gcc-poison-system-directories.patch  |    2 ++
 .../gcc-uclibc-locale-ctype_touplow_t.patch        |    2 ++
 .../gcc/gcc-4.6.0/optional_libstdc.patch           |    2 ++
 .../gcc/gcc-4.6.0/zecke-xgcc-cpp.patch             |    2 ++
 207 files changed, 253 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/COLLECT_GCC_OPTIONS.patch b/meta/recipes-devtools/gcc/gcc-4.5.1/COLLECT_GCC_OPTIONS.patch
index 3e3dec7..e8264e2 100644
--- a/meta/recipes-devtools/gcc/gcc-4.5.1/COLLECT_GCC_OPTIONS.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.5.1/COLLECT_GCC_OPTIONS.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 #This patck added --sysroot into COLLECT_GCC_OPTIONS which is used to
 #invoke collect2.
 
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch b/meta/recipes-devtools/gcc/gcc-4.5.1/GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch
index 9ae01c3..98b84ba 100644
--- a/meta/recipes-devtools/gcc/gcc-4.5.1/GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.5.1/GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 # by default c++ include directories are not relative to "--sysroot"
 # which brings one trouble when using the toolchain in an environment
 # where the build directory generating that toolchain doesn't exist,
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/cache-amnesia.patch b/meta/recipes-devtools/gcc/gcc-4.5.1/cache-amnesia.patch
index b889f9b..4a4bc7d 100644
--- a/meta/recipes-devtools/gcc/gcc-4.5.1/cache-amnesia.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.5.1/cache-amnesia.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 ---
  gcc/configure    |    2 +-
  gcc/configure.ac |    2 +-
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/disable_relax_pic_calls_flag.patch b/meta/recipes-devtools/gcc/gcc-4.5.1/disable_relax_pic_calls_flag.patch
index b1d5a1a..1b1a95b 100644
--- a/meta/recipes-devtools/gcc/gcc-4.5.1/disable_relax_pic_calls_flag.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.5.1/disable_relax_pic_calls_flag.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 GCC: disable MASK_RELAX_PIC_CALLS bit
 
 The new feature added after 4.3.3
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/fortran-cross-compile-hack.patch b/meta/recipes-devtools/gcc/gcc-4.5.1/fortran-cross-compile-hack.patch
index 348c770..5a89559 100644
--- a/meta/recipes-devtools/gcc/gcc-4.5.1/fortran-cross-compile-hack.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.5.1/fortran-cross-compile-hack.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 * Fortran would have searched for arm-angstrom-gnueabi-gfortran but would have used
   used gfortan. For gcc_4.2.2.bb we want to use the gfortran compiler from our cross
   directory.
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch b/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch
index f33e6c1..3c5dea3 100644
--- a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 ---
  configure    |    2 +-
  configure.ac |    2 +-
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch b/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch
index af0b81b..eac302a 100644
--- a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [Backport]
+
 Before committing, I noticed that PR/32161 was marked as a dup of PR/32009, but my previous patch did not fix it.
 
 This alternative patch is better because it lets you just use CFLAGS_FOR_TARGET to set the compilation flags for libgcc. Since bootstrapped target libraries are never compiled with the native compiler, it makes little sense to use different flags for stage1 and later stages. And it also makes little sense to use a different variable than CFLAGS_FOR_TARGET.
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-flags-for-build.patch b/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-flags-for-build.patch
index 5189285..2cf54ae 100644
--- a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-flags-for-build.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-flags-for-build.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: gcc-4.5/Makefile.def
 ===================================================================
 --- gcc-4.5.orig/Makefile.def
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-dir-extend.patch b/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-dir-extend.patch
index d171207..94e5c68 100644
--- a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-dir-extend.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-dir-extend.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Add /sw/include and /opt/include based on the original
 zecke-no-host-includes.patch patch.  The original patch checked for
 /usr/include, /sw/include and /opt/include and then triggered a failure and
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-parameters.patch b/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-parameters.patch
index 3cc7cba..74d4527 100644
--- a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-parameters.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-parameters.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 gcc: add poison parameters detection
 
 Add the logic that, if not configured with "--enable-target-optspace",
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-system-directories.patch b/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-system-directories.patch
index 04043ff..5904712 100644
--- a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-system-directories.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-system-directories.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [distribution: codesourcery]
+
        gcc/
        2008-07-02  Joseph Myers  <joseph@codesourcery.com>
        * c-incpath.c: Include toplev.h.
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-uclibc-locale-ctype_touplow_t.patch b/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-uclibc-locale-ctype_touplow_t.patch
index 4f94fc9..e3e2292 100644
--- a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-uclibc-locale-ctype_touplow_t.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-uclibc-locale-ctype_touplow_t.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: gcc-4.5/libstdc++-v3/config/locale/generic/c_locale.h
 ===================================================================
 --- gcc-4.5.orig/libstdc++-v3/config/locale/generic/c_locale.h	2010-06-30 22:30:53.993316002 -0700
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/libstdc++-emit-__cxa_end_cleanup-in-text.patch b/meta/recipes-devtools/gcc/gcc-4.5.1/libstdc++-emit-__cxa_end_cleanup-in-text.patch
index ada36a5..6f958fb 100644
--- a/meta/recipes-devtools/gcc/gcc-4.5.1/libstdc++-emit-__cxa_end_cleanup-in-text.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.5.1/libstdc++-emit-__cxa_end_cleanup-in-text.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 2010-06-07  Khem Raj  <raj.khem@gmail.com>
 
 	* libsupc++/eh_arm.cc (__cxa_end_cleanup): Use .pushsection/.popsection
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/optional_libstdc.patch b/meta/recipes-devtools/gcc/gcc-4.5.1/optional_libstdc.patch
index 0f74353..1da8699 100644
--- a/meta/recipes-devtools/gcc/gcc-4.5.1/optional_libstdc.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.5.1/optional_libstdc.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 gcc-runtime builds libstdc++ separately from gcc-cross-*. Its configure tests using g++ 
 will not run correctly since my default the linker will try and link against libstdc++
 which shouldn't exist yet. We need an option to disable the automatically added -lstdc++
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/zecke-xgcc-cpp.patch b/meta/recipes-devtools/gcc/gcc-4.5.1/zecke-xgcc-cpp.patch
index 4b827d6..d0337df 100644
--- a/meta/recipes-devtools/gcc/gcc-4.5.1/zecke-xgcc-cpp.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.5.1/zecke-xgcc-cpp.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [embedded specific]
 upstream: n/a
 comment: Use the preprocessor we have just compiled instead the one of
 the system. There might be incompabilities between us and them.
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/100-uclibc-conf.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/100-uclibc-conf.patch
index 313b828..b2981e0 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/100-uclibc-conf.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/100-uclibc-conf.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: gcc-4.6.0/contrib/regression/objs-gcc.sh
 ===================================================================
 --- gcc-4.6.0.orig/contrib/regression/objs-gcc.sh
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/103-uclibc-conf-noupstream.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/103-uclibc-conf-noupstream.patch
index b28fac2..22c6580 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/103-uclibc-conf-noupstream.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/103-uclibc-conf-noupstream.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Corrects sub machine arch corectly
 
 Index: gcc-4.6.0/gcc/config.gcc
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/200-uclibc-locale.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/200-uclibc-locale.patch
index 0f2caff..b8ea78d 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/200-uclibc-locale.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/200-uclibc-locale.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: gcc-4.6.0/libstdc++-v3/acinclude.m4
 ===================================================================
 --- gcc-4.6.0.orig/libstdc++-v3/acinclude.m4
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/203-uclibc-locale-no__x.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/203-uclibc-locale-no__x.patch
index 78743c6..c602e91 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/203-uclibc-locale-no__x.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/203-uclibc-locale-no__x.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: gcc-4.6.0/libstdc++-v3/config/locale/uclibc/c++locale_internal.h
 ===================================================================
 --- gcc-4.6.0.orig/libstdc++-v3/config/locale/uclibc/c++locale_internal.h
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/204-uclibc-locale-wchar_fix.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/204-uclibc-locale-wchar_fix.patch
index 2d8d70a..896d2a5 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/204-uclibc-locale-wchar_fix.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/204-uclibc-locale-wchar_fix.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: gcc-4.6.0/libstdc++-v3/config/locale/uclibc/monetary_members.cc
 ===================================================================
 --- gcc-4.6.0.orig/libstdc++-v3/config/locale/uclibc/monetary_members.cc
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/205-uclibc-locale-update.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/205-uclibc-locale-update.patch
index 911ad51..743017b 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/205-uclibc-locale-update.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/205-uclibc-locale-update.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: gcc-4.6.0/libstdc++-v3/config/locale/uclibc/c_locale.cc
 ===================================================================
 --- gcc-4.6.0.orig/libstdc++-v3/config/locale/uclibc/c_locale.cc
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/301-missing-execinfo_h.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/301-missing-execinfo_h.patch
index 99bd229..9589822 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/301-missing-execinfo_h.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/301-missing-execinfo_h.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: gcc-4.6.0/boehm-gc/include/gc.h
 ===================================================================
 --- gcc-4.6.0.orig/boehm-gc/include/gc.h
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/302-c99-snprintf.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/302-c99-snprintf.patch
index 9f841ae..f02c98d 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/302-c99-snprintf.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/302-c99-snprintf.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: gcc-4.6.0/libstdc++-v3/include/c_std/cstdio
 ===================================================================
 --- gcc-4.6.0.orig/libstdc++-v3/include/c_std/cstdio
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/303-c99-complex-ugly-hack.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/303-c99-complex-ugly-hack.patch
index 47ae88e..db594cb 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/303-c99-complex-ugly-hack.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/303-c99-complex-ugly-hack.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 Index: gcc-4.6.0/libstdc++-v3/configure
 ===================================================================
 --- gcc-4.6.0.orig/libstdc++-v3/configure
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/304-index_macro.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/304-index_macro.patch
index f6eedb3..f103765 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/304-index_macro.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/304-index_macro.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: gcc-4.6.0/libstdc++-v3/include/ext/rope
 ===================================================================
 --- gcc-4.6.0.orig/libstdc++-v3/include/ext/rope
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/305-libmudflap-susv3-legacy.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/305-libmudflap-susv3-legacy.patch
index 4cabb36..8d9a4d8 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/305-libmudflap-susv3-legacy.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/305-libmudflap-susv3-legacy.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 Index: gcc-4.6.0/libmudflap/mf-hooks2.c
 ===================================================================
 --- gcc-4.6.0.orig/libmudflap/mf-hooks2.c
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/306-libstdc++-namespace.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/306-libstdc++-namespace.patch
index 1fbf043..e99bf96 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/306-libstdc++-namespace.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/306-libstdc++-namespace.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: gcc-4.6.0/libstdc++-v3/config/locale/uclibc/messages_members.h
 ===================================================================
 --- gcc-4.6.0.orig/libstdc++-v3/config/locale/uclibc/messages_members.h
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/64bithack.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/64bithack.patch
index 11cbbed..84962e6 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/64bithack.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/64bithack.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 By default gcc places 64 bit libs in a lib64 directory. This makes it use 
 "lib" instead.
 
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/740-sh-pr24836.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/740-sh-pr24836.patch
index 89a3934..bc4ea5d 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/740-sh-pr24836.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/740-sh-pr24836.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 http://sourceforge.net/mailarchive/forum.php?thread_id=8959304&forum_id=5348
 http://gcc.gnu.org/bugzilla/show_bug.cgi?id=24836
 
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/800-arm-bigendian.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/800-arm-bigendian.patch
index 50088cf..8c8046d 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/800-arm-bigendian.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/800-arm-bigendian.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 By Lennert Buytenhek <buytenh@wantstofly.org>
 Adds support for arm*b-linux* big-endian ARM targets
 
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/904-flatten-switch-stmt-00.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/904-flatten-switch-stmt-00.patch
index 2623313..ce3e6b5 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/904-flatten-switch-stmt-00.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/904-flatten-switch-stmt-00.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Hi,
 
 The attached patch makes sure that we create smaller object code for
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/COLLECT_GCC_OPTIONS.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/COLLECT_GCC_OPTIONS.patch
index 8b53b83..38856c2 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/COLLECT_GCC_OPTIONS.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/COLLECT_GCC_OPTIONS.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 #This patck added --sysroot into COLLECT_GCC_OPTIONS which is used to
 #invoke collect2.
 
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch
index ffb2267..05b2fa9 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 # by default c++ include directories are not relative to "--sysroot"
 # which brings one trouble when using the toolchain in an environment
 # where the build directory generating that toolchain doesn't exist,
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/arm-nolibfloat.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/arm-nolibfloat.patch
index 2175519..59a9ec3 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/arm-nolibfloat.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/arm-nolibfloat.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 # Dimitry Andric <dimitry@andric.com>, 2004-05-01
 #
 # * Removed the extra -lfloat option from LIBGCC_SPEC, since it isn't needed
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/arm-softfloat.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/arm-softfloat.patch
index 908e2d8..01bf80d 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/arm-softfloat.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/arm-softfloat.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: gcc-4.6.0/gcc/config/arm/t-linux
 ===================================================================
 --- gcc-4.6.0.orig/gcc/config/arm/t-linux
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/cache-amnesia.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/cache-amnesia.patch
index 3a98b02..72ead31 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/cache-amnesia.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/cache-amnesia.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 ---
  gcc/configure    |    2 +-
  gcc/configure.ac |    2 +-
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/disable_relax_pic_calls_flag.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/disable_relax_pic_calls_flag.patch
index 4f73cc8..22c106d 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/disable_relax_pic_calls_flag.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/disable_relax_pic_calls_flag.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 GCC: disable MASK_RELAX_PIC_CALLS bit
 
 The new feature added after 4.3.3
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/fortran-cross-compile-hack.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/fortran-cross-compile-hack.patch
index 348c770..5a89559 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/fortran-cross-compile-hack.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/fortran-cross-compile-hack.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 * Fortran would have searched for arm-angstrom-gnueabi-gfortran but would have used
   used gfortan. For gcc_4.2.2.bb we want to use the gfortran compiler from our cross
   directory.
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch
index d249c1c..ce82740 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 ---
  configure    |    2 +-
  configure.ac |    2 +-
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch
index 428dd08..6d02f71 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Before committing, I noticed that PR/32161 was marked as a dup of PR/32009, but my previous patch did not fix it.
 
 This alternative patch is better because it lets you just use CFLAGS_FOR_TARGET to set the compilation flags for libgcc. Since bootstrapped target libraries are never compiled with the native compiler, it makes little sense to use different flags for stage1 and later stages. And it also makes little sense to use a different variable than CFLAGS_FOR_TARGET.
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0002-Backport-from-mainline.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0002-Backport-from-mainline.patch
index 27e1a88..0d8f269 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0002-Backport-from-mainline.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0002-Backport-from-mainline.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From af3385141f9bfe32ab89165bfc98a7ea2ff19278 Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sat, 26 Mar 2011 09:19:36 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0003-Backport-from-mainline.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0003-Backport-from-mainline.patch
index 596042b..f9e806c 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0003-Backport-from-mainline.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0003-Backport-from-mainline.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 540b311d6b6aa2e50a9feb45255361e498bb5198 Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sat, 26 Mar 2011 09:20:34 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0004-Backport-from-mainline.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0004-Backport-from-mainline.patch
index 95c7c30..c6f1c90 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0004-Backport-from-mainline.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0004-Backport-from-mainline.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 125ee3cf946de59472c02ffd792aca4f1045669f Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sat, 26 Mar 2011 09:21:34 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0005-Backport-from-mainline.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0005-Backport-from-mainline.patch
index 08d8251..200b3b1 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0005-Backport-from-mainline.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0005-Backport-from-mainline.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 5bc59e25607b755798008d5e0d79ca4cea6711ed Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sat, 26 Mar 2011 09:23:01 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0006-Backport-from-mainline.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0006-Backport-from-mainline.patch
index 1b5e86f..c042a10 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0006-Backport-from-mainline.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0006-Backport-from-mainline.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From b6ed53c51ca6090f3f422e6223e8dc3b150f0393 Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sat, 26 Mar 2011 09:24:06 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0007-Backport-from-mainline.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0007-Backport-from-mainline.patch
index a432d63..4b72987 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0007-Backport-from-mainline.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0007-Backport-from-mainline.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From d4d74232bca4968da87cd8157cc2d6139115946e Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sat, 26 Mar 2011 09:24:53 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0008-2011-03-26-Paolo-Carlini-paolo.carlini-oracle.com.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0008-2011-03-26-Paolo-Carlini-paolo.carlini-oracle.com.patch
index f4b1176..4b99558 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0008-2011-03-26-Paolo-Carlini-paolo.carlini-oracle.com.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0008-2011-03-26-Paolo-Carlini-paolo.carlini-oracle.com.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 6bb9234e718d4b75a9a1e63d523d08c3392ba55f Mon Sep 17 00:00:00 2001
 From: paolo <paolo@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sat, 26 Mar 2011 10:02:34 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0009-Backport-from-mainline.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0009-Backport-from-mainline.patch
index 225ed1f..9c0ad0e 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0009-Backport-from-mainline.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0009-Backport-from-mainline.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 8c9cc2d03061ea065b70695ef4903a0390c01fb8 Mon Sep 17 00:00:00 2001
 From: uros <uros@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sat, 26 Mar 2011 18:41:02 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0012-2011-03-27-Jonathan-Wakely-jwakely.gcc-gmail.com.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0012-2011-03-27-Jonathan-Wakely-jwakely.gcc-gmail.com.patch
index a1340d9..14f29cb 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0012-2011-03-27-Jonathan-Wakely-jwakely.gcc-gmail.com.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0012-2011-03-27-Jonathan-Wakely-jwakely.gcc-gmail.com.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From e2965db317ee7efd916963c87b9c34023eefda54 Mon Sep 17 00:00:00 2001
 From: redi <redi@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sun, 27 Mar 2011 20:08:35 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0014-2011-03-28-Richard-Guenther-rguenther-suse.de.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0014-2011-03-28-Richard-Guenther-rguenther-suse.de.patch
index f8c0b42..e5ae726 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0014-2011-03-28-Richard-Guenther-rguenther-suse.de.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0014-2011-03-28-Richard-Guenther-rguenther-suse.de.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 2631216d2fedc5339a5edcac64db1ab5d9269498 Mon Sep 17 00:00:00 2001
 From: rguenth <rguenth@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Mon, 28 Mar 2011 10:14:34 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0015-gcc.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0015-gcc.patch
index 4f8cb4d..2ad39f4 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0015-gcc.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0015-gcc.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 2fe380ffa4f1ca0fba1e4915df127992eb977569 Mon Sep 17 00:00:00 2001
 From: rsandifo <rsandifo@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Mon, 28 Mar 2011 10:22:57 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0016-Backport-from-mainline.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0016-Backport-from-mainline.patch
index 3e2beb9..d8945d6 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0016-Backport-from-mainline.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0016-Backport-from-mainline.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From c471cbe03c049ed4a97708936342e4dd28606d22 Mon Sep 17 00:00:00 2001
 From: ro <ro@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Mon, 28 Mar 2011 16:46:27 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0017-libgfortran.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0017-libgfortran.patch
index a2df0f7..5464c62 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0017-libgfortran.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0017-libgfortran.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From d70e14fe2c9c3fc20d9bc1dca7cfcc3d6bb1301e Mon Sep 17 00:00:00 2001
 From: ro <ro@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Mon, 28 Mar 2011 17:09:27 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0019-2011-03-29-Andreas-Krebbel-Andreas.Krebbel-de.ibm.co.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0019-2011-03-29-Andreas-Krebbel-Andreas.Krebbel-de.ibm.co.patch
index 748bca5..9614fe7 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0019-2011-03-29-Andreas-Krebbel-Andreas.Krebbel-de.ibm.co.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0019-2011-03-29-Andreas-Krebbel-Andreas.Krebbel-de.ibm.co.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 6f57329da3c7308ccf6b1740ead898d668ec24f9 Mon Sep 17 00:00:00 2001
 From: krebbel <krebbel@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 29 Mar 2011 11:57:40 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0020-config-rx-rx.h-LABEL_ALIGN_AFTER_BARRIER-Define.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0020-config-rx-rx.h-LABEL_ALIGN_AFTER_BARRIER-Define.patch
index ea74a08..a929828 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0020-config-rx-rx.h-LABEL_ALIGN_AFTER_BARRIER-Define.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0020-config-rx-rx.h-LABEL_ALIGN_AFTER_BARRIER-Define.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 04688242805dcf2a1e9c8948a3d15611d88c1520 Mon Sep 17 00:00:00 2001
 From: nickc <nickc@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 29 Mar 2011 12:27:07 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0021-c.opt-Add-std-c-03.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0021-c.opt-Add-std-c-03.patch
index 8b4c762..0b8d114 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0021-c.opt-Add-std-c-03.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0021-c.opt-Add-std-c-03.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From e8c1376d80e89383a6eff16349bf2071b571a47f Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 29 Mar 2011 14:23:59 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0022-PR-c-47570.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0022-PR-c-47570.patch
index 09221b3..7f2e35a 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0022-PR-c-47570.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0022-PR-c-47570.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 1d1e50e7f9e7511a01ee95d7cffd8311c9b84d8b Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 29 Mar 2011 14:24:09 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0023-PR-c-47504.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0023-PR-c-47504.patch
index 23aebda..dc707ee 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0023-PR-c-47504.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0023-PR-c-47504.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 4ebec68ee3aee90ba13a4c4bc70afbb4a613468b Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 29 Mar 2011 14:24:19 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0024-except.c-build_noexcept_spec-Call-cxx_constant_value.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0024-except.c-build_noexcept_spec-Call-cxx_constant_value.patch
index 096ec08..bb21bb0 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0024-except.c-build_noexcept_spec-Call-cxx_constant_value.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0024-except.c-build_noexcept_spec-Call-cxx_constant_value.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 3a987d8e4a8c885fe7fc54595ebdd82d5291e1e7 Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 29 Mar 2011 14:24:30 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0025-c-family.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0025-c-family.patch
index b42197e..321bcb1 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0025-c-family.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0025-c-family.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 21e7558c6e06c35620e80478f4e6b5ccd1c78aa9 Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 29 Mar 2011 14:24:42 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0026-decl2.c-cp_check_const_attributes-New.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0026-decl2.c-cp_check_const_attributes-New.patch
index 15136bf..7cee35b 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0026-decl2.c-cp_check_const_attributes-New.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0026-decl2.c-cp_check_const_attributes-New.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 87e73453e8135e72f592c1d7c84da942e7a1e308 Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 29 Mar 2011 14:24:59 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0027-Core-1148.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0027-Core-1148.patch
index f348e12..6d46c90 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0027-Core-1148.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0027-Core-1148.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From c68e41052387396cba4a066d8e9658dc2011baf0 Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 29 Mar 2011 14:25:10 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0028-PR-c-48313.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0028-PR-c-48313.patch
index f37fb03..d0b5204 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0028-PR-c-48313.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0028-PR-c-48313.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 8d72f0bd42615d92c0db226238694eedb52914d3 Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 29 Mar 2011 14:25:22 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0029-PR-c-47999.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0029-PR-c-47999.patch
index d890d92..59af9ac 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0029-PR-c-47999.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0029-PR-c-47999.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From d1f71a5193dd2b3debd551f3dc0e0d237acf7e81 Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 29 Mar 2011 14:25:37 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0030-pt.c-build_non_dependent_expr-Keep-dereferences-outs.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0030-pt.c-build_non_dependent_expr-Keep-dereferences-outs.patch
index 343e0ce..7272d32 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0030-pt.c-build_non_dependent_expr-Keep-dereferences-outs.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0030-pt.c-build_non_dependent_expr-Keep-dereferences-outs.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 6ec20c02d4514be339f0112d793794abf60451a7 Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 29 Mar 2011 14:25:51 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0031-call.c-reference_binding-Allow-direct-binding-to-an-.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0031-call.c-reference_binding-Allow-direct-binding-to-an-.patch
index b166281..a941c5d 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0031-call.c-reference_binding-Allow-direct-binding-to-an-.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0031-call.c-reference_binding-Allow-direct-binding-to-an-.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From af19d0c50df96adb55baaf54026ad82a9d256868 Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 29 Mar 2011 14:26:00 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0032-Core-1232.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0032-Core-1232.patch
index 484d201..4f2535a 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0032-Core-1232.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0032-Core-1232.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 1370bfdaf3735fc1038436cfc86b7cfe43d3eaf0 Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 29 Mar 2011 14:26:10 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0033-semantics.c-is_valid_constexpr_fn-Specify-input-loca.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0033-semantics.c-is_valid_constexpr_fn-Specify-input-loca.patch
index 8edeac9..70684de 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0033-semantics.c-is_valid_constexpr_fn-Specify-input-loca.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0033-semantics.c-is_valid_constexpr_fn-Specify-input-loca.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 7ca62e4f7e0e27a4282dc14e5b89c389d5c194bb Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 29 Mar 2011 14:26:21 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0034-PR-c-48296.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0034-PR-c-48296.patch
index 084a57c..58cdcb2 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0034-PR-c-48296.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0034-PR-c-48296.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From d67703129d516043d4e43bdf79a17889f5abc3f7 Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 29 Mar 2011 14:26:33 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0035-PR-c-48166.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0035-PR-c-48166.patch
index 0c6990d..5be33c7 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0035-PR-c-48166.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0035-PR-c-48166.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 709a81571cc3f418f51f95ed9291b4f2fabc577c Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 29 Mar 2011 16:07:15 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0037-config-alpha-alpha.c-alpha_sr_alias_set-Don-t-define.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0037-config-alpha-alpha.c-alpha_sr_alias_set-Don-t-define.patch
index 7c61784..03a15a0 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0037-config-alpha-alpha.c-alpha_sr_alias_set-Don-t-define.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0037-config-alpha-alpha.c-alpha_sr_alias_set-Don-t-define.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 14fb9260e8c94249305dba567e7e242ac3d30fa7 Mon Sep 17 00:00:00 2001
 From: uros <uros@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 29 Mar 2011 18:24:02 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0038-PR-c-48319.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0038-PR-c-48319.patch
index d76e448..bc6524c 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0038-PR-c-48319.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0038-PR-c-48319.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 4af193055b0dcc204387ba06e11a053c5b55ad15 Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 29 Mar 2011 18:47:47 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0039-PR-preprocessor-48248.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0039-PR-preprocessor-48248.patch
index b06340b..eb441be 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0039-PR-preprocessor-48248.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0039-PR-preprocessor-48248.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 0d6afd28da26c4b09e1eb2b16d7a3c021fae7372 Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 29 Mar 2011 20:30:06 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0040-PR-debug-48253.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0040-PR-debug-48253.patch
index 872011c..a315d51 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0040-PR-debug-48253.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0040-PR-debug-48253.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From e4e229cd56063482aced7df857e82512b846435d Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 29 Mar 2011 22:47:59 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0042-PR-c-48265.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0042-PR-c-48265.patch
index bc7cfa6..c9f747c 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0042-PR-c-48265.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0042-PR-c-48265.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From ec2d33835ee5855060878da89d4051fa06af9e97 Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 30 Mar 2011 02:16:37 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0043-Fix-a-typo-in-FLOAT_SSE_REGS.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0043-Fix-a-typo-in-FLOAT_SSE_REGS.patch
index 29d7ecf..0426d06 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0043-Fix-a-typo-in-FLOAT_SSE_REGS.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0043-Fix-a-typo-in-FLOAT_SSE_REGS.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 87c5c4ec5bee02725cb4bd4f81bb3c86a0277a81 Mon Sep 17 00:00:00 2001
 From: hjl <hjl@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 30 Mar 2011 10:43:55 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0044-PR-c-48281.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0044-PR-c-48281.patch
index 317400a..adbfb49 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0044-PR-c-48281.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0044-PR-c-48281.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 541566b2d3b46207159abb1f59970bb11078e57e Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 30 Mar 2011 18:05:43 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0045-PR-c-48369.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0045-PR-c-48369.patch
index 2506d95..6fc1423 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0045-PR-c-48369.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0045-PR-c-48369.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 61759009408d9f43af89eaeaff769a656416e1af Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 30 Mar 2011 19:50:17 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0046-PR-c-48212.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0046-PR-c-48212.patch
index 7db61ba..8e7b42f 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0046-PR-c-48212.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0046-PR-c-48212.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From f23bf88450af23287387d878036f78042093d61b Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 30 Mar 2011 20:29:43 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0048-2011-03-31-Richard-Guenther-rguenther-suse.de.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0048-2011-03-31-Richard-Guenther-rguenther-suse.de.patch
index 4a3ae06..a64e6f1 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0048-2011-03-31-Richard-Guenther-rguenther-suse.de.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0048-2011-03-31-Richard-Guenther-rguenther-suse.de.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From b3287343bd8870538aee70687286d78881ee8b81 Mon Sep 17 00:00:00 2001
 From: rguenth <rguenth@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Thu, 31 Mar 2011 10:00:44 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0049-PR-target-48142.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0049-PR-target-48142.patch
index 11d3e1e..d6d469f 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0049-PR-target-48142.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0049-PR-target-48142.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 18bc61fc490330f5dc59639626fa9bb5269e31d7 Mon Sep 17 00:00:00 2001
 From: ebotcazou <ebotcazou@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Thu, 31 Mar 2011 11:14:41 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0050-PR-target-16292.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0050-PR-target-16292.patch
index 638bcb8..b77504d 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0050-PR-target-16292.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0050-PR-target-16292.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From e9265f24f30b22d79d2ea4013dd32a491a12d00c Mon Sep 17 00:00:00 2001
 From: ro <ro@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Thu, 31 Mar 2011 15:05:47 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0051-PR-c-48280.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0051-PR-c-48280.patch
index a7d37a8..ab9b933 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0051-PR-c-48280.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0051-PR-c-48280.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From c965b9c986732377eb96e00f7266e281f345a00b Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Thu, 31 Mar 2011 20:33:07 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0053-Merge-r171807-from-trunk-to-the-4.6-release-branch-t.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0053-Merge-r171807-from-trunk-to-the-4.6-release-branch-t.patch
index a2094fe..bc6f4f1 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0053-Merge-r171807-from-trunk-to-the-4.6-release-branch-t.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0053-Merge-r171807-from-trunk-to-the-4.6-release-branch-t.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 5e28e486dbc793184ca462b8b528f5eff3d4f2ef Mon Sep 17 00:00:00 2001
 From: jyasskin <jyasskin@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Fri, 1 Apr 2011 01:07:46 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0054-Backport-from-mainline.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0054-Backport-from-mainline.patch
index ebad5c9..19b3bbb 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0054-Backport-from-mainline.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0054-Backport-from-mainline.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From f8ae59386457b39085b086d04a8cd96e4450f167 Mon Sep 17 00:00:00 2001
 From: abel <abel@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Fri, 1 Apr 2011 11:07:44 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0056-config-spu-t-spu-elf-dp-bit.c-Use-instead-of.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0056-config-spu-t-spu-elf-dp-bit.c-Use-instead-of.patch
index 9238542..8f8b294 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0056-config-spu-t-spu-elf-dp-bit.c-Use-instead-of.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0056-config-spu-t-spu-elf-dp-bit.c-Use-instead-of.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 5b6ffdded3fd04395f72852e2a201d011d10a060 Mon Sep 17 00:00:00 2001
 From: uweigand <uweigand@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Fri, 1 Apr 2011 17:17:59 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0058-2011-04-02-Jonathan-Wakely-redi-gcc.gnu.org.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0058-2011-04-02-Jonathan-Wakely-redi-gcc.gnu.org.patch
index bcc1ae5..eeb2359 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0058-2011-04-02-Jonathan-Wakely-redi-gcc.gnu.org.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0058-2011-04-02-Jonathan-Wakely-redi-gcc.gnu.org.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 0d43ff3bbc445b0264f804cd6449069182045678 Mon Sep 17 00:00:00 2001
 From: redi <redi@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sat, 2 Apr 2011 15:34:01 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0060-be.po-da.po-de.po-el.po-es.po-fi.po-fr.po-id.po-ja.p.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0060-be.po-da.po-de.po-el.po-es.po-fi.po-fr.po-id.po-ja.p.patch
index 955528b..82d3cdb 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0060-be.po-da.po-de.po-el.po-es.po-fi.po-fr.po-id.po-ja.p.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0060-be.po-da.po-de.po-el.po-es.po-fi.po-fr.po-id.po-ja.p.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From ec0a81cb355c0fb165edd6eba2038cf77e5aae47 Mon Sep 17 00:00:00 2001
 From: jsm28 <jsm28@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sun, 3 Apr 2011 11:30:58 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0061-be.po-ca.po-da.po-de.po-el.po-es.po-fi.po-fr.po-id.p.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0061-be.po-ca.po-da.po-de.po-el.po-es.po-fi.po-fr.po-id.p.patch
index f70eecc..327e8cb 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0061-be.po-ca.po-da.po-de.po-el.po-es.po-fi.po-fr.po-id.p.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0061-be.po-ca.po-da.po-de.po-el.po-es.po-fi.po-fr.po-id.p.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 2f00fb35a87bcbae197b96a7259b1d94f3b4dc1f Mon Sep 17 00:00:00 2001
 From: jsm28 <jsm28@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sun, 3 Apr 2011 11:34:03 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0063-gfortran.dg-bessel_6.f90-Use-dg-add-options-ieee.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0063-gfortran.dg-bessel_6.f90-Use-dg-add-options-ieee.patch
index 91ae06c..830ef44 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0063-gfortran.dg-bessel_6.f90-Use-dg-add-options-ieee.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0063-gfortran.dg-bessel_6.f90-Use-dg-add-options-ieee.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From e26756e1112552489e123c8ed7ed038beae89c5b Mon Sep 17 00:00:00 2001
 From: ro <ro@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Mon, 4 Apr 2011 15:55:33 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0064-2011-04-04-Janus-Weil-janus-gcc.gnu.org.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0064-2011-04-04-Janus-Weil-janus-gcc.gnu.org.patch
index 5491aa5..67d6812 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0064-2011-04-04-Janus-Weil-janus-gcc.gnu.org.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0064-2011-04-04-Janus-Weil-janus-gcc.gnu.org.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From ca7759868733b4570e496b889e711523640fc582 Mon Sep 17 00:00:00 2001
 From: janus <janus@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Mon, 4 Apr 2011 18:53:34 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0065-es.po-Update.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0065-es.po-Update.patch
index 24c4b1a..8d919c3 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0065-es.po-Update.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0065-es.po-Update.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 0e497997f5e241721dece71b322621d24abd4a04 Mon Sep 17 00:00:00 2001
 From: jsm28 <jsm28@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Mon, 4 Apr 2011 22:20:34 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0067-The-parameters-for-functions-from-the-frexp-family-w.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0067-The-parameters-for-functions-from-the-frexp-family-w.patch
index 694877c..9f0f178 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0067-The-parameters-for-functions-from-the-frexp-family-w.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0067-The-parameters-for-functions-from-the-frexp-family-w.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 7a43b3a2e2c0d9cf557ac45577cc42c6d72e0065 Mon Sep 17 00:00:00 2001
 From: baldrick <baldrick@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 5 Apr 2011 08:13:16 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0068-2011-04-05-Richard-Guenther-rguenther-suse.de.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0068-2011-04-05-Richard-Guenther-rguenther-suse.de.patch
index 6761a02..4e11bc4 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0068-2011-04-05-Richard-Guenther-rguenther-suse.de.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0068-2011-04-05-Richard-Guenther-rguenther-suse.de.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 56a8ff0c197b4b0f917e3b50ac0dd3ed26f300c3 Mon Sep 17 00:00:00 2001
 From: rguenth <rguenth@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 5 Apr 2011 12:13:27 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0069-stor-layout.c-self_referential_size-Fix-2010-07-13-c.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0069-stor-layout.c-self_referential_size-Fix-2010-07-13-c.patch
index 2a77ef7..09ffa08 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0069-stor-layout.c-self_referential_size-Fix-2010-07-13-c.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0069-stor-layout.c-self_referential_size-Fix-2010-07-13-c.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 6d713959cbb05f7cd030d776bb52113eac8af075 Mon Sep 17 00:00:00 2001
 From: ebotcazou <ebotcazou@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 5 Apr 2011 14:34:51 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0070-de.po-Update.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0070-de.po-Update.patch
index 312091c..248e5e5 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0070-de.po-Update.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0070-de.po-Update.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 66ebb4822dae1fd3c97ee62f9126615818150966 Mon Sep 17 00:00:00 2001
 From: jsm28 <jsm28@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 5 Apr 2011 23:08:59 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0072-gcov-io.c-Use-GCC-Runtime-Library-Exception.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0072-gcov-io.c-Use-GCC-Runtime-Library-Exception.patch
index 4da9d28..09fdeef 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0072-gcov-io.c-Use-GCC-Runtime-Library-Exception.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0072-gcov-io.c-Use-GCC-Runtime-Library-Exception.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 578ce9461ebac7a6ec001c0025e0b854385ec39c Mon Sep 17 00:00:00 2001
 From: jsm28 <jsm28@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 6 Apr 2011 16:05:18 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0073-Backported-from-mainline.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0073-Backported-from-mainline.patch
index dff8d34..0c6a543 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0073-Backported-from-mainline.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0073-Backported-from-mainline.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From e86c60e8bb9da37bfbef63315f38d5154035392d Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 6 Apr 2011 20:39:20 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0074-PR-debug-48466.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0074-PR-debug-48466.patch
index bd23901..b4b0be6 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0074-PR-debug-48466.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0074-PR-debug-48466.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From da3ed31e2090c6b8236bbc3be69433aca0d445f1 Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 6 Apr 2011 20:40:24 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0076-Merge-r172073-from-trunk-to-the-4.6-release-branch-t.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0076-Merge-r172073-from-trunk-to-the-4.6-release-branch-t.patch
index f3ee592..a884655 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0076-Merge-r172073-from-trunk-to-the-4.6-release-branch-t.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0076-Merge-r172073-from-trunk-to-the-4.6-release-branch-t.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 3329b7447ab817bb0374a689f3b381a5781ed8aa Mon Sep 17 00:00:00 2001
 From: jyasskin <jyasskin@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Thu, 7 Apr 2011 04:50:23 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0077-Backport-from-mainline.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0077-Backport-from-mainline.patch
index 5241379..48335d8 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0077-Backport-from-mainline.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0077-Backport-from-mainline.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 354f280d6446d87730bacabf798f88a7aedd1af1 Mon Sep 17 00:00:00 2001
 From: abel <abel@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Thu, 7 Apr 2011 12:07:24 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0078-de.po-Update.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0078-de.po-Update.patch
index dedce2d..cb56449 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0078-de.po-Update.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0078-de.po-Update.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From cd0f7d2692283fbf5dfce422da2896a07fc3ea3f Mon Sep 17 00:00:00 2001
 From: jsm28 <jsm28@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Thu, 7 Apr 2011 16:31:06 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0079-PR-debug-48343.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0079-PR-debug-48343.patch
index 99f3a1d..a9419dd 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0079-PR-debug-48343.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0079-PR-debug-48343.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 1e8081c83aa5101ccca523ce8448282bece491ff Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Thu, 7 Apr 2011 18:05:08 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0080-PR-fortran-48117.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0080-PR-fortran-48117.patch
index 67a64e4..aa81ccf 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0080-PR-fortran-48117.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0080-PR-fortran-48117.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 95333dcb51a2099d45b792b945fd9c0a2f8febab Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Thu, 7 Apr 2011 18:33:34 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0081-config-i386-sse.md-Update-copyright-year.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0081-config-i386-sse.md-Update-copyright-year.patch
index 97370d4..860842d 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0081-config-i386-sse.md-Update-copyright-year.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0081-config-i386-sse.md-Update-copyright-year.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From ac4ab0911ae869e3cd4c00629e3c4d4d0b7e7aa6 Mon Sep 17 00:00:00 2001
 From: uros <uros@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Thu, 7 Apr 2011 20:46:50 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0082-gcc.dg-torture-stackalign-non-local-goto-5.c-Fix-for.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0082-gcc.dg-torture-stackalign-non-local-goto-5.c-Fix-for.patch
index b34f959..89b5f7d 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0082-gcc.dg-torture-stackalign-non-local-goto-5.c-Fix-for.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0082-gcc.dg-torture-stackalign-non-local-goto-5.c-Fix-for.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 5430ea55f853566272279cbd5bb20a2dd5bd7a51 Mon Sep 17 00:00:00 2001
 From: mrs <mrs@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Thu, 7 Apr 2011 21:33:47 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0084-PR-tree-optimization-48377.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0084-PR-tree-optimization-48377.patch
index e3c000b..5c9682f 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0084-PR-tree-optimization-48377.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0084-PR-tree-optimization-48377.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From eba70fb9976ef047a8fb8dc6499c42e8fd3551f7 Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Fri, 8 Apr 2011 11:45:29 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0085-de.po-Update.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0085-de.po-Update.patch
index 2e33e3d..73643f7 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0085-de.po-Update.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0085-de.po-Update.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From dc6361adc966b10875fbfafff9652dcc4043df58 Mon Sep 17 00:00:00 2001
 From: jsm28 <jsm28@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Fri, 8 Apr 2011 14:29:58 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0086-PR-c-48450.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0086-PR-c-48450.patch
index 51906cf..a2628b7 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0086-PR-c-48450.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0086-PR-c-48450.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From a5e7415bfbe41941768106dc5819bf3fff1b8435 Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Fri, 8 Apr 2011 15:01:50 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0087-semantics.c-finish_decltype_type-Add-complain-parm.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0087-semantics.c-finish_decltype_type-Add-complain-parm.patch
index 6ff7279..ebae4eb 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0087-semantics.c-finish_decltype_type-Add-complain-parm.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0087-semantics.c-finish_decltype_type-Add-complain-parm.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 2f7a2d284d42cfbff01ee024af4cbaeaff766ee5 Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Fri, 8 Apr 2011 15:02:00 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0088-PR-c-48452.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0088-PR-c-48452.patch
index c034bc6..54df842 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0088-PR-c-48452.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0088-PR-c-48452.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 92860ca75ea3cbb7223913d121c60cc56c966794 Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Fri, 8 Apr 2011 15:02:08 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0089-PR-c-48468.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0089-PR-c-48468.patch
index ab6c28d..aea2ac1 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0089-PR-c-48468.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0089-PR-c-48468.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 4215154488607abf1ee95f1d1f03cb66be4bd4d8 Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Fri, 8 Apr 2011 15:02:16 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0090-PR-c-48500.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0090-PR-c-48500.patch
index 74f0afa..0e3ddc6 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0090-PR-c-48500.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0090-PR-c-48500.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From c9ec81bbd73666b97ab9049b759b5ab8d0e06681 Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Fri, 8 Apr 2011 15:02:28 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0091-2011-04-08-Steven-G.-Kargl-kargl-gcc.gnu.org.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0091-2011-04-08-Steven-G.-Kargl-kargl-gcc.gnu.org.patch
index 0ccff19..65e085b 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0091-2011-04-08-Steven-G.-Kargl-kargl-gcc.gnu.org.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0091-2011-04-08-Steven-G.-Kargl-kargl-gcc.gnu.org.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 6b290e64ee2bbe7974ee43ce49297ee9496f18d6 Mon Sep 17 00:00:00 2001
 From: kargl <kargl@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Fri, 8 Apr 2011 21:41:35 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0092-PR-testsuite-48506.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0092-PR-testsuite-48506.patch
index bcb5859..c4d7ada 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0092-PR-testsuite-48506.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0092-PR-testsuite-48506.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From fcc3e3a4ba3138d25c93ba5f996cac1660788bb9 Mon Sep 17 00:00:00 2001
 From: mrs <mrs@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Fri, 8 Apr 2011 23:56:45 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0094-Bail-out-rather-than-crashing-in-array_type_nelts-if.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0094-Bail-out-rather-than-crashing-in-array_type_nelts-if.patch
index 11ec352..4111e33 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0094-Bail-out-rather-than-crashing-in-array_type_nelts-if.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0094-Bail-out-rather-than-crashing-in-array_type_nelts-if.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 8216e1c4c23928723f8e1583bf7e014813bb2c07 Mon Sep 17 00:00:00 2001
 From: baldrick <baldrick@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sat, 9 Apr 2011 16:14:07 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0095-PR-c-48528.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0095-PR-c-48528.patch
index 42fae86..b895bb6 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0095-PR-c-48528.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0095-PR-c-48528.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From f96c29b23a4f631242aae823f9735a33e8e1cf0a Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sat, 9 Apr 2011 19:04:11 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0097-2011-04-10-Jonathan-Wakely-jwakely.gcc-gmail.com.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0097-2011-04-10-Jonathan-Wakely-jwakely.gcc-gmail.com.patch
index 7e04afd..a2d1471 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0097-2011-04-10-Jonathan-Wakely-jwakely.gcc-gmail.com.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0097-2011-04-10-Jonathan-Wakely-jwakely.gcc-gmail.com.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 7d736b8d0fb4f7892a5646ca3581b9ab01cb2971 Mon Sep 17 00:00:00 2001
 From: redi <redi@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sun, 10 Apr 2011 16:19:41 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0098-2011-04-10-Jonathan-Wakely-jwakely.gcc-gmail.com.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0098-2011-04-10-Jonathan-Wakely-jwakely.gcc-gmail.com.patch
index 5895393..d3d2cea 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0098-2011-04-10-Jonathan-Wakely-jwakely.gcc-gmail.com.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0098-2011-04-10-Jonathan-Wakely-jwakely.gcc-gmail.com.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From f6e12aec843ba3a839f49b60a5ca092f2fadd876 Mon Sep 17 00:00:00 2001
 From: redi <redi@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sun, 10 Apr 2011 16:29:05 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0099-2011-04-10-Jonathan-Wakely-jwakely.gcc-gmail.com.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0099-2011-04-10-Jonathan-Wakely-jwakely.gcc-gmail.com.patch
index 34fad1c..b130a11 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0099-2011-04-10-Jonathan-Wakely-jwakely.gcc-gmail.com.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0099-2011-04-10-Jonathan-Wakely-jwakely.gcc-gmail.com.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 2173abe5d6f3f3157317caa470226e13827c3df9 Mon Sep 17 00:00:00 2001
 From: redi <redi@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sun, 10 Apr 2011 16:34:34 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0101-Backport-from-mainline.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0101-Backport-from-mainline.patch
index dd1b600..c154c2d 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0101-Backport-from-mainline.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0101-Backport-from-mainline.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 0344e764781d1c1b27f07f6f973b9797d8d6285c Mon Sep 17 00:00:00 2001
 From: ro <ro@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Mon, 11 Apr 2011 10:42:23 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0102-common.opt-Tbss-Tdata-Ttext-New-options.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0102-common.opt-Tbss-Tdata-Ttext-New-options.patch
index db38793..786e3a7 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0102-common.opt-Tbss-Tdata-Ttext-New-options.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0102-common.opt-Tbss-Tdata-Ttext-New-options.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From ec818a73c8e43d77fefc29593ef84e69b0cac39e Mon Sep 17 00:00:00 2001
 From: jsm28 <jsm28@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Mon, 11 Apr 2011 15:26:47 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0104-PR-c-48523.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0104-PR-c-48523.patch
index 62bd4f9..bc3dac0 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0104-PR-c-48523.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0104-PR-c-48523.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 514b92d849b08f3fb7a8194a822b0b8609776564 Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 12 Apr 2011 00:20:18 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0105-PR-c-48534.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0105-PR-c-48534.patch
index b960380..24e527e 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0105-PR-c-48534.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0105-PR-c-48534.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 373ffb66c10a25abb4c48a027fea4e6cf8c4cc5d Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 12 Apr 2011 00:20:32 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0106-PR-c-48517.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0106-PR-c-48517.patch
index 8fba6af..a043e75 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0106-PR-c-48517.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0106-PR-c-48517.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From b58a503c5dbde32cbb9bd48ea16ff868d2023cf9 Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 12 Apr 2011 06:53:13 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0107-2011-04-12-Allan-McRae-allan-archlinux.org.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0107-2011-04-12-Allan-McRae-allan-archlinux.org.patch
index a3dd12e..ff8d43a 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0107-2011-04-12-Allan-McRae-allan-archlinux.org.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0107-2011-04-12-Allan-McRae-allan-archlinux.org.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 872b1920a12548af70c3866daadc4a67d05416b1 Mon Sep 17 00:00:00 2001
 From: paolo <paolo@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 12 Apr 2011 09:05:41 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0108-config-v850-v850.c-expand_prologue-Do-not-use-the-CA.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0108-config-v850-v850.c-expand_prologue-Do-not-use-the-CA.patch
index 2c7a767..033a5ce 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0108-config-v850-v850.c-expand_prologue-Do-not-use-the-CA.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0108-config-v850-v850.c-expand_prologue-Do-not-use-the-CA.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From a03834fec84b808ccef5c0abb5c35d069d7ad868 Mon Sep 17 00:00:00 2001
 From: nickc <nickc@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 12 Apr 2011 11:33:07 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0109-PR-rtl-optimization-48549.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0109-PR-rtl-optimization-48549.patch
index 9a30fdb..c0b3f63 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0109-PR-rtl-optimization-48549.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0109-PR-rtl-optimization-48549.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 5b05a527f1368e4ca9f71a8ec8124a2c64661007 Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 12 Apr 2011 13:44:33 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0110-2011-04-12-Martin-Jambor-mjambor-suse.cz.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0110-2011-04-12-Martin-Jambor-mjambor-suse.cz.patch
index 33afc8d..231d8a4 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0110-2011-04-12-Martin-Jambor-mjambor-suse.cz.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0110-2011-04-12-Martin-Jambor-mjambor-suse.cz.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From abf56c82ebcb8ba287fc69b8961af55b4541a130 Mon Sep 17 00:00:00 2001
 From: jamborm <jamborm@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 12 Apr 2011 18:31:55 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0112-Fix-PR-target-48090.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0112-Fix-PR-target-48090.patch
index 9db9c54..7f25740 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0112-Fix-PR-target-48090.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0112-Fix-PR-target-48090.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 811af0cad0121e89e3a3908dd71ca32187281e19 Mon Sep 17 00:00:00 2001
 From: ramana <ramana@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 13 Apr 2011 07:41:08 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0113-Fix-PR-c-48574.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0113-Fix-PR-c-48574.patch
index 75b3fba..c1a2c70 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0113-Fix-PR-c-48574.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0113-Fix-PR-c-48574.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From a236530cd5ac2466b1ca3b510b6bdb493c7b5342 Mon Sep 17 00:00:00 2001
 From: dodji <dodji@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 13 Apr 2011 15:19:40 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0114-PR-c-48570.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0114-PR-c-48570.patch
index 0003c8b..eeacb1f 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0114-PR-c-48570.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0114-PR-c-48570.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 235c1ad4230b29a189d4300841c4d8c3dd144388 Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 13 Apr 2011 15:47:40 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0115-PR-middle-end-48591.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0115-PR-middle-end-48591.patch
index c9303c4..00a50a7 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0115-PR-middle-end-48591.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0115-PR-middle-end-48591.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From f16c1783b4b2c93a42eb36b4f136ec46bd3ce834 Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 13 Apr 2011 15:52:17 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0116-2011-04-13-Paul-Thomas-pault-gcc.gnu.org.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0116-2011-04-13-Paul-Thomas-pault-gcc.gnu.org.patch
index f2aa9eb..677c076 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0116-2011-04-13-Paul-Thomas-pault-gcc.gnu.org.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0116-2011-04-13-Paul-Thomas-pault-gcc.gnu.org.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 348c7b9400ed5fe0d8c3c077f8223ca359bed036 Mon Sep 17 00:00:00 2001
 From: pault <pault@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 13 Apr 2011 18:38:17 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0117-PR-c-48594.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0117-PR-c-48594.patch
index 88a2063..75caa99 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0117-PR-c-48594.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0117-PR-c-48594.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From b711bf8d9e6f7b717bb87fa7a3514692efdecfaf Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 13 Apr 2011 20:51:23 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0118-sv.po-Update.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0118-sv.po-Update.patch
index 090371a..fb5a1f9 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0118-sv.po-Update.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0118-sv.po-Update.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From d744e56ec8412e410b993c2ab4af3c230bbd363b Mon Sep 17 00:00:00 2001
 From: jsm28 <jsm28@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 13 Apr 2011 22:08:21 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0119-Backport-from-mainline.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0119-Backport-from-mainline.patch
index 96e2ec7..dad8e60 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0119-Backport-from-mainline.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0119-Backport-from-mainline.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From ede3baf6fc1fe4972344051051daff1043f90ce3 Mon Sep 17 00:00:00 2001
 From: danglin <danglin@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 13 Apr 2011 22:36:59 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0122-PR-target-48605.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0122-PR-target-48605.patch
index 68b8fc1..2d68241 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0122-PR-target-48605.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0122-PR-target-48605.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From cad5b42c7c890058535eb7bc8c3766f03d428f59 Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Fri, 15 Apr 2011 10:21:00 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0123-PR-target-48614.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0123-PR-target-48614.patch
index fd17745..2a8dec6 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0123-PR-target-48614.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0123-PR-target-48614.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 13a531dde8ee181ad9e8aeb6b755ca52f261bef8 Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Fri, 15 Apr 2011 10:29:58 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0124-2011-04-15-Andreas-Krebbel-Andreas.Krebbel-de.ibm.co.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0124-2011-04-15-Andreas-Krebbel-Andreas.Krebbel-de.ibm.co.patch
index 6a9e1ea..e912b81 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0124-2011-04-15-Andreas-Krebbel-Andreas.Krebbel-de.ibm.co.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0124-2011-04-15-Andreas-Krebbel-Andreas.Krebbel-de.ibm.co.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From d3cce0bbf7e327905965f0fae70b04af08bfb64b Mon Sep 17 00:00:00 2001
 From: krebbel <krebbel@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Fri, 15 Apr 2011 12:43:40 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0125-2011-04-15-Takaya-Saito-gintensubaru-gmail.com.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0125-2011-04-15-Takaya-Saito-gintensubaru-gmail.com.patch
index 412386b..ecf2127 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0125-2011-04-15-Takaya-Saito-gintensubaru-gmail.com.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0125-2011-04-15-Takaya-Saito-gintensubaru-gmail.com.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 95c034f0075055720f37e340fd008d8d7cb45b4e Mon Sep 17 00:00:00 2001
 From: paolo <paolo@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Fri, 15 Apr 2011 14:52:57 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0126-2011-04-15-Paolo-Carlini-paolo.carlini-oracle.com.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0126-2011-04-15-Paolo-Carlini-paolo.carlini-oracle.com.patch
index 36cdf03..1534bdc 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0126-2011-04-15-Paolo-Carlini-paolo.carlini-oracle.com.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0126-2011-04-15-Paolo-Carlini-paolo.carlini-oracle.com.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 6cd1f8146545d6f82269c9a96a05438a06fcdc1a Mon Sep 17 00:00:00 2001
 From: paolo <paolo@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Fri, 15 Apr 2011 16:19:39 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0127-testsuite-libjava.jni-jni.exp-gcj_jni_get_cxxflags_i.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0127-testsuite-libjava.jni-jni.exp-gcj_jni_get_cxxflags_i.patch
index 870a6a2..174b747 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0127-testsuite-libjava.jni-jni.exp-gcj_jni_get_cxxflags_i.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0127-testsuite-libjava.jni-jni.exp-gcj_jni_get_cxxflags_i.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 37bc32c009317c62516117bfb2c9b49772b159af Mon Sep 17 00:00:00 2001
 From: ro <ro@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Fri, 15 Apr 2011 17:17:18 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0129-2011-04-15-Daniel-Krugler-daniel.kruegler-googlemail.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0129-2011-04-15-Daniel-Krugler-daniel.kruegler-googlemail.patch
index 8fba412..beb1ef8 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0129-2011-04-15-Daniel-Krugler-daniel.kruegler-googlemail.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0129-2011-04-15-Daniel-Krugler-daniel.kruegler-googlemail.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 2ce87b6b9c9143a22381eec77bbf1fd7016e132d Mon Sep 17 00:00:00 2001
 From: paolo <paolo@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sat, 16 Apr 2011 00:55:53 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0130-2011-04-15-Daniel-Krugler-daniel.kruegler-googlemail.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0130-2011-04-15-Daniel-Krugler-daniel.kruegler-googlemail.patch
index 2efd69f..b979bbe 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0130-2011-04-15-Daniel-Krugler-daniel.kruegler-googlemail.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0130-2011-04-15-Daniel-Krugler-daniel.kruegler-googlemail.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From fffee2aba06d51178d5c653db0acd6c775a0326b Mon Sep 17 00:00:00 2001
 From: paolo <paolo@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sat, 16 Apr 2011 02:04:56 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0132-PR-lto-48538.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0132-PR-lto-48538.patch
index e71632e..754efbd 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0132-PR-lto-48538.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0132-PR-lto-48538.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From aeb8275b52616d86410149e8500839115f9c0b8b Mon Sep 17 00:00:00 2001
 From: ebotcazou <ebotcazou@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sun, 17 Apr 2011 14:58:03 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0133-config-sparc-freebsd.h-CPP_CPU64_DEFAULT_SPEC-Replac.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0133-config-sparc-freebsd.h-CPP_CPU64_DEFAULT_SPEC-Replac.patch
index f4ed5e8..e16e3aa 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0133-config-sparc-freebsd.h-CPP_CPU64_DEFAULT_SPEC-Replac.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0133-config-sparc-freebsd.h-CPP_CPU64_DEFAULT_SPEC-Replac.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From a8765482b00b7e1774f72c7def19ca711636e1d1 Mon Sep 17 00:00:00 2001
 From: gerald <gerald@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sun, 17 Apr 2011 21:34:29 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0134-2011-04-17-Daniel-Krugler-daniel.kruegler-googlemail.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0134-2011-04-17-Daniel-Krugler-daniel.kruegler-googlemail.patch
index 1691211..177afa2 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0134-2011-04-17-Daniel-Krugler-daniel.kruegler-googlemail.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0134-2011-04-17-Daniel-Krugler-daniel.kruegler-googlemail.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 1934cdd502a4bad6e1c54c4206b9361909f01083 Mon Sep 17 00:00:00 2001
 From: paolo <paolo@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sun, 17 Apr 2011 21:46:20 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0135-doc-passes.texi-Fill-crossref-nodes.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0135-doc-passes.texi-Fill-crossref-nodes.patch
index 2f060a5..cb8ab1a 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0135-doc-passes.texi-Fill-crossref-nodes.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0135-doc-passes.texi-Fill-crossref-nodes.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 54907dbd122d6e4661b9583247e5574b9349c130 Mon Sep 17 00:00:00 2001
 From: gerald <gerald@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sun, 17 Apr 2011 21:59:00 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0136-gcc-interface-Make-lang.in-gnatbind-Replace-ALL_CFLA.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0136-gcc-interface-Make-lang.in-gnatbind-Replace-ALL_CFLA.patch
index 7575f48..c9a38e0 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0136-gcc-interface-Make-lang.in-gnatbind-Replace-ALL_CFLA.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0136-gcc-interface-Make-lang.in-gnatbind-Replace-ALL_CFLA.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 03b47392e5f3af2fe5ef4ad1f5fc9cca47604945 Mon Sep 17 00:00:00 2001
 From: ebotcazou <ebotcazou@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sun, 17 Apr 2011 22:29:13 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0138-PR-tree-optimization-48616.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0138-PR-tree-optimization-48616.patch
index 78bf4fb..c3d271f 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0138-PR-tree-optimization-48616.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0138-PR-tree-optimization-48616.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 45a8b16e2be6b6ff5d37d43e86a6e2fce5cfb79d Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Mon, 18 Apr 2011 07:38:11 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0139-2011-04-18-Richard-Guenther-rguenther-suse.de.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0139-2011-04-18-Richard-Guenther-rguenther-suse.de.patch
index e371b6f..a14ee29 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0139-2011-04-18-Richard-Guenther-rguenther-suse.de.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0139-2011-04-18-Richard-Guenther-rguenther-suse.de.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 68e7b8b6643a4c50a8527610dbf5a7ab36cc8f24 Mon Sep 17 00:00:00 2001
 From: rguenth <rguenth@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Mon, 18 Apr 2011 14:25:57 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0140-PR-47571-Fix-weakref-trickery-breakage-on-alpha-dec-.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0140-PR-47571-Fix-weakref-trickery-breakage-on-alpha-dec-.patch
index 534154b..5860b19 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0140-PR-47571-Fix-weakref-trickery-breakage-on-alpha-dec-.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0140-PR-47571-Fix-weakref-trickery-breakage-on-alpha-dec-.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 137ed44dcdd5890433b8d0348dcd2b7624b7c3d6 Mon Sep 17 00:00:00 2001
 From: jb <jb@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Mon, 18 Apr 2011 15:49:16 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0141-dwarf2out.c-is_redundant_typedef-Add-inline-to-proto.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0141-dwarf2out.c-is_redundant_typedef-Add-inline-to-proto.patch
index 8de047d..7483afe 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0141-dwarf2out.c-is_redundant_typedef-Add-inline-to-proto.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0141-dwarf2out.c-is_redundant_typedef-Add-inline-to-proto.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 9adddf1e8ef277d62e5da8dfd81bc50e2b4898c4 Mon Sep 17 00:00:00 2001
 From: ebotcazou <ebotcazou@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Mon, 18 Apr 2011 17:37:55 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0142-PR-c-48632.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0142-PR-c-48632.patch
index 989a1e6..fa158fd 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0142-PR-c-48632.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0142-PR-c-48632.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 71ec07630d08b813b39a65a932c71c78b8ffd845 Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Mon, 18 Apr 2011 21:56:12 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0143-PR-middle-end-48661.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0143-PR-middle-end-48661.patch
index e032f13..324639e 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0143-PR-middle-end-48661.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0143-PR-middle-end-48661.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 6d925e0321b8a34fb21b00a202c07d3d8a6e389a Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Mon, 18 Apr 2011 21:58:03 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0144-PR-c-48537.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0144-PR-c-48537.patch
index de2e447..8d9440c 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0144-PR-c-48537.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0144-PR-c-48537.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 065054b0b29c40548abd13c272431507d035b30a Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Mon, 18 Apr 2011 23:29:30 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0146-PR-testsuite-48675.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0146-PR-testsuite-48675.patch
index c5ac896..d25f59a 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0146-PR-testsuite-48675.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0146-PR-testsuite-48675.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From cd1bb68f56ade6449c6d52a1916c6a58f09f59e6 Mon Sep 17 00:00:00 2001
 From: hp <hp@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 19 Apr 2011 03:58:04 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0147-2011-04-18-Richard-Guenther-rguenther-suse.de.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0147-2011-04-18-Richard-Guenther-rguenther-suse.de.patch
index 1d4ef09..dc577a9 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0147-2011-04-18-Richard-Guenther-rguenther-suse.de.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0147-2011-04-18-Richard-Guenther-rguenther-suse.de.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From dd8cc468e2787972742061b1547dbab48729ccf8 Mon Sep 17 00:00:00 2001
 From: rguenth <rguenth@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 19 Apr 2011 09:14:05 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0149-PR-target-48678.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0149-PR-target-48678.patch
index da3a872..c5036bf 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0149-PR-target-48678.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0149-PR-target-48678.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From ac255441a3e973a974d1ab70d00a9b7269103214 Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 19 Apr 2011 16:49:19 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0151-PR-c-46304.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0151-PR-c-46304.patch
index 3e87c05..789558a 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0151-PR-c-46304.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0151-PR-c-46304.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 021acee3b7a6b26783c92870c1e202730c3f024e Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 20 Apr 2011 06:31:51 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0152-bootstrap-lto.mk-Remove-obsolete-requirement.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0152-bootstrap-lto.mk-Remove-obsolete-requirement.patch
index b9d0a69..a1d8088 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0152-bootstrap-lto.mk-Remove-obsolete-requirement.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0152-bootstrap-lto.mk-Remove-obsolete-requirement.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 64152d5463c74f3ec58a7d27e7f4e03dfd9557ff Mon Sep 17 00:00:00 2001
 From: ebotcazou <ebotcazou@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 20 Apr 2011 09:25:33 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0153-2011-04-20-Richard-Guenther-rguenther-suse.de.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0153-2011-04-20-Richard-Guenther-rguenther-suse.de.patch
index e47d8d1..9ff69b0 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0153-2011-04-20-Richard-Guenther-rguenther-suse.de.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0153-2011-04-20-Richard-Guenther-rguenther-suse.de.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 5ff95d9c48276f6495b8ebefeb2ce4ac1ab6a1fe Mon Sep 17 00:00:00 2001
 From: rguenth <rguenth@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 20 Apr 2011 09:48:00 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0154-Backport-from-mainline.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0154-Backport-from-mainline.patch
index 0a0c5a6..152b081 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0154-Backport-from-mainline.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0154-Backport-from-mainline.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From b769f6c6e91c977fb6b4fcc5b7838eb79dddaeb7 Mon Sep 17 00:00:00 2001
 From: ebotcazou <ebotcazou@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 20 Apr 2011 11:18:50 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0155-PR-tree-optimization-48611.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0155-PR-tree-optimization-48611.patch
index 72651fb..922c0a8 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0155-PR-tree-optimization-48611.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0155-PR-tree-optimization-48611.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 0e3879bf21f04b54b0849f3a86c20359f965e12a Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 20 Apr 2011 18:19:47 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0156-PR-c-48657.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0156-PR-c-48657.patch
index 8f5cbaf..b1720b7 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0156-PR-c-48657.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0156-PR-c-48657.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 03be58e53f230926009974bd7aed6a40a557dc1d Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 20 Apr 2011 19:39:26 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0157-PR-target-48288.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0157-PR-target-48288.patch
index 7d82418..66c349c 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0157-PR-target-48288.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0157-PR-target-48288.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 05f12c826eff0c87deeac7347d73cb276ec493cc Mon Sep 17 00:00:00 2001
 From: danglin <danglin@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 20 Apr 2011 23:36:20 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0159-PR-c-48594.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0159-PR-c-48594.patch
index f1ac822..a01b834 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0159-PR-c-48594.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0159-PR-c-48594.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From eda6b7fee4d20c15dc919a726b60ee5777c402c8 Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Thu, 21 Apr 2011 03:03:08 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0160-semantics.c-finish_compound_literal-Don-t-put-an-arr.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0160-semantics.c-finish_compound_literal-Don-t-put-an-arr.patch
index bdd4978..44f5d35 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0160-semantics.c-finish_compound_literal-Don-t-put-an-arr.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0160-semantics.c-finish_compound_literal-Don-t-put-an-arr.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 19692feb0bd83e8e6b3a1e1e0b43119d7e12ce96 Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Thu, 21 Apr 2011 04:27:30 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0161-gimple.c-walk_gimple_op-GIMPLE_CALL-Fix-couple-of-ov.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0161-gimple.c-walk_gimple_op-GIMPLE_CALL-Fix-couple-of-ov.patch
index 58010b1..64e7978 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0161-gimple.c-walk_gimple_op-GIMPLE_CALL-Fix-couple-of-ov.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0161-gimple.c-walk_gimple_op-GIMPLE_CALL-Fix-couple-of-ov.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 20a8b6ba99d25394d9d4b958a8ecc171fe3d263b Mon Sep 17 00:00:00 2001
 From: ebotcazou <ebotcazou@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Thu, 21 Apr 2011 14:18:54 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0162-2011-04-21-Richard-Guenther-rguenther-suse.de.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0162-2011-04-21-Richard-Guenther-rguenther-suse.de.patch
index 482f1dc..fa83ccc 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0162-2011-04-21-Richard-Guenther-rguenther-suse.de.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0162-2011-04-21-Richard-Guenther-rguenther-suse.de.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From d0c1a282504a0fa941a9ae22536c73f64d8c5762 Mon Sep 17 00:00:00 2001
 From: rguenth <rguenth@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Thu, 21 Apr 2011 14:40:53 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0163-de.po-Update.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0163-de.po-Update.patch
index feadd1c..15ae013 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0163-de.po-Update.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0163-de.po-Update.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From bdc36219ffa6e8c7e2b48e4aedc32082205a2195 Mon Sep 17 00:00:00 2001
 From: jsm28 <jsm28@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Thu, 21 Apr 2011 17:02:45 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0164-PR-target-48708.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0164-PR-target-48708.patch
index 4fca023..a089ebe 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0164-PR-target-48708.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0164-PR-target-48708.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From ad24dcb7c07f1f9d41cb6782ea14c6c1727c4cb0 Mon Sep 17 00:00:00 2001
 From: uros <uros@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Thu, 21 Apr 2011 20:23:55 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0166-PR-c-48716.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0166-PR-c-48716.patch
index dacc5c4..c9c474d 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0166-PR-c-48716.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0166-PR-c-48716.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 3a3d51cb4f1ec33265471b03d21b96d30e899858 Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Fri, 22 Apr 2011 14:11:44 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0167-PR-target-48723.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0167-PR-target-48723.patch
index 7aab9fb..8359bb1 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0167-PR-target-48723.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0167-PR-target-48723.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 6798037eb1c55f1dd79c04da313bd6bcd4d2aa9e Mon Sep 17 00:00:00 2001
 From: uros <uros@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Fri, 22 Apr 2011 18:43:57 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0168-PR-tree-optimization-48717.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0168-PR-tree-optimization-48717.patch
index 59101ff..a3c51de 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0168-PR-tree-optimization-48717.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0168-PR-tree-optimization-48717.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 8825c738568548e5d67dc2f4e7ce9326dcc2cd7c Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Fri, 22 Apr 2011 18:53:30 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0170-Revert.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0170-Revert.patch
index 12854d2..9f39bde 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0170-Revert.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0170-Revert.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From b4d9ee2abbc5ac5fcf475e1d495bd3d55500d39b Mon Sep 17 00:00:00 2001
 From: uros <uros@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sat, 23 Apr 2011 07:41:43 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0171-PR-c-48685.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0171-PR-c-48685.patch
index d205ca4..f11f405 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0171-PR-c-48685.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0171-PR-c-48685.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 260252e3308b19f495f084658236114ead218ec5 Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sat, 23 Apr 2011 10:18:54 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0172-gcc.dg-pr48616.c-dg-options-Add-fno-common-to-option.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0172-gcc.dg-pr48616.c-dg-options-Add-fno-common-to-option.patch
index 8446c41..6ba93bf 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0172-gcc.dg-pr48616.c-dg-options-Add-fno-common-to-option.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0172-gcc.dg-pr48616.c-dg-options-Add-fno-common-to-option.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 79d3442448d1bd498a80baca666a94dfabe93364 Mon Sep 17 00:00:00 2001
 From: danglin <danglin@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sat, 23 Apr 2011 17:47:17 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0173-2011-04-23-Jonathan-Wakely-jwakely.gcc-gmail.com.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0173-2011-04-23-Jonathan-Wakely-jwakely.gcc-gmail.com.patch
index 1c507fe..6cd605f 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0173-2011-04-23-Jonathan-Wakely-jwakely.gcc-gmail.com.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0173-2011-04-23-Jonathan-Wakely-jwakely.gcc-gmail.com.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 0755fde6008ab7a7ae98f3b4c5967191408431f3 Mon Sep 17 00:00:00 2001
 From: redi <redi@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sat, 23 Apr 2011 17:51:31 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0174-PR-preprocessor-48740.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0174-PR-preprocessor-48740.patch
index b41d59d..852b7ec 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0174-PR-preprocessor-48740.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0174-PR-preprocessor-48740.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From c6deb5c58fde1c5115d9e92afb2ead8e7ac4fea0 Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sat, 23 Apr 2011 23:33:39 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0176-2011-04-24-Paolo-Carlini-paolo.carlini-oracle.com.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0176-2011-04-24-Paolo-Carlini-paolo.carlini-oracle.com.patch
index 49076df..35282c1 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0176-2011-04-24-Paolo-Carlini-paolo.carlini-oracle.com.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0176-2011-04-24-Paolo-Carlini-paolo.carlini-oracle.com.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 63c4ffd33d8f3e61e53d30f50146e1bc4cb6e38a Mon Sep 17 00:00:00 2001
 From: paolo <paolo@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Sun, 24 Apr 2011 09:43:29 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0178-PR-c-48707.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0178-PR-c-48707.patch
index 64a53d2..40505e5 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0178-PR-c-48707.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0178-PR-c-48707.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From c2606fe2aa58ae13a13e7ff0b17da61e4565586d Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Mon, 25 Apr 2011 21:53:57 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0180-2011-04-26-Tobias-Burnus-burnus-net-b.de.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0180-2011-04-26-Tobias-Burnus-burnus-net-b.de.patch
index 1ac7b99..ec60583 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0180-2011-04-26-Tobias-Burnus-burnus-net-b.de.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0180-2011-04-26-Tobias-Burnus-burnus-net-b.de.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From ead753a2ac74bd306d240de4760b7f809c581052 Mon Sep 17 00:00:00 2001
 From: burnus <burnus@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 26 Apr 2011 08:41:31 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0181-2011-04-26-Richard-Guenther-rguenther-suse.de.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0181-2011-04-26-Richard-Guenther-rguenther-suse.de.patch
index 78202f0..ee42329 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0181-2011-04-26-Richard-Guenther-rguenther-suse.de.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0181-2011-04-26-Richard-Guenther-rguenther-suse.de.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 2e8f32d39576b002280e29079ad6cfc55c852276 Mon Sep 17 00:00:00 2001
 From: rguenth <rguenth@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 26 Apr 2011 12:59:22 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0182-PR-tree-optimization-48734.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0182-PR-tree-optimization-48734.patch
index f38422d..40f3efa 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0182-PR-tree-optimization-48734.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0182-PR-tree-optimization-48734.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From a3ac868928384ffe6f10c3aa0fd3ac9ab8cc1aae Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 26 Apr 2011 13:44:51 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0183-PR-debug-48768.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0183-PR-debug-48768.patch
index 609f110..2a0fd2f 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0183-PR-debug-48768.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0183-PR-debug-48768.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 8a0e77485c3d9d34c6f65cec908829dcc4cd5fee Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 26 Apr 2011 13:47:13 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0184-de.po-Update.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0184-de.po-Update.patch
index 888dcad..eea1bea 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0184-de.po-Update.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0184-de.po-Update.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 6dd6ecb750b587d76e46e7e622e44407fce87389 Mon Sep 17 00:00:00 2001
 From: jsm28 <jsm28@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 26 Apr 2011 14:57:30 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0185-PR-c-48726.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0185-PR-c-48726.patch
index f9c8347..50987f0 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0185-PR-c-48726.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0185-PR-c-48726.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From c0df85fc6ea1962c53f98bbca38d182eba8e23f7 Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Tue, 26 Apr 2011 23:42:50 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0187-PR-c-42687.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0187-PR-c-42687.patch
index db390d9..9d363e5 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0187-PR-c-42687.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0187-PR-c-42687.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From ccb3ae3a3167213d1c84397653a7cfec0df3a5b7 Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 27 Apr 2011 05:20:06 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0188-PR-c-48742.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0188-PR-c-48742.patch
index 1b6ff4c..718272d 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0188-PR-c-48742.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0188-PR-c-48742.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 1a6d9e7052b3632a85ca6f79b48384fd684c4411 Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 27 Apr 2011 07:05:54 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0189-gcc.dg-20020312-2.c-Add-definition-for-RX.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0189-gcc.dg-20020312-2.c-Add-definition-for-RX.patch
index e64d238..4586999 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0189-gcc.dg-20020312-2.c-Add-definition-for-RX.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0189-gcc.dg-20020312-2.c-Add-definition-for-RX.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From abb5bc5b7190b68909f9dd14386aa2c430bacd9a Mon Sep 17 00:00:00 2001
 From: nickc <nickc@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 27 Apr 2011 14:55:28 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0190-PR-c-48046.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0190-PR-c-48046.patch
index f2ba186..2a8888a 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0190-PR-c-48046.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0190-PR-c-48046.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From c270475fa490deeb18cf6275a86ce15a57e706ff Mon Sep 17 00:00:00 2001
 From: jason <jason@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Wed, 27 Apr 2011 15:57:06 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0192-PR-middle-end-48597.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0192-PR-middle-end-48597.patch
index 21c5595..dcbe5d8 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0192-PR-middle-end-48597.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0192-PR-middle-end-48597.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 7c26af7b723eae6ac629ea01058553ff025400ab Mon Sep 17 00:00:00 2001
 From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Thu, 28 Apr 2011 17:01:55 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0193-2011-04-28-Tobias-Burnus-burnus-net-b.de.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0193-2011-04-28-Tobias-Burnus-burnus-net-b.de.patch
index 2e51a99..9b971fd 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0193-2011-04-28-Tobias-Burnus-burnus-net-b.de.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0193-2011-04-28-Tobias-Burnus-burnus-net-b.de.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From cb79606d4958a3f3df1adfcc00b641e3b8089819 Mon Sep 17 00:00:00 2001
 From: burnus <burnus@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Thu, 28 Apr 2011 18:43:16 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0194-2011-04-28-Tobias-Burnus-burnus-net-b.de.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0194-2011-04-28-Tobias-Burnus-burnus-net-b.de.patch
index 0a14655..e478899 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0194-2011-04-28-Tobias-Burnus-burnus-net-b.de.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0194-2011-04-28-Tobias-Burnus-burnus-net-b.de.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From a588d1bdc7fb4aa8e1214b6a57d581ddcfa86159 Mon Sep 17 00:00:00 2001
 From: burnus <burnus@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Thu, 28 Apr 2011 18:47:28 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0195-Fix-PR-c-48656.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0195-Fix-PR-c-48656.patch
index b1603c8..b37cb61 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0195-Fix-PR-c-48656.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0195-Fix-PR-c-48656.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 5d622f64eff4e9fa78356c24290aed131b5c519c Mon Sep 17 00:00:00 2001
 From: dodji <dodji@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Thu, 28 Apr 2011 19:46:34 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0196-Backport-4.7-patchtes-to-4.6.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0196-Backport-4.7-patchtes-to-4.6.patch
index 53f825b..7fd93db 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0196-Backport-4.7-patchtes-to-4.6.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0196-Backport-4.7-patchtes-to-4.6.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 99347f932bdf7d9b0bf8a4f36737ed128813c1a9 Mon Sep 17 00:00:00 2001
 From: meissner <meissner@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Thu, 28 Apr 2011 22:39:59 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0198-2011-04-29-Tobias-Burnus-burnus-net-b.de.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0198-2011-04-29-Tobias-Burnus-burnus-net-b.de.patch
index 96b886a..8053a2c 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0198-2011-04-29-Tobias-Burnus-burnus-net-b.de.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0198-2011-04-29-Tobias-Burnus-burnus-net-b.de.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 1c9148fe797f564821355a8976802689519324dd Mon Sep 17 00:00:00 2001
 From: burnus <burnus@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Fri, 29 Apr 2011 21:26:07 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0199-2011-04-29-Paolo-Carlini-paolo.carlini-oracle.com.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0199-2011-04-29-Paolo-Carlini-paolo.carlini-oracle.com.patch
index 4cdbd72..f5ce975 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0199-2011-04-29-Paolo-Carlini-paolo.carlini-oracle.com.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-4_6-branch-backports/0199-2011-04-29-Paolo-Carlini-paolo.carlini-oracle.com.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Inappropriate [Backport]
 From 838560450136f202dc9170f2ad3eec80b41e0381 Mon Sep 17 00:00:00 2001
 From: paolo <paolo@138bc75d-0d04-0410-961f-82ee72b054a4>
 Date: Fri, 29 Apr 2011 23:19:59 +0000
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-flags-for-build.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-flags-for-build.patch
index f7beb78..9cba50d 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-flags-for-build.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-flags-for-build.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: gcc-4.6.0/Makefile.def
 ===================================================================
 --- gcc-4.6.0.orig/Makefile.def
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-poison-dir-extend.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-poison-dir-extend.patch
index d477105..35170e2 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-poison-dir-extend.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-poison-dir-extend.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Add /sw/include and /opt/include based on the original
 zecke-no-host-includes.patch patch.  The original patch checked for
 /usr/include, /sw/include and /opt/include and then triggered a failure and
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-poison-parameters.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-poison-parameters.patch
index f36fa81..58bf32f 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-poison-parameters.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-poison-parameters.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 gcc: add poison parameters detection
 
 Add the logic that, if not configured with "--enable-target-optspace",
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-poison-system-directories.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-poison-system-directories.patch
index e1b7131..3902a35 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-poison-system-directories.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-poison-system-directories.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [distribution: codesourcery]
+
        gcc/
        2008-07-02  Joseph Myers  <joseph@codesourcery.com>
        * c-incpath.c: Include toplev.h.
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-uclibc-locale-ctype_touplow_t.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-uclibc-locale-ctype_touplow_t.patch
index 8b71e31..1648b3b 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-uclibc-locale-ctype_touplow_t.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/gcc-uclibc-locale-ctype_touplow_t.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: gcc-4.6.0/libstdc++-v3/config/locale/generic/c_locale.h
 ===================================================================
 --- gcc-4.6.0.orig/libstdc++-v3/config/locale/generic/c_locale.h
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/optional_libstdc.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/optional_libstdc.patch
index f132fbf..fe157a8 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/optional_libstdc.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/optional_libstdc.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 gcc-runtime builds libstdc++ separately from gcc-cross-*. Its configure tests using g++ 
 will not run correctly since by default the linker will try to link against libstdc++
 which shouldn't exist yet. We need an option to disable -lstdc++
diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0/zecke-xgcc-cpp.patch b/meta/recipes-devtools/gcc/gcc-4.6.0/zecke-xgcc-cpp.patch
index b3f02dc..6192c48 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0/zecke-xgcc-cpp.patch
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0/zecke-xgcc-cpp.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 upstream: n/a
 comment: Use the preprocessor we have just compiled instead the one of
 the system. There might be incompabilities between us and them.
-- 
1.7.3.4


