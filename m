Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 99D3A4C811DD
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 16:02:13 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 Jan 2011 14:02:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,324,1291622400"; d="scan'208";a="647097992"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga002.fm.intel.com with ESMTP; 14 Jan 2011 14:01:13 -0800
Message-Id: <a84ff52c94c4299e9c6093539ba25bc5df7769e6.1295042140.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1295042138.git.dongxiao.xu@intel.com>
References: <cover.1295042138.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Mon, 10 Jan 2011 14:18:45 +0800
Date: Sat, 15 Jan 2011  6:14:31 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/5] staging: Use relative path in sysroot-destdir for target recipes
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
X-List-Received-Date: Fri, 14 Jan 2011 22:02:13 -0000

Original we used absolute path in sysroot-destdir for both native and
target recipes. This commit changes target recipes to use relative path
which is same as the image directory.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/classes/binconfig.bbclass                     |    6 ++--
 meta/classes/cross-canadian.bbclass                |    2 +
 meta/classes/kernel.bbclass                        |    2 +-
 meta/classes/native.bbclass                        |    2 +
 meta/classes/nativesdk.bbclass                     |    4 +-
 meta/classes/siteconfig.bbclass                    |    5 ++-
 meta/classes/staging.bbclass                       |   27 ++++++++++---------
 meta/recipes-connectivity/gupnp/gupnp_0.14.0.bb    |    4 +-
 .../gcc/gcc-cross-intermediate.inc                 |    3 ++
 meta/recipes-devtools/libtool/libtool-cross_2.4.bb |    4 +-
 .../libtool/libtool-nativesdk_2.4.bb               |    4 +-
 meta/recipes-devtools/libtool/libtool_2.4.bb       |    6 ++--
 meta/recipes-gnome/gtk+/gtk+.inc                   |    4 +-
 meta/recipes-support/apr/apr_1.3.3.bb              |    2 +-
 14 files changed, 42 insertions(+), 33 deletions(-)

diff --git a/meta/classes/binconfig.bbclass b/meta/classes/binconfig.bbclass
index 73ca4d6..7c12bd3 100644
--- a/meta/classes/binconfig.bbclass
+++ b/meta/classes/binconfig.bbclass
@@ -47,8 +47,8 @@ SYSROOT_PREPROCESS_FUNCS += "binconfig_sysroot_preprocess"
 binconfig_sysroot_preprocess () {
 	for config in `find ${S} -name '${BINCONFIG_GLOB}'`; do
 		configname=`basename $config`
-		install -d ${SYSROOT_DESTDIR}${STAGING_BINDIR_CROSS}
-		cat $config | sed ${@get_binconfig_mangle(d)} > ${SYSROOT_DESTDIR}${STAGING_BINDIR_CROSS}/$configname
-		chmod u+x ${SYSROOT_DESTDIR}${STAGING_BINDIR_CROSS}/$configname
+		install -d ${SYSROOT_DESTDIR}${bindir}/crossscripts
+		cat $config | sed ${@get_binconfig_mangle(d)} > ${SYSROOT_DESTDIR}${bindir}/crossscripts/$configname
+		chmod u+x ${SYSROOT_DESTDIR}${bindir}/crossscripts/$configname
 	done
 }
diff --git a/meta/classes/cross-canadian.bbclass b/meta/classes/cross-canadian.bbclass
index 3f3a24d..9897105 100644
--- a/meta/classes/cross-canadian.bbclass
+++ b/meta/classes/cross-canadian.bbclass
@@ -71,6 +71,8 @@ base_sbindir = "${bindir}"
 libdir = "${exec_prefix}/lib/${OLD_MULTIMACH_ARCH}${TARGET_VENDOR}-${TARGET_OS}"
 libexecdir = "${exec_prefix}/libexec/${OLD_MULTIMACH_ARCH}${TARGET_VENDOR}-${TARGET_OS}"
 
+do_populate_sysroot[sstate-outputdirs] = "${STAGING_DIR_HOST}/${base_prefix}"
+
 FILES_${PN} = "${prefix}"
 FILES_${PN}-dbg += "${prefix}/.debug \
                     ${prefix}/bin/.debug \
diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index 86a1923..c8303ae 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -185,7 +185,7 @@ kernel_do_install() {
 }
 
 sysroot_stage_all_append() {
-	sysroot_stage_dir ${D}/kernel ${SYSROOT_DESTDIR}${STAGING_KERNEL_DIR}
+	sysroot_stage_dir ${D}/kernel ${SYSROOT_DESTDIR}/kernel
 }
 
 
