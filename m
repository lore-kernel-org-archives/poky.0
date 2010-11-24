Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B85F54C80052
	for <poky@yoctoproject.org>; Wed,  1 Dec 2010 10:46:23 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Dec 2010 08:46:23 -0800
Message-Id: <0d30dc$kb67a1@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,284,1288594800"; d="scan'208";a="682827077"
Received: from unknown (HELO localhost) ([10.255.13.244])
	by orsmga001.jf.intel.com with ESMTP; 01 Dec 2010 08:46:22 -0800
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Date: Wed, 24 Nov 2010 11:07:48 -0800
To: poky@yoctoproject.org,tom.zanussi@intel.com,bruce.ashfield@windriver.com
Subject: [PATCH 2/3] gcc_4.5.1.linaro: implement new gcc recipe from linaro code
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
X-List-Received-Date: Wed, 01 Dec 2010 16:46:24 -0000

These recipes are created by using linaro gcc source code and existing gcc
recipes in the poky.

Rebased patches to the linaro gcc code:

These two patches needed rebasing, as some of the code form these patches
is already in the linaro tree code.
   gcc-4.5.linaro/gcc-flags-for-build.patch
   gcc-4.5.linaro/gcc-poison-system-directories.patch

change the version to 4.5.1.linaro:

Change the version to 4.5.1.linaro as it reflects the linaro's gcc
source tree's version correctly.

New Patch:
   change_base_version_to_4.5.1.linaro.patch
This is a new patch to reflect the change in the version in the BASE_VER in the
source code; more documentation in the patch.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 recipes-devtools/gcc/gcc-4.5.1.linaro.inc          |   54 +++++++
 .../change_base_version_to_4.5.1.linaro.patch      |   14 ++
 .../gcc/gcc-4.5.1.linaro/gcc-flags-for-build.patch |  152 ++++++++++++++++++++
 .../gcc-poison-system-directories.patch            |   94 ++++++++++++
 .../gcc/gcc-cross-initial_4.5.1.linaro.bb          |    5 +
 .../gcc/gcc-cross-intermediate_4.5.1.linaro.bb     |    4 +
 recipes-devtools/gcc/gcc-cross_4.5.1.linaro.bb     |   10 ++
 .../gcc/gcc-crosssdk-initial_4.5.1.linaro.bb       |    4 +
 .../gcc/gcc-crosssdk-intermediate_4.5.1.linaro.bb  |    4 +
 recipes-devtools/gcc/gcc-crosssdk_4.5.1.linaro.bb  |    4 +
 recipes-devtools/gcc/gcc-runtime_4.5.1.linaro.bb   |   11 ++
 recipes-devtools/gcc/gcc_4.5.1.linaro.bb           |   10 ++
 12 files changed, 366 insertions(+), 0 deletions(-)
 create mode 100644 recipes-devtools/gcc/gcc-4.5.1.linaro.inc
 create mode 100644 recipes-devtools/gcc/gcc-4.5.1.linaro/change_base_version_to_4.5.1.linaro.patch
 create mode 100644 recipes-devtools/gcc/gcc-4.5.1.linaro/gcc-flags-for-build.patch
 create mode 100644 recipes-devtools/gcc/gcc-4.5.1.linaro/gcc-poison-system-directories.patch
 create mode 100644 recipes-devtools/gcc/gcc-cross-initial_4.5.1.linaro.bb
 create mode 100644 recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.linaro.bb
 create mode 100644 recipes-devtools/gcc/gcc-cross_4.5.1.linaro.bb
 create mode 100644 recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.linaro.bb
 create mode 100644 recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.linaro.bb
 create mode 100644 recipes-devtools/gcc/gcc-crosssdk_4.5.1.linaro.bb
 create mode 100644 recipes-devtools/gcc/gcc-runtime_4.5.1.linaro.bb
 create mode 100644 recipes-devtools/gcc/gcc_4.5.1.linaro.bb

