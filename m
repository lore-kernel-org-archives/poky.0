Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 828E04C810E8
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 23:24:28 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 Jan 2011 21:24:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,332,1291622400"; d="scan'208";a="697492377"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga001.jf.intel.com with ESMTP; 16 Jan 2011 21:24:27 -0800
Message-Id: <9278c416ab073a448fce97af55155ce59630bd12.1295241502.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1295241502.git.dexuan.cui@intel.com>
References: <cover.1295241502.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Sat, 15 Jan 2011 18:47:50 +0800
Date: Mon, 17 Jan 2011 13:23:58 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH v2 1/2] libgcc: use the new recipe (rather than gcc-runtime) to install libgcc_s.so* and crt*.o
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
X-List-Received-Date: Mon, 17 Jan 2011 05:24:28 -0000

Currently gcc-runtime installs the files, but actually gcc-runtime's
do_configure checks if the files are available, so before we build gcc-runtime,
we should have some recipe install the files first! -- currently
gcc-cross-intermediate actually does that(gcc-cross also installs the files,
but it installs into the gcc-build-internal* directory), but
gcc-cross-intermediate will have its own sysroot in future, after that,
gcc-runtime won't build. So let us add this new target recipe and move the
installation of the files from gcc-runtime into it.

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 meta/conf/distro/poky.conf                         |    2 +
 .../recipes-devtools/gcc/gcc-configure-runtime.inc |   16 +-------
 meta/recipes-devtools/gcc/gcc-package-runtime.inc  |    8 ----
 meta/recipes-devtools/gcc/gcc-runtime_4.3.3.bb     |    2 +-
 meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb     |    2 +-
 meta/recipes-devtools/gcc/libgcc_4.5.1.bb          |   42 ++++++++++++++++++++
 6 files changed, 47 insertions(+), 25 deletions(-)
 create mode 100644 meta/recipes-devtools/gcc/libgcc_4.5.1.bb

diff --git a/meta/conf/distro/poky.conf b/meta/conf/distro/poky.conf
index 1c5c721..31f1e41 100644
--- a/meta/conf/distro/poky.conf
+++ b/meta/conf/distro/poky.conf
@@ -87,6 +87,8 @@ VIRTUAL-RUNTIME_update-alternatives ?= "update-alternatives-cworth"
 # Others:
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers"
 PREFERRED_PROVIDER_linux-libc-headers-nativesdk ?= "linux-libc-headers-nativesdk"
+PREFERRED_PROVIDER_libgcc ?= "libgcc"
+PREFERRED_PROVIDER_libgcc-nativesdk ?= "libgcc-nativesdk"
 PREFERRED_PROVIDER_dbus-glib ?= "dbus-glib"
 PREFERRED_PROVIDER_dbus-glib-native ?= "dbus-glib-native"
 PREFERRED_PROVIDER_gconf ?= "gconf-dbus"
