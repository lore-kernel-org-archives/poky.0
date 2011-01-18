Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6F4444C8106A
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 10:22:22 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Jan 2011 08:22:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,339,1291622400"; d="scan'208";a="878522355"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 18 Jan 2011 08:22:21 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 19 Jan 2011 00:20:59 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 19 Jan 2011 00:20:59 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 19 Jan 2011 00:20:58 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Cui, Dexuan" <dexuan.cui@intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Wed, 19 Jan 2011 00:20:57 +0800
Thread-Topic: [poky] [RFC: enhance toolchain bootstrap process: v3:  7/7]
	eglibc,
	eglibc-nativesdk: fix the build due to changes to eglibc-initial	and
	gcc-cross-intermediate
Thread-Index: Acu3F9GiF25GR7jDSPaRqA+JnYfOdAAE48pA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D84393437@shsmsx502.ccr.corp.intel.com>
References: <cover.1295359004.git.dexuan.cui@intel.com>
	<b548ed8a93a21f830c07a4e24e3a12b3967738e4.1295359004.git.dexuan.cui@intel.com>
In-Reply-To: <b548ed8a93a21f830c07a4e24e3a12b3967738e4.1295359004.git.dexuan.cui@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [RFC: enhance toolchain bootstrap process: v3: 7/7] eglibc, eglibc-nativesdk: fix the build due to changes to eglibc-initial	and gcc-cross-intermediate
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
X-List-Received-Date: Tue, 18 Jan 2011 16:22:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Dexuan Cui
> Sent: Tuesday, January 18, 2011 9:58 PM
>=20
> BTW: I'm not very sure about the comments about CPPFLAGS and LDFLAGS, but
> I do
> need to pass the 2 variables to make eglibc build ok.

From the commit history the special tweaks on CPPFLAGS and LDFLAGS exist fo=
r a long
time. It's possible that they're there due to a specific issue which doesn'=
t exist now. Does
anyone remember the historical reason here? If not, and the intensive tests=
 works fine,
perhaps it's safe to change them. :-)

Thanks
Kevin

>=20
> Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
> ---
>  meta/recipes-core/eglibc/eglibc.inc     |    9 +++++++++
>  meta/recipes-core/eglibc/eglibc_2.12.bb |    8 ++------
>  2 files changed, 11 insertions(+), 6 deletions(-)
>=20
> diff --git a/meta/recipes-core/eglibc/eglibc.inc
> b/meta/recipes-core/eglibc/eglibc.inc
> index 4698254..a61d35d 100644
> --- a/meta/recipes-core/eglibc/eglibc.inc
> +++ b/meta/recipes-core/eglibc/eglibc.inc
> @@ -1,5 +1,14 @@
>  require eglibc-common.inc
>=20
> +STAGING_BINDIR_TOOLCHAIN_prepend =3D
> "${STAGING_DIR_NATIVE}${bindir_native}/${HOST_SYS}.gcc-cross-intermediat
> e:"
> +STAGING_BINDIR_TOOLCHAIN_virtclass-nativesdk_prepend =3D
> "${STAGING_DIR_NATIVE}${bindir_native}/${HOST_SYS}.gcc-crosssdk-intermed
> iate:"
> +
> +CPPFLAGS_prepend =3D
> "-I${STAGING_DIR_TARGET}/eglibc-initial/${TARGET_SYS}${includedir_native}=
 "
> +CPPFLAGS_virtclass-nativesdk_prepend =3D
> "-I${STAGING_DIR_TARGET}/eglibc-initial-nativesdk/${SDK_ARCH}-nativesdk${=
S
> DK_VENDOR}-${SDK_OS}${base_prefix}${includedir_native} "
> +
> +LDFLAGS_prepend=3D
> "-L${STAGING_DIR_TARGET}${base_libdir}.gcc-cross-intermediate "
> +LDFLAGS_virtclass-nativesdk_prepend=3D
> "-L${STAGING_DIR_TARGET}${base_libdir}.gcc-crosssdk-intermediate "
> +
>  # nptl needs unwind support in gcc, which can't be built without glibc.
>  DEPENDS =3D "virtual/${TARGET_PREFIX}gcc-intermediate linux-libc-headers=
"
>  #this leads to circular deps, so lets not add it yet
> diff --git a/meta/recipes-core/eglibc/eglibc_2.12.bb
> b/meta/recipes-core/eglibc/eglibc_2.12.bb
> index 97353b7..c325d1b 100644
> --- a/meta/recipes-core/eglibc/eglibc_2.12.bb
> +++ b/meta/recipes-core/eglibc/eglibc_2.12.bb
> @@ -2,7 +2,7 @@ require eglibc.inc
>=20
>  DEPENDS +=3D "gperf-native"
>  FILESPATHPKG =3D. "eglibc-svn:"
> -PR =3D "r14"
> +PR =3D "r15"
>=20
>  EGLIBC_BRANCH=3D"eglibc-2_12"
>  SRC_URI =3D
> "svn://www.eglibc.org/svn/branches/;module=3D${EGLIBC_BRANCH};proto=3Dhtt=
p
> \
> @@ -73,15 +73,13 @@ do_move_ports() {
>  do_configure () {
>  # override this function to avoid the autoconf/automake/aclocal/autohead=
er
>  # calls for now
> -# don't pass CPPFLAGS into configure, since it upsets the kernel-headers
> -# version check and doesn't really help with anything
>          if [ -z "`which rpcgen`" ]; then
>                  echo "rpcgen not found.  Install glibc-devel."
>                  exit 1
>          fi
>          (cd ${S} && gnu-configize) || die "failure in running gnu-config=
ize"
>          find ${S} -name "configure" | xargs touch
> -        CPPFLAGS=3D"" oe_runconf
> +        oe_runconf
>  }
>=20
>  rpcsvc =3D "bootparam_prot.x nlm_prot.x rstat.x \
> @@ -89,8 +87,6 @@ rpcsvc =3D "bootparam_prot.x nlm_prot.x rstat.x \
>  	  rusers.x spray.x nfs_prot.x rquota.x key_prot.x"
>=20
>  do_compile () {
> -	# -Wl,-rpath-link <staging>/lib in LDFLAGS can cause breakage if anothe=
r
> glibc is in staging
> -	unset LDFLAGS
>  	base_do_compile
>  	(
>  		cd ${S}/sunrpc/rpcsvc
> --
> 1.7.2
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

