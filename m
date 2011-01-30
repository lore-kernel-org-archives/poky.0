Return-Path: <lianhao.lu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id CCBCD4C81210
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 02:21:41 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 30 Jan 2011 00:21:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,400,1291622400"; d="scan'208";a="597757757"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by orsmga002.jf.intel.com with ESMTP; 30 Jan 2011 00:21:29 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PjSXv-0000wD-KT; Sun, 30 Jan 2011 16:22:07 +0800
Message-Id: <3d29933f2925efe8a84f10efdf50396031c33ae4.1296375580.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1296375580.git.lianhao.lu@intel.com>
References: <cover.1296375580.git.lianhao.lu@intel.com>
Old-Date: Sun, 30 Jan 2011 14:07:50 +0800
Date: Sun, 30 Jan 2011 16:22:07 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 4/8] rootfs_rpm/package_rpm.bbclass: Move func from rootfs_rpm to package_rpm
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
X-List-Received-Date: Sun, 30 Jan 2011 08:21:42 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

package_deb.bbclass:
1. Modified package_update_index_rpm() and package_generate_rpm_conf()
to generate sperate depsolver db and rpm configuration, for target
packages and host packages respectively.

2. Added new function package_install_internal_rpm() to install a list
deb packages to a specified root directory, with the specified package
architecutre information.

3. Added new function resolve_package_rpm() to resolve package names to
filepaths.

rootfs_deb.bbclass:
Used the above new functions to install the rootfs.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/package_rpm.bbclass |  230 ++++++++++++++++++++++++++++++++++++--
 meta/classes/rootfs_rpm.bbclass  |  148 +++----------------------
 2 files changed, 234 insertions(+), 144 deletions(-)

diff --git a/meta/classes/package_rpm.bbclass b/meta/classes/package_rpm.bbclass
index 076d6cf..bc2b2cf 100644
--- a/meta/classes/package_rpm.bbclass
+++ b/meta/classes/package_rpm.bbclass
@@ -15,6 +15,8 @@ python package_rpm_install () {
 	bb.fatal("package_rpm_install not implemented!")
 }
 
+RPMCONF_TARGET_BASE = "${DEPLOY_DIR_RPM}/solvedb"
+RPMCONF_HOST_BASE = "${DEPLOY_DIR_RPM}/solvedb-sdk"
 #
 # Update the Packages depsolver db in ${DEPLOY_DIR_RPM}
 #
