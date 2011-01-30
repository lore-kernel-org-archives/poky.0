Return-Path: <lianhao.lu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7C9AA4C80594
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 02:21:30 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 30 Jan 2011 00:21:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,400,1291622400"; d="scan'208";a="652531645"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by fmsmga002.fm.intel.com with ESMTP; 30 Jan 2011 00:21:29 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PjSXv-0000w2-Jg; Sun, 30 Jan 2011 16:22:07 +0800
Message-Id: <af2828c6bad2fb460c7b3f7433c9530e54117217.1296375580.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1296375580.git.lianhao.lu@intel.com>
References: <cover.1296375580.git.lianhao.lu@intel.com>
Old-Date: Sun, 30 Jan 2011 12:56:40 +0800
Date: Sun, 30 Jan 2011 16:22:07 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 3/8] rootfs_ipk/package_ipk.bbclass: Move func from rootfs_ipk to package_ipk
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

package_ipk.bbclass:
Added new function package_install_internal_ipk() to install a list of
ipk packages to a specified root directory, with the specified package
architecutre information.

rootfs_ipk.bbclass:
Used the above new functions to install rootfs.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/package_ipk.bbclass |   43 ++++++++++++++++++++++++++++++++++++++
 meta/classes/rootfs_ipk.bbclass  |   31 ++++++++++----------------
 2 files changed, 55 insertions(+), 19 deletions(-)

diff --git a/meta/classes/package_ipk.bbclass b/meta/classes/package_ipk.bbclass
index ba76874..3c2472b 100644
--- a/meta/classes/package_ipk.bbclass
+++ b/meta/classes/package_ipk.bbclass
@@ -61,6 +61,49 @@ python package_ipk_install () {
 		raise bb.build.FuncFailed
 }
 
+#
+# install a bunch of packages using opkg
+# the following shell variables needs to be set before calling this func:
+# INSTALL_ROOTFS_IPK - install root dir
+# INSTALL_CONF_IPK - configuration file
+# INSTALL_PACKAGES_NORMAL_IPK - packages to be installed
+# INSTALL_PACKAGES_ATTEMPTONLY_IPK - packages attemped to be installed only
+# INSTALL_PACKAGES_LINGUAS_IPK - additional packages for uclibc
+# INSTALL_TASK_IPK - task name
+
+package_install_internal_ipk() {
+
+	local target_rootfs="${INSTALL_ROOTFS_IPK}"
+	local conffile="${INSTALL_CONF_IPK}"
+	local package_to_install="${INSTALL_PACKAGES_NORMAL_IPK}"
+	local package_attemptonly="${INSTALL_PACKAGES_ATTEMPTONLY_IPK}"
+	local package_lingusa="${INSTALL_PACKAGES_LINGUAS_IPK}"
+	local task="${INSTALL_TASK_IPK}"
+
+	mkdir -p ${target_rootfs}${localstatedir}/lib/opkg/
+
+	local ipkg_args="-f ${conffile} -o ${target_rootfs} --force-overwrite"
+
+	opkg-cl ${ipkg_args} update
+
+	# Uclibc builds don't provide this stuff...
+	if [ x${TARGET_OS} = "xlinux" ] || [ x${TARGET_OS} = "xlinux-gnueabi" ] ; then
+		if [ ! -z "${package_lingusa}" ]; then
+			for i in ${package_lingusa}; do
+				opkg-cl ${ipkg_args} install $i
+			done
+		fi
+	fi
+
+	if [ ! -z "${package_to_install}" ]; then
+		opkg-cl ${ipkg_args} install ${package_to_install}
+	fi
+
+	if [ ! -z "${package_attemptonly}" ]; then
+		opkg-cl ${ipkg_args} install ${package_attemptonly} > "${WORKDIR}/temp/log.do_${task}_attemptonly.${PID}" || true
+	fi
+}
+
 ipk_log_check() {
        target="$1"
        lf_path="$2"
diff --git a/meta/classes/rootfs_ipk.bbclass b/meta/classes/rootfs_ipk.bbclass
index 07c114e..5727d15 100644
--- a/meta/classes/rootfs_ipk.bbclass
+++ b/meta/classes/rootfs_ipk.bbclass
@@ -29,26 +29,19 @@ fakeroot rootfs_ipk_do_rootfs () {
 	${OPKG_PREPROCESS_COMMANDS}
 
 	mkdir -p ${T}/
-	mkdir -p ${IMAGE_ROOTFS}${opkglibdir}
 
-	opkg-cl ${IPKG_ARGS} update
+	#install
+	export INSTALL_PACKAGES_ATTEMPTONLY_IPK="${PACKAGE_INSTALL_ATTEMPTONLY}"
+	export INSTALL_PACKAGES_LINGUAS_IPK="${LINGUAS_INSTALL}"
+	export INSTALL_TASK_IPK="rootfs"
 
-	# Uclibc builds don't provide this stuff...
-	if [ x${TARGET_OS} = "xlinux" ] || [ x${TARGET_OS} = "xlinux-gnueabi" ] ; then 
-		if [ ! -z "${LINGUAS_INSTALL}" ]; then
-			for i in ${LINGUAS_INSTALL}; do
-				opkg-cl ${IPKG_ARGS} install $i 
-			done
-		fi
-	fi
-	if [ ! -z "${PACKAGE_INSTALL}" ]; then
-		opkg-cl ${IPKG_ARGS} install ${PACKAGE_INSTALL}
-	fi
+	export INSTALL_ROOTFS_IPK="${IMAGE_ROOTFS}"
+	export INSTALL_CONF_IPK="${IPKGCONF_TARGET}"
+	export INSTALL_PACKAGES_NORMAL_IPK="${PACKAGE_INSTALL}"
 
-	if [ ! -z "${PACKAGE_INSTALL_ATTEMPTONLY}" ]; then
-		opkg-cl ${IPKG_ARGS} install ${PACKAGE_INSTALL_ATTEMPTONLY} > "${WORKDIR}/temp/log.do_rootfs_attemptonly.${PID}" || true
-	fi
+	package_install_internal_ipk
 
+	#post install
 	export D=${IMAGE_ROOTFS}
 	export OFFLINE_ROOT=${IMAGE_ROOTFS}
 	export IPKG_OFFLINE_ROOT=${IMAGE_ROOTFS}
-- 
1.7.0.4