diff --git a/meta/classes/native.bbclass b/meta/classes/native.bbclass
index 3ca9d62..4355db2 100644
--- a/meta/classes/native.bbclass
+++ b/meta/classes/native.bbclass
@@ -63,6 +63,8 @@ exec_prefix = "${STAGING_DIR_NATIVE}${prefix_native}"
 # Since we actually install these into situ there is no staging prefix
 STAGING_DIR_HOST = ""
 STAGING_DIR_TARGET = ""
+do_populate_sysroot[sstate-outputdirs] = "${STAGING_DIR_NATIVE}"
+
 SHLIBSDIR = "${STAGING_DIR_NATIVE}/shlibs"
 PKG_CONFIG_DIR = "${libdir}/pkgconfig"
 
diff --git a/meta/classes/nativesdk.bbclass b/meta/classes/nativesdk.bbclass
index 154bd82..7ed5ca5 100644
--- a/meta/classes/nativesdk.bbclass
+++ b/meta/classes/nativesdk.bbclass
@@ -43,6 +43,8 @@ base_prefix = "${SDKPATHNATIVE}"
 prefix = "${SDKPATHNATIVE}${prefix_nativesdk}"
 exec_prefix = "${SDKPATHNATIVE}${prefix_nativesdk}"
 
+do_populate_sysroot[sstate-outputdirs] = "${STAGING_DIR_HOST}/${base_prefix}"
+
 FILES_${PN} += "${prefix}"
 FILES_${PN}-dbg += "${prefix}/.debug \
                     ${prefix}/bin/.debug \
@@ -78,5 +80,3 @@ python __anonymous () {
     bb.data.setVar("PROVIDES", provides, d)
     bb.data.setVar("OVERRIDES", bb.data.getVar("OVERRIDES", d, False) + ":virtclass-nativesdk", d)
 }
-
-
diff --git a/meta/classes/siteconfig.bbclass b/meta/classes/siteconfig.bbclass
index 37d910e..e7cc9ae 100644
--- a/meta/classes/siteconfig.bbclass
+++ b/meta/classes/siteconfig.bbclass
@@ -20,8 +20,9 @@ siteconfig_do_siteconfig_gencache () {
 	sed -n -e "/ac_cv_c_bigendian/p" -e "/ac_cv_sizeof_/p" \
 		-e "/ac_cv_type_/p" -e "/ac_cv_header_/p" -e "/ac_cv_func_/p" \
 		< ${PN}_cache > ${PN}_config
-	mkdir -p ${SYSROOT_DESTDIR}${SITECONFIG_SYSROOTCACHE}
-	cp ${PN}_config ${SYSROOT_DESTDIR}${SITECONFIG_SYSROOTCACHE}
+	mkdir -p ${SYSROOT_DESTDIR}${datadir}/${TARGET_SYS}_config_site.d
+	cp ${PN}_config ${SYSROOT_DESTDIR}${datadir}/${TARGET_SYS}_config_site.d
+
 }
 
 do_populate_sysroot[sstate-interceptfuncs] += "do_siteconfig "
