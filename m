Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id E90C04C8109B
	for <poky@yoctoproject.org>; Sat, 15 Jan 2011 05:24:01 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 15 Jan 2011 03:24:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,326,1291622400"; d="scan'208";a="647255360"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by fmsmga002.fm.intel.com with ESMTP; 15 Jan 2011 03:24:01 -0800
Message-Id: <1fbef243a72576df8cac5fa1304569fddf9e9c4d.1295089968.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1295089968.git.dexuan.cui@intel.com>
References: <cover.1295089968.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Sat, 15 Jan 2011 18:47:50 +0800
Date: Sat, 15 Jan 2011 19:23:34 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/2] libgcc: use the new recipe (rather than gcc-runtime) to install libgcc_s.so* and crt*.o
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
X-List-Received-Date: Sat, 15 Jan 2011 11:24:02 -0000

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
 meta/conf/distro/include/poky-default.inc          |    1 +
 .../recipes-devtools/gcc/gcc-configure-runtime.inc |   16 +-------
 meta/recipes-devtools/gcc/gcc-package-runtime.inc  |    8 ----
 meta/recipes-devtools/gcc/gcc-runtime_4.3.3.bb     |    2 +-
 meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb     |    2 +-
 meta/recipes-devtools/gcc/libgcc_4.5.1.bb          |   43 ++++++++++++++++++++
 6 files changed, 47 insertions(+), 25 deletions(-)
 create mode 100644 meta/recipes-devtools/gcc/libgcc_4.5.1.bb

diff --git a/meta/conf/distro/include/poky-default.inc b/meta/conf/distro/include/poky-default.inc
index e5dd647..b693102 100644
--- a/meta/conf/distro/include/poky-default.inc
+++ b/meta/conf/distro/include/poky-default.inc
@@ -11,6 +11,7 @@ PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc-intermediate = "gcc-cross-interme
 PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc = "gcc-cross"
 PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}g++ = "gcc-cross"
 PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}compilerlibs = "gcc-runtime"
+PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}libgcc = "libgcc"
 PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}libc-initial = "${POKYLIBC}-initial"
 PREFERRED_PROVIDER_virtual/${SDK_PREFIX}libc-for-gcc-nativesdk ?= "${POKYLIBC}-nativesdk"
 
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
index 0000000..37a4d38
--- /dev/null
+++ b/meta/recipes-devtools/gcc/libgcc_4.5.1.bb
@@ -0,0 +1,43 @@
+require gcc-${PV}.inc
+
+PR = "r0"
+
+INHIBIT_DEFAULT_DEPS = "1"
+DEPENDS = "virtual/${TARGET_PREFIX}gcc virtual/${TARGET_PREFIX}g++"
+PROVIDES = "virtual/${TARGET_PREFIX}libgcc"
+
+PACKAGES = "\
+  libgcc \
+  libgcc-dev \
+  "
+
+FILES_libgcc = "${base_libdir}/libgcc*.so.*"
+FILES_libgcc-dev = " \
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


