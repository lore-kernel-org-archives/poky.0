Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id ABF324C8090F
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 17:40:17 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1PNeHxI029272
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 15:40:17 -0800 (PST)
Received: from localhost.localdomain (172.25.34.61) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 25 Feb 2011 15:40:17 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <poky@yoctoproject.org>
Date: Fri, 25 Feb 2011 17:39:13 -0600
Message-ID: <08c8f7bb7375a6f51c12ee5e7808e38e914d5413.1298677071.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1298677071.git.mark.hatle@windriver.com>
References: <cover.1298677071.git.mark.hatle@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [172.25.34.61]
Subject: [PATCH 1/3] rootfs_rpm: Fix rootfs generation using RPM packages
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
X-List-Received-Date: Fri, 25 Feb 2011 23:40:17 -0000
Content-Type: text/plain

[BUG #756]

Fix bug #756.  The rootfs contains a control file /etc/rpm/platform
that specifies the default system platform, as well as patterns for
compatible architectures.  This file was not being setup properly due
to a misunderstanding of the format in a previous patch.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/classes/package_rpm.bbclass      |   15 +++++++++------
 meta/classes/populate_sdk_rpm.bbclass |   13 +++++++++++--
 meta/classes/rootfs_rpm.bbclass       |    5 +++--
 3 files changed, 23 insertions(+), 10 deletions(-)

diff --git a/meta/classes/package_rpm.bbclass b/meta/classes/package_rpm.bbclass
index 7cbdae6..60127d2 100644
--- a/meta/classes/package_rpm.bbclass
+++ b/meta/classes/package_rpm.bbclass
@@ -155,7 +155,8 @@ resolve_package_rpm () {
 # install a bunch of packages using rpm
 # the following shell variables needs to be set before calling this func:
 # INSTALL_ROOTFS_RPM - install root dir
-# INSTALL_PLATFORM_RPM - extra platform
+# INSTALL_PLATFORM_RPM - main platform
+# INSTALL_PLATFORM_EXTRA_RPM - extra platform
 # INSTALL_CONFBASE_RPM - configuration file base name
 # INSTALL_PACKAGES_NORMAL_RPM - packages to be installed
 # INSTALL_PACKAGES_ATTEMPTONLY_RPM - packages attemped to be installed only
@@ -166,7 +167,8 @@ resolve_package_rpm () {
 package_install_internal_rpm () {
 
 	local target_rootfs="${INSTALL_ROOTFS_RPM}"
-	local platforms="${INSTALL_PLATFORM_RPM}"
+	local platform="${INSTALL_PLATFORM_RPM}"
+	local platform_extra="${INSTALL_PLATFORM_EXTRA_RPM}"
 	local confbase="${INSTALL_CONFBASE_RPM}"
 	local package_to_install="${INSTALL_PACKAGES_NORMAL_RPM}"
 	local package_attemptonly="${INSTALL_PACKAGES_ATTEMPTONLY_RPM}"
@@ -176,9 +178,10 @@ package_install_internal_rpm () {
 
 	# Setup base system configuration
 	mkdir -p ${target_rootfs}/etc/rpm/
-	if [ ! -z "$platforms" ]; then
-		for pt in $platforms ; do
-			echo "$pt-unknown-linux" >> ${target_rootfs}/etc/rpm/platform
+	echo "${platform}-poky-linux-gnu" > ${target_rootfs}/etc/rpm/platform
+	if [ ! -z "$platform_extra" ]; then
+		for pt in $platform_extra ; do
+			echo "$pt-.*-linux.*" >> ${target_rootfs}/etc/rpm/platform
 		done
 	fi
 
@@ -764,7 +767,7 @@ python do_package_rpm () {
 	os.chmod(pkgwritedir, 0755)
 
 	cmd = rpmbuild
-	cmd = cmd + " --nodeps --short-circuit --target " + pkgarch + " --buildroot " + pkgd
+	cmd = cmd + " --nodeps --short-circuit --target " + pkgarch + "-poky-linux-gnu --buildroot " + pkgd
 	cmd = cmd + " --define '_topdir " + workdir + "' --define '_rpmdir " + pkgwritedir + "'"
 	cmd = cmd + " --define '_build_name_fmt %%{NAME}-%%{VERSION}-%%{RELEASE}.%%{ARCH}.rpm'"
 	cmd = cmd + " --define '_use_internal_dependency_generator 0'"
diff --git a/meta/classes/populate_sdk_rpm.bbclass b/meta/classes/populate_sdk_rpm.bbclass
index d179780..0afe042 100644
--- a/meta/classes/populate_sdk_rpm.bbclass
+++ b/meta/classes/populate_sdk_rpm.bbclass
@@ -33,10 +33,17 @@ fakeroot populate_sdk_rpm () {
 
 	#install target
 	export INSTALL_ROOTFS_RPM="${SDK_OUTPUT}/${SDKTARGETSYSROOT}"
-	export INSTALL_PLATFORM_RPM="${PACKAGE_ARCHS}"
+	export INSTALL_PLATFORM_RPM="${TARGET_ARCHS}"
 	export INSTALL_CONFBASE_RPM="${RPMCONF_TARGET_BASE}"
 	export INSTALL_PACKAGES_NORMAL_RPM="${TOOLCHAIN_TARGET_TASK}"
 
+	# List must be prefered to least preferred order
+	INSTALL_PLATFORM_RPM=""
+	for each_arch in ${PACKAGE_ARCHS} ; do
+		INSTALL_PLATFORM_RPM="$each_arch $INSTALL_PLATFORM_RPM"
+	done
+	export INSTALL_PLATFORM_RPM
+
 	package_install_internal_rpm
 	populate_sdk_post_rpm ${INSTALL_ROOTFS_RPM}
 
@@ -45,6 +52,7 @@ fakeroot populate_sdk_rpm () {
 	export INSTALL_PLATFORM_RPM="${SDK_ARCH}"
 	export INSTALL_CONFBASE_RPM="${RPMCONF_HOST_BASE}"
 	export INSTALL_PACKAGES_NORMAL_RPM="${TOOLCHAIN_HOST_TASK}"
+	export INSTALL_PLATFORM_EXTRA_RPM=""
 	for arch in ${PACKAGE_ARCHS}; do
 		sdkarch=`echo $arch | sed -e 's/${HOST_ARCH}/${SDK_ARCH}/'`
 		extension="-nativesdk"
@@ -52,9 +60,10 @@ fakeroot populate_sdk_rpm () {
 		    extension=""
 		fi
 		if [ -e ${DEPLOY_DIR_RPM}/$sdkarch$extension ]; then
-			INSTALL_PLATFORM_RPM="$INSTALL_PLATFORM_RPM $sdkarch"
+			INSTALL_PLATFORM_EXTRA_RPM="$sdkarch $INSTALL_PLATFORM_EXTRA_RPM"
 		fi
 	done
+	export INSTALL_PLATFORM_EXTRA_RPM
 
 	package_install_internal_rpm
 	populate_sdk_post_rpm ${INSTALL_ROOTFS_RPM}
diff --git a/meta/classes/rootfs_rpm.bbclass b/meta/classes/rootfs_rpm.bbclass
index a722e68..caafbdc 100644
--- a/meta/classes/rootfs_rpm.bbclass
+++ b/meta/classes/rootfs_rpm.bbclass
@@ -48,6 +48,7 @@ fakeroot rootfs_rpm_do_rootfs () {
 
 	#install pacakges
 	export INSTALL_ROOTFS_RPM="${IMAGE_ROOTFS}"
+	export INSTALL_PLATFORM_RPM="${TARGET_ARCH}"
 	export INSTALL_CONFBASE_RPM="${RPMCONF_TARGET_BASE}"
 	export INSTALL_PACKAGES_NORMAL_RPM="${PACKAGE_INSTALL}"
 	export INSTALL_PACKAGES_ATTEMPTONLY_RPM="${PACKAGE_INSTALL_ATTEMPTONLY}"
@@ -56,9 +57,9 @@ fakeroot rootfs_rpm_do_rootfs () {
 	export INSTALL_TASK_RPM="populate_sdk"
 
 	# List must be prefered to least preferred order
-	INSTALL_PLATFORM_RPM=""
+	INSTALL_PLATFORM_EXTRA_RPM=""
 	for each_arch in ${PACKAGE_ARCHS} ; do
-		INSTALL_PLATFORM_RPM="$each_arch $INSTALL_PLATFORM_RPM"
+		INSTALL_PLATFORM_EXTRA_RPM="$each_arch $INSTALL_PLATFORM_EXTRA_RPM"
 	done
 	export INSTALL_PLATFORM_RPM
 
-- 
1.7.3.4