diff --git a/meta/recipes-devtools/gcc/gcc-configure-runtime.inc b/meta/recipes-devtools/gcc/gcc-configure-runtime.inc
index f9ad61d..6cc11e2 100644
--- a/meta/recipes-devtools/gcc/gcc-configure-runtime.inc
+++ b/meta/recipes-devtools/gcc/gcc-configure-runtime.inc
@@ -31,28 +31,14 @@ do_compile () {
 }
 
 do_install () {
-	target=`echo ${MULTIMACH_TARGET_SYS} | sed -e s#-nativesdk##`
-
-	# Install libgcc from our gcc-cross saved data
-	install -d ${D}${base_libdir} ${D}${libdir}
-	cp -fpPR ${STAGING_INCDIR_NATIVE}/gcc-build-internal-$target/* ${D}
-
 	for d in ${RUNTIMETARGET}; do
 		cd ${B}/$d/
 		oe_runmake 'DESTDIR=${D}' install
 	done
-
-	# Move libgcc_s into /lib
-	mkdir -p ${D}${base_libdir}
-	if [ -f ${D}${libdir}/nof/libgcc_s.so ]; then
-		mv ${D}${libdir}/nof/libgcc* ${D}${base_libdir}
-	else
-		mv ${D}${libdir}/libgcc* ${D}${base_libdir} || true
-	fi
 }
 
 INHIBIT_DEFAULT_DEPS = "1"
-DEPENDS = "virtual/${TARGET_PREFIX}gcc virtual/${TARGET_PREFIX}g++"
+DEPENDS = "virtual/${TARGET_PREFIX}gcc virtual/${TARGET_PREFIX}g++ libgcc"
 PROVIDES = "virtual/${TARGET_PREFIX}compilerlibs"
 
 BBCLASSEXTEND = "nativesdk"
diff --git a/meta/recipes-devtools/gcc/gcc-package-runtime.inc b/meta/recipes-devtools/gcc/gcc-package-runtime.inc
index 40a9ed0..e8c9011 100644
--- a/meta/recipes-devtools/gcc/gcc-package-runtime.inc
+++ b/meta/recipes-devtools/gcc/gcc-package-runtime.inc
@@ -1,6 +1,4 @@
 PACKAGES = "\
-  libgcc \
-  libgcc-dev \
   libstdc++ \
   libstdc++-precompile-dev \
   libstdc++-dev \
@@ -14,12 +12,6 @@ PACKAGES = "\
   libmudflap-dev \
 "
 
-FILES_libgcc = "${base_libdir}/libgcc*.so.*"
-FILES_libgcc-dev = " \
-  ${base_libdir}/libgcc*.so \
-  ${libdir}/${TARGET_SYS}/${BINV}/crt* \
-  ${libdir}/${TARGET_SYS}/${BINV}/libgcc*"
-
 FILES_libg2c = "${target_libdir}/libg2c.so.*"
 FILES_libg2c-dev = "\
   ${libdir}/libg2c.so \
diff --git a/meta/recipes-devtools/gcc/gcc-runtime_4.3.3.bb b/meta/recipes-devtools/gcc/gcc-runtime_4.3.3.bb
index 6b375f3..99f927a 100644
--- a/meta/recipes-devtools/gcc/gcc-runtime_4.3.3.bb
+++ b/meta/recipes-devtools/gcc/gcc-runtime_4.3.3.bb
@@ -1,4 +1,4 @@
-PR = "r17"
+PR = "r18"
 
 require gcc-${PV}.inc
 require gcc-configure-runtime.inc
diff --git a/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
index ca22e8b..093f9bf 100644
--- a/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
@@ -1,4 +1,4 @@
-PR = "r1"
+PR = "r2"
 
 require gcc-${PV}.inc
 require gcc-configure-runtime.inc
diff --git a/meta/recipes-devtools/gcc/libgcc_4.5.1.bb b/meta/recipes-devtools/gcc/libgcc_4.5.1.bb
new file mode 100644
index 0000000..a99fdef
--- /dev/null
+++ b/meta/recipes-devtools/gcc/libgcc_4.5.1.bb
@@ -0,0 +1,42 @@
+require gcc-${PV}.inc
+
+PR = "r0"
+
+INHIBIT_DEFAULT_DEPS = "1"
+DEPENDS = "virtual/${TARGET_PREFIX}gcc virtual/${TARGET_PREFIX}g++"
+
+PACKAGES = "\
+  ${PN} \
+  ${PN}-dev \
+  "
+
+FILES_${PN} = "${base_libdir}/libgcc*.so.*"
+FILES_${PN}-dev = " \
+  ${base_libdir}/libgcc*.so \
+  ${libdir}/${TARGET_SYS}/${BINV}/crt* \
+  ${libdir}/${TARGET_SYS}/${BINV}/libgcc*"
+
+do_fetch[noexec] = "1"
+do_unpack[noexec] = "1"
+do_patch[noexec] = "1"
+do_configure[noexec] = "1"
+do_compile[noexec] = "1"
+
+do_install () {
+	target=`echo ${MULTIMACH_TARGET_SYS} | sed -e s#-nativesdk##`
+
+	# Install libgcc from our gcc-cross saved data
+	install -d ${D}${base_libdir} ${D}${libdir}
+	cp -fpPR ${STAGING_INCDIR_NATIVE}/gcc-build-internal-$target/* ${D}
+
+	# Move libgcc_s into /lib
+	mkdir -p ${D}${base_libdir}
+	if [ -f ${D}${libdir}/nof/libgcc_s.so ]; then
+		mv ${D}${libdir}/nof/libgcc* ${D}${base_libdir}
+	else
+		mv ${D}${libdir}/libgcc* ${D}${base_libdir} || true
+	fi
+}
+
+BBCLASSEXTEND = "nativesdk"
+
-- 
1.7.2