diff --git a/recipes-devtools/gcc/gcc-4.5.1.linaro.inc b/recipes-devtools/gcc/gcc-4.5.1.linaro.inc
new file mode 100644
index 0000000..43f5cd2
--- /dev/null
+++ b/recipes-devtools/gcc/gcc-4.5.1.linaro.inc
@@ -0,0 +1,54 @@
+require recipes-devtools/gcc/gcc-4.5.1.inc
+
+FILESPATH = "${FILE_DIRNAME}/gcc-${PV}/:${FILE_DIRNAME}/gcc-4.5.1/"
+FILESDIR = "${WORKDIR}"
+
+SRC_URI = "http://launchpad.net/gcc-linaro/4.5/4.5-2010.11-0/+download/gcc-linaro-4.5-2010.11-1.tar.bz2 \
+	   file://change_base_version_to_4.5.1.linaro.patch \
+	   file://gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch \
+	   file://100-uclibc-conf.patch \
+           file://gcc-uclibc-locale-ctype_touplow_t.patch \
+	   file://cache-amnesia.patch \
+	   file://gcc-flags-for-build.patch \
+	   file://libstdc++-emit-__cxa_end_cleanup-in-text.patch \
+	   file://arm-bswapsi2.patch \
+		\
+           file://fedora/gcc43-c++-builtin-redecl.patch;striplevel=0 \
+           file://fedora/gcc43-ia64-libunwind.patch;striplevel=0 \
+           file://fedora/gcc43-java-nomulti.patch;striplevel=0 \
+           file://fedora/gcc43-ppc32-retaddr.patch;striplevel=0 \
+           file://fedora/gcc43-pr32139.patch;striplevel=0 \
+           file://fedora/gcc43-pr33763.patch;striplevel=0 \
+           file://fedora/gcc43-rh330771.patch;striplevel=0 \
+           file://fedora/gcc43-rh341221.patch;striplevel=0 \
+           file://fedora/gcc43-java-debug-iface-type.patch;striplevel=0 \
+           file://fedora/gcc43-i386-libgomp.patch;striplevel=0 \
+           file://103-uclibc-conf-noupstream.patch  \
+           file://200-uclibc-locale.patch  \
+           file://203-uclibc-locale-no__x.patch;striplevel=1 \
+           file://204-uclibc-locale-wchar_fix.patch;striplevel=1 \
+           file://205-uclibc-locale-update.patch;striplevel=1 \
+           file://301-missing-execinfo_h.patch  \
+           file://302-c99-snprintf.patch  \
+           file://303-c99-complex-ugly-hack.patch  \
+           file://304-index_macro.patch  \
+           file://305-libmudflap-susv3-legacy.patch  \
+           file://306-libstdc++-namespace.patch  \
+           file://740-sh-pr24836.patch  \
+           file://800-arm-bigendian.patch  \
+           file://904-flatten-switch-stmt-00.patch  \
+           file://arm-nolibfloat.patch  \
+           file://arm-softfloat.patch \
+           file://zecke-xgcc-cpp.patch \
+           file://gcc-poison-system-directories.patch \
+           file://gcc-poison-dir-extend.patch \
+           file://gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch \
+	   file://64bithack.patch \
+	   file://optional_libstdc.patch \
+	   file://disable_relax_pic_calls_flag.patch \
+	   file://gcc-poison-parameters.patch \
+	  "
+
+do_unpack_append() {
+	mv gcc-linaro-4.5-2010.11-1 gcc-${PV}
+}
diff --git a/recipes-devtools/gcc/gcc-4.5.1.linaro/change_base_version_to_4.5.1.linaro.patch b/recipes-devtools/gcc/gcc-4.5.1.linaro/change_base_version_to_4.5.1.linaro.patch
new file mode 100644
index 0000000..304aa5e
--- /dev/null
+++ b/recipes-devtools/gcc/gcc-4.5.1.linaro/change_base_version_to_4.5.1.linaro.patch
@@ -0,0 +1,14 @@
+The gcc recipes need imatching base version in the code and the ${PV}. 
+Otherwise supporting tools like as, ld, cpp, ar, nm, ranlib, objcopy, 
+objdump, strip, gcc can not be found correctly.
+
+Nitin A Kamble <nitin.a.kamble@intel.com>
+2010/11/24
+
+Index: gcc-linaro-4.5-2010.11-1/gcc/BASE-VER
+===================================================================
+--- gcc-linaro-4.5-2010.11-1.orig/gcc/BASE-VER
++++ gcc-linaro-4.5-2010.11-1/gcc/BASE-VER
+@@ -1 +1 @@
+-4.5.2
++4.5.1.linaro
diff --git a/recipes-devtools/gcc/gcc-4.5.1.linaro/gcc-flags-for-build.patch b/recipes-devtools/gcc/gcc-4.5.1.linaro/gcc-flags-for-build.patch
new file mode 100644
index 0000000..df44bc6
--- /dev/null
+++ b/recipes-devtools/gcc/gcc-4.5.1.linaro/gcc-flags-for-build.patch
@@ -0,0 +1,152 @@
+Index: gcc-linaro-4.5-2010.11-1/Makefile.def
+===================================================================
+--- gcc-linaro-4.5-2010.11-1.orig/Makefile.def
++++ gcc-linaro-4.5-2010.11-1/Makefile.def
+@@ -240,6 +240,7 @@ flags_to_pass = { flag= AWK ; };
+ flags_to_pass = { flag= BISON ; };
+ flags_to_pass = { flag= CC_FOR_BUILD ; };
+ flags_to_pass = { flag= CFLAGS_FOR_BUILD ; };
++flags_to_pass = { flag= CPPFLAGS_FOR_BUILD ; };
+ flags_to_pass = { flag= CXX_FOR_BUILD ; };
+ flags_to_pass = { flag= EXPECT ; };
+ flags_to_pass = { flag= FLEX ; };
+Index: gcc-linaro-4.5-2010.11-1/gcc/Makefile.in
+===================================================================
+--- gcc-linaro-4.5-2010.11-1.orig/gcc/Makefile.in
++++ gcc-linaro-4.5-2010.11-1/gcc/Makefile.in
+@@ -766,7 +766,7 @@ BUILD_LINKERFLAGS = $(BUILD_CFLAGS)
+ 
+ # Native linker and preprocessor flags.  For x-fragment overrides.
+ BUILD_LDFLAGS=@BUILD_LDFLAGS@
+-BUILD_CPPFLAGS=$(ALL_CPPFLAGS)
++BUILD_CPPFLAGS=$(INCLUDES) @BUILD_CPPFLAGS@ $(X_CPPFLAGS)
+ 
+ # Actual name to use when installing a native compiler.
+ GCC_INSTALL_NAME := $(shell echo gcc|sed '$(program_transform_name)')
+Index: gcc-linaro-4.5-2010.11-1/gcc/configure.ac
+===================================================================
+--- gcc-linaro-4.5-2010.11-1.orig/gcc/configure.ac
++++ gcc-linaro-4.5-2010.11-1/gcc/configure.ac
+@@ -1798,16 +1798,18 @@ AC_SUBST(inhibit_libc)
+ # Also, we cannot run fixincludes.
+ 
+ # These are the normal (build=host) settings:
+-CC_FOR_BUILD='$(CC)'		AC_SUBST(CC_FOR_BUILD)
+-BUILD_CFLAGS='$(ALL_CFLAGS)'	AC_SUBST(BUILD_CFLAGS)
+-BUILD_LDFLAGS='$(LDFLAGS)'	AC_SUBST(BUILD_LDFLAGS)
+-STMP_FIXINC=stmp-fixinc		AC_SUBST(STMP_FIXINC)
++CC_FOR_BUILD='$(CC)'			AC_SUBST(CC_FOR_BUILD)
++BUILD_CFLAGS='$(ALL_CFLAGS)'		AC_SUBST(BUILD_CFLAGS)
++BUILD_LDFLAGS='$(LDFLAGS)'		AC_SUBST(BUILD_LDFLAGS)
++BUILD_CPPFLAGS='$(ALL_CPPFLAGS)'	AC_SUBST(BUILD_CPPFLAGS)
++STMP_FIXINC=stmp-fixinc			AC_SUBST(STMP_FIXINC)
+ 
+ # And these apply if build != host, or we are generating coverage data
+ if test x$build != x$host || test "x$coverage_flags" != x
+ then
+     BUILD_CFLAGS='$(INTERNAL_CFLAGS) $(T_CFLAGS) $(CFLAGS_FOR_BUILD)'
+     BUILD_LDFLAGS='$(LDFLAGS_FOR_BUILD)'
++    BUILD_CPPFLAGS='$(CPPFLAGS_FOR_BUILD)'
+ fi
+ 
+ # Expand extra_headers to include complete path.
+Index: gcc-linaro-4.5-2010.11-1/Makefile.in
+===================================================================
+--- gcc-linaro-4.5-2010.11-1.orig/Makefile.in
++++ gcc-linaro-4.5-2010.11-1/Makefile.in
+@@ -333,6 +333,7 @@ AR_FOR_BUILD = @AR_FOR_BUILD@
+ AS_FOR_BUILD = @AS_FOR_BUILD@
+ CC_FOR_BUILD = @CC_FOR_BUILD@
+ CFLAGS_FOR_BUILD = @CFLAGS_FOR_BUILD@
++CPPFLAGS_FOR_BUILD = @CPPFLAGS_FOR_BUILD@
+ CXXFLAGS_FOR_BUILD = @CXXFLAGS_FOR_BUILD@
+ CXX_FOR_BUILD = @CXX_FOR_BUILD@
+ DLLTOOL_FOR_BUILD = @DLLTOOL_FOR_BUILD@
+@@ -662,6 +663,7 @@ BASE_FLAGS_TO_PASS = \
+ 	"BISON=$(BISON)" \
+ 	"CC_FOR_BUILD=$(CC_FOR_BUILD)" \
+ 	"CFLAGS_FOR_BUILD=$(CFLAGS_FOR_BUILD)" \
++	"CPPFLAGS_FOR_BUILD=$(CPPFLAGS_FOR_BUILD)" \
+ 	"CXX_FOR_BUILD=$(CXX_FOR_BUILD)" \
+ 	"EXPECT=$(EXPECT)" \
+ 	"FLEX=$(FLEX)" \
+Index: gcc-linaro-4.5-2010.11-1/gcc/configure
+===================================================================
+--- gcc-linaro-4.5-2010.11-1.orig/gcc/configure
++++ gcc-linaro-4.5-2010.11-1/gcc/configure
+@@ -707,6 +707,7 @@ SED
+ LIBTOOL
+ collect2
+ STMP_FIXINC
++BUILD_CPPFLAGS
+ BUILD_LDFLAGS
+ BUILD_CFLAGS
+ CC_FOR_BUILD
+@@ -10985,6 +10986,7 @@ fi
+ CC_FOR_BUILD='$(CC)'
+ BUILD_CFLAGS='$(ALL_CFLAGS)'
+ BUILD_LDFLAGS='$(LDFLAGS)'
++BUILD_CPPFLAGS='$(ALL_CPPFLAGS)'
+ STMP_FIXINC=stmp-fixinc
+ 
+ # And these apply if build != host, or we are generating coverage data
+@@ -10992,6 +10994,7 @@ if test x$build != x$host || test "x$cov
+ then
+     BUILD_CFLAGS='$(INTERNAL_CFLAGS) $(T_CFLAGS) $(CFLAGS_FOR_BUILD)'
+     BUILD_LDFLAGS='$(LDFLAGS_FOR_BUILD)'
++    BUILD_CPPFLAGS='$(CPPFLAGS_FOR_BUILD)'
+ fi
+ 
+ # Expand extra_headers to include complete path.
+Index: gcc-linaro-4.5-2010.11-1/Makefile.tpl
+===================================================================
+--- gcc-linaro-4.5-2010.11-1.orig/Makefile.tpl
++++ gcc-linaro-4.5-2010.11-1/Makefile.tpl
+@@ -336,6 +336,7 @@ AR_FOR_BUILD = @AR_FOR_BUILD@
+ AS_FOR_BUILD = @AS_FOR_BUILD@
+ CC_FOR_BUILD = @CC_FOR_BUILD@
+ CFLAGS_FOR_BUILD = @CFLAGS_FOR_BUILD@
++CPPFLAGS_FOR_BUILD = @CPPFLAGS_FOR_BUILD@
+ CXXFLAGS_FOR_BUILD = @CXXFLAGS_FOR_BUILD@
+ CXX_FOR_BUILD = @CXX_FOR_BUILD@
+ DLLTOOL_FOR_BUILD = @DLLTOOL_FOR_BUILD@
+Index: gcc-linaro-4.5-2010.11-1/configure
+===================================================================
+--- gcc-linaro-4.5-2010.11-1.orig/configure
++++ gcc-linaro-4.5-2010.11-1/configure
+@@ -651,6 +651,7 @@ GCJ_FOR_BUILD
+ DLLTOOL_FOR_BUILD
+ CXX_FOR_BUILD
+ CXXFLAGS_FOR_BUILD
++CPPFLAGS_FOR_BUILD
+ CFLAGS_FOR_BUILD
+ CC_FOR_BUILD
+ AS_FOR_BUILD
+@@ -8037,6 +8038,7 @@ esac
+ # our build compiler if desired.
+ if test x"${build}" = x"${host}" ; then
+   CFLAGS_FOR_BUILD=${CFLAGS_FOR_BUILD-${CFLAGS}}
++  CPPFLAGS_FOR_BUILD=${CPPFLAGS_FOR_BUILD-${CPPFLAGS}}
+   CXXFLAGS_FOR_BUILD=${CXXFLAGS_FOR_BUILD-${CXXFLAGS}}
+   LDFLAGS_FOR_BUILD=${LDFLAGS_FOR_BUILD-${LDFLAGS}}
+ fi
+Index: gcc-linaro-4.5-2010.11-1/configure.ac
+===================================================================
+--- gcc-linaro-4.5-2010.11-1.orig/configure.ac
++++ gcc-linaro-4.5-2010.11-1/configure.ac
+@@ -3090,6 +3090,7 @@ esac
+ # our build compiler if desired.
+ if test x"${build}" = x"${host}" ; then
+   CFLAGS_FOR_BUILD=${CFLAGS_FOR_BUILD-${CFLAGS}}
++  CPPFLAGS_FOR_BUILD=${CPPFLAGS_FOR_BUILD-${CPPFLAGS}}
+   CXXFLAGS_FOR_BUILD=${CXXFLAGS_FOR_BUILD-${CXXFLAGS}}
+   LDFLAGS_FOR_BUILD=${LDFLAGS_FOR_BUILD-${LDFLAGS}}
+ fi
+@@ -3156,6 +3157,7 @@ AC_SUBST(AR_FOR_BUILD)
+ AC_SUBST(AS_FOR_BUILD)
+ AC_SUBST(CC_FOR_BUILD)
+ AC_SUBST(CFLAGS_FOR_BUILD)
++AC_SUBST(CPPFLAGS_FOR_BUILD)
+ AC_SUBST(CXXFLAGS_FOR_BUILD)
+ AC_SUBST(CXX_FOR_BUILD)
+ AC_SUBST(DLLTOOL_FOR_BUILD)
diff --git a/recipes-devtools/gcc/gcc-4.5.1.linaro/gcc-poison-system-directories.patch b/recipes-devtools/gcc/gcc-4.5.1.linaro/gcc-poison-system-directories.patch
new file mode 100644
index 0000000..1f3ecf3
--- /dev/null
+++ b/recipes-devtools/gcc/gcc-4.5.1.linaro/gcc-poison-system-directories.patch
@@ -0,0 +1,94 @@
+       gcc/
+       2008-07-02  Joseph Myers  <joseph@codesourcery.com>
+       * c-incpath.c: Include toplev.h.
+       (merge_include_chains): Use warning instead of cpp_error for
+       system directory poisoning diagnostic.
+       * Makefile.in (c-incpath.o): Depend on toplev.h.
+       * gcc.c (LINK_COMMAND_SPEC): Pass
+       --error-poison-system-directories if
+       -Werror=poison-system-directories.
+
+       2007-06-13  Joseph Myers  <joseph@codesourcery.com>
+       * common.opt (--Wno-poison-system-directories): New.
+       * doc/invoke.texi (-Wno-poison-system-directories): Document.
+       * c-incpath.c: Include flags.h.
+       (merge_include_chains): Check flag_poison_system_directories.
+       * gcc.c (LINK_COMMAND_SPEC): Pass --no-poison-system-directories
+       to linker if -Wno-poison-system-directories.
+       * Makefile.in (c-incpath.o): Depend on $(FLAGS_H).
+
+       2007-03-20  Daniel Jacobowitz  <dan@codesourcery.com>
+                   Joseph Myers  <joseph@codesourcery.com>
+       * configure.ac (--enable-poison-system-directories): New option.
+       * configure, config.in: Regenerate.
+       * c-incpath.c (merge_include_chains): If
+       ENABLE_POISON_SYSTEM_DIRECTORIES defined, warn for use of
+       /usr/include, /usr/local/include or /usr/X11R6/include.
+
+Index: gcc-linaro-4.5-2010.11-1/gcc/config.in
+===================================================================
+--- gcc-linaro-4.5-2010.11-1.orig/gcc/config.in
++++ gcc-linaro-4.5-2010.11-1/gcc/config.in
+@@ -138,6 +138,12 @@
+ #endif
+ 
+ 
++/* Define to warn for use of native system header directories */
++#ifndef USED_FOR_TARGET
++#undef ENABLE_POISON_SYSTEM_DIRECTORIES
++#endif
++
++
+ /* Define if you want all operations on RTL (the basic data structure of the
+    optimizer and back end) to be checked for dynamic type safety at runtime.
+    This is quite expensive. */
+Index: gcc-linaro-4.5-2010.11-1/gcc/configure.ac
+===================================================================
+--- gcc-linaro-4.5-2010.11-1.orig/gcc/configure.ac
++++ gcc-linaro-4.5-2010.11-1/gcc/configure.ac
+@@ -4449,6 +4449,16 @@ if test "x${enable_poison_system_directo
+ 	    [Define to warn for use of native system header directories])
+ fi
+ 
++AC_ARG_ENABLE([poison-system-directories],
++             AS_HELP_STRING([--enable-poison-system-directories],
++                            [warn for use of native system header directories]),,
++             [enable_poison_system_directories=no])
++if test "x${enable_poison_system_directories}" = "xyes"; then
++  AC_DEFINE([ENABLE_POISON_SYSTEM_DIRECTORIES],
++           [1],
++           [Define to warn for use of native system header directories])
++fi
++
+ # Substitute configuration variables
+ AC_SUBST(subdirs)
+ AC_SUBST(srcdir)
+Index: gcc-linaro-4.5-2010.11-1/gcc/incpath.c
+===================================================================
+--- gcc-linaro-4.5-2010.11-1.orig/gcc/incpath.c
++++ gcc-linaro-4.5-2010.11-1/gcc/incpath.c
+@@ -203,6 +203,24 @@ add_standard_paths (const char *sysroot,
+ 	  add_path (str, SYSTEM, p->cxx_aware, false);
+ 	}
+     }
++
++#ifdef ENABLE_POISON_SYSTEM_DIRECTORIES
++  if (flag_poison_system_directories)
++    {
++       struct cpp_dir *p;
++
++       for (p = heads[QUOTE]; p; p = p->next)
++         {
++          if ((!strncmp (p->name, "/usr/include", 12))
++              || (!strncmp (p->name, "/usr/local/include", 18))
++              || (!strncmp (p->name, "/usr/X11R6/include", 18)))
++            warning (OPT_Wpoison_system_directories,
++                     "include location \"%s\" is unsafe for "
++                     "cross-compilation",
++                     p->name);
++         }
++    }
++#endif
+ }
+ 
+ /* For each duplicate path in chain HEAD, keep just the first one.
diff --git a/recipes-devtools/gcc/gcc-cross-initial_4.5.1.linaro.bb b/recipes-devtools/gcc/gcc-cross-initial_4.5.1.linaro.bb
new file mode 100644
index 0000000..8a9507e
--- /dev/null
+++ b/recipes-devtools/gcc/gcc-cross-initial_4.5.1.linaro.bb
@@ -0,0 +1,5 @@
+require gcc-cross_${PV}.bb
+require recipes-devtools/gcc/gcc-cross-initial.inc
+
+PR = "r0"
+
diff --git a/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.linaro.bb b/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.linaro.bb
new file mode 100644
index 0000000..f276d68
--- /dev/null
+++ b/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.linaro.bb
@@ -0,0 +1,4 @@
+require gcc-cross_${PV}.bb
+require recipes-devtools/gcc/gcc-cross-intermediate.inc
+PR = "r0"
+
diff --git a/recipes-devtools/gcc/gcc-cross_4.5.1.linaro.bb b/recipes-devtools/gcc/gcc-cross_4.5.1.linaro.bb
new file mode 100644
index 0000000..fe78e38
--- /dev/null
+++ b/recipes-devtools/gcc/gcc-cross_4.5.1.linaro.bb
@@ -0,0 +1,10 @@
+PR = "r0"
+
+require gcc-${PV}.inc
+require recipes-devtools/gcc/gcc-cross4.inc
+
+EXTRA_OECONF += "--disable-libunwind-exceptions \
+                 --with-mpfr=${STAGING_DIR_NATIVE}${prefix_native} \
+                 --with-system-zlib "
+
+ARCH_FLAGS_FOR_TARGET += "-isystem${STAGING_DIR_TARGET}${target_includedir}"
diff --git a/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.linaro.bb b/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.linaro.bb
new file mode 100644
index 0000000..89575b5
--- /dev/null
+++ b/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.linaro.bb
@@ -0,0 +1,4 @@
+require gcc-cross-initial_${PV}.bb
+require recipes-devtools/gcc/gcc-crosssdk-initial.inc
+
+PR = "r0"
diff --git a/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.linaro.bb b/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.linaro.bb
new file mode 100644
index 0000000..5d2c18d
--- /dev/null
+++ b/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.linaro.bb
@@ -0,0 +1,4 @@
+require gcc-cross-intermediate_${PV}.bb
+require recipes-devtools/gcc/gcc-crosssdk-intermediate.inc
+
+PR = "r0"
diff --git a/recipes-devtools/gcc/gcc-crosssdk_4.5.1.linaro.bb b/recipes-devtools/gcc/gcc-crosssdk_4.5.1.linaro.bb
new file mode 100644
index 0000000..14dc253
--- /dev/null
+++ b/recipes-devtools/gcc/gcc-crosssdk_4.5.1.linaro.bb
@@ -0,0 +1,4 @@
+require gcc-cross_${PV}.bb
+require recipes-devtools/gcc/gcc-crosssdk.inc
+
+PR = "r0"
diff --git a/recipes-devtools/gcc/gcc-runtime_4.5.1.linaro.bb b/recipes-devtools/gcc/gcc-runtime_4.5.1.linaro.bb
new file mode 100644
index 0000000..47a5eb4
--- /dev/null
+++ b/recipes-devtools/gcc/gcc-runtime_4.5.1.linaro.bb
@@ -0,0 +1,11 @@
+PR = "r0"
+
+require gcc-${PV}.inc
+require recipes-devtools/gcc/gcc-configure-runtime.inc
+require recipes-devtools/gcc/gcc-package-runtime.inc
+
+SRC_URI_append = "file://fortran-cross-compile-hack.patch"
+
+ARCH_FLAGS_FOR_TARGET += "-isystem${STAGING_INCDIR}"
+
+EXTRA_OECONF += "--disable-libunwind-exceptions"
diff --git a/recipes-devtools/gcc/gcc_4.5.1.linaro.bb b/recipes-devtools/gcc/gcc_4.5.1.linaro.bb
new file mode 100644
index 0000000..6a73b59
--- /dev/null
+++ b/recipes-devtools/gcc/gcc_4.5.1.linaro.bb
@@ -0,0 +1,10 @@
+PR = "r0"
+
+require gcc-${PV}.inc
+require recipes-devtools/gcc/gcc-configure-target.inc
+require recipes-devtools/gcc/gcc-package-target.inc
+
+SRC_URI_append = "file://fortran-cross-compile-hack.patch"
+
+ARCH_FLAGS_FOR_TARGET += "-isystem${STAGING_INCDIR}"
+
-- 
1.7.1


