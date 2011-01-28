Return-Path: <lianhao.lu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 60EE14C8123F
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 04:00:48 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Jan 2011 02:00:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,391,1291622400"; d="scan'208";a="701618202"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by orsmga001.jf.intel.com with ESMTP; 28 Jan 2011 02:00:46 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1Pil90-0001is-Ao; Fri, 28 Jan 2011 18:01:30 +0800
Message-Id: <c66b12f138b6e709f9b14cbff9b579634f15cc96.1296208216.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1296208216.git.lianhao.lu@intel.com>
References: <cover.1296208216.git.lianhao.lu@intel.com>
Old-Date: Fri, 28 Jan 2011 17:05:52 +0800
Date: Fri, 28 Jan 2011 18:01:30 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 3/5] image/rootfs_xx/package_xx.bbclass: prepare to add populate_sdk task.
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
X-List-Received-Date: Fri, 28 Jan 2011 10:00:48 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

This commit is a preparation work to add a new task populate_sdk.
It moves those common code between both the rootfs task and the
populate_sdk task in the relevant package_xx bbclass.

Added the new function package_install_internal_xxx() for each kind of
package format we support(rpm, ipk, deb). This function installed a
bunch of packages using the into a specific root dir. All the
informatino needed for the installation process, i.e. root dir, packages
to be installed, architecture information is passed by various shell
environment variables. See the comment of different
package_install_internal_xxx() function for a descriptioin of those
shell environment variables.

For package_rpm.bbclass, this commit modified the
package_generate_rpm_conf() and package_update_index_rpm to generate
seperate configuration files and index for target architecture and
"-nativesdk" architecture.

For package_deb.bbclass, this commit added a new function
package_update_index_deb to generate index for debian package format.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/image.bbclass       |    5 +-
 meta/classes/package_deb.bbclass |  145 +++++++++++++++++++++++
 meta/classes/package_ipk.bbclass |   63 ++++++++++
 meta/classes/package_rpm.bbclass |  243 ++++++++++++++++++++++++++++++++++++--
 meta/classes/rootfs_deb.bbclass  |  111 +++---------------
 meta/classes/rootfs_ipk.bbclass  |   45 ++------
 meta/classes/rootfs_rpm.bbclass  |  157 ++-----------------------
 7 files changed, 479 insertions(+), 290 deletions(-)

