Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3934C4C80594
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 02:21:31 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 30 Jan 2011 00:21:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,400,1291622400"; d="scan'208";a="381730221"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by azsmga001.ch.intel.com with ESMTP; 30 Jan 2011 00:21:30 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PjSXv-0000wv-Ou; Sun, 30 Jan 2011 16:22:07 +0800
Message-Id: <2feee84a25134e64be032ce6547d0e013f862cf7.1296375580.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1296375580.git.lianhao.lu@intel.com>
References: <cover.1296375580.git.lianhao.lu@intel.com>
Old-Date: Sun, 30 Jan 2011 15:56:51 +0800
Date: Sun, 30 Jan 2011 16:22:07 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 8/8] populate_sdk.bbclass/meta-toolchain: Made populate_sdk task more generic
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
X-List-Received-Date: Sun, 30 Jan 2011 08:21:31 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

Move the populate_sdk task out of meta-toolchain. Made it more generic
to support rpm/deb package format.

This commit is dependant on a series of commit:
2ea0406e4516fc59dff86cb4adc35c82cb774c2f
7ffa45b7cfea24dae1b51f40cfc807bf78b21b66
bf201a74c243942af3fcae6f174496bdd819dbc0
3d29933f2925efe8a84f10efdf50396031c33ae4
3d29933f2925efe8a84f10efdf50396031c33ae4
9c724dbf57e610a9e06bbdce38383dee3ac49281

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/populate_sdk.bbclass        |   82 ++++++++++++++++++++++++
 meta/recipes-core/meta/meta-toolchain.bb |  103 +-----------------------------
 2 files changed, 85 insertions(+), 100 deletions(-)
 create mode 100644 meta/classes/populate_sdk.bbclass

