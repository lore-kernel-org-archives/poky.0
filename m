Received: from esa6.hc324-48.eu.iphmx.com (esa6.hc324-48.eu.iphmx.com [207.54.71.69])
 by mx.groups.io with SMTP id smtpd.web12.9759.1604039314122266848
 for <poky@lists.yoctoproject.org>;
 Thu, 29 Oct 2020 23:28:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=TDu0aife;
 spf=pass (domain: bmw.de, ip: 207.54.71.69, mailfrom: prvs=5650f68ae=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1604039314; x=1635575314;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=UXb5LXU5jBd5MUBt1GIYfC/kX81+pfWkbrF2HKBE0Rk=;
  b=TDu0aifeS7wX+dSLQ1ylMGa7Sw1gEnAXctLDRm2SbB8e3nJDZ/+a13nm
   aLOkJrFPjSGeYNHksCFu4KtVS58nC76aJs0ykTflzD+0rtqMut2ydA1Qj
   9A6gohB+S3A7Q4qTiZL4Ym+VGwBqbScbFzNb8SowPie9zm7mZLdg7UFf/
   U=;
Received: from esagw3.bmwgroup.com (HELO esagw3.muc) ([160.46.252.35]) by
 esa6.hc324-48.eu.iphmx.com with ESMTP/TLS; 30 Oct 2020 07:28:32 +0100
Received: from esabb5.muc ([160.50.100.47])  by esagw3.muc with ESMTP/TLS;
 30 Oct 2020 07:28:31 +0100
Received: from smucm10j.bmwgroup.net (HELO smucm10j.europe.bmw.corp) ([160.48.96.46])
 by esabb5.muc with ESMTP/TLS; 30 Oct 2020 07:28:31 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10j.europe.bmw.corp
 (160.48.96.46) with Microsoft SMTP Server (TLS;
 Fri, 30 Oct 2020 07:28:31 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1497.007; Fri,
 30 Oct 2020 07:28:31 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <raj.khem@gmail.com>
CC: <alejandro@enedino.org>, <poky@lists.yoctoproject.org>,
	<alhe@linux.microsoft.com>
Subject: Re: [poky] [PATCH] poky-tiny: Enable size optimization by default
Thread-Topic: [poky] [PATCH] poky-tiny: Enable size optimization by default
Thread-Index: AQHWrhqELp9Ei0gh+0WW6puMY8egi6mvg9cAgAAa9AA=
Date: Fri, 30 Oct 2020 06:28:31 +0000
Message-ID: <20201030062830.GE1246345@korppu>
References: <20201029173930.784694-1-alhe@linux.microsoft.com>
 <CAMKF1sp0ueNXuvksM9EgKbZc1wfTg4Q8Sv8p6_tPuTtRVahEsA@mail.gmail.com>
In-Reply-To: <CAMKF1sp0ueNXuvksM9EgKbZc1wfTg4Q8Sv8p6_tPuTtRVahEsA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <D2EF15091688A1499C9965C4A907B9A0@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 29, 2020 at 09:52:02PM -0700, Khem Raj wrote:
> On Thu, Oct 29, 2020 at 10:39 AM Alejandro Hernandez Samaniego
> <alejandro@enedino.org> wrote:
> >
> > Compiler size optimization reduces the size of the root
> > filesystem by 15%, since poky-tiny is meant to be used
> > on size constrained devices, enable it by default
> >
> > Signed-off-by: Alejandro Enedino Hernandez Samaniego <alhe@linux.micros=
oft.com>
> > ---
> >  meta-poky/conf/distro/poky-tiny.conf | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/dist=
ro/poky-tiny.conf
> > index 57826037f0..9a043b1ef5 100644
> > --- a/meta-poky/conf/distro/poky-tiny.conf
> > +++ b/meta-poky/conf/distro/poky-tiny.conf
> > @@ -32,6 +32,9 @@ require conf/distro/poky.conf
> >  DISTRO =3D "poky-tiny"
> >  DISTROOVERRIDES =3D "poky:poky-tiny"
> >  TCLIBC =3D "musl"
> > +
> > +FULL_OPTIMIZATION=3D"-Os -pipe ${DEBUG_FLAGS}"
> > +
>=20
> this looks good. Thanks for doing this.

Agreed! Unfortunately many, many recipes do add O2 or even O3 in
their own build scripts so the effect of this global Os setting
is not as good as it could be.

When I played with size optimization, I build the system first with
normal O2, then with Os and reviewed every single recipe where binary
package sizes did not change according to buildhistory.

Cheers,

-Mikko=
