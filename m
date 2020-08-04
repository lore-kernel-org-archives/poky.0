Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.8056.1596555817500813476
 for <poky@lists.yoctoproject.org>;
 Tue, 04 Aug 2020 08:43:38 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: berg-solutions.de, ip: 140.211.169.56, mailfrom: rberg@berg-solutions.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 196CDE01F8C; Tue,  4 Aug 2020 08:43:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [80.237.132.155 listed in list.dnswl.org]
Received: from wp148.webpack.hosteurope.de (wp148.webpack.hosteurope.de [80.237.132.155])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ABFDE01F8A
	for <poky@yoctoproject.org>; Tue,  4 Aug 2020 08:43:35 -0700 (PDT)
Received: from ip1f126570.dynamic.kabel-deutschland.de ([31.18.101.112] helo=roelofs-mbp.fritz.box); authenticated
	by wp148.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1k2z6D-0002FV-U8; Tue, 04 Aug 2020 17:43:33 +0200
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
Subject: Re: [poky] do_image_wic failed with exit code '1', Codepage 850
From: "Roelof" <rberg@berg-solutions.de>
In-Reply-To: <0c992b288b0940732659c3726ca22aaf8d905baf.camel@linuxfoundation.org>
Date: Tue, 4 Aug 2020 17:43:33 +0200
Cc: poky@yoctoproject.org
Message-Id: <FCD0CF34-5A68-4845-A531-96EE394855ED@berg-solutions.de>
References: <4C5E3FDA-E32C-40CB-81CC-D647E53DB9D7@berg-solutions.de>
 <14e9e6f37e9bc9478772f3d67ebb50642eb83625.camel@linuxfoundation.org>
 <82D0D9E4-D18E-4AB5-BC6F-3EEBB391DD69@berg-solutions.de>
 <0c992b288b0940732659c3726ca22aaf8d905baf.camel@linuxfoundation.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.3608.120.23.2.1)
X-bounce-key: webpack.hosteurope.de;rberg@berg-solutions.de;1596555815;a5aabfa4;
X-HE-SMSGID: 1k2z6D-0002FV-U8
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Richard,

thank you so much for sharing your expertise. This indeed solved our =
issue.

Cheers,
Roelof

> Am 16.07.2020 um 10:09 schrieb Richard Purdie =
<richard.purdie@linuxfoundation.org>:
>=20
> On Thu, 2020-07-16 at 09:32 +0200, Roelof Berg wrote:
>> Thanks so much.
>>=20
>> DISTRO_VERSION =3D "2.7.4"
>> DISTRO_CODENAME =3D =E2=80=9Ewarrior
>>=20
>> The same image runs on: Ubuntu 18.1
>> Does not run on: opensuse/leap:15.1
>>=20
>> Docker images, the Ubuntu is compatible, the SUSE not yet.=20
>=20
> Does docker have /usr/lib/gconv/IBM850.so (or similar)? It think on
> suse its from glibc-locale-base or glibc-locale so I'd check that is
> installed and the codepage file is present (it comes from glibc).
>=20
> I can't tell if you're using uninative or not, I think that codepage
> should be in the version in 2.7.4 though if you were.
>=20
> Cheers,
>=20
> Richard
>=20
>=20
>=20
>=20
>=20
>=20