diff --git a/meta/classes/staging.bbclass b/meta/classes/staging.bbclass
index 8432565..4d2991b 100644
--- a/meta/classes/staging.bbclass
+++ b/meta/classes/staging.bbclass
@@ -45,25 +45,25 @@ sysroot_stage_dirs() {
 	from="$1"
 	to="$2"
 
-	sysroot_stage_dir $from${includedir} $to${STAGING_INCDIR}
+	sysroot_stage_dir $from${includedir} $to${includedir}
 	if [ "${BUILD_SYS}" = "${HOST_SYS}" ]; then
-		sysroot_stage_dir $from${bindir} $to${STAGING_DIR_HOST}${bindir}
-		sysroot_stage_dir $from${sbindir} $to${STAGING_DIR_HOST}${sbindir}
-		sysroot_stage_dir $from${base_bindir} $to${STAGING_DIR_HOST}${base_bindir}
-		sysroot_stage_dir $from${base_sbindir} $to${STAGING_DIR_HOST}${base_sbindir}
-		sysroot_stage_dir $from${libexecdir} $to${STAGING_DIR_HOST}${libexecdir}
-		sysroot_stage_dir $from${sysconfdir} $to${STAGING_DIR_HOST}${sysconfdir}
-		sysroot_stage_dir $from${localstatedir} $to${STAGING_DIR_HOST}${localstatedir}
+		sysroot_stage_dir $from${bindir} $to${bindir}
+		sysroot_stage_dir $from${sbindir} $to${sbindir}
+		sysroot_stage_dir $from${base_bindir} $to${base_bindir}
+		sysroot_stage_dir $from${base_sbindir} $to${base_sbindir}
+		sysroot_stage_dir $from${libexecdir} $to${libexecdir}
+		sysroot_stage_dir $from${sysconfdir} $to${sysconfdir}
+		sysroot_stage_dir $from${localstatedir} $to${localstatedir}
 	fi
 	if [ -d $from${libdir} ]
 	then
-		sysroot_stage_libdir $from/${libdir} $to${STAGING_LIBDIR}
+		sysroot_stage_libdir $from/${libdir} $to${libdir}
 	fi
 	if [ -d $from${base_libdir} ]
 	then
-		sysroot_stage_libdir $from${base_libdir} $to${STAGING_DIR_HOST}${base_libdir}
+		sysroot_stage_libdir $from${base_libdir} $to${base_libdir}
 	fi
-	sysroot_stage_dir $from${datadir} $to${STAGING_DATADIR}
+	sysroot_stage_dir $from${datadir} $to${datadir}
 }
 
 sysroot_stage_all() {
@@ -76,6 +76,7 @@ do_populate_sysroot[dirs] = "${STAGING_DIR_TARGET}/${bindir} ${STAGING_DIR_TARGE
 			     ${STAGING_INCDIR_NATIVE} \
 			     ${STAGING_DATADIR} \
                              ${SYSROOT_DESTDIR}${STAGING_DIR_TARGET} \
+                             ${SYSROOT_DESTDIR}${base_prefix} \
 			     ${S} ${B}"
 
 # Could be compile but populate_sysroot and do_install shouldn't run at the same time
@@ -103,8 +104,8 @@ python do_populate_sysroot () {
 
 SSTATETASKS += "do_populate_sysroot"
 do_populate_sysroot[sstate-name] = "populate-sysroot"
-do_populate_sysroot[sstate-inputdirs] = "${SYSROOT_DESTDIR}/${STAGING_DIR}"
-do_populate_sysroot[sstate-outputdirs] = "${TMPDIR}/sysroots"
+do_populate_sysroot[sstate-inputdirs] = "${SYSROOT_DESTDIR}/${base_prefix}"
+do_populate_sysroot[sstate-outputdirs] = "${STAGING_DIR_HOST}/"
 
 python do_populate_sysroot_setscene () {
 	sstate_setscene(d)
diff --git a/meta/recipes-connectivity/gupnp/gupnp_0.14.0.bb b/meta/recipes-connectivity/gupnp/gupnp_0.14.0.bb
index 9beb46e..da9fc92 100644
--- a/meta/recipes-connectivity/gupnp/gupnp_0.14.0.bb
+++ b/meta/recipes-connectivity/gupnp/gupnp_0.14.0.bb
@@ -23,7 +23,7 @@ FILES_${PN}-dev += "${bindir}/gupnp-binding-tool"
 SYSROOT_PREPROCESS_FUNCS += "gupnp_sysroot_preprocess"
 
 gupnp_sysroot_preprocess () {
-	install -d ${SYSROOT_DESTDIR}${STAGING_BINDIR_CROSS}/
-	install -m 755 ${D}${bindir}/gupnp-binding-tool ${SYSROOT_DESTDIR}${STAGING_BINDIR_CROSS}/
+	install -d ${SYSROOT_DESTDIR}${bindir}/crossscripts/
+	install -m 755 ${D}${bindir}/gupnp-binding-tool ${SYSROOT_DESTDIR}${bindir}/crossscripts/
 }
 
diff --git a/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc b/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc
index 72a4241..22bef73 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc
+++ b/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc
@@ -17,6 +17,9 @@ EXTRA_OECONF = "--with-local-prefix=${STAGING_DIR_TARGET}${target_prefix} \
 		${EXTRA_OECONF_INTERMEDIATE} \
 		${@get_gcc_fpu_setting(bb, d)}"
 
+do_populate_sysroot[sstate-inputdirs] = "${SYSROOT_DESTDIR}/${STAGING_DIR_HOST} ${SYSROOT_DESTDIR}/${STAGING_DIR_TARGET}"
+do_populate_sysroot[sstate-outputdirs] = "${STAGING_DIR_HOST} ${STAGING_DIR_TARGET}"
+
 do_compile () {
     oe_runmake
 }
diff --git a/meta/recipes-devtools/libtool/libtool-cross_2.4.bb b/meta/recipes-devtools/libtool/libtool-cross_2.4.bb
index 6ea96a5..09a8693 100644
--- a/meta/recipes-devtools/libtool/libtool-cross_2.4.bb
+++ b/meta/recipes-devtools/libtool/libtool-cross_2.4.bb
@@ -29,6 +29,6 @@ do_install () {
 SYSROOT_PREPROCESS_FUNCS += "libtoolcross_sysroot_preprocess"
 
 libtoolcross_sysroot_preprocess () {
-	install -d ${SYSROOT_DESTDIR}${STAGING_BINDIR_CROSS}/
-	install -m 755 ${D}${bindir}/${HOST_SYS}-libtool ${SYSROOT_DESTDIR}${STAGING_BINDIR_CROSS}/${HOST_SYS}-libtool
+	install -d ${SYSROOT_DESTDIR}${bindir}/crossscripts
+	install -m 755 ${D}${bindir}/${HOST_SYS}-libtool ${SYSROOT_DESTDIR}${bindir}/crossscripts/${HOST_SYS}-libtool
 }
diff --git a/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb b/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb
index c9f24a9..c17023a 100644
--- a/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb
+++ b/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb
@@ -22,6 +22,6 @@ do_install () {
 SYSROOT_PREPROCESS_FUNCS += "libtoolnativesdk_sysroot_preprocess"
 
 libtoolnativesdk_sysroot_preprocess () {
-	install -d ${SYSROOT_DESTDIR}${STAGING_BINDIR_CROSS}/
-	install -m 755 ${D}${bindir}/${HOST_SYS}-libtool ${SYSROOT_DESTDIR}${STAGING_BINDIR_CROSS}/${HOST_SYS}-libtool
+	install -d ${SYSROOT_DESTDIR}${bindir}/crossscripts/
+	install -m 755 ${D}${bindir}/${HOST_SYS}-libtool ${SYSROOT_DESTDIR}${bindir}/crossscripts/${HOST_SYS}-libtool
 }
diff --git a/meta/recipes-devtools/libtool/libtool_2.4.bb b/meta/recipes-devtools/libtool/libtool_2.4.bb
index b5ec33e..3f73732 100644
--- a/meta/recipes-devtools/libtool/libtool_2.4.bb
+++ b/meta/recipes-devtools/libtool/libtool_2.4.bb
@@ -26,9 +26,9 @@ SYSROOT_PREPROCESS_FUNCS += "libtool_sysroot_preprocess"
 
 libtool_sysroot_preprocess () {
 	if [ "${PN}" == "libtool" ]; then
-		rm -rf ${SYSROOT_DESTDIR}${STAGING_DIR_TARGET}${bindir}/*
-		rm -rf ${SYSROOT_DESTDIR}${STAGING_DIR_TARGET}${datadir}/aclocal/*
-		rm -rf ${SYSROOT_DESTDIR}${STAGING_DIR_TARGET}${datadir}/libtool/config/*
+		rm -rf ${SYSROOT_DESTDIR}${bindir}/*
+		rm -rf ${SYSROOT_DESTDIR}${datadir}/aclocal/*
+		rm -rf ${SYSROOT_DESTDIR}${datadir}/libtool/config/*
 	fi
 }
 
diff --git a/meta/recipes-gnome/gtk+/gtk+.inc b/meta/recipes-gnome/gtk+/gtk+.inc
index 425a21e..bd6fb19 100644
--- a/meta/recipes-gnome/gtk+/gtk+.inc
+++ b/meta/recipes-gnome/gtk+/gtk+.inc
@@ -64,8 +64,8 @@ SYSROOT_PREPROCESS_FUNCS += "gtk_sysroot_preprocess"
 
 gtk_sysroot_preprocess () {
 	if [ -e ${D}${bindir}/gtk-builder-convert ]; then
-		install -d ${SYSROOT_DESTDIR}${STAGING_BINDIR_CROSS}/
-		install -m 755 ${D}${bindir}/gtk-builder-convert ${SYSROOT_DESTDIR}${STAGING_BINDIR_CROSS}/
+		install -d ${SYSROOT_DESTDIR}${bindir}/crossscripts/
+		install -m 755 ${D}${bindir}/gtk-builder-convert ${SYSROOT_DESTDIR}${bindir}/crossscripts/
 	fi
 }
 
diff --git a/meta/recipes-support/apr/apr_1.3.3.bb b/meta/recipes-support/apr/apr_1.3.3.bb
index 26cc01f..fabaae4 100644
--- a/meta/recipes-support/apr/apr_1.3.3.bb
+++ b/meta/recipes-support/apr/apr_1.3.3.bb
@@ -24,7 +24,7 @@ do_configure_prepend() {
 SYSROOT_PREPROCESS_FUNCS += "apr_sysroot_preprocess"
 
 apr_sysroot_preprocess () {
-	d=${SYSROOT_DESTDIR}${STAGING_DIR_TARGET}${datadir}/apr
+	d=${SYSROOT_DESTDIR}${datadir}/apr
 	install -d $d/
 	cp ${S}/build/apr_rules.mk $d/
 	sed -i s,apr_builddir=.*,apr_builddir=,g $d/apr_rules.mk
-- 
1.6.3.3


