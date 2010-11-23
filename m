Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C77974C811CC
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 21:01:33 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 24 Nov 2010 19:01:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,251,1288594800"; d="scan'208";a="630121617"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by fmsmga002.fm.intel.com with ESMTP; 24 Nov 2010 19:01:33 -0800
Message-Id: <7751a4022c39f56ac4ee5bc6a2541b54e4022e61.1290654095.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290654095.git.edwin.zhai@intel.com>
References: <cover.1290654095.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Tue, 23 Nov 2010 10:04:48 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/4] nspr: Add 4.8.6 as new recipe
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
X-List-Received-Date: Thu, 25 Nov 2010 03:01:34 -0000

Updating eds-dbus to 2.32.1 requires nspr for the "prio.h" file.
This commit is revised based on OE version to add minimal headers.

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../nspr/nspr-4.8.6/30_config_64bits.dpatch        |   41 +++++++++++++++++
 .../nspr/nspr-4.8.6/30_pkgconfig.dpatch            |   33 ++++++++++++++
 .../nspr/nspr-4.8.6/configure_fix.patch            |   19 ++++++++
 .../nspr/nspr-4.8.6/unbreak-build.diff             |   46 ++++++++++++++++++++
 meta/recipes-sato/nspr/nspr-tools-native_4.8.6.bb  |   35 +++++++++++++++
 meta/recipes-sato/nspr/nspr_4.8.6.bb               |   33 ++++++++++++++
 6 files changed, 207 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-sato/nspr/nspr-4.8.6/30_config_64bits.dpatch
 create mode 100644 meta/recipes-sato/nspr/nspr-4.8.6/30_pkgconfig.dpatch
 create mode 100644 meta/recipes-sato/nspr/nspr-4.8.6/configure_fix.patch
 create mode 100644 meta/recipes-sato/nspr/nspr-4.8.6/unbreak-build.diff
 create mode 100644 meta/recipes-sato/nspr/nspr-tools-native_4.8.6.bb
 create mode 100644 meta/recipes-sato/nspr/nspr_4.8.6.bb

