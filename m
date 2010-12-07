Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 102094C811B9
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 01:01:54 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 06 Dec 2010 23:01:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,310,1288594800"; d="scan'208";a="865303349"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga001.fm.intel.com with ESMTP; 06 Dec 2010 23:01:53 -0800
Message-Id: <0a3072a4114683dbc7aa855ef94f1d0bbb53b309.1291705845.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291705845.git.dongxiao.xu@intel.com>
References: <cover.1291705845.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 7 Dec 2010 14:29:29 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 5/7] pulseaudio: upgrade to version 0.9.21
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
X-List-Received-Date: Tue, 07 Dec 2010 07:01:54 -0000

There is a bug in pulseaudio uptream which uses new instructions on old
arm platform. So we keep arm version of pulseaudio unchanged.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/conf/distro/include/poky-fixed-revisions.inc  |    4 +
 .../pulseaudio/pulseaudio-0.9.21/armv4+v5asm.patch |   59 ++++++++++++++++++++
 .../pulseaudio-0.9.21/autoconf_version.patch       |   15 +++++
 .../pulseaudio/pulseaudio-0.9.21/buildfix.patch    |   15 +++++
 .../pulseaudio-0.9.21/configure_silent_rules.patch |   31 ++++++++++
 .../pulseaudio-0.9.21/gcc4-compile-fix.patch       |   20 +++++++
 .../pulseaudio/pulseaudio-0.9.21/tls_m4.patch      |   32 +++++++++++
 .../pulseaudio-0.9.21/volatiles.04_pulse           |    2 +
 .../pulseaudio/pulseaudio_0.9.21.bb                |   28 +++++++++
 9 files changed, 206 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/armv4+v5asm.patch
 create mode 100644 meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/autoconf_version.patch
 create mode 100644 meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/buildfix.patch
 create mode 100644 meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/configure_silent_rules.patch
 create mode 100644 meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/gcc4-compile-fix.patch
 create mode 100644 meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/tls_m4.patch
 create mode 100644 meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/volatiles.04_pulse
 create mode 100644 meta/recipes-multimedia/pulseaudio/pulseaudio_0.9.21.bb

diff --git a/meta/conf/distro/include/poky-fixed-revisions.inc b/meta/conf/distro/include/poky-fixed-revisions.inc
index c437a1c..db348ca 100644
--- a/meta/conf/distro/include/poky-fixed-revisions.inc
+++ b/meta/conf/distro/include/poky-fixed-revisions.inc
@@ -8,6 +8,10 @@ PREFERRED_VERSION_hal-info ?= "20091130"
 PREFERRED_VERSION_udev ?= "158"
 PREFERRED_VERSION_wpa-supplicant ?= "0.7.3"
 
