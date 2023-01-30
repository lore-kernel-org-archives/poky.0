Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web10.45306.1675095007794846005
 for <poky@lists.yoctoproject.org>;
 Mon, 30 Jan 2023 08:10:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=gL7aAQ6K;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1675095009;
  x=1706631009;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=TBx4+mKfUasQKK6aRFrxLKCQ7epqRJWzL5+WFKGBamo=;
  b=gL7aAQ6KuHxUN1kXol/LgjyCJvxsTA0q9fRoBY6Lels1x2pW7DlS+3qN
   dv5OfTEFDmfg6PxXqlhyWmTrbBFoWhOuFignX77wgEmAlg3ZrEIVd5wTI
   nQeAW8tz3g9FtgXLfLCaUxj6VdKCzEcxWA8YxM7ippbIE8f82BcZS7mmA
   vgjCgCgmlj/oaValUmj+TGppHl/CmZakxbG7IRT+mT6C2wm/y6z5XK8sW
   rTi0qb2otA3eJlo34Vbc/mq1xi1cmtn/l1HB2i55nPZPH6ADF3P0cirYQ
   ziOMzbj9McR5cIGYIIkVbz9drujnhVyNhAOUJ0D84Lye2RRT6/1mjqWMb
   w==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCHv2] poky.conf: Switch to post release name/version
Thread-Topic: [poky] [PATCHv2] poky.conf: Switch to post release name/version
Thread-Index: AQHZJaEnRyEcoLriiEeqx1sO3th+4q63PzAw
Date: Mon, 30 Jan 2023 16:10:05 +0000
Message-ID: <d2743f8c36a94f5494e4014612694751@axis.com>
References: <173937E51F61413F.23170@lists.yoctoproject.org>
In-Reply-To: <173937E51F61413F.23170@lists.yoctoproject.org>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

*ping*

//Peter

> -----Original Message-----
> From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Behalf=
 Of Peter Kjellerstedt
> Sent: den 11 januari 2023 10:43
> To: poky@lists.yoctoproject.org
> Subject: [poky] [PATCHv2] poky.conf: Switch to post release name/version
>=20
> Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> ---
>=20
> PATCHv2: Base DISTRO_VERSION on 4.1 rather than 4.2.
>=20
>  meta-poky/conf/distro/poky.conf | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>=20
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky=
.conf
> index dc0e8e76ab..a86e2ead2f 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -1,8 +1,7 @@
>  DISTRO =3D "poky"
>  DISTRO_NAME =3D "Poky (Yocto Project Reference Distro)"
> -#DISTRO_VERSION =3D "4.1+snapshot-${METADATA_REVISION}"
> -DISTRO_VERSION =3D "4.1"
> -DISTRO_CODENAME =3D "langdale"
> +DISTRO_VERSION =3D "4.1+snapshot-${METADATA_REVISION}"
> +DISTRO_CODENAME =3D "mickledore"
>  SDK_VENDOR =3D "-pokysdk"
>  SDK_VERSION =3D "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METAD=
ATA_REVISION}', 'snapshot')}"
>  SDK_VERSION[vardepvalue] =3D "${SDK_VERSION}"
