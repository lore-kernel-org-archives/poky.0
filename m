Return-Path: <lianhao.lu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 27A904C811F4
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 02:21:33 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Jan 2011 00:21:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,400,1291622400"; d="scan'208";a="882411244"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by fmsmga001.fm.intel.com with ESMTP; 30 Jan 2011 00:21:29 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PjSXv-0000wk-NF; Sun, 30 Jan 2011 16:22:07 +0800
Message-Id: <2ea0406e4516fc59dff86cb4adc35c82cb774c2f.1296375580.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1296375580.git.lianhao.lu@intel.com>
References: <cover.1296375580.git.lianhao.lu@intel.com>
Old-Date: Sun, 30 Jan 2011 15:55:41 +0800
Date: Sun, 30 Jan 2011 16:22:07 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 7/8] populate_sdk_ipk.bbclass: Added ipk support in populate_sdk task.
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
X-List-Received-Date: Sun, 30 Jan 2011 08:21:33 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

This is a preparation commit for adding ipk support in populate_sdk
task.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/populate_sdk_ipk.bbclass |   44 +++++++++++++++++++++++++++++++++
 1 files changed, 44 insertions(+), 0 deletions(-)
 create mode 100644 meta/classes/populate_sdk_ipk.bbclass

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
-- 
1.7.0.4