diff --git a/meta/classes/populate_sdk.bbclass b/meta/classes/populate_sdk.bbclass
new file mode 100644
index 0000000..7e260ef
--- /dev/null
+++ b/meta/classes/populate_sdk.bbclass
@@ -0,0 +1,82 @@
+inherit meta toolchain-scripts
+inherit populate_sdk_${IMAGE_PKGTYPE}
+
+SDK_DIR = "${WORKDIR}/sdk"
+SDK_OUTPUT = "${SDK_DIR}/image"
+SDK_DEPLOY = "${TMPDIR}/deploy/sdk"
+
+SDKTARGETSYSROOT = "${SDKPATH}/sysroots/${TARGET_SYS}"
+
+TOOLCHAIN_HOST_TASK ?= "task-sdk-host task-cross-canadian-${TRANSLATED_TARGET_ARCH}"
+TOOLCHAIN_TARGET_TASK ?= "task-poky-standalone-sdk-target task-poky-standalone-sdk-target-dbg"
+TOOLCHAIN_OUTPUTNAME ?= "${SDK_NAME}-toolchain-${DISTRO_VERSION}"
+
+RDEPENDS = "${TOOLCHAIN_TARGET_TASK} ${TOOLCHAIN_HOST_TASK}"
+DEPENDS = "virtual/fakeroot-native sed-native"
+
+PID = "${@os.getpid()}"
+
+EXCLUDE_FROM_WORLD = "1"
+
+fakeroot do_populate_sdk() {
+	rm -rf ${SDK_OUTPUT}
+	mkdir -p ${SDK_OUTPUT}
+
+	populate_sdk_${IMAGE_PKGTYPE}
+
+	# Don't ship any libGL in the SDK
+	rm -rf ${SDK_OUTPUT}/${SDKPATHNATIVE}${libdir_nativesdk}/libGL*
+
+	# Can copy pstage files here
+	# target_pkgs=`cat ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/var/lib/opkg/status | grep Package: | cut -f 2 -d ' '`
+
+	# Fix or remove broken .la files
+	#rm -f ${SDK_OUTPUT}/${SDKPATHNATIVE}/lib/*.la
+	rm -f ${SDK_OUTPUT}/${SDKPATHNATIVE}${libdir_nativesdk}/*.la
+
+	# Link the ld.so.cache file into the hosts filesystem
+	ln -s /etc/ld.so.cache ${SDK_OUTPUT}/${SDKPATHNATIVE}/etc/ld.so.cache
+
+	# Setup site file for external use
+	siteconfig=${SDK_OUTPUT}/${SDKPATH}/site-config-${MULTIMACH_TARGET_SYS}
+	touch $siteconfig
+	for sitefile in ${CONFIG_SITE} ; do
+		cat $sitefile >> $siteconfig
+	done
+
+	toolchain_create_sdk_env_script
+
+	# Add version information
+	versionfile=${SDK_OUTPUT}/${SDKPATH}/version-${MULTIMACH_TARGET_SYS}
+	touch $versionfile
+	echo 'Distro: ${DISTRO}' >> $versionfile
+	echo 'Distro Version: ${DISTRO_VERSION}' >> $versionfile
+	echo 'Metadata Revision: ${METADATA_REVISION}' >> $versionfile
+	echo 'Timestamp: ${DATETIME}' >> $versionfile
+
+	# Package it up
+	mkdir -p ${SDK_DEPLOY}
+	cd ${SDK_OUTPUT}
+	tar --owner=root --group=root -cj --file=${SDK_DEPLOY}/${TOOLCHAIN_OUTPUTNAME}.tar.bz2 .
+}
+
+populate_sdk_log_check() {
+	for target in $*
+	do
+		lf_path="${WORKDIR}/temp/log.do_$target.${PID}"
+
+		echo "log_check: Using $lf_path as logfile"
+
+		if test -e "$lf_path"
+		then
+			${IMAGE_PKGTYPE}_log_check $target $lf_path
+		else
+			echo "Cannot find logfile [$lf_path]"
+		fi
+		echo "Logfile is clean"
+	done
+}
+
+do_populate_sdk[nostamp] = "1"
+do_populate_sdk[recrdeptask] = "do_package_write"
+addtask populate_sdk before do_build after do_install
diff --git a/meta/recipes-core/meta/meta-toolchain.bb b/meta/recipes-core/meta/meta-toolchain.bb
index 4aed9c2..feff9ac 100644
--- a/meta/recipes-core/meta/meta-toolchain.bb
+++ b/meta/recipes-core/meta/meta-toolchain.bb
@@ -1,106 +1,9 @@
 DESCRIPTION = "Meta package for building a installable toolchain"
 LICENSE = "MIT"
-DEPENDS = "opkg-native opkg-utils-native virtual/fakeroot-native sed-native"
+
+PR = "r1"
 
 LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                     file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
-inherit meta toolchain-scripts
-
-SDK_DIR = "${WORKDIR}/sdk"
-SDK_OUTPUT = "${SDK_DIR}/image"
-SDK_DEPLOY = "${TMPDIR}/deploy/sdk"
-
-SDKTARGETSYSROOT = "${SDKPATH}/sysroots/${TARGET_SYS}"
-
-IPKG_HOST = "opkg-cl -f ${IPKGCONF_SDK} -o ${SDK_OUTPUT} --force-overwrite"
-IPKG_TARGET = "opkg-cl -f ${IPKGCONF_TARGET} -o ${SDK_OUTPUT}/${SDKTARGETSYSROOT} --force-overwrite"
-
-TOOLCHAIN_HOST_TASK ?= "task-sdk-host task-cross-canadian-${TRANSLATED_TARGET_ARCH}"
-TOOLCHAIN_TARGET_TASK ?= "task-poky-standalone-sdk-target task-poky-standalone-sdk-target-dbg"
-TOOLCHAIN_OUTPUTNAME ?= "${SDK_NAME}-toolchain-${DISTRO_VERSION}"
-
-RDEPENDS = "${TOOLCHAIN_TARGET_TASK} ${TOOLCHAIN_HOST_TASK}"
-
-EXCLUDE_FROM_WORLD = "1"
-
-do_populate_sdk() {
-	rm -rf ${SDK_OUTPUT}
-	mkdir -p ${SDK_OUTPUT}
-	mkdir -p ${SDK_OUTPUT}${localstatedir}/lib/opkg/
-	mkdir -p ${SDK_OUTPUT}/${SDKTARGETSYSROOT}${localstatedir}/lib/opkg/
-
-	rm -f ${IPKGCONF_TARGET}
-	touch ${IPKGCONF_TARGET}
-	rm -f ${IPKGCONF_SDK}
-	touch ${IPKGCONF_SDK}
-
-	package_update_index_ipk
-	package_generate_ipkg_conf
-
-	for arch in ${PACKAGE_ARCHS}; do
-		revipkgarchs="$arch $revipkgarchs"
-	done
-
-	${IPKG_HOST} update
-	${IPKG_HOST} install ${TOOLCHAIN_HOST_TASK}
-
-	${IPKG_TARGET} update
-	${IPKG_TARGET} install ${TOOLCHAIN_TARGET_TASK}
-
-	install -d ${SDK_OUTPUT}/${SDKPATHNATIVE}${localstatedir_nativesdk}/lib/opkg
-	mv ${SDK_OUTPUT}/var/lib/opkg/* ${SDK_OUTPUT}/${SDKPATHNATIVE}${localstatedir_nativesdk}/lib/opkg/
-	rm -Rf ${SDK_OUTPUT}/var
-
-	# Don't ship any libGL in the SDK
-	rm -rf ${SDK_OUTPUT}/${SDKPATHNATIVE}${libdir_nativesdk}/libGL*
-
-	install -d ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/${sysconfdir}
-	install -m 0644 ${IPKGCONF_TARGET} ${IPKGCONF_SDK} ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/${sysconfdir}/
-
-	install -d ${SDK_OUTPUT}/${SDKPATHNATIVE}/${sysconfdir}
-	install -m 0644 ${IPKGCONF_SDK} ${SDK_OUTPUT}/${SDKPATHNATIVE}/${sysconfdir}/
-
-	# Can copy pstage files here
-	# target_pkgs=`cat ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/var/lib/opkg/status | grep Package: | cut -f 2 -d ' '`
-
-	# Fix or remove broken .la files
-	for i in `find ${SDK_OUTPUT}/${SDKTARGETSYSROOT} -name \*.la`; do
-		sed -i 	-e "/^dependency_libs=/s,\([[:space:]']\)${base_libdir},\1${SDKTARGETSYSROOT}${base_libdir},g" \
-			-e "/^dependency_libs=/s,\([[:space:]']\)${libdir},\1${SDKTARGETSYSROOT}${libdir},g" \
-			-e "/^dependency_libs=/s,\-\([LR]\)${base_libdir},-\1${SDKTARGETSYSROOT}${base_libdir},g" \
-			-e "/^dependency_libs=/s,\-\([LR]\)${libdir},-\1${SDKTARGETSYSROOT}${libdir},g" \
-			-e 's/^installed=yes$/installed=no/' $i
-	done
-	#rm -f ${SDK_OUTPUT}/${SDKPATHNATIVE}/lib/*.la
-	rm -f ${SDK_OUTPUT}/${SDKPATHNATIVE}${libdir_nativesdk}/*.la
-
-	# Link the ld.so.cache file into the hosts filesystem
-	ln -s /etc/ld.so.cache ${SDK_OUTPUT}/${SDKPATHNATIVE}/etc/ld.so.cache
-
-	# Setup site file for external use
-	siteconfig=${SDK_OUTPUT}/${SDKPATH}/site-config-${MULTIMACH_TARGET_SYS}
-	touch $siteconfig
-	for sitefile in ${CONFIG_SITE} ; do
-		cat $sitefile >> $siteconfig
-	done
-
-	toolchain_create_sdk_env_script
-
-	# Add version information
-	versionfile=${SDK_OUTPUT}/${SDKPATH}/version-${MULTIMACH_TARGET_SYS}
-	touch $versionfile
-	echo 'Distro: ${DISTRO}' >> $versionfile
-	echo 'Distro Version: ${DISTRO_VERSION}' >> $versionfile
-	echo 'Metadata Revision: ${METADATA_REVISION}' >> $versionfile
-	echo 'Timestamp: ${DATETIME}' >> $versionfile
-
-	# Package it up
-	mkdir -p ${SDK_DEPLOY}
-	cd ${SDK_OUTPUT}
-	tar --owner=root --group=root -cj --file=${SDK_DEPLOY}/${TOOLCHAIN_OUTPUTNAME}.tar.bz2 .
-}
-
-do_populate_sdk[nostamp] = "1"
-do_populate_sdk[recrdeptask] = "do_package_write"
-addtask populate_sdk before do_build after do_install
+inherit populate_sdk
-- 
1.7.0.4


