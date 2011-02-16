Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4A9C24C8007E
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 23:14:46 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1G5EjD7023740
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 21:14:46 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 15 Feb 2011 21:14:45 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 15 Feb 2011 21:14:45 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Tue, 15 Feb 2011 23:12:43 -0600
Message-Id: <eae53d976224396e5aee783ed4806b1c0d7c08f3.1297832946.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1297832946.git.mark.hatle@windriver.com>
References: <cover.1297832946.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1297832946.git.mark.hatle@windriver.com>
References: <cover.1297832946.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 16 Feb 2011 05:14:45.0591 (UTC)
	FILETIME=[6CE5BE70:01CBCD98]
Subject: [PATCH 4/4] package_rpm: Fix solverdb generation
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
X-List-Received-Date: Wed, 16 Feb 2011 05:14:46 -0000

The RPM solverdb was potentially being generated multiple times.
Fix this by ensuring we only process each directory once.

Also correct an issue where the solution did not necessarily follow
the preferred architecture ordering, reverse the default Poky ordering
so that preferred is listed first.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/classes/package_rpm.bbclass      |   32 +++++++++++++++++++-------------
 meta/classes/populate_sdk_rpm.bbclass |    7 ++-----
 meta/classes/rootfs_rpm.bbclass       |    9 +++++++--
 3 files changed, 28 insertions(+), 20 deletions(-)

