Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5E9C04C806FA
	for <poky@yoctoproject.org>; Mon, 28 Mar 2011 22:31:59 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2T3Vwjv000482
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 28 Mar 2011 20:31:58 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 28 Mar 2011 20:31:56 -0700
Message-ID: <c5a61d7d0afc6e51f329ff3194f88000c27ad66d.1301368727.git.kai.kang@windriver.com>
In-Reply-To: <cover.1301368727.git.kai.kang@windriver.com>
References: <cover.1301368727.git.kai.kang@windriver.com>
Old-Date: Tue, 29 Mar 2011 10:07:15 +0800
Date: Tue, 29 Mar 2011 11:32:17 +0800
To: <poky@yoctoproject.org>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Cc: saul.wold@intel.com
Subject: [PATCH 1/2] nspr: add nspr to pass LSB library test
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
X-List-Received-Date: Tue, 29 Mar 2011 03:31:59 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

LSB library test will check libnspr4.so which nspr provides.
Import from OE, rev 6fe7cef27069415f2eba36bc640cf59013d4979b
Update to 4.8.7, drop 99_configure.dpatch, and adjust files for nspr.

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 .../mozilla/nspr-4.8.7/30_config_64bits.dpatch     |   45 ++++
 .../mozilla/nspr-4.8.7/30_pkgconfig.dpatch         |   37 +++
 .../mozilla/nspr-4.8.7/81_sonames.dpatch           |  233 ++++++++++++++++++++
 .../mozilla/nspr-4.8.7/unbreak-build.diff          |   50 +++++
 .../recipes-extended/mozilla/nspr-tools-native.inc |   29 +++
 .../mozilla/nspr-tools-native_4.8.7.bb             |   16 ++
 meta/recipes-extended/mozilla/nspr.inc             |   44 ++++
 meta/recipes-extended/mozilla/nspr_4.8.7.bb        |   17 ++
 8 files changed, 471 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/mozilla/nspr-4.8.7/30_config_64bits.dpatch
 create mode 100644 meta/recipes-extended/mozilla/nspr-4.8.7/30_pkgconfig.dpatch
 create mode 100644 meta/recipes-extended/mozilla/nspr-4.8.7/81_sonames.dpatch
 create mode 100644 meta/recipes-extended/mozilla/nspr-4.8.7/unbreak-build.diff
 create mode 100644 meta/recipes-extended/mozilla/nspr-tools-native.inc
 create mode 100644 meta/recipes-extended/mozilla/nspr-tools-native_4.8.7.bb
 create mode 100644 meta/recipes-extended/mozilla/nspr.inc
 create mode 100644 meta/recipes-extended/mozilla/nspr_4.8.7.bb

