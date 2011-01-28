Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3B0D04C812A6
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 04:00:50 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 28 Jan 2011 02:00:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,391,1291622400"; d="scan'208";a="881843395"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by fmsmga001.fm.intel.com with ESMTP; 28 Jan 2011 02:00:48 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1Pil90-0001j3-Bf; Fri, 28 Jan 2011 18:01:30 +0800
Message-Id: <1daf63ead393f7ae2fddc778bdd377c1dd58f6ca.1296208216.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1296208216.git.lianhao.lu@intel.com>
References: <cover.1296208216.git.lianhao.lu@intel.com>
Old-Date: Fri, 28 Jan 2011 17:24:15 +0800
Date: Fri, 28 Jan 2011 18:01:30 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 4/5] classes/populate_sdk_xxx.bbclass: pkg format support for populate_sdk task
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
X-List-Received-Date: Fri, 28 Jan 2011 10:00:50 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

This commit added various populate_sdk_xxx.bbclass to support the
populate_sdk task based on different package format(rpm, ipk, deb).

It is based on the commit c66b12f138b6e709f9b14cbff9b579634f15cc96.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/populate_sdk_deb.bbclass |   60 +++++++++++++++++++++++++++++
 meta/classes/populate_sdk_ipk.bbclass |   44 +++++++++++++++++++++
 meta/classes/populate_sdk_rpm.bbclass |   67 +++++++++++++++++++++++++++++++++
 3 files changed, 171 insertions(+), 0 deletions(-)
 create mode 100644 meta/classes/populate_sdk_deb.bbclass
 create mode 100644 meta/classes/populate_sdk_ipk.bbclass
 create mode 100644 meta/classes/populate_sdk_rpm.bbclass

