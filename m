Return-Path: <lianhao.lu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 734864C811E4
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 02:21:41 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 30 Jan 2011 00:21:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,400,1291622400"; d="scan'208";a="597757756"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by orsmga002.jf.intel.com with ESMTP; 30 Jan 2011 00:21:29 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PjSXv-0000vr-IA; Sun, 30 Jan 2011 16:22:07 +0800
Message-Id: <9c724dbf57e610a9e06bbdce38383dee3ac49281.1296375580.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1296375580.git.lianhao.lu@intel.com>
References: <cover.1296375580.git.lianhao.lu@intel.com>
Old-Date: Sun, 30 Jan 2011 12:26:14 +0800
Date: Sun, 30 Jan 2011 16:22:07 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 2/8] rootfs_deb/package_deb.bbclass: move func from rootfs_deb to package_deb
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
X-List-Received-Date: Sun, 30 Jan 2011 08:21:41 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

package_deb.bbclass:
1. Added new function package_update_index_deb() to generate package
index files.

2. Added new function package_install_internal_deb() to install a list
deb packages to a specified root directory, with the specified package
architecutre information.

rootfs_deb.bbclass:
Used the above new functions to install the rootfs.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/package_deb.bbclass |  125 ++++++++++++++++++++++++++++++++++++++
 meta/classes/rootfs_deb.bbclass  |   91 +++++-----------------------
 2 files changed, 141 insertions(+), 75 deletions(-)

diff --git a/meta/classes/package_deb.bbclass b/meta/classes/package_deb.bbclass
index 2181ce7..52bd264 100644
--- a/meta/classes/package_deb.bbclass
+++ b/meta/classes/package_deb.bbclass
@@ -67,6 +67,131 @@ python do_package_deb_install () {
     os.putenv('PATH', path)
 }
 
