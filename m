Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 145DA4C811F6
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 20:50:45 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 Jan 2011 18:50:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,383,1291622400"; d="scan'208";a="380489612"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by azsmga001.ch.intel.com with ESMTP; 26 Jan 2011 18:50:43 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PiHxM-00078a-4Y; Thu, 27 Jan 2011 10:51:32 +0800
Message-Id: <f89a1cb853c2c6e5786d238c555900fda264013f.1296095614.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1296095614.git.lianhao.lu@intel.com>
References: <cover.1296095614.git.lianhao.lu@intel.com>
Old-Date: Wed, 26 Jan 2011 21:17:27 +0800
Date: Thu, 27 Jan 2011 10:51:32 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 3/6] populate_sdk_deb/package_deb: Added deb support for populate_sdk.
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
X-List-Received-Date: Thu, 27 Jan 2011 02:50:45 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

Added populate_sdk_deb.bbclass for populate_sdk task.

Added function package_update_index_deb in package_deb.bbclass to
generate deb index.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/package_deb.bbclass      |   31 ++++++++
 meta/classes/populate_sdk_deb.bbclass |  129 +++++++++++++++++++++++++++++++++
 2 files changed, 160 insertions(+), 0 deletions(-)
 create mode 100644 meta/classes/populate_sdk_deb.bbclass

diff --git a/meta/classes/package_deb.bbclass b/meta/classes/package_deb.bbclass
index 29dcc5c..b1c601e 100644
--- a/meta/classes/package_deb.bbclass
+++ b/meta/classes/package_deb.bbclass
@@ -67,6 +67,37 @@ python do_package_deb_install () {
     os.putenv('PATH', path)
 }
 