diff --git a/meta/classes/populate_sdk_deb.bbclass b/meta/classes/populate_sdk_deb.bbclass
new file mode 100644
index 0000000..d563c28
--- /dev/null
+++ b/meta/classes/populate_sdk_deb.bbclass
@@ -0,0 +1,60 @@
+do_populate_sdk[depends] += "dpkg-native:do_populate_sysroot apt-native:do_populate_sysroot bzip2-native:do_populate_sysroot"
+do_populate_sdk[recrdeptask] += "do_package_write_deb"
+
+
+populate_sdk_post_deb () {
+
+	local target_rootfs=$1
+
+	cp -r ${STAGING_ETCDIR_NATIVE}/apt ${target_rootfs}/etc
+}
+
+fakeroot populate_sdk_deb () {
+
+	package_update_index_deb
+
+	export INSTALL_TASK_DEB="populate_sdk"
+	export INSTALL_PACKAGES_LINGUAS_DEB=""
+	export INSTALL_PACKAGES_ATTEMPTONLY_DEB=""
+
+	#install target
+	echo "Installing TARGET packages"
+	export INSTALL_ROOTFS_DEB="${SDK_OUTPUT}/${SDKTARGETSYSROOT}"
+	export INSTALL_BASEARCH_DEB="${DPKG_ARCH}"
+	export INSTALL_ARCHS_DEB="${PACKAGE_ARCHS}"
+	export INSTALL_PACKAGES_NORMAL_DEB="${TOOLCHAIN_TARGET_TASK}"
+
+	package_install_internal_deb
+	populate_sdk_post_deb ${INSTALL_ROOTFS_DEB}
+
+	populate_sdk_log_check populate_sdk
+
+	#install host
+	echo "Installing HOST packages"
+	export INSTALL_ROOTFS_DEB="${SDK_OUTPUT}"
+	export INSTALL_BASEARCH_DEB="${SDK_ARCH}"
+	export INSTALL_PACKAGES_NORMAL_DEB="${TOOLCHAIN_HOST_TASK}"
+	INSTALL_ARCHS_DEB=""
+	for arch in ${PACKAGE_ARCHS}; do
+		sdkarch=`echo $arch | sed -e 's/${HOST_ARCH}/${SDK_ARCH}/'`
+		extension="-nativesdk"
+		if [ "$sdkarch" = "all" -o "$sdkarch" = "any" -o "$sdkarch" = "noarch" ]; then
+		    extension=""
+		fi
+		if [ -e ${DEPLOY_DIR_DEB}/$sdkarch$extension ]; then
+			INSTALL_ARCHS_DEB="$INSTALL_ARCHS_DEB $sdkarch$extension"
+		fi
+	done
+	export INSTALL_ARCHS_DEB
+
+	package_install_internal_deb
+	populate_sdk_post_deb ${SDK_OUTPUT}/${SDKPATHNATIVE}
+
+	#move remainings
+	install -d ${SDK_OUTPUT}/${SDKPATHNATIVE}/var/dpkg
+	mv ${SDK_OUTPUT}/var/dpkg/* ${SDK_OUTPUT}/${SDKPATHNATIVE}/var/dpkg
+	rm -rf ${SDK_OUTPUT}/var
+
+	populate_sdk_log_check populate_sdk
+}
+
diff --git a/meta/classes/populate_sdk_ipk.bbclass b/meta/classes/populate_sdk_ipk.bbclass
new file mode 100644
index 0000000..79259f8
--- /dev/null
+++ b/meta/classes/populate_sdk_ipk.bbclass
@@ -0,0 +1,44 @@
+do_populate_sdk[depends] += "opkg-native:do_populate_sysroot opkg-utils-native:do_populate_sysroot"
+do_populate_sdk[recrdeptask] += "do_package_write_ipk"
+
+fakeroot populate_sdk_ipk() {
+
+	rm -f ${IPKGCONF_TARGET}
+	touch ${IPKGCONF_TARGET}
+	rm -f ${IPKGCONF_SDK}
+	touch ${IPKGCONF_SDK}
+
+	package_update_index_ipk
+	package_generate_ipkg_conf
+
+	export INSTALL_PACKAGES_ATTEMPTONLY_IPK=""
+	export INSTALL_PACKAGES_LINGUAS_IPK=""
+	export INSTALL_TASK_IPK="populate_sdk"
+
+	#install target
+	export INSTALL_ROOTFS_IPK="${SDK_OUTPUT}/${SDKTARGETSYSROOT}"
+	export INSTALL_CONF_IPK="${IPKGCONF_TARGET}"
+	export INSTALL_PACKAGES_NORMAL_IPK="${TOOLCHAIN_TARGET_TASK}"
+
+	package_install_internal_ipk
+
+	#install host
+	export INSTALL_ROOTFS_IPK="${SDK_OUTPUT}"
+	export INSTALL_CONF_IPK="${IPKGCONF_SDK}"
+	export INSTALL_PACKAGES_NORMAL_IPK="${TOOLCHAIN_HOST_TASK}"
+
+	package_install_internal_ipk
+
+	#post clean up
+	install -d ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/${sysconfdir}
+	install -m 0644 ${IPKGCONF_TARGET} ${IPKGCONF_SDK} ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/${sysconfdir}/
+
+	install -d ${SDK_OUTPUT}/${SDKPATHNATIVE}/${sysconfdir}
+	install -m 0644 ${IPKGCONF_SDK} ${SDK_OUTPUT}/${SDKPATHNATIVE}/${sysconfdir}/
+
+	install -d ${SDK_OUTPUT}/${SDKPATHNATIVE}${localstatedir_nativesdk}/lib/opkg
+	mv ${SDK_OUTPUT}/var/lib/opkg/* ${SDK_OUTPUT}/${SDKPATHNATIVE}${localstatedir_nativesdk}/lib/opkg/
+	rm -Rf ${SDK_OUTPUT}/var
+
+	populate_sdk_log_check populate_sdk
+}
diff --git a/meta/classes/populate_sdk_rpm.bbclass b/meta/classes/populate_sdk_rpm.bbclass
new file mode 100644
index 0000000..b7be2a2
--- /dev/null
+++ b/meta/classes/populate_sdk_rpm.bbclass
@@ -0,0 +1,67 @@
+do_populate_sdk[depends] += "rpm-native:do_populate_sysroot"
+do_populate_sdk[recrdeptask] += "do_package_write_rpm"
+
+rpmlibdir = "/var/lib/rpm"
+RPMOPTS="--dbpath ${rpmlibdir} --define='_openall_before_chroot 1'"
+RPM="rpm ${RPMOPTS}"
+
+
+populate_sdk_post_rpm () {
+
+	local target_rootfs=$1
+
+	# remove lock files
+	rm -f ${target_rootfs}/__db.*
+
+	# Move manifests into the directory with the logs
+	mv ${target_rootfs}/install/*.manifest ${T}/
+
+	# Remove all remaining resolver files
+	rm -rf ${target_rootfs}/install
+}
+
+fakeroot populate_sdk_rpm () {
+
+	package_update_index_rpm
+	package_generate_rpm_conf
+
+	export INSTALL_PACKAGES_ATTEMPTONLY_RPM=""
+	export INSTALL_PACKAGES_LINGUAS_RPM=""
+	export INSTALL_PROVIDENAME_RPM="/bin/sh"
+	export INSTALL_TASK_RPM="populate_sdk"
+
+
+	#install target
+	export INSTALL_ROOTFS_RPM="${SDK_OUTPUT}/${SDKTARGETSYSROOT}"
+	export INSTALL_PALTFOM_RPM="${TARGET_ARCH}-linux"
+	export INSTALL_CONFBASE_RPM="${RPMCONF_TARGET_BASE}"
+	export INSTALL_PACKAGES_NORMAL_RPM="${TOOLCHAIN_TARGET_TASK}"
+
+	package_install_internal_rpm
+	populate_sdk_post_rpm ${INSTALL_ROOTFS_RPM}
+
+	#install host
+	export INSTALL_ROOTFS_RPM="${SDK_OUTPUT}"
+	export INSTALL_PALTFOM_RPM="${SDK_ARCH}-nativesdk-linux"
+	export INSTALL_CONFBASE_RPM="${RPMCONF_HOST_BASE}"
+	export INSTALL_PACKAGES_NORMAL_RPM="${TOOLCHAIN_HOST_TASK}"
+
+	package_install_internal_rpm
+	populate_sdk_post_rpm ${INSTALL_ROOTFS_RPM}
+
+	# move host RPM library data
+	install -d ${SDK_OUTPUT}/${SDKPATHNATIVE}${localstatedir_nativesdk}/lib/rpm
+	mv ${SDK_OUTPUT}${rpmlibdir}/* ${SDK_OUTPUT}/${SDKPATHNATIVE}${localstatedir_nativesdk}/lib/rpm/
+	rm -Rf ${SDK_OUTPUT}/var
+
+	install -d ${SDK_OUTPUT}/${SDKPATHNATIVE}/${sysconfdir}
+	mv ${SDK_OUTPUT}/etc/* ${SDK_OUTPUT}/${SDKPATHNATIVE}/${sysconfdir}/
+	rm -rf ${SDK_OUTPUT}/etc
+
+	populate_sdk_log_check populate_sdk
+
+	# Workaround so the parser knows we need the resolve_package function!
+	if false ; then
+		resolve_package_rpm foo ${RPMCONF_TARGET_BASE}.conf || true
+	fi
+}
-- 
1.7.0.4