+PULSEAUDIOVERSION ?= "0.9.21"
+PULSEAUDIOVERSION_arm ?= "0.9.15"
+PREFERRED_VERSION_pulseaudio ?= "${PULSEAUDIOVERSION}"
+
 # Force the python versions in one place
 PYTHON_BASEVERSION ?= "2.6"
 PREFERRED_VERSION_python ?= "2.6.6"
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/armv4+v5asm.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/armv4+v5asm.patch
new file mode 100644
index 0000000..f07ee67
--- /dev/null
+++ b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/armv4+v5asm.patch
@@ -0,0 +1,59 @@
+Derived from OE by Dongxiao Xu <dongxiao.xu@intel.com>
+
+Index: pulseaudio-0.9.21/src/pulsecore/svolume_arm.c
+===================================================================
+--- pulseaudio-0.9.21.orig/src/pulsecore/svolume_arm.c
++++ pulseaudio-0.9.21/src/pulsecore/svolume_arm.c
+@@ -37,6 +37,14 @@
+ 
+ #if defined (__arm__)
+ 
++/*
++   the code below uses armv6 instructions; we can safely ifdef this away as the code is only
++   called if the arm architecture is v6 or higher
++*/
++#if (!defined (__ARM_ARCH_4__) && !defined (__ARM_ARCH_4T__) \
++	&& !defined (__ARM_ARCH_5__)&& !defined (__ARM_ARCH_5E__) && !defined (__ARM_ARCH_5T__) \
++	&& !defined (__ARM_ARCH_5TE__) && !defined (__ARM_ARCH_5TEJ__))
++
+ #define MOD_INC() \
+     " subs  r0, r6, %2              \n\t" \
+     " addcs r0, %1                  \n\t" \
+@@ -179,11 +187,15 @@ static void run_test (void) {
+ }
+ #endif
+ 
++#endif /* (!defined (__ARM_ARCH_4__) && !defined (__ARM_ARCH_4T__) ... */
+ #endif /* defined (__arm__) */
+ 
+ 
+ void pa_volume_func_init_arm (pa_cpu_arm_flag_t flags) {
+ #if defined (__arm__)
++#if (!defined (__ARM_ARCH_4__) && !defined (__ARM_ARCH_4T__) \
++	&& !defined (__ARM_ARCH_5__)&& !defined (__ARM_ARCH_5E__) && !defined (__ARM_ARCH_5T__) \
++	&& !defined (__ARM_ARCH_5TE__) && !defined (__ARM_ARCH_5TEJ__))
+     pa_log_info("Initialising ARM optimized functions.");
+ 
+ #ifdef RUN_TEST
+@@ -191,5 +203,6 @@ void pa_volume_func_init_arm (pa_cpu_arm
+ #endif
+ 
+     pa_set_volume_func (PA_SAMPLE_S16NE,     (pa_do_volume_func_t) pa_volume_s16ne_arm);
++#endif /* (!defined (__ARM_ARCH_4__) && !defined (__ARM_ARCH_4T__) ... */
+ #endif /* defined (__arm__) */
+ }
+Index: pulseaudio-0.9.21/src/modules/bluetooth/sbc_math.h
+===================================================================
+--- pulseaudio-0.9.21.orig/src/modules/bluetooth/sbc_math.h
++++ pulseaudio-0.9.21/src/modules/bluetooth/sbc_math.h
+@@ -47,7 +47,9 @@ typedef int32_t sbc_fixed_t;
+ 
+ #define SBC_FIXED_0(val) { val = 0; }
+ #define MUL(a, b)        ((a) * (b))
+-#ifdef __arm__
++#if (defined(__arm__) && !defined (__ARM_ARCH_4__) && !defined (__ARM_ARCH_4T__) \
++	&& !defined (__ARM_ARCH_5__)&& !defined (__ARM_ARCH_5E__) && !defined (__ARM_ARCH_5T__) \
++	&& !defined (__ARM_ARCH_5TE__) && !defined (__ARM_ARCH_5TEJ__))
+ #define MULA(a, b, res) ({				\
+ 		int tmp = res;			\
+ 		__asm__(				\
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/autoconf_version.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/autoconf_version.patch
new file mode 100644
index 0000000..80d0003
--- /dev/null
+++ b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/autoconf_version.patch
@@ -0,0 +1,15 @@
+Derived from OE by Dongxiao Xu <dongxiao.xu@intel.com>
+
+Index: pulseaudio-0.9.15/configure.ac
+===================================================================
+--- pulseaudio-0.9.15.orig/configure.ac	2009-04-14 00:09:53.000000000 +0100
++++ pulseaudio-0.9.15/configure.ac	2009-05-22 11:32:50.000000000 +0100
+@@ -20,7 +20,7 @@
+ # along with PulseAudio; if not, write to the Free Software Foundation,
+ # Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.
+ 
+-AC_PREREQ(2.63)
++AC_PREREQ(2.61)
+ 
+ m4_define(pa_major, [0])
+ m4_define(pa_minor, [9])
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/buildfix.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/buildfix.patch
new file mode 100644
index 0000000..ea8d769
--- /dev/null
+++ b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/buildfix.patch
@@ -0,0 +1,15 @@
+Derived from OE by Dongxiao Xu <dongxiao.xu@intel.com>
+
+Index: pulseaudio-0.9.11/src/pulsecore/atomic.h
+===================================================================
+--- pulseaudio-0.9.11.orig/src/pulsecore/atomic.h
++++ pulseaudio-0.9.11/src/pulsecore/atomic.h
+@@ -40,6 +40,8 @@
+ #error "Please include config.h before including this file!"
+ #endif
+ 
++#include "macro.h"
++
+ #ifdef HAVE_ATOMIC_BUILTINS
+ 
+ /* __sync based implementation */
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/configure_silent_rules.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/configure_silent_rules.patch
new file mode 100644
index 0000000..fd5abd5
--- /dev/null
+++ b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/configure_silent_rules.patch
@@ -0,0 +1,31 @@
+Derived from OE by Dongxiao Xu <dongxiao.xu@intel.com>
+
+Index: pulseaudio-0.9.19/configure.ac
+===================================================================
+--- pulseaudio-0.9.19.orig/configure.ac	2009-10-31 11:40:00.000000000 +0000
++++ pulseaudio-0.9.19/configure.ac	2009-10-31 11:50:35.000000000 +0000
+@@ -27,12 +27,13 @@
+ AC_CONFIG_SRCDIR([src/daemon/main.c])
+ AC_CONFIG_MACRO_DIR([m4])
+ AC_CONFIG_HEADERS([config.h])
+-AM_INIT_AUTOMAKE([foreign 1.11 -Wall -Wno-portability silent-rules tar-pax])
++AM_INIT_AUTOMAKE([foreign 1.10 -Wall -Wno-portability tar-pax])
+ 
+ m4_define(pa_major, `echo $VERSION | cut -d. -f1 | cut -d- -f1`)
+ m4_define(pa_minor, `echo $VERSION | cut -d. -f2 | cut -d- -f1`)
+ m4_define(pa_micro, `echo $VERSION | cut -d. -f3 | cut -d- -f1`)
+ 
++
+ AC_SUBST(PA_MAJOR, pa_major)
+ AC_SUBST(PA_MINOR, pa_minor)
+ AC_SUBST(PA_MICRO, pa_micro)
+@@ -80,7 +81,8 @@
+       ;;
+ esac
+ 
+-AM_SILENT_RULES([yes])
++# only use if available
++m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])
+ 
+ #### Checks for programs. ####
+ 
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/gcc4-compile-fix.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/gcc4-compile-fix.patch
new file mode 100644
index 0000000..2969cba
--- /dev/null
+++ b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/gcc4-compile-fix.patch
@@ -0,0 +1,20 @@
+| fix for more strict syntax compliance in gcc4.x
+| pulsecore/core-util.c: In function 'pa_raise_priority':
+| pulsecore/core-util.c:547: error: label at end of compound statement
+| Signed off: mickey@openmoko.org
+|
+Derived from OE by Dongxiao Xu <dongxiao.xu@intel.com>
+
+Index: pulseaudio-0.9.6/src/pulsecore/core-util.c
+===================================================================
+--- pulseaudio-0.9.6.orig/src/pulsecore/core-util.c
++++ pulseaudio-0.9.6/src/pulsecore/core-util.c
+@@ -535,7 +535,7 @@ void pa_raise_priority(void) {
+         pa_log_info("Successfully gained high priority class.");
+ #endif
+ 
+-fail:
++fail:;
+ 
+ #if defined(HAVE_SYS_CAPABILITY_H)
+     if (caps) {
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/tls_m4.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/tls_m4.patch
new file mode 100644
index 0000000..a8292b2
--- /dev/null
+++ b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/tls_m4.patch
@@ -0,0 +1,32 @@
+Derived from OE by Dongxiao Xu <dongxiao.xu@intel.com>
+
+Index: pulseaudio-0.9.15/m4/tls.m4
+===================================================================
+--- pulseaudio-0.9.15.orig/m4/tls.m4	2008-08-19 23:25:02.000000000 +0200
++++ pulseaudio-0.9.15/m4/tls.m4	2009-07-10 09:55:25.266365511 +0200
+@@ -1,12 +1,19 @@
+ AC_DEFUN([CC_CHECK_TLS], [
+   AC_CACHE_CHECK([whether $CC knows __thread for Thread-Local Storage],
+     cc_cv_tls___thread,
+-    [AC_COMPILE_IFELSE(
+-      AC_LANG_PROGRAM(
+-        [[static __thread int a = 6;]],
+-        [[a = 5;]]),
+-      [cc_cv_tls___thread=yes],
+-      [cc_cv_tls___thread=no])
++    [AC_LINK_IFELSE([__thread int a; int b; int main() { return a = b; }],
++	 [chktls_save_LDFLAGS="$LDFLAGS"
++	  LDFLAGS="-shared -Wl,--no-undefined $LDFLAGS"
++	  chktls_save_CFLAGS="$CFLAGS"
++	  CFLAGS="-fPIC $CFLAGS"
++	  dnl If -shared works, test if TLS works in a shared library.
++	  AC_LINK_IFELSE([int f() { return 0; }],
++	    AC_LINK_IFELSE([__thread int a; int b; int f() { return a = b; }],
++	      [cc_cv_tls___thread=yes],
++	      [cc_cv_tls___thread=no]),
++	    [cc_cv_tls___thread=yes])
++	  CFLAGS="$chktls_save_CFLAGS"
++	  LDFLAGS="$chktls_save_LDFLAGS"], [cc_cv_tls___thread=no])
+     ])
+   
+   AS_IF([test "x$cc_cv_tls___thread" = "xyes"],
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/volatiles.04_pulse b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/volatiles.04_pulse
new file mode 100644
index 0000000..5b19980
--- /dev/null
+++ b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/volatiles.04_pulse
@@ -0,0 +1,2 @@
+# <type> <owner> <group> <mode> <path> <linksource>
+d pulse pulse 0755 /var/run/pulse none
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio_0.9.21.bb b/meta/recipes-multimedia/pulseaudio/pulseaudio_0.9.21.bb
new file mode 100644
index 0000000..d2c21c4
--- /dev/null
+++ b/meta/recipes-multimedia/pulseaudio/pulseaudio_0.9.21.bb
@@ -0,0 +1,28 @@
+require pulseaudio.inc
+
+PR = "r0"
+
+DEPENDS += "gdbm speex"
+
+DEFAULT_PREFERENCE_om-gta01 = "-1"
+DEFAULT_PREFERENCE_om-gta02 = "-1"
+DEFAULT_PREFERENCE_motorola-ezx = "-1"
+
+inherit gettext
+
+SRC_URI += "\
+  file://buildfix.patch \
+  file://autoconf_version.patch \
+  file://tls_m4.patch \
+  file://configure_silent_rules.patch \
+  file://armv4+v5asm.patch \
+"
+
+do_compile_prepend() {
+    cd ${S}
+    mkdir -p ${S}/libltdl
+    cp ${STAGING_LIBDIR}/libltdl* ${S}/libltdl
+}
+
+SRC_URI[md5sum] = "76e623c4c72e2258bc8bdeb1599bad74"
+SRC_URI[sha256sum] = "94e22356ac70ee95388ae58da90d88c6b3186d1938618d21671627ff56cee254"
-- 
1.6.3.3


