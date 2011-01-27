Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id A45664C81210
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 04:46:54 -0600 (CST)
Received: from [192.168.1.88] (unknown [83.217.123.106])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 7676C12EC1CA
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 05:27:55 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <26af1eedc02891af494e897816b8c0819d13f4e5.1296095614.git.lianhao.lu@intel.com>
References: <cover.1296095614.git.lianhao.lu@intel.com>
	<26af1eedc02891af494e897816b8c0819d13f4e5.1296095614.git.lianhao.lu@intel.com>
Date: Thu, 27 Jan 2011 10:46:46 +0000
Message-ID: <1296125206.2711.12.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [PATCH 5/6] package_rpm/populate_sdk_rpm: Added rpm support for populate_sdk task.
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
X-List-Received-Date: Thu, 27 Jan 2011 10:46:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-27 at 10:51 +0800, Lianhao Lu wrote:
> From: Lianhao Lu <lianhao.lu@intel.com>
> 
> 1. Added popluate_sdk_rpm.bbclass to add rpm support for populate_sdk
> task.
> 
> 2. Modified the function package_update_index_rpm() &
> package_generate_rpm_conf in package_rpm.bbclass to generate 2 different
> configurations for sdk host and sdk target.
> 
> Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
> ---
>  meta/classes/package_rpm.bbclass      |   53 +++++++++++--
>  meta/classes/populate_sdk_rpm.bbclass |  138 +++++++++++++++++++++++++++++++++
>  2 files changed, 183 insertions(+), 8 deletions(-)
>  create mode 100644 meta/classes/populate_sdk_rpm.bbclass
> 
> diff --git a/meta/classes/package_rpm.bbclass b/meta/classes/package_rpm.bbclass
> index fbe0626..abcb340 100644
> --- a/meta/classes/package_rpm.bbclass
> +++ b/meta/classes/package_rpm.bbclass
> @@ -15,6 +15,8 @@ python package_rpm_install () {
>  	bb.fatal("package_rpm_install not implemented!")
>  }
>  
> +RPMCONF_TARGET_BASE = "${DEPLOY_DIR_RPM}/solvedb"
> +RPMCONF_HOST_BASE = "${DEPLOY_DIR_RPM}/solvedb-sdk"
>  #
>  # Update the Packages depsolver db in ${DEPLOY_DIR_RPM}
>  #
> @@ -26,15 +28,20 @@ package_update_index_rpm () {
>  	fi
>  
>  	packagedirs=""
> +	packagedirs_sdk=""
>  	for arch in $rpmarchs ; do
>  		sdkarch=`echo $arch | sed -e 's/${HOST_ARCH}/${SDK_ARCH}/'`
> +		extension="-nativesdk"
> +		if [ "$sdkarch" = "all" -o "$sdkarch" = "any" -o "$sdkarch" = "noarch" ]; then
> +		    extension=""
> +		fi
>  		packagedirs="$packagedirs ${DEPLOY_DIR_RPM}/$arch"
> -		#packagedirs="$packagedirs ${DEPLOY_DIR_RPM}/$sdkarch-nativesdk"
> +		packagedirs_sdk="$packagedirs_sdk ${DEPLOY_DIR_RPM}/$sdkarch$extension"
>  	done
>  
>  	#packagedirs="$packagedirs ${DEPLOY_DIR_RPM}/${SDK_ARCH}-${TARGET_ARCH}-canadian"
>  
> -	cat /dev/null > ${DEPLOY_DIR_RPM}/solvedb.conf
> +	cat /dev/null > ${RPMCONF_TARGET_BASE}.conf
>  	for pkgdir in $packagedirs; do
>  		if [ -e $pkgdir/ ]; then
>  			echo "Generating solve db for $pkgdir..."
> @@ -49,7 +56,26 @@ package_update_index_rpm () {
>  				-D "_dbi_tags_3 Packages:Name:Basenames:Providename:Nvra" \
>  				-D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync" \
>  				$pkgdir/solvedb/manifest
> -			echo $pkgdir/solvedb >> ${DEPLOY_DIR_RPM}/solvedb.conf
> +			echo $pkgdir/solvedb >> ${RPMCONF_TARGET_BASE}.conf
> +		fi
> +	done
> +
> +	cat /dev/null > ${RPMCONF_HOST_BASE}.conf
> +	for pkgdir in $packagedirs_sdk; do
> +		if [ -e $pkgdir/ ]; then
> +			echo "Generating solve db for $pkgdir..."
> +			rm -rf $pkgdir/solvedb
> +			mkdir -p $pkgdir/solvedb
> +			echo "# Dynamically generated solve manifest" >> $pkgdir/solvedb/manifest
> +			find $pkgdir -maxdepth 1 -type f >> $pkgdir/solvedb/manifest
> +			${RPM} -i --replacepkgs --replacefiles --oldpackage \
> +				-D "_dbpath $pkgdir/solvedb" --justdb \
> +				--noaid --nodeps --noorder --noscripts --notriggers --noparentdirs --nolinktos --stats \
> +				--ignoresize --nosignature --nodigest \
> +				-D "_dbi_tags_3 Packages:Name:Basenames:Providename:Nvra" \
> +				-D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync" \
> +				$pkgdir/solvedb/manifest
> +			echo $pkgdir/solvedb >> ${RPMCONF_HOST_BASE}.conf
>  		fi
>  	done
>  }
> @@ -59,16 +85,27 @@ package_update_index_rpm () {
>  # generated depsolver db's...
>  #
>  package_generate_rpm_conf () {
> -	printf "_solve_dbpath " > ${DEPLOY_DIR_RPM}/solvedb.macro
> +	printf "_solve_dbpath " > ${RPMCONF_TARGET_BASE}.macro
> +	colon=false
> +	for each in `cat ${RPMCONF_TARGET_BASE}.conf` ; do
> +		if [ "$colon" == true ]; then
> +			printf ":" >> ${RPMCONF_TARGET_BASE}.macro
> +		fi
> +		printf "%s" $each >> ${RPMCONF_TARGET_BASE}.macro
> +		colon=true
> +	done
> +	printf "\n" >> ${RPMCONF_TARGET_BASE}.macro
> +
> +	printf "_solve_dbpath " > ${RPMCONF_HOST_BASE}.macro
>  	colon=false
> -	for each in `cat ${DEPLOY_DIR_RPM}/solvedb.conf` ; do
> +	for each in `cat ${RPMCONF_HOST_BASE}.conf` ; do
>  		if [ "$colon" == true ]; then
> -			printf ":" >> ${DEPLOY_DIR_RPM}/solvedb.macro
> +			printf ":" >> ${RPMCONF_HOST_BASE}.macro
>  		fi
> -		printf "%s" $each >> ${DEPLOY_DIR_RPM}/solvedb.macro
> +		printf "%s" $each >> ${RPMCONF_HOST_BASE}.macro
>  		colon=true
>  	done
> -	printf "\n" >> ${DEPLOY_DIR_RPM}/solvedb.macro
> +	printf "\n" >> ${RPMCONF_HOST_BASE}.macro
>  }
>  
>  python write_specfile () {
> diff --git a/meta/classes/populate_sdk_rpm.bbclass b/meta/classes/populate_sdk_rpm.bbclass
> new file mode 100644
> index 0000000..883e67f
> --- /dev/null
> +++ b/meta/classes/populate_sdk_rpm.bbclass
> @@ -0,0 +1,138 @@
> +do_populate_sdk[depends] += "rpm-native:do_populate_sysroot"
> +do_populate_sdk[recrdeptask] += "do_package_write_rpm"
> +
> +rpmlibdir = "/var/lib/rpm"

Bonus points if you change this for a layout variable:

${localstatedir}/lib/rpm ?

> +RPMOPTS="--dbpath ${rpmlibdir} --define='_openall_before_chroot 1'"
> +RPM="rpm ${RPMOPTS}"
> +
> +# Resolve package names to filepaths
> +resolve_package() {
> +	pkg="$1"
> +	conffile="$2"
> +	pkg_name=""
> +	for solve in `cat ${conffile}`; do
> +		pkg_name=$(${RPM} -D "_dbpath $solve" -D "_dbi_tags_3 Packages:Name:Basenames:Providename:Nvra" -D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync" -q --yaml $pkg | grep -i 'Packageorigin' | cut -d : -f 2)
> +		if [ -n "$pkg_name" ]; then
> +			break;
> +		fi
> +	done
> +	echo $pkg_name
> +}
> +
> +# populate_sdk_rpm_internal <rootfs> <platform> <confbase> <packages_to_install>
> +populate_sdk_rpm_internal() {
> +
> +	target_rootfs=$1
> +	shift
> +	platform=$1
> +	shift
> +	confbase=$1
> +	shift
> +	package_to_install=$@
> +	
> +	# Setup base system configuration
> +	mkdir -p ${target_rootfs}/etc/rpm/
> +	echo "${platform}" >${target_rootfs}/etc/rpm/platform
> +
> +	# Tell RPM that the "/" directory exist and is available
> +	mkdir -p ${target_rootfs}/etc/rpm/sysinfo
> +	echo "/" >${target_rootfs}/etc/rpm/sysinfo/Dirnames
> +	echo "/bin/sh" >${target_rootfs}/etc/rpm/sysinfo/Providename

${sysconfdir} in here?

> +
> +	# Setup manifest of packages to install...
> +	mkdir -p ${target_rootfs}/install
> +	echo "# Install manifest" > ${target_rootfs}/install/install.manifest
> +
> +	if [ ! -z "${package_to_install}" ]; then
> +		for pkg in ${package_to_install} ; do
> +			echo "Processing $pkg..."
> +			pkg_name=$(resolve_package $pkg ${confbase}.conf)
> +			if [ -z "$pkg_name" ]; then
> +				echo "Unable to find package $pkg!"
> +				exit 1
> +			fi
> +			echo $pkg_name >> ${target_rootfs}/install/install.manifest
> +		done
> +	fi
> +
> +	# Generate an install solution by doing a --justdb install, then recreate it with
> +	# an actual package install!
> +	set -e
> +	${RPM} -D "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
> +		-D "_dbpath ${target_rootfs}/install" -D "`cat ${confbase}.macro`" \
> +		-D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync" \
> +		-U --justdb --noscripts --notriggers --noparentdirs --nolinktos --ignoresize \
> +		${target_rootfs}/install/install.manifest
> +
> +	# Now that we have a solution, pull out a list of what to install...
> +	echo "Manifest: ${target_rootfs}/install/install-target.manifest"
> +	${RPM} -D "_dbpath ${target_rootfs}/install" \
> +		-D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync" -qa --yaml \
> +		| grep -i 'Packageorigin' | cut -d : -f 2 > ${target_rootfs}/install/install_solution.manifest
> +
> +	# Attempt install
> +	${RPM} --root ${target_rootfs} \
> +		-D "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" \
> +		-D "_dbpath ${rpmlibdir}" \
> +		--noscripts --notriggers --noparentdirs --nolinktos \
> +		-D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync private" \
> +		-Uhv ${target_rootfs}/install/install_solution.manifest
> +	set +e
> +
> +	# remove lock files
> +	rm -f ${target_rootfs}/__db.*
> +
> +	# Move manifests into the directory with the logs
> +	mv ${target_rootfs}/install/*.manifest ${T}/
> +
> +	# Remove all remaining resolver files
> +	rm -rf ${target_rootfs}/install
> +}
> +
> +fakeroot populate_sdk_rpm () {
> +
> +	package_update_index_rpm
> +	package_generate_rpm_conf
> +
> +	#install target
> +	populate_sdk_rpm_internal ${SDK_OUTPUT}/${SDKTARGETSYSROOT} \
> +				${TARGET_ARCH}-linux \
> +				${RPMCONF_TARGET_BASE} \
> +				${TOOLCHAIN_TARGET_TASK}
> +	#install host
> +	populate_sdk_rpm_internal ${SDK_OUTPUT} \
> +				"${SDK_ARCH}-nativesdk-linux" \
> +				${RPMCONF_HOST_BASE} \
> +				${TOOLCHAIN_HOST_TASK}
> +
> +	# move host RPM library data
> +	install -d ${SDK_OUTPUT}/${SDKPATHNATIVE}${localstatedir_nativesdk}/lib/rpm
> +	mv ${SDK_OUTPUT}${rpmlibdir}/* ${SDK_OUTPUT}/${SDKPATHNATIVE}${localstatedir_nativesdk}/lib/rpm/
> +	rm -Rf ${SDK_OUTPUT}/var
> +	
> +	install -d ${SDK_OUTPUT}/${SDKPATHNATIVE}/${sysconfdir}
> +	mv ${SDK_OUTPUT}/etc/* ${SDK_OUTPUT}/${SDKPATHNATIVE}/${sysconfdir}/
> +	rm -rf ${SDK_OUTPUT}/etc
> +
> +	populate_sdk_log_check 
> +}
> +
> +populate_sdk_rpm_log_check() {
> +
> +        lf_path="$1"

Inconsistent indentation here. 

> +
> +	lf_txt="`cat $lf_path`"
> +	for keyword_die in "Cannot find package" "exit 1" ERR Fail
> +	do
> +		if (echo "$lf_txt" | grep -v log_check | grep "$keyword_die") >/dev/null 2>&1
> +		then
> +			echo "log_check: There were error messages in the logfile"
> +			echo -e "log_check: Matched keyword: [$keyword_die]\n"
> +			echo "$lf_txt" | grep -v log_check | grep -C 5 -i "$keyword_die"
> +			echo ""
> +			do_exit=1
> +		fi
> +	done
> +	test "$do_exit" = 1 && exit 1
> +	true
> +}

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


