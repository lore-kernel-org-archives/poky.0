Return-Path: <lianhao.lu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B2C5D4C80594
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 02:21:30 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 30 Jan 2011 00:21:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,400,1291622400"; d="scan'208";a="652531647"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by fmsmga002.fm.intel.com with ESMTP; 30 Jan 2011 00:21:29 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PjSXv-0000wO-LN; Sun, 30 Jan 2011 16:22:07 +0800
Message-Id: <bf201a74c243942af3fcae6f174496bdd819dbc0.1296375580.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1296375580.git.lianhao.lu@intel.com>
References: <cover.1296375580.git.lianhao.lu@intel.com>
Old-Date: Sun, 30 Jan 2011 15:52:27 +0800
Date: Sun, 30 Jan 2011 16:22:07 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 5/8] populate_sdk_rpm.bbclass: Added rpm support for populate_sdk task.
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
X-List-Received-Date: Sun, 30 Jan 2011 08:21:30 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

This is preparation commit to support using rpm in populate_sdk task.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/populate_sdk_rpm.bbclass |   80 +++++++++++++++++++++++++++++++++
 1 files changed, 80 insertions(+), 0 deletions(-)
 create mode 100644 meta/classes/populate_sdk_rpm.bbclass

diff --git a/meta/classes/populate_sdk_rpm.bbclass b/meta/classes/populate_sdk_rpm.bbclass
new file mode 100644
index 0000000..e1abbad
--- /dev/null
+++ b/meta/classes/populate_sdk_rpm.bbclass
@@ -0,0 +1,80 @@
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
+	export INSTALL_PLATFORM_RPM="${TARGET_ARCH}"
+	export INSTALL_PLATFORM_EXTRA_RPM="${PACKAGE_ARCHS}"
+	export INSTALL_CONFBASE_RPM="${RPMCONF_TARGET_BASE}"
+	export INSTALL_PACKAGES_NORMAL_RPM="${TOOLCHAIN_TARGET_TASK}"
+
+	package_install_internal_rpm
+	populate_sdk_post_rpm ${INSTALL_ROOTFS_RPM}
+
+	#install host
+	export INSTALL_ROOTFS_RPM="${SDK_OUTPUT}"
+	export INSTALL_PLATFORM_RPM="${SDK_ARCH}"
+	export INSTALL_CONFBASE_RPM="${RPMCONF_HOST_BASE}"
+	export INSTALL_PACKAGES_NORMAL_RPM="${TOOLCHAIN_HOST_TASK}"
+	INSTALL_PLATFORM_EXTRA_RPM=""
+	for arch in ${PACKAGE_ARCHS}; do
+		sdkarch=`echo $arch | sed -e 's/${HOST_ARCH}/${SDK_ARCH}/'`
+		extension="-nativesdk"
+		if [ "$sdkarch" = "all" -o "$sdkarch" = "any" -o "$sdkarch" = "noarch" ]; then
+		    extension=""
+		fi
+		if [ -e ${DEPLOY_DIR_RPM}/$sdkarch$extension ]; then
+			INSTALL_PLATFORM_EXTRA_RPM="$INSTALL_PLATFORM_EXTRA_RPM $sdkarch"
+		fi
+	done
+	export INSTALL_PLATFORM_EXTRA_RPM
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