@@ -26,15 +28,18 @@ package_update_index_rpm () {
 	fi
 
 	packagedirs=""
+	packagedirs_sdk=""
 	for arch in $rpmarchs ; do
 		sdkarch=`echo $arch | sed -e 's/${HOST_ARCH}/${SDK_ARCH}/'`
+		extension="-nativesdk"
+		if [ "$sdkarch" = "all" -o "$sdkarch" = "any" -o "$sdkarch" = "noarch" ]; then
+		    extension=""
+		fi
 		packagedirs="$packagedirs ${DEPLOY_DIR_RPM}/$arch"
-		#packagedirs="$packagedirs ${DEPLOY_DIR_RPM}/$sdkarch-nativesdk"
+		packagedirs_sdk="$packagedirs_sdk ${DEPLOY_DIR_RPM}/$sdkarch$extension"
 	done
 
-	#packagedirs="$packagedirs ${DEPLOY_DIR_RPM}/${SDK_ARCH}-${TARGET_ARCH}-canadian"
-
-	cat /dev/null > ${DEPLOY_DIR_RPM}/solvedb.conf
+	cat /dev/null > ${RPMCONF_TARGET_BASE}.conf
 	for pkgdir in $packagedirs; do
 		if [ -e $pkgdir/ ]; then
 			echo "Generating solve db for $pkgdir..."
@@ -48,7 +53,25 @@ package_update_index_rpm () {
 				--ignoresize --nosignature --nodigest \
 				-D "__dbi_txn create nofsync" \
 				$pkgdir/solvedb/manifest
-			echo $pkgdir/solvedb >> ${DEPLOY_DIR_RPM}/solvedb.conf
+			echo $pkgdir/solvedb >> ${RPMCONF_TARGET_BASE}.conf
+		fi
+	done
+
+	cat /dev/null > ${RPMCONF_HOST_BASE}.conf
+	for pkgdir in $packagedirs_sdk; do
+		if [ -e $pkgdir/ ]; then
+			echo "Generating solve db for $pkgdir..."
+			rm -rf $pkgdir/solvedb
+			mkdir -p $pkgdir/solvedb
+			echo "# Dynamically generated solve manifest" >> $pkgdir/solvedb/manifest
+			find $pkgdir -maxdepth 1 -type f >> $pkgdir/solvedb/manifest
+			${RPM} -i --replacepkgs --replacefiles --oldpackage \
+				-D "_dbpath $pkgdir/solvedb" --justdb \
+				--noaid --nodeps --noorder --noscripts --notriggers --noparentdirs --nolinktos --stats \
+				--ignoresize --nosignature --nodigest \
+				-D "__dbi_txn create nofsync" \
+				$pkgdir/solvedb/manifest
+			echo $pkgdir/solvedb >> ${RPMCONF_HOST_BASE}.conf
 		fi
 	done
 }
@@ -58,16 +81,27 @@ package_update_index_rpm () {
 # generated depsolver db's...
 #
 package_generate_rpm_conf () {
-	printf "_solve_dbpath " > ${DEPLOY_DIR_RPM}/solvedb.macro
+	printf "_solve_dbpath " > ${RPMCONF_TARGET_BASE}.macro
+	colon=false
+	for each in `cat ${RPMCONF_TARGET_BASE}.conf` ; do
+		if [ "$colon" == true ]; then
+			printf ":" >> ${RPMCONF_TARGET_BASE}.macro
+		fi
+		printf "%s" $each >> ${RPMCONF_TARGET_BASE}.macro
+		colon=true
+	done
+	printf "\n" >> ${RPMCONF_TARGET_BASE}.macro
+
+	printf "_solve_dbpath " > ${RPMCONF_HOST_BASE}.macro
 	colon=false
-	for each in `cat ${DEPLOY_DIR_RPM}/solvedb.conf` ; do
+	for each in `cat ${RPMCONF_HOST_BASE}.conf` ; do
 		if [ "$colon" == true ]; then
-			printf ":" >> ${DEPLOY_DIR_RPM}/solvedb.macro
+			printf ":" >> ${RPMCONF_HOST_BASE}.macro
 		fi
-		printf "%s" $each >> ${DEPLOY_DIR_RPM}/solvedb.macro
+		printf "%s" $each >> ${RPMCONF_HOST_BASE}.macro
 		colon=true
 	done
-	printf "\n" >> ${DEPLOY_DIR_RPM}/solvedb.macro
+	printf "\n" >> ${RPMCONF_HOST_BASE}.macro
 }
 
 rpm_log_check() {
@@ -90,6 +124,182 @@ rpm_log_check() {
        true
 }
 
+
+#
+# Resolve package names to filepaths
+# resolve_pacakge <pkgname> <solvdb conffile>
+#
+resolve_package_rpm () {
+	local pkg="$1"
+	local conffile="$2"
+	local pkg_name=""
+	for solve in `cat ${conffile}`; do
+		pkg_name=$(${RPM} -D "_dbpath $solve" -D "__dbi_txn create nofsync" -q --yaml $pkg | grep -i 'Packageorigin' | cut -d : -f 2)
+		if [ -n "$pkg_name" ]; then
+			break;
+		fi
+	done
+	echo $pkg_name
+}
+
+#
+# install a bunch of packages using rpm
+# the following shell variables needs to be set before calling this func:
+# INSTALL_ROOTFS_RPM - install root dir
+# INSTALL_PLATFORM_RPM - main platform
+# INSTALL_PLATFORM_EXTRA_RPM - extra platform
+# INSTALL_CONFBASE_RPM - configuration file base name
+# INSTALL_PACKAGES_NORMAL_RPM - packages to be installed
+# INSTALL_PACKAGES_ATTEMPTONLY_RPM - packages attemped to be installed only
+# INSTALL_PACKAGES_LINGUAS_RPM - additional packages for uclibc
+# INSTALL_PROVIDENAME_RPM - content for provide name
+# INSTALL_TASK_RPM - task name
+
+package_install_internal_rpm () {
+
+	local target_rootfs="${INSTALL_ROOTFS_RPM}"
+	local platform="${INSTALL_PLATFORM_RPM}"
+	local platform_extra="${INSTALL_PLATFORM_EXTRA_RPM}"
+	local confbase="${INSTALL_CONFBASE_RPM}"
+	local package_to_install="${INSTALL_PACKAGES_NORMAL_RPM}"
+	local package_attemptonly="${INSTALL_PACKAGES_ATTEMPTONLY_RPM}"
+	local package_lingusa="${INSTALL_PACKAGES_LINGUAS_RPM}"
+	local providename="${INSTALL_PROVIDENAME_RPM}"
+	local task="${INSTALL_TASK_RPM}"
+
+	# Setup base system configuration
+	mkdir -p ${target_rootfs}/etc/rpm/
+	echo "${platform}-unknown-linux" >${target_rootfs}/etc/rpm/platform
+	if [ ! -z "$platform_extra" ]; then
+		for pt in $platform_extra ; do
+			echo "$pt-unknown-linux" >> ${target_rootfs}/etc/rpm/platform
+		done
+	fi
+
+	# Tell RPM that the "/" directory exist and is available
+	mkdir -p ${target_rootfs}/etc/rpm/sysinfo
+	echo "/" >${target_rootfs}/etc/rpm/sysinfo/Dirnames
+	if [ ! -z "$providename" ]; then
+		>>${target_rootfs}/etc/rpm/sysinfo/Providename
+		for provide in $providename ; do
+			echo $provide >> ${target_rootfs}/etc/rpm/sysinfo/Providename
+		done
+	fi
+
+	# Setup manifest of packages to install...
+	mkdir -p ${target_rootfs}/install
+	echo "# Install manifest" > ${target_rootfs}/install/install.manifest
+
+	# Uclibc builds don't provide this stuff...
+	if [ x${TARGET_OS} = "xlinux" ] || [ x${TARGET_OS} = "xlinux-gnueabi" ] ; then
+		if [ ! -z "${package_lingusa}" ]; then
+			for pkg in ${package_lingusa}; do
+				echo "Processing $pkg..."
+				pkg_name=$(resolve_package_rpm $pkg ${confbase}.conf)
+				if [ -z "$pkg_name" ]; then
+					echo "Unable to find package $pkg!"
+					exit 1
+				fi
+				echo $pkg_name >> ${IMAGE_ROOTFS}/install/install.manifest
+			done
+		fi
+	fi
+
+	if [ ! -z "${package_to_install}" ]; then
+		for pkg in ${package_to_install} ; do
+			echo "Processing $pkg..."
+			pkg_name=$(resolve_package_rpm $pkg ${confbase}.conf)
+			if [ -z "$pkg_name" ]; then
+				echo "Unable to find package $pkg!"
+				exit 1
+			fi
+			echo $pkg_name >> ${target_rootfs}/install/install.manifest
+		done
+	fi
+
+	# Generate an install solution by doing a --justdb install, then recreate it with
+	# an actual package install!
+	${RPM} -D "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
+		-D "_dbpath ${target_rootfs}/install" -D "`cat ${confbase}.macro`" \
+		-D "__dbi_txn create nofsync" \
+		-U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignoresize \
+		${target_rootfs}/install/install.manifest
+
+	if [ ! -z "${package_attemptonly}" ]; then
+		echo "Adding attempt only packages..."
+		for pkg in ${package_attemptonly} ; do
+			echo "Processing $pkg..."
+			pkg_name=$(resolve_package_rpm $pkg ${confbase}.conf)
+			if [ -z "$pkg_name" ]; then
+				echo "Unable to find package $pkg!"
+				exit 1
+			fi
+			echo "Attempting $pkg_name..." >> "${WORKDIR}/temp/log.do_${task}_attemptonly.${PID}"
+			${RPM} -D "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
+				-D "_dbpath ${target_rootfs}/install" -D "`cat ${confbase}.macro`" \
+				-D "__dbi_txn create nofsync private" \
+				-U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignoresize \
+			$pkg_name >> "${WORKDIR}/temp/log.do_${task}_attemptonly.${PID}" || true
+		done
+	fi
+
+	#### Note: 'Recommends' is an arbitrary tag that means _SUGGESTS_ in Poky..
+	# Add any recommended packages to the image
+	# RPM does not solve for recommended packages because they are optional...
+	# So we query them and tree them like the ATTEMPTONLY packages above...
+	# Change the loop to "1" to run this code...
+	loop=0
+	if [ $loop -eq 1 ]; then
+	 echo "Processing recommended packages..."
+	 cat /dev/null >  ${target_rootfs}/install/recommend.list
+	 while [ $loop -eq 1 ]; do
+		# Dump the full set of recommends...
+		${RPM} -D "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
+			-D "_dbpath ${IMAGE_ROOTFS}/install" -D "`cat ${confbase}.macro`" \
+			-D "__dbi_txn create nofsync private" \
+			-qa --qf "[%{RECOMMENDS}\n]" | sort -u > ${target_rootfs}/install/recommend
+		# Did we add more to the list?
+		grep -v -x -F -f ${target_rootfs}/install/recommend.list ${target_rootfs}/install/recommend > ${target_rootfs}/install/recommend.new || true
+		# We don't want to loop unless there is a change to the list!
+		loop=0
+		cat ${target_rootfs}/install/recommend.new | \
+		 while read pkg ; do
+			# Ohh there was a new one, we'll need to loop again...
+			loop=1
+			echo "Processing $pkg..."
+			pkg_name=$(resolve_package $pkg ${confbase}.conf)
+			if [ -z "$pkg_name" ]; then
+				echo "Unable to find package $pkg." >> "${WORKDIR}/temp/log.do_${task}_recommend.${PID}"
+				continue
+			fi
+			echo "Attempting $pkg_name..." >> "${WORKDIR}/temp/log.do_{task}_recommend.${PID}"
+			${RPM} -D "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
+				-D "_dbpath ${target_rootfs}/install" -D "`cat ${confbase}.macro`" \
+				-D "__dbi_txn create nofsync private" \
+				-U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignoresize \
+				$pkg_name >> "${WORKDIR}/temp/log.do_${task}_recommend.${PID}" 2>&1 || true
+		done
+		cat ${target_rootfs}/install/recommend.list ${target_rootfs}/install/recommend.new | sort -u > ${target_rootfs}/install/recommend.new.list
+		mv -f ${target_rootfs}/install/recommend.new.list ${target_rootfs}/install/recommend.list
+		rm ${target_rootfs}/install/recommend ${target_rootfs}/install/recommend.new
+	 done
+	fi
+
+	# Now that we have a solution, pull out a list of what to install...
+	echo "Manifest: ${target_rootfs}/install/install.manifest"
+	${RPM} -D "_dbpath ${target_rootfs}/install" -qa --yaml \
+		-D "__dbi_txn create nofsync private" \
+		| grep -i 'Packageorigin' | cut -d : -f 2 > ${target_rootfs}/install/install_solution.manifest
+
+	# Attempt install
+	${RPM} --root ${target_rootfs} \
+		-D "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
+		-D "_dbpath ${rpmlibdir}" \
+		--noscripts --notriggers --noparentdirs --nolinktos \
+		-D "__dbi_txn create nofsync private" \
+		-Uhv ${target_rootfs}/install/install_solution.manifest
+}
+
 python write_specfile () {
 	import textwrap
 
diff --git a/meta/classes/rootfs_rpm.bbclass b/meta/classes/rootfs_rpm.bbclass
index fc8251c..0d80f80 100644
--- a/meta/classes/rootfs_rpm.bbclass
+++ b/meta/classes/rootfs_rpm.bbclass
@@ -34,130 +34,22 @@ RPM="rpm ${RPMOPTS}"
 do_rootfs[lockfiles] += "${DEPLOY_DIR_RPM}/rpm.lock"
 
 fakeroot rootfs_rpm_do_rootfs () {
-	set +x
+	#set +x
 
 	${RPM_PREPROCESS_COMMANDS}
 
-	# Setup base system configuration
-	mkdir -p ${IMAGE_ROOTFS}/etc/rpm/
+	#install pacakges
+	export INSTALL_ROOTFS_RPM="${IMAGE_ROOTFS}"
+	export INSTALL_PLATFORM_RPM="${TARGET_ARCH}"
+	export INSTALL_PLATFORM_EXTRA_RPM="${PACKAGE_ARCHS}"
+	export INSTALL_CONFBASE_RPM="${RPMCONF_TARGET_BASE}"
+	export INSTALL_PACKAGES_NORMAL_RPM="${PACKAGE_INSTALL}"
+	export INSTALL_PACKAGES_ATTEMPTONLY_RPM="${PACKAGE_INSTALL_ATTEMPTONLY}"
+	export INSTALL_PACKAGES_LINGUAS_RPM="${LINGUAS_INSTALL}"
+	export INSTALL_PROVIDENAME_RPM=""
+	export INSTALL_TASK_RPM="populate_sdk"
 
-	# Default arch is the top..
-	echo "${TARGET_ARCH}-unknown-linux" >${IMAGE_ROOTFS}/etc/rpm/platform
-	# Add the rest in sort order..
-	for each in ${PACKAGE_ARCHS} ; do
-		echo "$each""-unknown-linux" >>${IMAGE_ROOTFS}/etc/rpm/platform
-	done
-
-	# Tell RPM that the "/" directory exist and is available
-	mkdir -p ${IMAGE_ROOTFS}/etc/rpm/sysinfo
-	echo "/" >${IMAGE_ROOTFS}/etc/rpm/sysinfo/Dirnames
-
-	# Setup manifest of packages to install...
-	mkdir -p ${IMAGE_ROOTFS}/install
-	echo "# Install manifest" > ${IMAGE_ROOTFS}/install/install.manifest
-
-	# Uclibc builds don't provide this stuff...
-	if [ x${TARGET_OS} = "xlinux" ] || [ x${TARGET_OS} = "xlinux-gnueabi" ] ; then 
-		if [ ! -z "${LINGUAS_INSTALL}" ]; then
-			for pkg in ${LINGUAS_INSTALL}; do
-				echo "Processing $pkg..."
-				pkg_name=$(resolve_package $pkg)
-				if [ -z "$pkg_name" ]; then
-					echo "Unable to find package $pkg!"
-					exit 1
-				fi
-				echo $pkg_name >> ${IMAGE_ROOTFS}/install/install.manifest
-			done
-		fi
-	fi
-
-	if [ ! -z "${PACKAGE_INSTALL}" ]; then
-		for pkg in ${PACKAGE_INSTALL} ; do
-			echo "Processing $pkg..."
-			pkg_name=$(resolve_package $pkg)
-			if [ -z "$pkg_name" ]; then
-				echo "Unable to find package $pkg!"
-				exit 1
-			fi
-			echo $pkg_name >> ${IMAGE_ROOTFS}/install/install.manifest
-		done
-	fi
-
-	# Generate an install solution by doing a --justdb install, then recreate it with
-	# an actual package install!
-	${RPM} -D "_dbpath ${IMAGE_ROOTFS}/install" -D "`cat ${DEPLOY_DIR_RPM}/solvedb.macro`" \
-		-D "__dbi_txn create nofsync" \
-		-U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignoresize \
-		${IMAGE_ROOTFS}/install/install.manifest
-
-	if [ ! -z "${PACKAGE_INSTALL_ATTEMPTONLY}" ]; then
-		echo "Adding attempt only packages..."
-		for pkg in ${PACKAGE_INSTALL_ATTEMPTONLY} ; do
-			echo "Processing $pkg..."
-			pkg_name=$(resolve_package $pkg)
-			if [ -z "$pkg_name" ]; then
-				echo "Unable to find package $pkg!"
-				exit 1
-			fi
-			echo "Attempting $pkg_name..." >> "${WORKDIR}/temp/log.do_rootfs_attemptonly.${PID}"
-			${RPM} -D "_dbpath ${IMAGE_ROOTFS}/install" -D "`cat ${DEPLOY_DIR_RPM}/solvedb.macro`" \
-				-D "__dbi_txn create nofsync private" \
-				-U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignoresize \
-			$pkg_name >> "${WORKDIR}/temp/log.do_rootfs_attemptonly.${PID}" || true
-		done
-	fi
-
-#### Note: 'Recommends' is an arbitrary tag that means _SUGGESTS_ in Poky..
-	# Add any recommended packages to the image
-	# RPM does not solve for recommended packages because they are optional...
-	# So we query them and tree them like the ATTEMPTONLY packages above...
-	# Change the loop to "1" to run this code...
-	loop=0
-	if [ $loop -eq 1 ]; then
-	 echo "Processing recommended packages..."
-	 cat /dev/null >  ${IMAGE_ROOTFS}/install/recommend.list
-	 while [ $loop -eq 1 ]; do
-		# Dump the full set of recommends...
-		${RPM} -D "_dbpath ${IMAGE_ROOTFS}/install" -D "`cat ${DEPLOY_DIR_RPM}/solvedb.macro`" \
-			-D "__dbi_txn create nofsync private" \
-			-qa --qf "[%{RECOMMENDS}\n]" | sort -u > ${IMAGE_ROOTFS}/install/recommend
-		# Did we add more to the list?
-		grep -v -x -F -f ${IMAGE_ROOTFS}/install/recommend.list ${IMAGE_ROOTFS}/install/recommend > ${IMAGE_ROOTFS}/install/recommend.new || true
-		# We don't want to loop unless there is a change to the list!
-		loop=0
-		cat ${IMAGE_ROOTFS}/install/recommend.new | \
-		 while read pkg ; do
-			# Ohh there was a new one, we'll need to loop again...
-			loop=1
-			echo "Processing $pkg..."
-			pkg_name=$(resolve_package $pkg)
-			if [ -z "$pkg_name" ]; then
-				echo "Unable to find package $pkg." >> "${WORKDIR}/temp/log.do_rootfs_recommend.${PID}"
-				continue
-			fi
-			echo "Attempting $pkg_name..." >> "${WORKDIR}/temp/log.do_rootfs_recommend.${PID}"
-			${RPM} -D "_dbpath ${IMAGE_ROOTFS}/install" -D "`cat ${DEPLOY_DIR_RPM}/solvedb.macro`" \
-				-D "__dbi_txn create nofsync private" \
-				-U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignoresize \
-				$pkg_name >> "${WORKDIR}/temp/log.do_rootfs_recommend.${PID}" 2>&1 || true
-		done
-		cat ${IMAGE_ROOTFS}/install/recommend.list ${IMAGE_ROOTFS}/install/recommend.new | sort -u > ${IMAGE_ROOTFS}/install/recommend.new.list
-		mv ${IMAGE_ROOTFS}/install/recommend.new.list ${IMAGE_ROOTFS}/install/recommend.list
-		rm ${IMAGE_ROOTFS}/install/recommend ${IMAGE_ROOTFS}/install/recommend.new
-	 done
-	fi
-
-	# Now that we have a solution, pull out a list of what to install...
-	echo "Manifest: ${IMAGE_ROOTFS}/install/install.manifest"
-	${RPM} -D "_dbpath ${IMAGE_ROOTFS}/install" -qa --yaml \
-		-D "__dbi_txn create nofsync private" \
-		| grep -i 'Packageorigin' | cut -d : -f 2 > ${IMAGE_ROOTFS}/install/install_solution.manifest
-
-	# Attempt install
-	${RPM} --root ${IMAGE_ROOTFS} -D "_dbpath ${rpmlibdir}" \
-		--noscripts --notriggers --noparentdirs --nolinktos \
-		-D "__dbi_txn create nofsync private" \
-		-Uhv ${IMAGE_ROOTFS}/install/install_solution.manifest
+	package_install_internal_rpm
 
 	export D=${IMAGE_ROOTFS}
 	export OFFLINE_ROOT=${IMAGE_ROOTFS}
@@ -222,7 +114,7 @@ EOF
 
 	# Workaround so the parser knows we need the resolve_package function!
 	if false ; then
-		resolve_package foo || true
+		resolve_package_rpm foo ${RPMCONF_TARGET_BASE}.conf || true
 	fi
 }
 
@@ -231,18 +123,6 @@ remove_packaging_data_files() {
 	rm -rf ${IMAGE_ROOTFS}${opkglibdir}
 }
 
-# Resolve package names to filepaths
-resolve_package() {
-	pkg="$1"
-	pkg_name=""
-	for solve in `cat ${DEPLOY_DIR_RPM}/solvedb.conf`; do
-		pkg_name=$(${RPM} -D "_dbpath $solve" -D "__dbi_txn create nofsync" -q --yaml $pkg | grep -i 'Packageorigin' | cut -d : -f 2)
-		if [ -n "$pkg_name" ]; then
-			break;
-		fi
-	done
-	echo $pkg_name
-}	
 
 install_all_locales() {
 	PACKAGES_TO_INSTALL=""
@@ -258,7 +138,7 @@ install_all_locales() {
 	# but this should be good enough for the few users of this function...
 	for pkg in $INSTALLED_PACKAGES; do
 		for lang in ${IMAGE_LOCALES}; do
-			pkg_name=$(resolve_package $pkg-locale-$lang)
+			pkg_name=$(resolve_package_rpm $pkg-locale-$lang ${RPMCONF_TARGET_BASE}.conf)
 			if [ -n "$pkg_name" ]; then
 				${RPM} --root ${IMAGE_ROOTFS} -D "_dbpath ${rpmlibdir}" \
 					-D "__dbi_txn create nofsync private" \
-- 
1.7.0.4


