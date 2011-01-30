Return-Path: <lianhao.lu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9EBB94C80B5F
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 02:21:30 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 30 Jan 2011 00:21:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,400,1291622400"; d="scan'208";a="702072024"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by orsmga001.jf.intel.com with ESMTP; 30 Jan 2011 00:21:29 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PjSXv-0000wZ-MV; Sun, 30 Jan 2011 16:22:07 +0800
Message-Id: <7ffa45b7cfea24dae1b51f40cfc807bf78b21b66.1296375580.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1296375580.git.lianhao.lu@intel.com>
References: <cover.1296375580.git.lianhao.lu@intel.com>
Old-Date: Sun, 30 Jan 2011 15:54:05 +0800
Date: Sun, 30 Jan 2011 16:22:07 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 6/8] populate_sdk_deb.bbclass: Added deb support for populate_sdk task.
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

This is a preparation commit for adding deb support in populate_sdk
task.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/populate_sdk_deb.bbclass |   60 +++++++++++++++++++++++++++++++++
 1 files changed, 60 insertions(+), 0 deletions(-)
 create mode 100644 meta/classes/populate_sdk_deb.bbclass

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
-- 
1.7.0.4