+#
+# Update the Packages index files in ${DEPLOY_DIR_DEB}
+#
+package_update_index_deb () {
+
+	local debarchs=""
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
+#
+# install a bunch of packages using apt
+# the following shell variables needs to be set before calling this func:
+# INSTALL_ROOTFS_DEB - install root dir
+# INSTALL_BASEARCH_DEB - install base architecutre
+# INSTALL_ARCHS_DEB - list of available archs
+# INSTALL_PACKAGES_NORMAL_DEB - packages to be installed
+# INSTALL_PACKAGES_ATTEMPTONLY_DEB - packages attemped to be installed only
+# INSTALL_PACKAGES_LINGUAS_DEB - additional packages for uclibc
+# INSTALL_TASK_DEB - task name
+
+package_install_internal_deb () {
+
+	local target_rootfs="${INSTALL_ROOTFS_DEB}"
+	local dpkg_arch="${INSTALL_BASEARCH_DEB}"
+	local archs="${INSTALL_ARCHS_DEB}"
+	local package_to_install="${INSTALL_PACKAGES_NORMAL_DEB}"
+	local package_attemptonly="${INSTALL_PACKAGES_ATTEMPTONLY_DEB}"
+	local package_lingusa="${INSTALL_PACKAGES_LINGUAS_DEB}"
+	local task="${INSTALL_TASK_DEB}"
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
+		| sed -e "s:#ROOTFS#:${target_rootfs}:g" \
+		> "${STAGING_ETCDIR_NATIVE}/apt/apt-${task}.conf"
+
+	export APT_CONFIG="${STAGING_ETCDIR_NATIVE}/apt/apt-${task}.conf"
+
+	mkdir -p ${target_rootfs}/var/dpkg/info
+	mkdir -p ${target_rootfs}/var/dpkg/updates
+
+	> ${target_rootfs}/var/dpkg/status
+	> ${target_rootfs}/var/dpkg/available
+
+	apt-get update
+
+	# Uclibc builds don't provide this stuff..
+	if [ x${TARGET_OS} = "xlinux" ] || [ x${TARGET_OS} = "xlinux-gnueabi" ] ; then
+		if [ ! -z "${package_lingusa}" ]; then
+			apt-get install glibc-localedata-i18n --force-yes --allow-unauthenticated
+			if [ $? -ne 0 ]; then
+				exit 1
+			fi
+			for i in ${package_lingusa}; do
+				apt-get install $i --force-yes --allow-unauthenticated
+				if [ $? -ne 0 ]; then
+					exit 1
+				fi
+			done
+		fi
+	fi
+
+	# normal install
+	for i in ${package_to_install}; do
+		apt-get install $i --force-yes --allow-unauthenticated
+		if [ $? -ne 0 ]; then
+			exit 1
+		fi
+	done
+
+	rm -f ${WORKDIR}/temp/log.do_${task}-attemptonly.${PID}
+	if [ ! -z "${package_attemptonly}" ]; then
+		for i in ${package_attemptonly}; do
+			apt-get install $i --force-yes --allow-unauthenticated >> ${WORKDIR}/temp/log.do_${task}-attemptonly.${PID} || true
+		done
+	fi
+
+	find ${target_rootfs} -name \*.dpkg-new | for i in `cat`; do
+		mv $i `echo $i | sed -e's,\.dpkg-new$,,'`
+	done
+
+	# Mark all packages installed
+	sed -i -e "s/Status: install ok unpacked/Status: install ok installed/;" ${target_rootfs}/var/dpkg/status
+}
+
 deb_log_check() {
 	target="$1"
 	lf_path="$2"
diff --git a/meta/classes/rootfs_deb.bbclass b/meta/classes/rootfs_deb.bbclass
index 1335e71..e03e80b 100644
--- a/meta/classes/rootfs_deb.bbclass
+++ b/meta/classes/rootfs_deb.bbclass
@@ -12,50 +12,29 @@ opkglibdir = "${localstatedir}/lib/opkg"
 
 fakeroot rootfs_deb_do_rootfs () {
 	set +e
-	mkdir -p ${IMAGE_ROOTFS}/var/dpkg/info
-	mkdir -p ${IMAGE_ROOTFS}/var/dpkg/updates
 
-	rm -f ${STAGING_ETCDIR_NATIVE}/apt/sources.list.rev
-	rm -f ${STAGING_ETCDIR_NATIVE}/apt/preferences
-	> ${IMAGE_ROOTFS}/var/dpkg/status
-	> ${IMAGE_ROOTFS}/var/dpkg/available
 	mkdir -p ${IMAGE_ROOTFS}/var/dpkg/alternatives
 
-	priority=1
-	for arch in ${PACKAGE_ARCHS}; do
-		if [ ! -d ${DEPLOY_DIR_DEB}/$arch ]; then
-			continue;
-		fi
-		cd ${DEPLOY_DIR_DEB}/$arch
-		# if [ -z "${DEPLOY_KEEP_PACKAGES}" ]; then
-			rm -f Packages.gz Packages Packages.bz2
-		# fi
-		dpkg-scanpackages . | bzip2 > Packages.bz2
-		echo "Label: $arch" > Release
-
-		echo "deb file:${DEPLOY_DIR_DEB}/$arch/ ./" >> ${STAGING_ETCDIR_NATIVE}/apt/sources.list.rev
-		(echo "Package: *"
-		echo "Pin: release l=$arch"
-		echo "Pin-Priority: $(expr 800 + $priority)"
-		echo) >> ${STAGING_ETCDIR_NATIVE}/apt/preferences
-		priority=$(expr $priority + 5)
-	done
+	# update index
+	package_update_index_deb
+
+	#install packages
+	export INSTALL_ROOTFS_DEB="${IMAGE_ROOTFS}"
+	export INSTALL_BASEARCH_DEB="${DPKG_ARCH}"
+	export INSTALL_ARCHS_DEB="${PACKAGE_ARCHS}"
+	export INSTALL_PACKAGES_NORMAL_DEB="${PACKAGE_INSTALL}"
+	export INSTALL_PACKAGES_ATTEMPTONLY_DEB="${PACKAGE_INSTALL_ATTEMPTONLY}"
+	export INSTALL_PACKAGES_LINGUAS_DEB="${LINGUAS_INSTALL}"
+	export INSTALL_TASK_DEB="rootfs"
 
-	tac ${STAGING_ETCDIR_NATIVE}/apt/sources.list.rev > ${STAGING_ETCDIR_NATIVE}/apt/sources.list
+	package_install_internal_deb
 
-	cat "${STAGING_ETCDIR_NATIVE}/apt/apt.conf.sample" \
-		| sed -e 's#Architecture ".*";#Architecture "${DPKG_ARCH}";#' \
-		| sed -e 's:#ROOTFS#:${IMAGE_ROOTFS}:g' \
-		> "${STAGING_ETCDIR_NATIVE}/apt/apt-rootfs.conf"
 
-	export APT_CONFIG="${STAGING_ETCDIR_NATIVE}/apt/apt-rootfs.conf"
 	export D=${IMAGE_ROOTFS}
 	export OFFLINE_ROOT=${IMAGE_ROOTFS}
 	export IPKG_OFFLINE_ROOT=${IMAGE_ROOTFS}
 	export OPKG_OFFLINE_ROOT=${IMAGE_ROOTFS}
 
-	apt-get update
-
 	_flag () {
 		sed -i -e "/^Package: $2\$/{n; s/Status: install ok .*/Status: install ok $1/;}" ${IMAGE_ROOTFS}/var/dpkg/status
 	}
@@ -63,47 +42,6 @@ fakeroot rootfs_deb_do_rootfs () {
 		cat ${IMAGE_ROOTFS}/var/dpkg/status | sed -n -e "/^Package: $2\$/{n; s/Status: install ok .*/$1/; p}"
 	}
 
-	if [ x${TARGET_OS} = "xlinux" ] || [ x${TARGET_OS} = "xlinux-gnueabi" ] ; then
-		if [ ! -z "${LINGUAS_INSTALL}" ]; then
-			apt-get install glibc-localedata-i18n --force-yes --allow-unauthenticated
-			if [ $? -ne 0 ]; then
-				exit 1
-			fi
-			for i in ${LINGUAS_INSTALL}; do
-				apt-get install $i --force-yes --allow-unauthenticated
-				if [ $? -ne 0 ]; then
-					exit 1
-				fi
-			done
-		fi
-	fi
-
-	if [ ! -z "${PACKAGE_INSTALL}" ]; then
-		for i in ${PACKAGE_INSTALL}; do
-			apt-get install $i --force-yes --allow-unauthenticated
-			if [ $? -ne 0 ]; then
-				exit 1
-			fi
-		done
-	fi
-
-	rm ${WORKDIR}/temp/log.do_$target-attemptonly.${PID}
-	if [ ! -z "${PACKAGE_INSTALL_ATTEMPTONLY}" ]; then
-		for i in ${PACKAGE_INSTALL_ATTEMPTONLY}; do
-			apt-get install $i --force-yes --allow-unauthenticated >> ${WORKDIR}/temp/log.do_rootfs-attemptonly.${PID} || true
-		done
-	fi
-
-	find ${IMAGE_ROOTFS} -name \*.dpkg-new | for i in `cat`; do
-		mv $i `echo $i | sed -e's,\.dpkg-new$,,'`
-	done
-
-	install -d ${IMAGE_ROOTFS}/${sysconfdir}
-	echo ${BUILDNAME} > ${IMAGE_ROOTFS}/${sysconfdir}/version
-
-	# Mark all packages installed
-	sed -i -e "s/Status: install ok unpacked/Status: install ok installed/;" ${IMAGE_ROOTFS}/var/dpkg/status
-
 	# Attempt to run preinsts
 	# Mark packages with preinst failures as unpacked
 	for i in ${IMAGE_ROOTFS}/var/dpkg/info/*.preinst; do
@@ -122,6 +60,9 @@ fakeroot rootfs_deb_do_rootfs () {
 
 	set -e
 
+	install -d ${IMAGE_ROOTFS}/${sysconfdir}
+	echo ${BUILDNAME} > ${IMAGE_ROOTFS}/${sysconfdir}/version
+
 	# Hacks to allow opkg's update-alternatives and opkg to coexist for now
 	mkdir -p ${IMAGE_ROOTFS}${opkglibdir}
 	if [ -e ${IMAGE_ROOTFS}/var/dpkg/alternatives ]; then
@@ -133,7 +74,7 @@ fakeroot rootfs_deb_do_rootfs () {
 
 	${ROOTFS_POSTPROCESS_COMMAND}
 
-	log_check rootfs 
+	log_check rootfs
 }
 
 remove_packaging_data_files() {
-- 
1.7.0.4


