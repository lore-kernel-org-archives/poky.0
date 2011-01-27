Return-Path: <lianhao.lu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 67DB74C811D2
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 20:50:44 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 26 Jan 2011 18:50:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,383,1291622400"; d="scan'208";a="881378530"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by fmsmga001.fm.intel.com with ESMTP; 26 Jan 2011 18:50:43 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PiHxM-00078P-36; Thu, 27 Jan 2011 10:51:32 +0800
Message-Id: <a08195f68fde4b03ee08cb4f46d26b46293d2a82.1296095614.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1296095614.git.lianhao.lu@intel.com>
References: <cover.1296095614.git.lianhao.lu@intel.com>
Old-Date: Wed, 26 Jan 2011 21:14:09 +0800
Date: Thu, 27 Jan 2011 10:51:32 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 2/6] classes/populate_sdk_ipk.bbclass: newly created.
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
X-List-Received-Date: Thu, 27 Jan 2011 02:50:44 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

Added ipk support for populate_sdk task.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/populate_sdk_ipk.bbclass |   57 +++++++++++++++++++++++++++++++++
 1 files changed, 57 insertions(+), 0 deletions(-)
 create mode 100644 meta/classes/populate_sdk_ipk.bbclass

diff --git a/meta/classes/populate_sdk_ipk.bbclass b/meta/classes/populate_sdk_ipk.bbclass
new file mode 100644
index 0000000..45b59f0
--- /dev/null
+++ b/meta/classes/populate_sdk_ipk.bbclass
@@ -0,0 +1,57 @@
+do_populate_sdk[depends] += "opkg-native:do_populate_sysroot opkg-utils-native:do_populate_sysroot"
+do_populate_sdk[recrdeptask] += "do_package_write_ipk"
+
+IPKG_HOST = "opkg-cl -f ${IPKGCONF_SDK} -o ${SDK_OUTPUT} --force-overwrite"
+IPKG_TARGET = "opkg-cl -f ${IPKGCONF_TARGET} -o ${SDK_OUTPUT}/${SDKTARGETSYSROOT} --force-overwrite"
+
+fakeroot populate_sdk_ipk() {
+
+	mkdir -p ${SDK_OUTPUT}${localstatedir}/lib/opkg/
+	mkdir -p ${SDK_OUTPUT}/${SDKTARGETSYSROOT}${localstatedir}/lib/opkg/
+
+	rm -f ${IPKGCONF_TARGET}
+	touch ${IPKGCONF_TARGET}
+	rm -f ${IPKGCONF_SDK}
+	touch ${IPKGCONF_SDK}
+
+	package_update_index_ipk
+	package_generate_ipkg_conf
+
+	${IPKG_HOST} update
+	${IPKG_HOST} install ${TOOLCHAIN_HOST_TASK}
+
+	${IPKG_TARGET} update
+	${IPKG_TARGET} install ${TOOLCHAIN_TARGET_TASK}
+
+	install -d ${SDK_OUTPUT}/${SDKPATHNATIVE}${localstatedir_nativesdk}/lib/opkg
+	mv ${SDK_OUTPUT}/var/lib/opkg/* ${SDK_OUTPUT}/${SDKPATHNATIVE}${localstatedir_nativesdk}/lib/opkg/
+	rm -Rf ${SDK_OUTPUT}/var
+
+	install -d ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/${sysconfdir}
+	install -m 0644 ${IPKGCONF_TARGET} ${IPKGCONF_SDK} ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/${sysconfdir}/
+
+	install -d ${SDK_OUTPUT}/${SDKPATHNATIVE}/${sysconfdir}
+	install -m 0644 ${IPKGCONF_SDK} ${SDK_OUTPUT}/${SDKPATHNATIVE}/${sysconfdir}/
+
+	populate_sdk_log_check 
+}
+
+populate_sdk_ipk_log_check() {
+
+        lf_path="$1"
+
+	lf_txt="`cat $lf_path`"
+	for keyword_die in "exit 1" "Collected errors" ERR Fail
+	do				
+		if (echo "$lf_txt" | grep -v log_check | grep "$keyword_die") >/dev/null 2>&1
+		then
+			echo "log_check: There were error messages in the logfile"
+			echo -e "log_check: Matched keyword: [$keyword_die]\n"
+			echo "$lf_txt" | grep -v log_check | grep -C 5 -i "$keyword_die"
+			echo ""
+			do_exit=1				
+		fi
+	done
+	test "$do_exit" = 1 && exit 1
+	true
+}
-- 
1.7.0.4