diff --git a/meta/recipes-sato/nspr/nspr-4.8.6/30_config_64bits.dpatch b/meta/recipes-sato/nspr/nspr-4.8.6/30_config_64bits.dpatch
new file mode 100644
index 0000000..d1f05cb
--- /dev/null
+++ b/meta/recipes-sato/nspr/nspr-4.8.6/30_config_64bits.dpatch
@@ -0,0 +1,41 @@
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
diff --git a/meta/recipes-sato/nspr/nspr-4.8.6/30_pkgconfig.dpatch b/meta/recipes-sato/nspr/nspr-4.8.6/30_pkgconfig.dpatch
new file mode 100644
index 0000000..aa8089e
--- /dev/null
+++ b/meta/recipes-sato/nspr/nspr-4.8.6/30_pkgconfig.dpatch
@@ -0,0 +1,33 @@
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
diff --git a/meta/recipes-sato/nspr/nspr-4.8.6/configure_fix.patch b/meta/recipes-sato/nspr/nspr-4.8.6/configure_fix.patch
new file mode 100644
index 0000000..19f21f7
--- /dev/null
+++ b/meta/recipes-sato/nspr/nspr-4.8.6/configure_fix.patch
@@ -0,0 +1,19 @@
+This patch forces to use nsinstall from nspr-tools-native to avoid build
+failure in cross-compile environ.
+
+Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
+
+Index: nsprpub/configure.in
+===================================================================
+--- nsprpub.orig/configure.in	2010-11-23 20:47:40.000000000 +0800
++++ nsprpub/configure.in	2010-11-23 20:52:33.000000000 +0800
+@@ -69,7 +69,8 @@
+ OBJDIR='$(OBJDIR_NAME)'
+ OBJDIR_NAME=.
+ OBJDIR_SUFFIX=OBJ
+-NSINSTALL='$(MOD_DEPTH)/config/$(OBJDIR_NAME)/nsinstall'
++dnl Use nsinstall from nspr-tools-native in sysroot in poky
++NSINSTALL=nsinstall
+ NOSUCHFILE=/no-such-file
+ LIBNSPR='-L$(dist_libdir) -lnspr$(MOD_MAJOR_VERSION)'
+ LIBPLC='-L$(dist_libdir) -lplc$(MOD_MAJOR_VERSION)'
diff --git a/meta/recipes-sato/nspr/nspr-4.8.6/unbreak-build.diff b/meta/recipes-sato/nspr/nspr-4.8.6/unbreak-build.diff
new file mode 100644
index 0000000..00ae074
--- /dev/null
+++ b/meta/recipes-sato/nspr/nspr-4.8.6/unbreak-build.diff
@@ -0,0 +1,46 @@
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
diff --git a/meta/recipes-sato/nspr/nspr-tools-native_4.8.6.bb b/meta/recipes-sato/nspr/nspr-tools-native_4.8.6.bb
new file mode 100644
index 0000000..49216fe
--- /dev/null
+++ b/meta/recipes-sato/nspr/nspr-tools-native_4.8.6.bb
@@ -0,0 +1,35 @@
+DESCRIPTION = "Tools needed to be injected into a cross-compilation NSPR build"
+HOMEPAGE = "https://www.mozilla.org/projects/nspr"
+BUGTRACKER = "https://bugzilla.mozilla.org/"
+
+LICENSE = "MPLv1.1 | GPLv2+ | LGPLv2.1+" 
+LIC_FILES_CHKSUM = "file://lib/prstreams/prstrms.h;endline=42;md5=689fe932d08b719f58c10b050d519c36 \
+                    file://pr/include/prio.h;endline=38;md5=bee90fdf36b2fa58cd9fa009cba09866"
+
+PR = "r0"
+
+SRC_URI = "http://ftp.mozilla.org/pub/mozilla.org/nspr/releases/v${PV}/src/nspr-${PV}.tar.gz \
+	file://30_config_64bits.dpatch;apply=yes \
+	file://30_pkgconfig.dpatch;apply=yes \
+	file://unbreak-build.diff \
+        "
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
+	install -d ${D}${bindir}
+	install -m 0755 config/now ${D}${bindir}
+	install -m 0755 config/nsinstall ${D}${bindir}
+}
+
diff --git a/meta/recipes-sato/nspr/nspr_4.8.6.bb b/meta/recipes-sato/nspr/nspr_4.8.6.bb
new file mode 100644
index 0000000..4e65b2c
--- /dev/null
+++ b/meta/recipes-sato/nspr/nspr_4.8.6.bb
@@ -0,0 +1,33 @@
+DESCRIPTION = "Netscape Portable Runtime"
+HOMEPAGE = "https://www.mozilla.org/projects/nspr"
+BUGTRACKER = "https://bugzilla.mozilla.org/"
+
+LICENSE = "MPLv1.1 | GPLv2+ | LGPLv2.1+" 
+LIC_FILES_CHKSUM = "file://lib/prstreams/prstrms.h;endline=42;md5=689fe932d08b719f58c10b050d519c36 \
+                    file://pr/include/prio.h;endline=38;md5=bee90fdf36b2fa58cd9fa009cba09866"
+
+DEPENDS = "nspr-tools-native"
+
+PR = "r0"
+
+SRC_URI = "http://ftp.mozilla.org/pub/mozilla.org/nspr/releases/v${PV}/src/${PN}-${PV}.tar.gz \
+	file://30_config_64bits.dpatch;apply=yes \
+	file://30_pkgconfig.dpatch;apply=yes \
+	file://unbreak-build.diff \
+	file://configure_fix.patch \
+        "
+
+
+S = "${WORKDIR}/${PN}-${PV}/mozilla/nsprpub"
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
+LEAD_SONAME = "libnspr4.so"
-- 
1.7.0.4


