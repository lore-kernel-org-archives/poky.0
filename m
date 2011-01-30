Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 05CBC4C80594
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 02:16:52 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Jan 2011 00:16:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,400,1291622400"; d="scan'208";a="597756755"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 30 Jan 2011 00:16:26 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sun, 30 Jan 2011 16:12:10 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Sun, 30 Jan 2011 16:11:54 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Jingdong Lu <jingdong.lu@windriver.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Sun, 30 Jan 2011 16:11:52 +0800
Thread-Topic: [poky] [PATCH 1/5] gcc: Add "--enable-clocale=gnu" option
	explicitly
Thread-Index: AcvAUKugnYWmMjPjTKS/2VfMacGkeAABJ0rQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504E6294E15B@shsmsx502.ccr.corp.intel.com>
References: <cover.1296372804.git.jingdong.lu@windriver.com>
	<c37a7d01caf39c6a67574be39932dbe54ce6581c.1296372804.git.jingdong.lu@windriver.com>
In-Reply-To: <c37a7d01caf39c6a67574be39932dbe54ce6581c.1296372804.git.jingdong.lu@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PATCH 1/5] gcc: Add "--enable-clocale=gnu" option explicitly
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
X-List-Received-Date: Sun, 30 Jan 2011 08:16:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Jingdong Lu
> Sent: Sunday, January 30, 2011 3:36 PM
>=20
> From: Jingdong Lu <jingdong.lu@windriver.com>
>=20
> Add "--enable-clocale=3Dgun" option for gcc configuration explicitly in o=
rder to
> make sure C++ library can use correct locale module.
>=20
> Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
> ---
>  meta/recipes-devtools/gcc/gcc-configure-common.inc |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
>=20
> diff --git a/meta/recipes-devtools/gcc/gcc-configure-common.inc
> b/meta/recipes-devtools/gcc/gcc-configure-common.inc
> index 4393777..b212fdc 100644
> --- a/meta/recipes-devtools/gcc/gcc-configure-common.inc
> +++ b/meta/recipes-devtools/gcc/gcc-configure-common.inc
> @@ -27,7 +27,7 @@ EXTRA_OECONF_INTERMEDIATE ?=3D ""
>=20
>  GCCMULTILIB =3D "--disable-multilib"
>=20
> -EXTRA_OECONF =3D "${@['--enable-clocale=3Dgeneric',
> ''][bb.data.getVar('USE_NLS', d, 1) !=3D 'no']} \
> +EXTRA_OECONF =3D "${@['--enable-clocale=3Dgeneric', '
> --enable-clocale=3Dgnu'][bb.data.getVar('USE_NLS', d, 1) !=3D 'no']} \
>                  --with-gnu-ld \
>                  --enable-shared \
>                  --enable-languages=3D${LANGUAGES} \
> --
> 1.7.0.4
>=20

PR bump is expected for all gcc recipes affected by this change.

Thanks
Kevin

