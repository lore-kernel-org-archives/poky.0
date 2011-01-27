Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id AB0D34C81210
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 04:47:08 -0600 (CST)
Received: from [192.168.1.88] (unknown [83.217.123.106])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 6D1C112EC209
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 05:28:10 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <6e68264b2e391cfa101c8816356f5da3f3edade2.1296095614.git.lianhao.lu@intel.com>
References: <cover.1296095614.git.lianhao.lu@intel.com>
	<6e68264b2e391cfa101c8816356f5da3f3edade2.1296095614.git.lianhao.lu@intel.com>
Date: Thu, 27 Jan 2011 10:47:01 +0000
Message-ID: <1296125221.2711.13.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [PATCH 6/6] meta_toolchain/populate_sdk: Made task populate_sdk more generic.
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
X-List-Received-Date: Thu, 27 Jan 2011 10:47:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-27 at 10:51 +0800, Lianhao Lu wrote:
> From: Lianhao Lu <lianhao.lu@intel.com>
> 
> Make the task populate_sdk more generic to support installing from all
> ipk, rpm, and deb package format.
> 
> Also remove the .la files fixing in task populate_sdk code because the
> libtool 2.4 now supports sysroot.

Could you do this as a separate commit and actually remove the lines of
code, rather than commenting them out?


