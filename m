Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C38C84C800B1
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 15:36:17 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 24 Feb 2011 13:36:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,220,1297065600"; d="scan'208";a="661208915"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 24 Feb 2011 13:36:17 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.226.128) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 24 Feb 2011 13:36:16 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx606.amr.corp.intel.com ([10.22.226.128]) with mapi;
	Thu, 24 Feb 2011 13:36:16 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Jingdong Lu <jingdong.lu@windriver.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Thu, 24 Feb 2011 13:36:15 -0800
Thread-Topic: [poky] [PATCH 1/2] libxml-parser-perl: remove FILES_${PN}
Thread-Index: AcvTPBkaoxaGKa2QTBidqy5ofA85WQBLpB0w
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE9431713238@orsmsx504.amr.corp.intel.com>
References: <cover.1298452018.git.jingdong.lu@windriver.com>
	<86d25ba89b074908f132d5e9cc7438e11e00ab7a.1298452018.git.jingdong.lu@windriver.com>
In-Reply-To: <86d25ba89b074908f132d5e9cc7438e11e00ab7a.1298452018.git.jingdong.lu@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] libxml-parser-perl: remove FILES_${PN}
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
X-List-Received-Date: Thu, 24 Feb 2011 21:36:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This commits is right, as the paths of the perl files have changed. Also th=
e commit won't work in incremental build unless the PR is bumped.

I suggest adding this line to the recipe file

PR =3D "r1"

Thanks,
Nitin


> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Jingdong Lu
> Sent: Wednesday, February 23, 2011 1:28 AM
> To: poky@yoctoproject.org
> Subject: [poky] [PATCH 1/2] libxml-parser-perl: remove FILES_${PN}
>=20
> From: Jingdong Lu <jingdong.lu@windriver.com>
>=20
> Because of the error path in FILES_${PN} we got nothing in libxml-
> parser-perl package.
> Romove "FILES_${PN}"
>=20
> Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
> ---
>  .../perl/libxml-parser-perl_2.36.bb                |    4 ----
>  1 files changed, 0 insertions(+), 4 deletions(-)
>=20
> diff --git a/meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb
> b/meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb
> index 5742879..2565f8b 100644
> --- a/meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb
> +++ b/meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb
> @@ -19,7 +19,3 @@ do_compile() {
>  	cpan_do_compile
>  }
>=20
> -
> -
> -FILES_${PN} =3D "${PERLLIBDIRS}/auto/XML/Parser/Expat/* \
> -                ${PERLLIBDIRS}/XML"
> --
> 1.7.0.4
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

