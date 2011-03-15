Return-Path: <liping.ke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2AD504C80050
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 21:10:10 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Mar 2011 19:10:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,319,1297065600"; d="scan'208";a="612974039"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 14 Mar 2011 19:10:09 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 15 Mar 2011 10:09:49 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Tue, 15 Mar 2011 10:09:48 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Tue, 15 Mar 2011 10:09:45 +0800
Thread-Topic: [poky] [PATCH 1/1] adt: fix ppc/powerpcc naming bug
Thread-Index: AcviLB06eyb2515HSzitazhR9uZ7UQAiXpcQ
Message-ID: <789F9655DD1B8F43B48D77C5D306597332FC7868@shsmsx501.ccr.corp.intel.com>
References: <cover.1300095446.git.liping.ke@intel.com>
	<5b2cf775035a11207f59f01eb2858c6435a8ffd0.1300095446.git.liping.ke@intel.com>
In-Reply-To: <5b2cf775035a11207f59f01eb2858c6435a8ffd0.1300095446.git.liping.ke@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: [PATCH 1/1] adt: fix ppc/powerpcc naming bug
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
X-List-Received-Date: Tue, 15 Mar 2011 02:10:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Jessica and Saul

Since Qing's new patch for " qemux86-64: set qemux86_64 as package arch nam=
e"
is checked in, we need further changes for name match.

I will re-build and test and then send further patches.

Thanks & Regards,
criping



> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Liping Ke
> Sent: Monday, March 14, 2011 5:40 PM
> To: poky@yoctoproject.org
> Subject: [poky] [PATCH 1/1] adt: fix ppc/powerpcc naming bug
>=20
> From: Liping Ke <liping.ke@intel.com>
>=20
> for ipk files on ppc, the name should be powerpc. So does the
> environment file name. For the tar file name, it should be ppc.
> This patch is to correct the arch/machine name pair.
> Related Bug#864
>=20
> Signed-off-by: Liping ke <liping.ke@intel.com>
> ---
>  .../adt-installer/scripts/adt_installer_internal   |    6 ++++--
>  .../installer/adt-installer/scripts/data_define    |    2 +-
>  2 files changed, 5 insertions(+), 3 deletions(-)
>=20
> diff --git a/meta/recipes-devtools/installer/adt-
> installer/scripts/adt_installer_internal b/meta/recipes-
> devtools/installer/adt-installer/scripts/adt_installer_internal
> index bc92069..a77a3ff 100755
> --- a/meta/recipes-devtools/installer/adt-
> installer/scripts/adt_installer_internal
> +++ b/meta/recipes-devtools/installer/adt-
> installer/scripts/adt_installer_internal
> @@ -29,7 +29,6 @@ parse_config()
>    case $INST_ARCH in
>    i[3-6]86)
>      OPKG_CONFIG_FILE=3D$YOCTOADT_OPKG_CONF_FILE_32
> -    #POKY_NATIVE_SYSROOT=3D"$INSTALL_FOLDER/sysroots/i586-pokysdk-
> linux/"
>      POKY_NATIVE_SYSROOT=3D"$INSTALL_FOLDER/sysroots/$INST_ARCH-pokysdk-
> linux/"
>      ;;
>    x86_64)
> @@ -106,7 +105,7 @@ $OPKG_INSTALL_NATIVE_CMD libtool-nativesdk &>>
> $YOCTOADT_INSTALL_LOG_FILE
>  check_result
>=20
>  for native_target_type in $YOCTOADT_TARGETS; do
> -  native_target_type=3D`echo "$native_target_type" | sed -e
> 's/x86_64/x86-64/' -e 's/x86$/i586/'`
> +  native_target_type=3D`echo "$native_target_type" | sed -e
> 's/x86_64/x86-64/' -e's/ppc/powerpc/'  -e 's/x86$/i586/'`
>    echo_info "Installing cross toolchain for $native_target_type ..."
>    echo_info "Installing binutils for $native_target_type ..."
>    $OPKG_INSTALL_NATIVE_CMD binutils-cross-canadian-$native_target_type
> &>> $YOCTOADT_INSTALL_LOG_FILE
> @@ -180,9 +179,12 @@ check_result
>  echo_info "Updating environment script with target sysroot location."
>  if [ "$1" =3D=3D "x86"  ]; then
>    env_filename=3D`ls $INSTALL_FOLDER/environment-setup-i586*`
> +elif [ "$1" =3D=3D "ppc"  ]; then
> +  env_filename=3D`ls $INSTALL_FOLDER/environment-setup-powerpc*`
>  else
>    env_filename=3D`ls $INSTALL_FOLDER/environment-setup-$1*`
>  fi
> +
>  if [ ! -z "$env_filename" ]; then
>    sudo sed -i -e "s%##SDKTARGETSYSROOT##%$target_sysroot%g"
> $env_filename
>  else
> diff --git a/meta/recipes-devtools/installer/adt-
> installer/scripts/data_define b/meta/recipes-devtools/installer/adt-
> installer/scripts/data_define
> index c7bce6d..ca1d47c 100644
> --- a/meta/recipes-devtools/installer/adt-installer/scripts/data_define
> +++ b/meta/recipes-devtools/installer/adt-installer/scripts/data_define
> @@ -32,7 +32,7 @@ OPKG_LIBDIR=3D"/var/lib"
>  # List all supported root fs types and target types,
>  # it will be used in user configuration validity checking
>  YOCTOADT_SUPPORTED_ROOTFS=3D"minimal minimal-dev sato sato-dev sato-sdk
> lsb lsb-dev lsb-sdk"
> -YOCTOADT_SUPPORTED_TARGETS=3D"x86 x86_64 arm powerpc mips"
> +YOCTOADT_SUPPORTED_TARGETS=3D"x86 x86_64 arm ppc mips"
>  # Different host (32 bit or 64 bit) will have different opkg
>  # configuration files
>  YOCTOADT_OPKG_CONF_FILE_32=3D"./opkg/conf/opkg-sdk-i686.conf"
> --
> 1.7.0.4
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