diff --git a/meta/recipes-extended/mozilla/nspr-4.8.7/30_config_64bits.dpatch b/meta/recipes-extended/mozilla/nspr-4.8.7/30_config_64bits.dpatch
new file mode 100644
index 0000000..44810b6
--- /dev/null
+++ b/meta/recipes-extended/mozilla/nspr-4.8.7/30_config_64bits.dpatch
@@ -0,0 +1,45 @@
+import from oe, rev 199effd4c7b1b62bc133a577e42d7043ee7202e7
+
+Signed-off-by: Kang Kai <kai.kang@windriver.com>
+
+--- nsprpub/configure.in
++++ nsprpub/configure.in
+@@ -57,7 +57,7 @@
+ USE_USER_PTHREADS=
+ USE_NSPR_THREADS=
+ USE_N32=
+-USE_64=
++USE_64=maybe
+ USE_CPLUS=
+ USE_IPV6=
+ USE_MDUPDATE=
+@@ -222,11 +222,26 @@
+     fi ])
+ 
+ AC_ARG_ENABLE(64bit,
+-    [  --enable-64bit          Enable 64-bit support (on certain platforms)],
+-    [ if test "$enableval" = "yes"; then
+-	    USE_64=1
++    [  --disable-64bit         Disable 64-bit support (on 64-bit platforms)],
++    [ if test "$enableval" = "no"; then
++	    USE_64=
++      else
++	    USE_64=1
+       fi ])
+ 
++if test "${USE_64}"; then
++    AC_MSG_CHECKING(for 64-bit OS)
++    AC_TRY_COMPILE([],[int assert[(sizeof(long) == 8) ? 1: -1]],
++        result="yes", result="no")
++    AC_MSG_RESULT("$result")
++    if test "$result" = "no" && test "$USE_64" = 1; then
++        AC_MSG_ERROR([Can't --enable-64bit on non 64-bit platforms])
++    fi
++    if test "$result" = "yes"; then
++        USE_64=1
++    fi
++fi
++
+ AC_ARG_ENABLE(mdupdate,
+     [  --enable-mdupdate       Enable use of certain compilers' mdupdate feature],
+     [ if test "$enableval" = "yes"; then
diff --git a/meta/recipes-extended/mozilla/nspr-4.8.7/30_pkgconfig.dpatch b/meta/recipes-extended/mozilla/nspr-4.8.7/30_pkgconfig.dpatch
new file mode 100644
index 0000000..9df8080
--- /dev/null
+++ b/meta/recipes-extended/mozilla/nspr-4.8.7/30_pkgconfig.dpatch
@@ -0,0 +1,37 @@
+import from oe, rev 199effd4c7b1b62bc133a577e42d7043ee7202e7
+
+Signed-off-by: Kang Kai <kai.kang@windriver.com>
+
+--- nsprpub/config/Makefile.in
++++ nsprpub/config/Makefile.in
+@@ -158,3 +158,7 @@
+ install:: nspr.m4
+ 	$(NSINSTALL) -D $(DESTDIR)$(datadir)/aclocal
+ 	$(NSINSTALL) -t -m 0644 $< $(DESTDIR)$(datadir)/aclocal
++
++install:: nspr.pc
++	$(NSINSTALL) -D $(DESTDIR)$(libdir)/pkgconfig
++	$(NSINSTALL) -t -m 0644 $< $(DESTDIR)$(libdir)/pkgconfig
+--- nsprpub/config/nspr.pc.in
++++ nsprpub/config/nspr.pc.in
+@@ -0,0 +1,10 @@
++prefix=@prefix@
++exec_prefix=@exec_prefix@
++libdir=@libdir@
++includedir=@includedir@
++
++Name: NSPR
++Description: The Netscape Portable Runtime
++Version: @MOD_MAJOR_VERSION@.@MOD_MINOR_VERSION@.@MOD_PATCH_VERSION@
++Libs: -L@libdir@ -lplds@MOD_MAJOR_VERSION@ -lplc@MOD_MAJOR_VERSION@ -lnspr@MOD_MAJOR_VERSION@ @OS_LIBS@
++Cflags: -I@includedir@
+--- nsprpub/configure.in
++++ nsprpub/configure.in
+@@ -2766,6 +2766,7 @@
+ config/nsprincl.mk
+ config/nsprincl.sh
+ config/nspr-config
++config/nspr.pc
+ lib/Makefile 
+ lib/ds/Makefile 
+ lib/libc/Makefile 
diff --git a/meta/recipes-extended/mozilla/nspr-4.8.7/81_sonames.dpatch b/meta/recipes-extended/mozilla/nspr-4.8.7/81_sonames.dpatch
new file mode 100644
index 0000000..c2c495b
--- /dev/null
+++ b/meta/recipes-extended/mozilla/nspr-4.8.7/81_sonames.dpatch
@@ -0,0 +1,233 @@
+import from oe, rev 199effd4c7b1b62bc133a577e42d7043ee7202e7
+
+Signed-off-by: Kang Kai <kai.kang@windriver.com>
+
+--- nsprpub/config/rules.mk
++++ nsprpub/config/rules.mk
+@@ -129,12 +129,35 @@
+ else
+ ifdef MKSHLIB
+ SHARED_LIBRARY	= $(OBJDIR)/lib$(LIBRARY_NAME)$(LIBRARY_VERSION).$(DLL_SUFFIX)
++SONAME		= $(notdir $(SHARED_LIBRARY))
++
++ifdef SO_VERSION
++ifneq (,$(findstring $(SONAME),$(MKSHLIB)))
++SO_VERSION_MAJOR	:= $(shell echo $(SO_VERSION) | sed 's/^\([^.]*\)\(\.[^.]*\)\?\(\.[^.]*\)\?/\1/')
++SO_VERSION_MINOR	:= $(shell echo $(SO_VERSION) | sed 's/^\([^.]*\)\(\.[^.]*\)\?\(\.[^.]*\)\?/\2/')
++SO_VERSION_MICRO	:= $(shell echo $(SO_VERSION) | sed 's/^\([^.]*\)\(\.[^.]*\)\?\(\.[^.]*\)\?/\3/')
++
++SHARED_LIBRARY_LINKS	:= $(SONAME)
++ifdef SO_VERSION_MINOR
++SHARED_LIBRARY_LINKS	+= $(SONAME).$(SO_VERSION_MAJOR)
+ endif
++ifdef SO_VERSION_MICRO
++SHARED_LIBRARY_LINKS	+= $(SHARED_LIBRARY).$(SO_VERSION_MAJOR)$(SO_VERSION_MINOR)
+ endif
+ 
++SONAME			:= $(SONAME).$(SO_VERSION_MAJOR)
++SHARED_LIBRARY		:= $(SHARED_LIBRARY).$(SO_VERSION)
++
++MKSHLINKS		= (cd $(1) && for link in $(SHARED_LIBRARY_LINKS); do rm -f $$link; ln -s $(notdir $(SHARED_LIBRARY)) $$link; done)
+ endif
+ endif
+ 
++endif
++endif
++
++endif
++endif
++
+ ifndef TARGETS
+ ifeq (,$(filter-out WINNT OS2,$(OS_ARCH)))
+ TARGETS		= $(LIBRARY) $(SHARED_LIBRARY) $(IMPORT_LIBRARY)
+@@ -166,7 +189,7 @@
+ endif
+ 
+ ALL_TRASH		= $(TARGETS) $(OBJS) $(RES) $(filter-out . .., $(OBJDIR)) LOGS TAGS $(GARBAGE) \
+-			  $(NOSUCHFILE) \
++			  $(SHARED_LIBRARY_LINKS) $(NOSUCHFILE) \
+ 			  so_locations
+ 
+ ifeq ($(OS_ARCH),OpenVMS)
+@@ -232,6 +255,7 @@
+ endif
+ ifdef RELEASE_LIBS
+ 	$(NSINSTALL) -t -m 0755 $(RELEASE_LIBS) $(DESTDIR)$(libdir)/$(lib_subdir)
++	$(call MKSHLINKS,$(DESTDIR)$(libdir)/$(lib_subdir))
+ endif
+ 	+$(LOOP_OVER_DIRS)
+ 
+@@ -325,6 +349,8 @@
+ 	$(IMPLIB) $@ $(MAPFILE)
+ endif
+ 
++$(SHARED_LIBRARY_LINKS): %: $(SHARED_LIBRARY)
++
+ $(SHARED_LIBRARY): $(OBJS) $(RES) $(MAPFILE)
+ 	@$(MAKE_OBJDIR)
+ 	rm -f $@
+--- nsprpub/configure.in
++++ nsprpub/configure.in
+@@ -892,7 +892,7 @@
+         AC_DEFINE(_PR_STAT_HAS_ST_ATIMESPEC)
+         MKSHLIB='$(CC) -o $@ $(DSO_LDOPTS)'
+         DSO_CFLAGS=-fPIC
+-        DSO_LDOPTS='-shared -Wl,-soname,$(@:$(OBJDIR)/%.so=%.so)'
++        DSO_LDOPTS='-shared -Wl,-soname,$(SONAME)'
+         STRIP="$STRIP -d"
+         case "$target_os" in
+         bsdi4.2* | bsdi4.3* | bsdi5.*)
+@@ -1042,7 +1042,7 @@
+     fi
+     MKSHLIB='$(CC) $(DSO_LDOPTS) -o $@'
+     DSO_CFLAGS=-fPIC
+-    DSO_LDOPTS='-shared -Wl,-soname -Wl,$(notdir $@)'
++    DSO_LDOPTS='-shared -Wl,-soname -Wl,$(SONAME)'
+     MDCPUCFG_H=_freebsd.cfg
+     PR_MD_CSRCS=freebsd.c
+     ;;
+@@ -1059,7 +1059,7 @@
+     # workaround this problem.
+     AC_DEFINE(_PR_POLL_WITH_SELECT)
+     AC_DEFINE(_USE_BIG_FDS)
+-    DSO_LDOPTS='-b +h $(notdir $@)'
++    DSO_LDOPTS='-b +h $(SONAME)'
+     PR_MD_CSRCS=hpux.c
+     if test "$OS_TEST" = "ia64"; then
+         DLL_SUFFIX=so
+@@ -1304,7 +1304,7 @@
+     PR_MD_CSRCS=linux.c
+     MKSHLIB='$(CC) $(DSO_LDOPTS) -o $@'
+     DSO_CFLAGS=-fPIC
+-    DSO_LDOPTS='-shared -Wl,-soname -Wl,$(notdir $@)'
++    DSO_LDOPTS='-shared -Wl,-soname -Wl,$(SONAME)'
+     _OPTIMIZE_FLAGS=-O2
+     _DEBUG_FLAGS="-g -fno-inline"  # most people on linux use gcc/gdb, and that
+                                    # combo is not yet good at debugging inlined
+@@ -1561,7 +1561,7 @@
+         else
+             OBJECT_FMT=ELF
+             DLL_SUFFIX=so
+-            DSO_LDOPTS='-shared -Wl,-soname,$(notdir $@)'
++            DSO_LDOPTS='-shared -Wl,-soname,$(SONAME)'
+         fi
+     fi
+ 
+@@ -1607,7 +1607,7 @@
+     AC_DEFINE(HAVE_POINTER_LOCALTIME_R)
+     MDCPUCFG_H=_nto.cfg
+     PR_MD_CSRCS=nto.c
+-    MKSHLIB='$(CC) $(DSO_LDOPTS) -Wl,-soname -Wl,$(notdir $@) -o $@'
++    MKSHLIB='$(CC) $(DSO_LDOPTS) -Wl,-soname -Wl,$(SONAME) -o $@'
+     DSO_CFLAGS=-fPIC
+     DSO_LDOPTS=-shared
+     OS_LIBS="$OS_LIBS -lsocket"
+@@ -1685,7 +1685,7 @@
+     if echo $OS_RELEASE | grep -c V4.0 >/dev/null; then
+         AC_DEFINE(OSF1V4_MAP_PRIVATE_BUG)
+     fi
+-    DSO_LDOPTS='-shared -all -expect_unresolved "*" -soname $(notdir $@)'
++    DSO_LDOPTS='-shared -all -expect_unresolved "*" -soname $(SONAME)'
+     MDCPUCFG_H=_osf1.cfg
+     PR_MD_CSRCS=osf1.c
+     ;;
+@@ -1751,7 +1751,7 @@
+         _OPTIMIZE_FLAGS='-O -F Olimit,4000'
+     fi
+ 
+-    DSO_LDOPTS='-G -z defs -h $(@:$(OBJDIR)/%.so=%.so)'
++    DSO_LDOPTS='-G -z defs -h $(SONAME)'
+ 
+     if test "$OS_RELEASE" = "5.43"; then
+         AC_DEFINE(IP_MULTICAST)
+@@ -2200,13 +2200,13 @@
+         if `$CC -print-prog-name=ld` -v 2>&1 | grep -c GNU >/dev/null; then
+             GCC_USE_GNU_LD=1
+         fi
+-        DSO_LDOPTS='-shared -Wl,-h,$(notdir $@),-z,combreloc,-z,defs,-z,ignore' 
++        DSO_LDOPTS='-shared -Wl,-h,$(SONAME),-z,combreloc,-z,defs,-z,ignore'
+         if test -n "$USE_B_DIRECT"; then
+             DSO_LDOPTS="$DSO_LDOPTS,-Bdirect"
+         fi
+     else
+         DSO_CFLAGS=-KPIC
+-        DSO_LDOPTS='-G -h $(notdir $@) -z combreloc -z defs -z ignore'
++        DSO_LDOPTS='-G -h $(SONAME) -z combreloc -z defs -z ignore'
+         if test -n "$USE_B_DIRECT"; then
+             DSO_LDOPTS="$DSO_LDOPTS -Bdirect"
+         fi
+--- nsprpub/lib/ds/Makefile.in
++++ nsprpub/lib/ds/Makefile.in
+@@ -127,6 +127,7 @@
+ 
+ LIBRARY_NAME	= plds
+ LIBRARY_VERSION	= $(MOD_MAJOR_VERSION)
++SO_VERSION	= 0d
+ 
+ RELEASE_HEADERS = $(HEADERS)
+ RELEASE_HEADERS_DEST = $(RELEASE_INCLUDE_DIR)
+@@ -185,12 +186,14 @@
+ export:: $(TARGETS)
+ 	$(INSTALL) -m 444 $(HEADERS) $(dist_includedir)
+ 	$(INSTALL) -m 444 $(TARGETS) $(dist_libdir)
++	$(call MKSHLINKS,$(dist_libdir))
+ ifdef SHARED_LIBRARY
+ ifeq ($(OS_ARCH),HP-UX)
+ 	$(INSTALL) -m 755 $(SHARED_LIBRARY) $(dist_libdir)
+ 	$(INSTALL) -m 755 $(SHARED_LIBRARY) $(dist_bindir)
+ else
+ 	$(INSTALL) -m 444 $(SHARED_LIBRARY) $(dist_bindir)
++	$(call MKSHLINKS,$(dist_bindir))
+ endif
+ endif
+ ifeq ($(MOZ_BITS),16)
+--- nsprpub/lib/libc/src/Makefile.in
++++ nsprpub/lib/libc/src/Makefile.in
+@@ -69,6 +69,7 @@
+ 
+ LIBRARY_NAME	= plc
+ LIBRARY_VERSION	= $(MOD_MAJOR_VERSION)
++SO_VERSION	= 0d
+ 
+ RELEASE_LIBS = $(TARGETS)
+ 
+@@ -187,12 +188,14 @@
+ 
+ export:: $(TARGETS)
+ 	$(INSTALL) -m 444 $(TARGETS) $(dist_libdir)
++	$(call MKSHLINKS,$(dist_libdir))
+ ifdef SHARED_LIBRARY
+ ifeq ($(OS_ARCH),HP-UX)
+ 	$(INSTALL) -m 755 $(SHARED_LIBRARY) $(dist_libdir)
+ 	$(INSTALL) -m 755 $(SHARED_LIBRARY) $(dist_bindir)
+ else
+ 	$(INSTALL) -m 444 $(SHARED_LIBRARY) $(dist_bindir)
++	$(call MKSHLINKS,$(dist_bindir))
+ endif
+ endif
+ ifeq ($(MOZ_BITS),16)
+--- nsprpub/pr/src/Makefile.in
++++ sprpub/pr/src/Makefile.in
+@@ -332,6 +332,7 @@
+ 
+ LIBRARY_NAME = nspr
+ LIBRARY_VERSION = $(MOD_MAJOR_VERSION)
++SO_VERSION = 0d
+ 
+ RELEASE_LIBS = $(TARGETS)
+ 
+@@ -402,12 +403,14 @@
+ 
+ export:: $(TARGETS)
+ 	$(INSTALL) -m 444 $(TARGETS) $(dist_libdir)
++	$(call MKSHLINKS,$(dist_libdir))
+ ifdef SHARED_LIBRARY
+ ifeq ($(OS_ARCH),HP-UX)
+ 	$(INSTALL) -m 755 $(SHARED_LIBRARY) $(dist_libdir)
+ 	$(INSTALL) -m 755 $(SHARED_LIBRARY) $(dist_bindir)
+ else
+ 	$(INSTALL) -m 444 $(SHARED_LIBRARY) $(dist_bindir)
++	$(call MKSHLINKS,$(dist_bindir))
+ endif
+ endif
+ ifeq ($(MOZ_BITS),16)
diff --git a/meta/recipes-extended/mozilla/nspr-4.8.7/unbreak-build.diff b/meta/recipes-extended/mozilla/nspr-4.8.7/unbreak-build.diff
new file mode 100644
index 0000000..fd15f07
--- /dev/null
+++ b/meta/recipes-extended/mozilla/nspr-4.8.7/unbreak-build.diff
@@ -0,0 +1,50 @@
+import from oe, rev 199effd4c7b1b62bc133a577e42d7043ee7202e7
+
+Signed-off-by: Kang Kai <kai.kang@windriver.com>
+
+Index: nsprpub/configure.in
+===================================================================
+--- nsprpub.orig/configure.in	2008-07-23 14:38:19.000000000 +0200
++++ nsprpub/configure.in	2008-07-23 15:14:45.000000000 +0200
+@@ -42,7 +42,7 @@
+ AC_PREREQ(2.12)
+ AC_INIT(config/libc_r.h)
+ 
+-AC_CONFIG_AUX_DIR(${srcdir}/build/autoconf)
++AC_CONFIG_AUX_DIR(build/autoconf)
+ AC_CANONICAL_SYSTEM
+ 
+ dnl ========================================================
+@@ -442,7 +442,8 @@
+ 
+     AC_MSG_CHECKING([whether the $host compiler ($HOST_CC $HOST_CFLAGS $HOST_LDFLAGS) works])
+     AC_TRY_COMPILE([], [return(0);], 
+-        [ac_cv_prog_host_cc_works=1 AC_MSG_RESULT([yes])],
++        [ac_cv_prog_host_cc_works=1
++				AC_MSG_RESULT([yes])],
+         AC_MSG_ERROR([installation or configuration problem: $host compiler $HOST_CC cannot create executables.]) )
+ 
+     CC=$_SAVE_CC
+@@ -2266,9 +2267,8 @@
+ *-darwin*|*-beos*)
+     ;;
+ *)
+-    AC_CHECK_LIB(dl, dlopen,
+-        AC_CHECK_HEADER(dlfcn.h,
+-            OS_LIBS="-ldl $OS_LIBS"))
++    AC_CHECK_HEADER([dlfcn.h])
++    AC_CHECK_LIB(dl, dlopen, [OS_LIBS="-ldl $OS_LIBS"])
+     ;;
+ esac
+ 
+@@ -2366,8 +2366,8 @@
+ dnl using it
+ dnl
+ dnl MOZ_CHECK_PTHREADS(lib, success, failure)
+-AC_DEFUN(MOZ_CHECK_PTHREADS,
+-[
++AC_DEFUN([MOZ_CHECK_PTHREADS],
++[AC_PREREQ([2.57])dnl
+ AC_MSG_CHECKING([for pthread_create in -l$1])
+ echo "
+     #include <pthread.h> 
diff --git a/meta/recipes-extended/mozilla/nspr-tools-native.inc b/meta/recipes-extended/mozilla/nspr-tools-native.inc
new file mode 100644
index 0000000..3575cc1
--- /dev/null
+++ b/meta/recipes-extended/mozilla/nspr-tools-native.inc
@@ -0,0 +1,29 @@
+SUMMARY = "Netscape Portable Runtime"
+
+DESCRIPTION = "\
+NSPR provides platform independence for non-GUI operating system \
+facilities. These facilities include threads, thread synchronization, \
+normal file and network I/O, interval timing and calendar time, basic \
+memory management (malloc and free) and shared library linking."
+
+HOMEPAGE = "https://www.mozilla.org/projects/nspr"
+LICENSE = "MPL1.1 | GPL | LGPL" 
+
+S = "${WORKDIR}/nspr-${PV}/mozilla/nsprpub"
+
+inherit native autotools
+
+FILESDIR = "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/nspr-${PV}"
+
+do_compile() {
+	# Build 'now' and 'nsinstall' only.
+	oe_runmake -C config now nsinstall
+}
+
+NATIVE_INSTALL_WORKS = "1"
+
+do_install() {
+	install -d ${D}${bindir}/nspr-${PV}
+	install -m 0755 config/now ${D}${bindir}/nspr-${PV}
+	install -m 0755 config/nsinstall ${D}${bindir}/nspr-${PV}
+}
diff --git a/meta/recipes-extended/mozilla/nspr-tools-native_4.8.7.bb b/meta/recipes-extended/mozilla/nspr-tools-native_4.8.7.bb
new file mode 100644
index 0000000..0cfadcb
--- /dev/null
+++ b/meta/recipes-extended/mozilla/nspr-tools-native_4.8.7.bb
@@ -0,0 +1,16 @@
+require nspr-tools-native.inc
+
+PR = "r0"
+
+LIC_FILES_CHKSUM = "file://${S}/pkg/solaris/common_files/copyright;md5=555c634e9953bed3492dd5e6d90cd973"
+
+SRC_URI = "\
+	http://ftp.mozilla.org/pub/mozilla.org/nspr/releases/v${PV}/src/nspr-${PV}.tar.gz;name=archive \
+	file://30_config_64bits.dpatch;apply=yes \
+	file://30_pkgconfig.dpatch;apply=yes \
+	file://81_sonames.dpatch;apply=yes \
+	file://unbreak-build.diff \
+	"
+
+SRC_URI[archive.md5sum] = "97e30989a56ab813453b71261849c200"
+SRC_URI[archive.sha256sum] = "eb9459c31d43d1000fb1304f1e0cedab0bdac3c54c71988259c1ac10c1fe16a3"
diff --git a/meta/recipes-extended/mozilla/nspr.inc b/meta/recipes-extended/mozilla/nspr.inc
new file mode 100644
index 0000000..e6e6f36
--- /dev/null
+++ b/meta/recipes-extended/mozilla/nspr.inc
@@ -0,0 +1,44 @@
+SUMMARY = "Netscape Portable Runtime"
+
+DESCRIPTION = "\
+NSPR provides platform independence for non-GUI operating system \
+facilities. These facilities include threads, thread synchronization, \
+normal file and network I/O, interval timing and calendar time, basic \
+memory management (malloc and free) and shared library linking."
+
+HOMEPAGE = "https://www.mozilla.org/projects/nspr"
+LICENSE = "MPL1.1 | GPL | LGPL" 
+
+PR = "r0"
+
+DEPENDS = "nspr-tools-native"
+
+S = "${WORKDIR}/${P}/mozilla/nsprpub"
+
+inherit autotools
+
+EXTRA_OECONF = "\
+	--enable-ipv6 \
+	--with-mozilla \
+	--includedir=${includedir}/mozilla/nspr \
+	"
+
+TARGET_CC_ARCH += "${LDFLAGS}"
+
+do_compile_prepend() {
+    cp ${STAGING_BINDIR_NATIVE}/${P}/now config/now
+    touch config/now
+
+    cp ${STAGING_BINDIR_NATIVE}/${P}/nsinstall config/nsinstall
+    touch config/nsinstall
+}
+
+do_install_prepend() {
+    cp ${STAGING_BINDIR_NATIVE}/${P}/now config/now
+    touch config/now
+
+    cp ${STAGING_BINDIR_NATIVE}/${P}/nsinstall config/nsinstall
+    touch config/nsinstall
+}
+
+LEAD_SONAME = "libnspr4.so"
diff --git a/meta/recipes-extended/mozilla/nspr_4.8.7.bb b/meta/recipes-extended/mozilla/nspr_4.8.7.bb
new file mode 100644
index 0000000..7fb005f
--- /dev/null
+++ b/meta/recipes-extended/mozilla/nspr_4.8.7.bb
@@ -0,0 +1,17 @@
+require nspr.inc
+
+LIC_FILES_CHKSUM = "file://${S}/pkg/solaris/common_files/copyright;md5=555c634e9953bed3492dd5e6d90cd973"
+
+SRC_URI = "\
+	http://ftp.mozilla.org/pub/mozilla.org/nspr/releases/v${PV}/src/nspr-${PV}.tar.gz;name=archive \
+	file://30_config_64bits.dpatch;apply=yes \
+	file://30_pkgconfig.dpatch;apply=yes \
+	file://81_sonames.dpatch;apply=yes \
+	file://unbreak-build.diff \
+	"
+
+SRC_URI[archive.md5sum] = "7c6e75a0867ce2b9ec62e399a908b5ac"
+SRC_URI[archive.sha256sum] = "58782b11423359f2a247f0217aab6fe041f32984aac1f411da6d43bd34cfd0db"
+
+FILES_${PN} = "${libdir}/lib*"
+FILES_${PN}-dev += "${bindir}/nspr-config"
-- 
1.7.1


