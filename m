Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5A6364C800B8
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 21:20:31 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 Mar 2011 19:20:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,300,1297065600"; d="scan'208";a="400988448"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 10 Mar 2011 19:20:08 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.226.128) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 10 Mar 2011 19:20:07 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx606.amr.corp.intel.com ([10.22.226.128]) with mapi;
	Thu, 10 Mar 2011 19:20:07 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Lu, Lianhao" <lianhao.lu@intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Thu, 10 Mar 2011 19:19:50 -0800
Thread-Topic: [poky] [PATCH 1/1] gcc/collect2: Added --sysroot support into
	collect2 in gcc.
Thread-Index: Acve66o75vsQB0r4QUuH1iNje7tuSwAr2+TQ
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE9431F33E45@orsmsx504.amr.corp.intel.com>
References: <cover.1299737813.git.lianhao.lu@intel.com>
	<6a1fe90d5a43e3260098dc90b8d467a1ba7d6335.1299737813.git.lianhao.lu@intel.com>
In-Reply-To: <6a1fe90d5a43e3260098dc90b8d467a1ba7d6335.1299737813.git.lianhao.lu@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PATCH 1/1] gcc/collect2: Added --sysroot support into	collect2 in gcc.
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
X-List-Received-Date: Fri, 11 Mar 2011 03:20:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Looks fine to me.

Thanks,
Nitin


> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Lianhao Lu
> Sent: Wednesday, March 09, 2011 10:22 PM
> To: poky@yoctoproject.org
> Subject: [poky] [PATCH 1/1] gcc/collect2: Added --sysroot support into
> collect2 in gcc.
>=20
> From: Lianhao Lu <lianhao.lu@intel.com>
>=20
> [YOCTO #815] Added --sysroot into COLLECT_GCC_OPTIONS to allow the
> collect2 support user specifed sysroot.
>=20
> Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
> ---
>  meta/recipes-devtools/gcc/gcc-4.5.1.inc            |    1 +
>  .../gcc/gcc-4.5.1/COLLECT_GCC_OPTIONS.patch        |   22
> ++++++++++++++++++++
>  .../gcc/gcc-cross-canadian_4.5.1.bb                |    2 +-
>  .../gcc/gcc-cross-initial_4.5.1.bb                 |    2 +-
>  .../gcc/gcc-cross-intermediate_4.5.1.bb            |    2 +-
>  meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb       |    2 +-
>  .../gcc/gcc-crosssdk-initial_4.5.1.bb              |    2 +-
>  .../gcc/gcc-crosssdk-intermediate_4.5.1.bb         |    2 +-
>  meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb    |    2 +-
>  meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb     |    2 +-
>  meta/recipes-devtools/gcc/gcc_4.5.1.bb             |    2 +-
>  11 files changed, 32 insertions(+), 9 deletions(-)
>  create mode 100644 meta/recipes-devtools/gcc/gcc-
> 4.5.1/COLLECT_GCC_OPTIONS.patch
>=20
> diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1.inc b/meta/recipes-
> devtools/gcc/gcc-4.5.1.inc
> index 6c600c1..3c4902e 100644
> --- a/meta/recipes-devtools/gcc/gcc-4.5.1.inc
> +++ b/meta/recipes-devtools/gcc/gcc-4.5.1.inc
> @@ -56,6 +56,7 @@ SRC_URI =3D "${GNU_MIRROR}/gcc/gcc-${PV}/gcc-
> ${PV}.tar.bz2 \
>  	   file://disable_relax_pic_calls_flag.patch \
>  	   file://gcc-poison-parameters.patch \
>  	   file://GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch \
> +	   file://COLLECT_GCC_OPTIONS.patch \
>  	  "
>=20
>  SRC_URI_append_sh3  =3D " file://sh3-installfix-fixheaders.patch;patch=
=3D1
> "
> diff --git a/meta/recipes-devtools/gcc/gcc-
> 4.5.1/COLLECT_GCC_OPTIONS.patch b/meta/recipes-devtools/gcc/gcc-
> 4.5.1/COLLECT_GCC_OPTIONS.patch
> new file mode 100644
> index 0000000..3e3dec7
> --- /dev/null
> +++ b/meta/recipes-devtools/gcc/gcc-4.5.1/COLLECT_GCC_OPTIONS.patch
> @@ -0,0 +1,22 @@
> +#This patck added --sysroot into COLLECT_GCC_OPTIONS which is used to
> +#invoke collect2.
> +
> +diff -ruN gcc-4.5.1.orig/gcc/gcc.c gcc-4.5.1/gcc/gcc.c
> +--- gcc-4.5.1.orig/gcc/gcc.c	2011-03-09 16:43:39.127752586 +0800
> ++++ gcc-4.5.1/gcc/gcc.c	2011-03-09 16:47:15.894929459 +0800
> +@@ -4667,6 +4667,15 @@
> + 		sizeof ("COLLECT_GCC_OPTIONS=3D") - 1);
> +
> +   first_time =3D TRUE;
> ++#ifdef HAVE_LD_SYSROOT
> ++  if (target_system_root_changed && target_system_root)
> ++    {
> ++      obstack_grow (&collect_obstack, "'--sysroot=3D", sizeof("'--
> sysroot=3D")-1);
> ++      obstack_grow (&collect_obstack,
> target_system_root,strlen(target_system_root));
> ++      obstack_grow (&collect_obstack, "'", 1);
> ++      first_time =3D FALSE;
> ++    }
> ++#endif
> +   for (i =3D 0; (int) i < n_switches; i++)
> +     {
> +       const char *const *args;
> diff --git a/meta/recipes-devtools/gcc/gcc-cross-canadian_4.5.1.bb
> b/meta/recipes-devtools/gcc/gcc-cross-canadian_4.5.1.bb
> index 3eea4bc..92708d4 100644
> --- a/meta/recipes-devtools/gcc/gcc-cross-canadian_4.5.1.bb
> +++ b/meta/recipes-devtools/gcc/gcc-cross-canadian_4.5.1.bb
> @@ -5,7 +5,7 @@ require gcc-cross-canadian.inc
>  require gcc-configure-sdk.inc
>  require gcc-package-sdk.inc
>=20
> -PR =3D "r3"
> +PR =3D "r4"
>=20
>  DEPENDS +=3D "gmp-nativesdk mpfr-nativesdk libmpc-nativesdk elfutils-
> nativesdk"
>  RDEPENDS_${PN} +=3D "mpfr-nativesdk libmpc-nativesdk elfutils-nativesdk"
> diff --git a/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
> b/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
> index 38e0964..081b7d6 100644
> --- a/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
> +++ b/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
> @@ -1,5 +1,5 @@
>  require gcc-cross_${PV}.bb
>  require gcc-cross-initial.inc
>=20
> -PR =3D "r3"
> +PR =3D "r4"
>=20
> diff --git a/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb
> b/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb
> index 9a30cb5..a8473b0 100644
> --- a/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb
> +++ b/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb
> @@ -1,4 +1,4 @@
>  require gcc-cross_${PV}.bb
>  require gcc-cross-intermediate.inc
> -PR =3D "r4"
> +PR =3D "r5"
>=20
> diff --git a/meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb
> b/meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb
> index 78bb05a..af6daf4 100644
> --- a/meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb
> +++ b/meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb
> @@ -1,4 +1,4 @@
> -PR =3D "r3"
> +PR =3D "r4"
>=20
>  require gcc-${PV}.inc
>  require gcc-cross4.inc
> diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
> b/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
> index fec53b9..9708248 100644
> --- a/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
> +++ b/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
> @@ -1,4 +1,4 @@
>  require gcc-cross-initial_${PV}.bb
>  require gcc-crosssdk-initial.inc
>=20
> -PR =3D "r3"
> +PR =3D "r4"
> diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk-
> intermediate_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-crosssdk-
> intermediate_4.5.1.bb
> index 161d870..d235969 100644
> --- a/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bb
> +++ b/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bb
> @@ -1,4 +1,4 @@
>  require gcc-cross-intermediate_${PV}.bb
>  require gcc-crosssdk-intermediate.inc
>=20
> -PR =3D "r3"
> +PR =3D "r4"
> diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb
> b/meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb
> index 7069088..bae2389 100644
> --- a/meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb
> +++ b/meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb
> @@ -1,4 +1,4 @@
>  require gcc-cross_${PV}.bb
>  require gcc-crosssdk.inc
>=20
> -PR =3D "r3"
> +PR =3D "r4"
> diff --git a/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
> b/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
> index 093f9bf..c1e680d 100644
> --- a/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
> +++ b/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
> @@ -1,4 +1,4 @@
> -PR =3D "r2"
> +PR =3D "r3"
>=20
>  require gcc-${PV}.inc
>  require gcc-configure-runtime.inc
> diff --git a/meta/recipes-devtools/gcc/gcc_4.5.1.bb b/meta/recipes-
> devtools/gcc/gcc_4.5.1.bb
> index 25e455c..a193b38 100644
> --- a/meta/recipes-devtools/gcc/gcc_4.5.1.bb
> +++ b/meta/recipes-devtools/gcc/gcc_4.5.1.bb
> @@ -1,4 +1,4 @@
> -PR =3D "r3"
> +PR =3D "r4"
>  require gcc-${PV}.inc
>  require gcc-configure-target.inc
>  require gcc-package-target.inc
> --
> 1.7.0.4
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