diff --git a/meta/classes/package_rpm.bbclass b/meta/classes/package_rpm.bbclass
index 215be8d..7cbdae6 100644
--- a/meta/classes/package_rpm.bbclass
+++ b/meta/classes/package_rpm.bbclass
@@ -35,15 +35,22 @@ package_update_index_rpm () {
 		if [ "$sdkarch" = "all" -o "$sdkarch" = "any" -o "$sdkarch" = "noarch" ]; then
 		    extension=""
 		fi
-		packagedirs="$packagedirs ${DEPLOY_DIR_RPM}/$arch"
-		packagedirs_sdk="$packagedirs_sdk ${DEPLOY_DIR_RPM}/$sdkarch$extension"
+		packagedirs="${DEPLOY_DIR_RPM}/$arch $packagedirs"
+		packagedirs_sdk="${DEPLOY_DIR_RPM}/$sdkarch$extension $packagedirs_sdk"
+
+		rm -rf ${DEPLOY_DIR_RPM}/$arch/solvedb
+		rm -rf ${DEPLOY_DIR_RPM}/$sdkarch$extension/solvedb
 	done
 
 	cat /dev/null > ${RPMCONF_TARGET_BASE}.conf
 	for pkgdir in $packagedirs; do
 		if [ -e $pkgdir/ ]; then
 			echo "Generating solve db for $pkgdir..."
-			rm -rf $pkgdir/solvedb
+			echo $pkgdir/solvedb >> ${RPMCONF_TARGET_BASE}.conf
+			if [ -d $pkgdir/solvedb ]; then
+				# We've already processed this and it's a duplicate
+				continue
+			fi
 			mkdir -p $pkgdir/solvedb
 			echo "# Dynamically generated solve manifest" >> $pkgdir/solvedb/manifest
 			find $pkgdir -maxdepth 1 -type f >> $pkgdir/solvedb/manifest
@@ -53,7 +60,6 @@ package_update_index_rpm () {
 				--ignoresize --nosignature --nodigest \
 				-D "__dbi_txn create nofsync" \
 				$pkgdir/solvedb/manifest
-			echo $pkgdir/solvedb >> ${RPMCONF_TARGET_BASE}.conf
 		fi
 	done
 
@@ -61,7 +67,11 @@ package_update_index_rpm () {
 	for pkgdir in $packagedirs_sdk; do
 		if [ -e $pkgdir/ ]; then
 			echo "Generating solve db for $pkgdir..."
-			rm -rf $pkgdir/solvedb
+			echo $pkgdir/solvedb >> ${RPMCONF_HOST_BASE}.conf
+			if [ -d $pkgdir/solvedb ]; then
+				# We've already processed this and it's a duplicate
+				continue
+			fi	
 			mkdir -p $pkgdir/solvedb
 			echo "# Dynamically generated solve manifest" >> $pkgdir/solvedb/manifest
 			find $pkgdir -maxdepth 1 -type f >> $pkgdir/solvedb/manifest
@@ -71,7 +81,6 @@ package_update_index_rpm () {
 				--ignoresize --nosignature --nodigest \
 				-D "__dbi_txn create nofsync" \
 				$pkgdir/solvedb/manifest
-			echo $pkgdir/solvedb >> ${RPMCONF_HOST_BASE}.conf
 		fi
 	done
 }
@@ -146,8 +155,7 @@ resolve_package_rpm () {
 # install a bunch of packages using rpm
 # the following shell variables needs to be set before calling this func:
 # INSTALL_ROOTFS_RPM - install root dir
-# INSTALL_PLATFORM_RPM - main platform
-# INSTALL_PLATFORM_EXTRA_RPM - extra platform
+# INSTALL_PLATFORM_RPM - extra platform
 # INSTALL_CONFBASE_RPM - configuration file base name
 # INSTALL_PACKAGES_NORMAL_RPM - packages to be installed
 # INSTALL_PACKAGES_ATTEMPTONLY_RPM - packages attemped to be installed only
@@ -158,8 +166,7 @@ resolve_package_rpm () {
 package_install_internal_rpm () {
 
 	local target_rootfs="${INSTALL_ROOTFS_RPM}"
-	local platform="${INSTALL_PLATFORM_RPM}"
-	local platform_extra="${INSTALL_PLATFORM_EXTRA_RPM}"
+	local platforms="${INSTALL_PLATFORM_RPM}"
 	local confbase="${INSTALL_CONFBASE_RPM}"
 	local package_to_install="${INSTALL_PACKAGES_NORMAL_RPM}"
 	local package_attemptonly="${INSTALL_PACKAGES_ATTEMPTONLY_RPM}"
@@ -169,9 +176,8 @@ package_install_internal_rpm () {
 
 	# Setup base system configuration
 	mkdir -p ${target_rootfs}/etc/rpm/
-	echo "${platform}-unknown-linux" >${target_rootfs}/etc/rpm/platform
-	if [ ! -z "$platform_extra" ]; then
-		for pt in $platform_extra ; do
+	if [ ! -z "$platforms" ]; then
+		for pt in $platforms ; do
 			echo "$pt-unknown-linux" >> ${target_rootfs}/etc/rpm/platform
 		done
 	fi
diff --git a/meta/classes/populate_sdk_rpm.bbclass b/meta/classes/populate_sdk_rpm.bbclass
index e1abbad..d179780 100644
--- a/meta/classes/populate_sdk_rpm.bbclass
+++ b/meta/classes/populate_sdk_rpm.bbclass
@@ -33,8 +33,7 @@ fakeroot populate_sdk_rpm () {
 
 	#install target
 	export INSTALL_ROOTFS_RPM="${SDK_OUTPUT}/${SDKTARGETSYSROOT}"
-	export INSTALL_PLATFORM_RPM="${TARGET_ARCH}"
-	export INSTALL_PLATFORM_EXTRA_RPM="${PACKAGE_ARCHS}"
+	export INSTALL_PLATFORM_RPM="${PACKAGE_ARCHS}"
 	export INSTALL_CONFBASE_RPM="${RPMCONF_TARGET_BASE}"
 	export INSTALL_PACKAGES_NORMAL_RPM="${TOOLCHAIN_TARGET_TASK}"
 
@@ -46,7 +45,6 @@ fakeroot populate_sdk_rpm () {
 	export INSTALL_PLATFORM_RPM="${SDK_ARCH}"
 	export INSTALL_CONFBASE_RPM="${RPMCONF_HOST_BASE}"
 	export INSTALL_PACKAGES_NORMAL_RPM="${TOOLCHAIN_HOST_TASK}"
-	INSTALL_PLATFORM_EXTRA_RPM=""
 	for arch in ${PACKAGE_ARCHS}; do
 		sdkarch=`echo $arch | sed -e 's/${HOST_ARCH}/${SDK_ARCH}/'`
 		extension="-nativesdk"
@@ -54,10 +52,9 @@ fakeroot populate_sdk_rpm () {
 		    extension=""
 		fi
 		if [ -e ${DEPLOY_DIR_RPM}/$sdkarch$extension ]; then
-			INSTALL_PLATFORM_EXTRA_RPM="$INSTALL_PLATFORM_EXTRA_RPM $sdkarch"
+			INSTALL_PLATFORM_RPM="$INSTALL_PLATFORM_RPM $sdkarch"
 		fi
 	done
-	export INSTALL_PLATFORM_EXTRA_RPM
 
 	package_install_internal_rpm
 	populate_sdk_post_rpm ${INSTALL_ROOTFS_RPM}
diff --git a/meta/classes/rootfs_rpm.bbclass b/meta/classes/rootfs_rpm.bbclass
index 6fe11f7..a722e68 100644
--- a/meta/classes/rootfs_rpm.bbclass
+++ b/meta/classes/rootfs_rpm.bbclass
@@ -48,8 +48,6 @@ fakeroot rootfs_rpm_do_rootfs () {
 
 	#install pacakges
 	export INSTALL_ROOTFS_RPM="${IMAGE_ROOTFS}"
-	export INSTALL_PLATFORM_RPM="${TARGET_ARCH}"
-	export INSTALL_PLATFORM_EXTRA_RPM="${PACKAGE_ARCHS}"
 	export INSTALL_CONFBASE_RPM="${RPMCONF_TARGET_BASE}"
 	export INSTALL_PACKAGES_NORMAL_RPM="${PACKAGE_INSTALL}"
 	export INSTALL_PACKAGES_ATTEMPTONLY_RPM="${PACKAGE_INSTALL_ATTEMPTONLY}"
@@ -57,6 +55,13 @@ fakeroot rootfs_rpm_do_rootfs () {
 	export INSTALL_PROVIDENAME_RPM=""
 	export INSTALL_TASK_RPM="populate_sdk"
 
+	# List must be prefered to least preferred order
+	INSTALL_PLATFORM_RPM=""
+	for each_arch in ${PACKAGE_ARCHS} ; do
+		INSTALL_PLATFORM_RPM="$each_arch $INSTALL_PLATFORM_RPM"
+	done
+	export INSTALL_PLATFORM_RPM
+
 	package_install_internal_rpm
 
 	export D=${IMAGE_ROOTFS}
-- 
1.7.3.4