diff --git a/meta/classes/image.bbclass b/meta/classes/image.bbclass
index 8e8d92b..14de3e1 100644
--- a/meta/classes/image.bbclass
+++ b/meta/classes/image.bbclass
@@ -155,7 +155,6 @@ insert_feed_uris () {
 }
 
 log_check() {
-	set +x
 	for target in $*
 	do
 		lf_path="${WORKDIR}/temp/log.do_$target.${PID}"
@@ -164,14 +163,12 @@ log_check() {
 		
 		if test -e "$lf_path"
 		then
-			rootfs_${IMAGE_PKGTYPE}_log_check $target $lf_path
+			${IMAGE_PKGTYPE}_log_check $target $lf_path
 		else
 			echo "Cannot find logfile [$lf_path]"
 		fi
 		echo "Logfile is clean"
 	done
-
-	set -x
 }
 
 # set '*' as the rootpassword so the images
diff --git a/meta/classes/package_deb.bbclass b/meta/classes/package_deb.bbclass
index 29dcc5c..52bd264 100644
--- a/meta/classes/package_deb.bbclass
+++ b/meta/classes/package_deb.bbclass
@@ -67,6 +67,151 @@ python do_package_deb_install () {
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
+deb_log_check() {
+	target="$1"
+	lf_path="$2"
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
+
 python do_package_deb () {
     import re, copy
     import textwrap
diff --git a/meta/classes/package_ipk.bbclass b/meta/classes/package_ipk.bbclass
index fdf3262..3c2472b 100644
--- a/meta/classes/package_ipk.bbclass
+++ b/meta/classes/package_ipk.bbclass
@@ -62,6 +62,69 @@ python package_ipk_install () {
 }
 
 #
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
+ipk_log_check() {
+       target="$1"
+       lf_path="$2"
+
+       lf_txt="`cat $lf_path`"
+       for keyword_die in "exit 1" "Collected errors" ERR Fail
+       do
+               if (echo "$lf_txt" | grep -v log_check | grep "$keyword_die") >/dev/null 2>&1
+               then
+                       echo "log_check: There were error messages in the logfile"
+                       echo -e "log_check: Matched keyword: [$keyword_die]\n"
+                       echo "$lf_txt" | grep -v log_check | grep -C 5 -i "$keyword_die"
+                       echo ""
+                       do_exit=1
+               fi
+       done
+       test "$do_exit" = 1 && exit 1
+       true
+}
+
+#
 # Update the Packages index files in ${DEPLOY_DIR_IPK}
 #
 package_update_index_ipk () {
diff --git a/meta/classes/package_rpm.bbclass b/meta/classes/package_rpm.bbclass
index fbe0626..a8d1ce4 100644
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
@@ -49,7 +54,26 @@ package_update_index_rpm () {
 				-D "_dbi_tags_3 Packages:Name:Basenames:Providename:Nvra" \
 				-D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync" \
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
+				-D "_dbi_tags_3 Packages:Name:Basenames:Providename:Nvra" \
+				-D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync" \
+				$pkgdir/solvedb/manifest
+			echo $pkgdir/solvedb >> ${RPMCONF_HOST_BASE}.conf
 		fi
 	done
 }
@@ -59,16 +83,215 @@ package_update_index_rpm () {
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
+}
+
+rpm_log_check() {
+       target="$1"
+       lf_path="$2"
+
+       lf_txt="`cat $lf_path`"
+       for keyword_die in "Cannot find package" "exit 1" ERR Fail
+       do
+               if (echo "$lf_txt" | grep -v log_check | grep "$keyword_die") >/dev/null 2>&1
+               then
+                       echo "log_check: There were error messages in the logfile"
+                       echo -e "log_check: Matched keyword: [$keyword_die]\n"
+                       echo "$lf_txt" | grep -v log_check | grep -C 5 -i "$keyword_die"
+                       echo ""
+                       do_exit=1
+               fi
+       done
+       test "$do_exit" = 1 && exit 1
+       true
+}
+
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
+		pkg_name=$(${RPM} -D "_dbpath $solve" -D "_dbi_tags_3 Packages:Name:Basenames:Providename:Nvra" -D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync" -q --yaml $pkg | grep -i 'Packageorigin' | cut -d : -f 2)
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
+# INSTALL_PALTFOM_RPM - platform file content
+# INSTALL_CONFBASE_RPM - configuration file base name
+# INSTALL_PACKAGES_NORMAL_RPM - packages to be installed
+# INSTALL_PACKAGES_ATTEMPTONLY_RPM - packages attemped to be installed only
+# INSTALL_PACKAGES_LINGUAS_RPM - additional packages for uclibc
+# INSTALL_PROVIDENAME_RPM - content for provide name
+# INSTALL_TASK_RPM - task name
+
+package_install_internal_rpm() {
+
+	local target_rootfs="${INSTALL_ROOTFS_RPM}"
+	local platform="${INSTALL_PALTFOM_RPM}"
+	local confbase="${INSTALL_CONFBASE_RPM}"
+	local package_to_install="${INSTALL_PACKAGES_NORMAL_RPM}"
+	local package_attemptonly="${INSTALL_PACKAGES_ATTEMPTONLY_RPM}"
+	local package_lingusa="${INSTALL_PACKAGES_LINGUAS_RPM}"
+	local providename="${INSTALL_PROVIDENAME_RPM}"
+	local task="${INSTALL_TASK_RPM}"
+
+	# Setup base system configuration
+	mkdir -p ${target_rootfs}/etc/rpm/
+	echo "${platform}" >${target_rootfs}/etc/rpm/platform
+
+	# Tell RPM that the "/" directory exist and is available
+	mkdir -p ${target_rootfs}/etc/rpm/sysinfo
+	echo "/" >${target_rootfs}/etc/rpm/sysinfo/Dirnames
+	if [ ! -z $providename ]; then
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
+		-D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync" \
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
+				-D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync private" \
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
+				-D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync private" \
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
+	${RPM} -D "_dbpath ${target_rootfs}/install" \
+		-D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync" -qa --yaml \
+		| grep -i 'Packageorigin' | cut -d : -f 2 > ${target_rootfs}/install/install_solution.manifest
+
+	# Attempt install
+	${RPM} --root ${target_rootfs} \
+		-D "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
+		-D "_dbpath ${rpmlibdir}" \
+		--noscripts --notriggers --noparentdirs --nolinktos \
+		-D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync private" \
+		-Uhv ${target_rootfs}/install/install_solution.manifest
 }
 
 python write_specfile () {
diff --git a/meta/classes/rootfs_deb.bbclass b/meta/classes/rootfs_deb.bbclass
index f579b53..e03e80b 100644
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
@@ -133,27 +74,7 @@ fakeroot rootfs_deb_do_rootfs () {
 
 	${ROOTFS_POSTPROCESS_COMMAND}
 
-	log_check rootfs 
-}
-
-rootfs_deb_log_check() {
-	target="$1"
-        lf_path="$2"
-
-	lf_txt="`cat $lf_path`"
-	for keyword_die in "E:"
-	do				
-		if (echo "$lf_txt" | grep -v log_check | grep "$keyword_die") >/dev/null 2>&1
-		then
-			echo "log_check: There were error messages in the logfile"
-			echo -e "log_check: Matched keyword: [$keyword_die]\n"
-			echo "$lf_txt" | grep -v log_check | grep -C 5 -i "$keyword_die"
-			echo ""
-			do_exit=1
-		fi
-	done
-	test "$do_exit" = 1 && exit 1						
-	true
+	log_check rootfs
 }
 
 remove_packaging_data_files() {
diff --git a/meta/classes/rootfs_ipk.bbclass b/meta/classes/rootfs_ipk.bbclass
index 593a403..5727d15 100644
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
@@ -82,26 +75,6 @@ fakeroot rootfs_ipk_do_rootfs () {
 	log_check rootfs 	
 }
 
-rootfs_ipk_log_check() {
-	target="$1"
-        lf_path="$2"
-
-	lf_txt="`cat $lf_path`"
-	for keyword_die in "exit 1" "Collected errors" ERR Fail
-	do				
-		if (echo "$lf_txt" | grep -v log_check | grep "$keyword_die") >/dev/null 2>&1
-		then
-			echo "log_check: There were error messages in the logfile"
-			echo -e "log_check: Matched keyword: [$keyword_die]\n"
-			echo "$lf_txt" | grep -v log_check | grep -C 5 -i "$keyword_die"
-			echo ""
-			do_exit=1				
-		fi
-	done
-	test "$do_exit" = 1 && exit 1
-	true
-}
-
 rootfs_ipk_write_manifest() {
 	manifest=${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.manifest
 	cp ${IMAGE_ROOTFS}${opkglibdir}/status $manifest
diff --git a/meta/classes/rootfs_rpm.bbclass b/meta/classes/rootfs_rpm.bbclass
index 8646eec..485b9c4 100644
--- a/meta/classes/rootfs_rpm.bbclass
+++ b/meta/classes/rootfs_rpm.bbclass
@@ -37,118 +37,17 @@ fakeroot rootfs_rpm_do_rootfs () {
 
 	${RPM_PREPROCESS_COMMANDS}
 
-	# Setup base system configuration
-	mkdir -p ${IMAGE_ROOTFS}/etc/rpm/
-	echo "${TARGET_ARCH}-linux" >${IMAGE_ROOTFS}/etc/rpm/platform
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
-		-D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync" \
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
-				-D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync private" \
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
-				-D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync private" \
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
-		| grep -i 'Packageorigin' | cut -d : -f 2 > ${IMAGE_ROOTFS}/install/install_solution.manifest
-
-	# Attempt install
-	${RPM} --root ${IMAGE_ROOTFS} -D "_dbpath ${rpmlibdir}" \
-		--noscripts --notriggers --noparentdirs --nolinktos \
-		-D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync private" \
-		-Uhv ${IMAGE_ROOTFS}/install/install_solution.manifest
+	#install pacakges
+	export INSTALL_ROOTFS_RPM="${IMAGE_ROOTFS}"
+	export INSTALL_PALTFOM_RPM="${TARGET_ARCH}-linux"
+	export INSTALL_CONFBASE_RPM="${RPMCONF_TARGET_BASE}"
+	export INSTALL_PACKAGES_NORMAL_RPM="${PACKAGE_INSTALL}"
+	export INSTALL_PACKAGES_ATTEMPTONLY_RPM="${PACKAGE_INSTALL_ATTEMPTONLY}"
+	export INSTALL_PACKAGES_LINGUAS_RPM="${LINGUAS_INSTALL}"
+	export INSTALL_PROVIDENAME_RPM=""
+	export INSTALL_TASK_RPM="populate_sdk"
+
+	package_install_internal_rpm
 
 	export D=${IMAGE_ROOTFS}
 	export OFFLINE_ROOT=${IMAGE_ROOTFS}
@@ -212,47 +111,15 @@ EOF
 
 	# Workaround so the parser knows we need the resolve_package function!
 	if false ; then
-		resolve_package foo || true
+		resolve_package_rpm foo ${RPMCONF_TARGET_BASE}.conf || true
 	fi
 }
 
-rootfs_rpm_log_check() {
-	target="$1"
-        lf_path="$2"
-
-	lf_txt="`cat $lf_path`"
-	for keyword_die in "Cannot find package" "exit 1" ERR Fail
-	do
-		if (echo "$lf_txt" | grep -v log_check | grep "$keyword_die") >/dev/null 2>&1
-		then
-			echo "log_check: There were error messages in the logfile"
-			echo -e "log_check: Matched keyword: [$keyword_die]\n"
-			echo "$lf_txt" | grep -v log_check | grep -C 5 -i "$keyword_die"
-			echo ""
-			do_exit=1
-		fi
-	done
-	test "$do_exit" = 1 && exit 1
-	true
-}
-
 remove_packaging_data_files() {
 	rm -rf ${IMAGE_ROOTFS}${rpmlibdir}
 	rm -rf ${IMAGE_ROOTFS}${opkglibdir}
 }
 
-# Resolve package names to filepaths
-resolve_package() {
-	pkg="$1"
-	pkg_name=""
-	for solve in `cat ${DEPLOY_DIR_RPM}/solvedb.conf`; do
-		pkg_name=$(${RPM} -D "_dbpath $solve" -D "_dbi_tags_3 Packages:Name:Basenames:Providename:Nvra" -D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync" -q --yaml $pkg | grep -i 'Packageorigin' | cut -d : -f 2)
-		if [ -n "$pkg_name" ]; then
-			break;
-		fi
-	done
-	echo $pkg_name
-}	
 
 install_all_locales() {
 	PACKAGES_TO_INSTALL=""
-- 
1.7.0.4