+#
+# Update the Packages index files in ${DEPLOY_DIR_DEB}
+#
+package_update_index_deb () {
+
+	debarchs=""
+
+	if [ ! -z "${DEPLOY_KEEP_PACKAGES}" ]; then
+		return
+	fi
+
+	for arch in ${PACKAGE_ARCHS}; do
+		sdkarch=`echo $arch | sed -e 's/${HOST_ARCH}/${SDK_ARCH}/'`
+		if [ -e ${DEPLOY_DIR_DEB}/$arch ]; then
+			debarchs="$debarchs $arch"
+		fi
+		if [ -e ${DEPLOY_DIR_DEB}/$sdkarch-nativesdk ]; then
+			debarchs="$debarchs $sdkarch-nativesdk"
+		fi
+	done
+
+	for arch in $debarchs; do
+		if [ ! -d ${DEPLOY_DIR_DEB}/$arch ]; then
+			continue;
+		fi
+		cd ${DEPLOY_DIR_DEB}/$arch
+		dpkg-scanpackages . | bzip2 > Packages.bz2
+		echo "Label: $arch" > Release
+	done
+}
+
 python do_package_deb () {
     import re, copy
     import textwrap
diff --git a/meta/classes/populate_sdk_deb.bbclass b/meta/classes/populate_sdk_deb.bbclass
new file mode 100644
index 0000000..356f409
--- /dev/null
+++ b/meta/classes/populate_sdk_deb.bbclass
@@ -0,0 +1,129 @@
+do_populate_sdk[depends] += "dpkg-native:do_populate_sysroot apt-native:do_populate_sysroot bzip2-native:do_populate_sysroot"
+do_populate_sdk[recrdeptask] += "do_package_write_deb"
+
+generate_generate_deb_conf () {
+	
+	rootfs=$1
+	dpkg_arch=$2
+	shift
+	shift
+
+	archs=$@
+
+	echo "rootfs: $rootfs"
+	echo "dpkg_arch: $dpkg_arch"
+	echo "debarchs: $archs"
+
+	rm -f ${STAGING_ETCDIR_NATIVE}/apt/sources.list.rev
+	rm -f ${STAGING_ETCDIR_NATIVE}/apt/preferences
+	
+	priority=1
+	for arch in $archs; do
+		if [ ! -d ${DEPLOY_DIR_DEB}/$arch ]; then
+			continue;
+		fi
+		
+		echo "deb file:${DEPLOY_DIR_DEB}/$arch/ ./" >> ${STAGING_ETCDIR_NATIVE}/apt/sources.list.rev
+		(echo "Package: *"
+		echo "Pin: release l=$arch"
+		echo "Pin-Priority: $(expr 800 + $priority)"
+		echo) >> ${STAGING_ETCDIR_NATIVE}/apt/preferences
+		priority=$(expr $priority + 5)
+	done
+
+	tac ${STAGING_ETCDIR_NATIVE}/apt/sources.list.rev > ${STAGING_ETCDIR_NATIVE}/apt/sources.list
+
+	cat "${STAGING_ETCDIR_NATIVE}/apt/apt.conf.sample" \
+		| sed -e "s#Architecture \".*\";#Architecture \"${dpkg_arch}\";#" \
+		| sed -e "s:#ROOTFS#:${rootfs}:g" \
+		> "${STAGING_ETCDIR_NATIVE}/apt/apt-populate-sdk.conf"
+
+	export APT_CONFIG="${STAGING_ETCDIR_NATIVE}/apt/apt-populate-sdk.conf"
+}
+
+populate_sdk_deb_internal () {
+
+	target_rootfs=$1
+	shift
+	package_to_install=$@
+	
+	mkdir -p ${target_rootfs}/var/dpkg/info
+	mkdir -p ${target_rootfs}/var/dpkg/updates
+
+	> ${target_rootfs}/var/dpkg/status
+	> ${target_rootfs}/var/dpkg/available
+
+	apt-get update
+
+	for i in ${package_to_install}; do
+		apt-get install $i --force-yes --allow-unauthenticated
+		if [ $? -ne 0 ]; then
+			exit 1
+		fi
+	done
+
+	find ${target_rootfs} -name \*.dpkg-new | for i in `cat`; do
+		mv $i `echo $i | sed -e's,\.dpkg-new$,,'`
+	done
+
+	# Mark all packages installed
+	sed -i -e "s/Status: install ok unpacked/Status: install ok installed/;" ${target_rootfs}/var/dpkg/status
+
+}
+
+populate_sdk_post_deb () {
+
+	target_rootfs=$1
+
+	cp -r ${STAGING_ETCDIR_NATIVE}/apt ${target_rootfs}/etc
+}
+
+fakeroot populate_sdk_deb () {
+	
+	package_update_index_deb
+	
+	set -x
+	#install target
+	generate_generate_deb_conf ${SDK_OUTPUT}/${SDKTARGETSYSROOT} ${DPKG_ARCH} ${PACKAGE_ARCHS}
+	populate_sdk_deb_internal ${SDK_OUTPUT}/${SDKTARGETSYSROOT} ${TOOLCHAIN_TARGET_TASK}
+	populate_sdk_post_deb ${SDK_OUTPUT}/${SDKTARGETSYSROOT}
+
+	#install host
+	sdkarchs=""
+	for arch in ${PACKAGE_ARCHS}; do
+		sdkarch=`echo $arch | sed -e 's/${HOST_ARCH}/${SDK_ARCH}/'`
+		if [ -e ${DEPLOY_DIR_DEB}/$sdkarch-nativesdk ]; then
+			sdkarchs="$sdkarchs $sdkarch-nativesdk"
+		fi
+	done
+
+	generate_generate_deb_conf ${SDK_OUTPUT} ${SDK_ARCH} ${sdkarchs}
+	populate_sdk_deb_internal ${SDK_OUTPUT} ${TOOLCHAIN_HOST_TASK}
+	populate_sdk_post_deb ${SDK_OUTPUT}/${SDKPATHNATIVE}
+	
+	#move remainings
+	install -d ${SDK_OUTPUT}/${SDKPATHNATIVE}/var/dpkg	
+	mv ${SDK_OUTPUT}/var/dpkg/* ${SDK_OUTPUT}/${SDKPATHNATIVE}/var/dpkg
+	rm -rf 	${SDK_OUTPUT}/var
+	
+	populate_sdk_log_check 
+}
+
+populate_sdk_deb_log_check() {
+        lf_path="$1"
+
+	lf_txt="`cat $lf_path`"
+	for keyword_die in "E:"
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