> 
> Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
> ---
>  meta/classes/populate_sdk.bbclass        |   88 +++++++++++++++++++++++++
>  meta/classes/populate_sdk_rpm.bbclass    |    6 +-
>  meta/recipes-core/meta/meta-toolchain.bb |  103 +-----------------------------
>  3 files changed, 94 insertions(+), 103 deletions(-)
>  create mode 100644 meta/classes/populate_sdk.bbclass
> 
> diff --git a/meta/classes/populate_sdk.bbclass b/meta/classes/populate_sdk.bbclass
> new file mode 100644
> index 0000000..02870a6
> --- /dev/null
> +++ b/meta/classes/populate_sdk.bbclass
> @@ -0,0 +1,88 @@
> +inherit meta toolchain-scripts
> +inherit populate_sdk_${IMAGE_PKGTYPE}
> +
> +SDK_DIR = "${WORKDIR}/sdk"
> +SDK_OUTPUT = "${SDK_DIR}/image"
> +SDK_DEPLOY = "${TMPDIR}/deploy/sdk"
> +
> +SDKTARGETSYSROOT = "${SDKPATH}/sysroots/${TARGET_SYS}"
> +
> +TOOLCHAIN_HOST_TASK ?= "task-sdk-host task-cross-canadian-${TRANSLATED_TARGET_ARCH}"
> +TOOLCHAIN_TARGET_TASK ?= "task-poky-standalone-sdk-target task-poky-standalone-sdk-target-dbg"
> +TOOLCHAIN_OUTPUTNAME ?= "${SDK_NAME}-toolchain-${DISTRO_VERSION}"
> +
> +RDEPENDS = "${TOOLCHAIN_TARGET_TASK} ${TOOLCHAIN_HOST_TASK}"
> +DEPENDS = "virtual/fakeroot-native sed-native"
> +
> +PID = "${@os.getpid()}"
> +
> +EXCLUDE_FROM_WORLD = "1"
> +
> +fakeroot do_populate_sdk() {
> +	rm -rf ${SDK_OUTPUT}
> +	mkdir -p ${SDK_OUTPUT}
> +
> +	populate_sdk_${IMAGE_PKGTYPE}
> +
> +	# Don't ship any libGL in the SDK
> +	rm -rf ${SDK_OUTPUT}/${SDKPATHNATIVE}${libdir_nativesdk}/libGL*
> +
> +	# Can copy pstage files here
> +	# target_pkgs=`cat ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/var/lib/opkg/status | grep Package: | cut -f 2 -d ' '`
> +
> +	# Fix or remove broken .la files
> +	# no longer needed since libtool now support sysroot
> +	#for i in `find ${SDK_OUTPUT}/${SDKTARGETSYSROOT} -name \*.la`; do
> +	#	sed -i 	-e "/^dependency_libs=/s,\([[:space:]']\)${base_libdir},\1${SDKTARGETSYSROOT}${base_libdir},g" \
> +	#		-e "/^dependency_libs=/s,\([[:space:]']\)${libdir},\1${SDKTARGETSYSROOT}${libdir},g" \
> +	#		-e "/^dependency_libs=/s,\-\([LR]\)${base_libdir},-\1${SDKTARGETSYSROOT}${base_libdir},g" \
> +	#		-e "/^dependency_libs=/s,\-\([LR]\)${libdir},-\1${SDKTARGETSYSROOT}${libdir},g" \
> +	#		-e 's/^installed=yes$/installed=no/' $i
> +	#done
> +	#rm -f ${SDK_OUTPUT}/${SDKPATHNATIVE}/lib/*.la
> +	rm -f ${SDK_OUTPUT}/${SDKPATHNATIVE}${libdir_nativesdk}/*.la
> +
> +	# Link the ld.so.cache file into the hosts filesystem
> +	ln -s /etc/ld.so.cache ${SDK_OUTPUT}/${SDKPATHNATIVE}/etc/ld.so.cache
> +
> +	# Setup site file for external use
> +	siteconfig=${SDK_OUTPUT}/${SDKPATH}/site-config-${MULTIMACH_TARGET_SYS}
> +	touch $siteconfig
> +	for sitefile in ${CONFIG_SITE} ; do
> +		cat $sitefile >> $siteconfig
> +	done
> +
> +	toolchain_create_sdk_env_script
> +
> +	# Add version information
> +	versionfile=${SDK_OUTPUT}/${SDKPATH}/version-${MULTIMACH_TARGET_SYS}
> +	touch $versionfile
> +	echo 'Distro: ${DISTRO}' >> $versionfile
> +	echo 'Distro Version: ${DISTRO_VERSION}' >> $versionfile
> +	echo 'Metadata Revision: ${METADATA_REVISION}' >> $versionfile
> +	echo 'Timestamp: ${DATETIME}' >> $versionfile
> +
> +	# Package it up
> +	mkdir -p ${SDK_DEPLOY}
> +	cd ${SDK_OUTPUT}
> +	tar --owner=root --group=root -cj --file=${SDK_DEPLOY}/${TOOLCHAIN_OUTPUTNAME}.tar.bz2 .
> +}
> +
> +populate_sdk_log_check() {
> +
> +	lf_path="${WORKDIR}/temp/log.do_populate_sdk.${PID}"
> +
> +	echo "log_check: Using $lf_path as logfile"
> +
> +	if test -e "$lf_path"
> +	then
> +		populate_sdk_${IMAGE_PKGTYPE}_log_check $lf_path
> +	else
> +		echo "Cannot find logfile [$lf_path]"
> +	fi
> +	echo "Logfile is clean"
> +}
> +
> +do_populate_sdk[nostamp] = "1"
> +do_populate_sdk[recrdeptask] = "do_package_write"
> +addtask populate_sdk before do_build after do_install
> diff --git a/meta/classes/populate_sdk_rpm.bbclass b/meta/classes/populate_sdk_rpm.bbclass
> index 883e67f..0e46341 100644
> --- a/meta/classes/populate_sdk_rpm.bbclass
> +++ b/meta/classes/populate_sdk_rpm.bbclass
> @@ -29,7 +29,7 @@ populate_sdk_rpm_internal() {
>  	confbase=$1
>  	shift
>  	package_to_install=$@
> -	
> +
>  	# Setup base system configuration
>  	mkdir -p ${target_rootfs}/etc/rpm/
>  	echo "${platform}" >${target_rootfs}/etc/rpm/platform
> @@ -109,12 +109,12 @@ fakeroot populate_sdk_rpm () {
>  	install -d ${SDK_OUTPUT}/${SDKPATHNATIVE}${localstatedir_nativesdk}/lib/rpm
>  	mv ${SDK_OUTPUT}${rpmlibdir}/* ${SDK_OUTPUT}/${SDKPATHNATIVE}${localstatedir_nativesdk}/lib/rpm/
>  	rm -Rf ${SDK_OUTPUT}/var
> -	
> +
>  	install -d ${SDK_OUTPUT}/${SDKPATHNATIVE}/${sysconfdir}
>  	mv ${SDK_OUTPUT}/etc/* ${SDK_OUTPUT}/${SDKPATHNATIVE}/${sysconfdir}/
>  	rm -rf ${SDK_OUTPUT}/etc
>  
> -	populate_sdk_log_check 
> +	populate_sdk_log_check
>  }

Whitespace changes here can be squashed into the original patch adding
this file.

>  
>  populate_sdk_rpm_log_check() {
> diff --git a/meta/recipes-core/meta/meta-toolchain.bb b/meta/recipes-core/meta/meta-toolchain.bb
> index 4aed9c2..feff9ac 100644
> --- a/meta/recipes-core/meta/meta-toolchain.bb
> +++ b/meta/recipes-core/meta/meta-toolchain.bb
> @@ -1,106 +1,9 @@
>  DESCRIPTION = "Meta package for building a installable toolchain"
>  LICENSE = "MIT"
> -DEPENDS = "opkg-native opkg-utils-native virtual/fakeroot-native sed-native"
> +
> +PR = "r1"
>  
>  LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
>                      file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>  
> -inherit meta toolchain-scripts
> -
> -SDK_DIR = "${WORKDIR}/sdk"
> -SDK_OUTPUT = "${SDK_DIR}/image"
> -SDK_DEPLOY = "${TMPDIR}/deploy/sdk"
> -
> -SDKTARGETSYSROOT = "${SDKPATH}/sysroots/${TARGET_SYS}"
> -
> -IPKG_HOST = "opkg-cl -f ${IPKGCONF_SDK} -o ${SDK_OUTPUT} --force-overwrite"
> -IPKG_TARGET = "opkg-cl -f ${IPKGCONF_TARGET} -o ${SDK_OUTPUT}/${SDKTARGETSYSROOT} --force-overwrite"
> -
> -TOOLCHAIN_HOST_TASK ?= "task-sdk-host task-cross-canadian-${TRANSLATED_TARGET_ARCH}"
> -TOOLCHAIN_TARGET_TASK ?= "task-poky-standalone-sdk-target task-poky-standalone-sdk-target-dbg"
> -TOOLCHAIN_OUTPUTNAME ?= "${SDK_NAME}-toolchain-${DISTRO_VERSION}"
> -
> -RDEPENDS = "${TOOLCHAIN_TARGET_TASK} ${TOOLCHAIN_HOST_TASK}"
> -
> -EXCLUDE_FROM_WORLD = "1"
> -
> -do_populate_sdk() {
> -	rm -rf ${SDK_OUTPUT}
> -	mkdir -p ${SDK_OUTPUT}
> -	mkdir -p ${SDK_OUTPUT}${localstatedir}/lib/opkg/
> -	mkdir -p ${SDK_OUTPUT}/${SDKTARGETSYSROOT}${localstatedir}/lib/opkg/
> -
> -	rm -f ${IPKGCONF_TARGET}
> -	touch ${IPKGCONF_TARGET}
> -	rm -f ${IPKGCONF_SDK}
> -	touch ${IPKGCONF_SDK}
> -
> -	package_update_index_ipk
> -	package_generate_ipkg_conf
> -
> -	for arch in ${PACKAGE_ARCHS}; do
> -		revipkgarchs="$arch $revipkgarchs"
> -	done
> -
> -	${IPKG_HOST} update
> -	${IPKG_HOST} install ${TOOLCHAIN_HOST_TASK}
> -
> -	${IPKG_TARGET} update
> -	${IPKG_TARGET} install ${TOOLCHAIN_TARGET_TASK}
> -
> -	install -d ${SDK_OUTPUT}/${SDKPATHNATIVE}${localstatedir_nativesdk}/lib/opkg
> -	mv ${SDK_OUTPUT}/var/lib/opkg/* ${SDK_OUTPUT}/${SDKPATHNATIVE}${localstatedir_nativesdk}/lib/opkg/
> -	rm -Rf ${SDK_OUTPUT}/var
> -
> -	# Don't ship any libGL in the SDK
> -	rm -rf ${SDK_OUTPUT}/${SDKPATHNATIVE}${libdir_nativesdk}/libGL*
> -
> -	install -d ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/${sysconfdir}
> -	install -m 0644 ${IPKGCONF_TARGET} ${IPKGCONF_SDK} ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/${sysconfdir}/
> -
> -	install -d ${SDK_OUTPUT}/${SDKPATHNATIVE}/${sysconfdir}
> -	install -m 0644 ${IPKGCONF_SDK} ${SDK_OUTPUT}/${SDKPATHNATIVE}/${sysconfdir}/
> -
> -	# Can copy pstage files here
> -	# target_pkgs=`cat ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/var/lib/opkg/status | grep Package: | cut -f 2 -d ' '`
> -
> -	# Fix or remove broken .la files
> -	for i in `find ${SDK_OUTPUT}/${SDKTARGETSYSROOT} -name \*.la`; do
> -		sed -i 	-e "/^dependency_libs=/s,\([[:space:]']\)${base_libdir},\1${SDKTARGETSYSROOT}${base_libdir},g" \
> -			-e "/^dependency_libs=/s,\([[:space:]']\)${libdir},\1${SDKTARGETSYSROOT}${libdir},g" \
> -			-e "/^dependency_libs=/s,\-\([LR]\)${base_libdir},-\1${SDKTARGETSYSROOT}${base_libdir},g" \
> -			-e "/^dependency_libs=/s,\-\([LR]\)${libdir},-\1${SDKTARGETSYSROOT}${libdir},g" \
> -			-e 's/^installed=yes$/installed=no/' $i
> -	done
> -	#rm -f ${SDK_OUTPUT}/${SDKPATHNATIVE}/lib/*.la
> -	rm -f ${SDK_OUTPUT}/${SDKPATHNATIVE}${libdir_nativesdk}/*.la
> -
> -	# Link the ld.so.cache file into the hosts filesystem
> -	ln -s /etc/ld.so.cache ${SDK_OUTPUT}/${SDKPATHNATIVE}/etc/ld.so.cache
> -
> -	# Setup site file for external use
> -	siteconfig=${SDK_OUTPUT}/${SDKPATH}/site-config-${MULTIMACH_TARGET_SYS}
> -	touch $siteconfig
> -	for sitefile in ${CONFIG_SITE} ; do
> -		cat $sitefile >> $siteconfig
> -	done
> -
> -	toolchain_create_sdk_env_script
> -
> -	# Add version information
> -	versionfile=${SDK_OUTPUT}/${SDKPATH}/version-${MULTIMACH_TARGET_SYS}
> -	touch $versionfile
> -	echo 'Distro: ${DISTRO}' >> $versionfile
> -	echo 'Distro Version: ${DISTRO_VERSION}' >> $versionfile
> -	echo 'Metadata Revision: ${METADATA_REVISION}' >> $versionfile
> -	echo 'Timestamp: ${DATETIME}' >> $versionfile
> -
> -	# Package it up
> -	mkdir -p ${SDK_DEPLOY}
> -	cd ${SDK_OUTPUT}
> -	tar --owner=root --group=root -cj --file=${SDK_DEPLOY}/${TOOLCHAIN_OUTPUTNAME}.tar.bz2 .
> -}
> -
> -do_populate_sdk[nostamp] = "1"
> -do_populate_sdk[recrdeptask] = "do_package_write"
> -addtask populate_sdk before do_build after do_install
> +inherit populate_sdk

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


