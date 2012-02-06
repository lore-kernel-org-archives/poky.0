Return-Path: <shane.wang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF3BDE01366
	for <poky@pokylinux.org>; Mon,  6 Feb 2012 03:44:30 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 06 Feb 2012 03:44:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="106854455"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 06 Feb 2012 03:44:29 -0800
Received: from pgsmsx151.gar.corp.intel.com (172.30.236.41) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 6 Feb 2012 19:44:26 +0800
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	PGSMSX151.gar.corp.intel.com (172.30.236.41) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 6 Feb 2012 19:44:24 +0800
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.36]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.142]) with mapi id
	14.01.0355.002; Mon, 6 Feb 2012 19:44:23 +0800
From: "Wang, Shane" <shane.wang@intel.com>
To: "Wang, Shane" <shane.wang@intel.com>, "poky@pokylinux.org"
	<poky@pokylinux.org>, "paul.eggleton@linux.intel.com"
	<paul.eggleton@linux.intel.com>
Thread-Topic: [poky] [PATCH 1/1] meta-baryon: correct the SRC_URI for libgsm
Thread-Index: AQHM1O8euTkFCi6emkK/FS4SlT213ZYv3zaw
Date: Mon, 6 Feb 2012 11:44:22 +0000
Message-ID: <3AB6CE7F274E534CAFD089D127A8A1FC0FCEDE9D@SHSMSX102.ccr.corp.intel.com>
References: <cover.1326787792.git.shane.wang@intel.com>
	<8fd2d6d9d3a4e9f5cad863350824dd8970f825c9.1326787792.git.shane.wang@intel.com>
In-Reply-To: <8fd2d6d9d3a4e9f5cad863350824dd8970f825c9.1326787792.git.shane.wang@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: [PATCH 1/1] meta-baryon: correct the SRC_URI for libgsm
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
X-List-Received-Date: Mon, 06 Feb 2012 11:44:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Resend.

Richard, or Paul, can anyone of you help to check in the patch for meta-bar=
yon?

--
Shane

Shane Wang wrote on=A02012-01-17:

> This patch is to correct the SRC_URI for libgsm
>=20
> [YOCTO #1878] got fixed.
>=20
> Signed-off-by: Shane Wang <shane.wang@intel.com>
> ---
>  recipes-multimedia/libgsm/libgsm_1.0.12.bb |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> diff --git a/recipes-multimedia/libgsm/libgsm_1.0.12.bb
> b/recipes-multimedia/libgsm/libgsm_1.0.12.bb index 23a59f0..4ee8bd4
> 100644 --- a/recipes-multimedia/libgsm/libgsm_1.0.12.bb +++
> b/recipes-multimedia/libgsm/libgsm_1.0.12.bb @@ -9,7 +9,7 @@ PR =3D "r3"
>=20
>  # dvhart - bad URL, trying a new one - note: 1.0.13 exists
>  #SRC_URI =3D "http://user.cs.tu-berlin.de/~jutta/gsm/gsm-${PV}.tar.gz
> -SRC_URI =3D "
> http://www.imagemagick.org/download/delegates/ffmpeg/gsm-1.0.12.tar. gz
> \ +SRC_URI =3D "http://www.quut.com/gsm/gsm-${PV}.tar.gz \
>  	   file://01_makefile.patch \
>             file://02_cplusplus.patch \
>             file://03_config.patch \



