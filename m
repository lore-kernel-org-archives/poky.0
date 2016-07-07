Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A21EBE00C5B; Thu,  7 Jul 2016 01:43:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79E9FE00C1D
	for <poky@yoctoproject.org>; Thu,  7 Jul 2016 01:42:58 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u678gqE9022461
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 7 Jul 2016 01:42:53 -0700 (PDT)
Received: from pek-khao-d1 (147.11.178.22) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.248.2;
	Thu, 7 Jul 2016 01:42:51 -0700
Date: Thu, 7 Jul 2016 16:42:47 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <20160707084247.GE23595@pek-khao-d1>
References: <alpine.LFD.2.20.1607040639330.6324@localhost.localdomain>
	<CAMKF1soWb4UKJ6_5MZrxyRgu0miuAFeDC=QZ6xDsPeNpPuM24A@mail.gmail.com>
	<alpine.LFD.2.20.1607050616200.21917@localhost.localdomain>
	<CAMKF1spr5ieFwHXJL_SnUNJDUk7hmQTDM1c5xxJ20A12pABikQ@mail.gmail.com>
	<alpine.LFD.2.20.1607051239420.6050@localhost.localdomain>
	<CAMKF1sqZXuZXPLC22RLSFsmBF8g5LkrtjGRZs+7xCM71LJxyWw@mail.gmail.com>
	<alpine.LFD.2.20.1607061423410.2536@localhost.localdomain>
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.20.1607061423410.2536@localhost.localdomain>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] meta-yocto: Delete PREFERRED_VERSION for obsolete version of U-Boot.
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 07 Jul 2016 08:43:01 -0000
X-Groupsio-MsgNum: 10522
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GxcwvYAGnODwn7V8"
Content-Disposition: inline

--GxcwvYAGnODwn7V8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 06, 2016 at 02:24:33PM -0400, Robert P. J. Day wrote:
> On Tue, 5 Jul 2016, Khem Raj wrote:
>=20
> > it should but I am not sure if we test bootloader, so it just gets
> > ignored.
>=20
>   i guess we just found out if the newer version of u-boot works on
> the mpc8315e-rdb ... the answer would seem to be, no.

We haven't updated the bootloader for the mpc8315erdb boards in our test fa=
rm
for a long time. So yes, the latest u-boot may be broken on this board. If =
so,
please file a bug. I will fix it.

Thanks,
Kevin

--GxcwvYAGnODwn7V8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXfhYHAAoJEJNY7TDerrFxs9gH/iwR7O/AqXXFDwLyresuFNKg
gdLJZ2gWq7xzpNuYaqcVpvae/Ou7teqknWQCY5D478ViqZvOvgDuey/HotnZmv/q
YkfJB4pMLxnfNYwm1uhYvYe2oa/uO3fV73KvN+Xi/EuFLfWhSbNDnbGAo4PnZhDU
Po9JmFTYwAyojnL7d8PtJv2qIlazKJUBeCyjD9v2h+61C31TN8R+L2riIuEt0b2j
hTRKFlLF5Le6/eOeFfOCCatRuTpSxQ39lkfK1/YoZoiMniH/L49GPJMGsS1ttmH/
CFfmNgrRVhYhcFqHx2vawBF4ouESYZgdehZsYWx53Nso7aLGAcKKkDjl6/aELUw=
=2htj
-----END PGP SIGNATURE-----

--GxcwvYAGnODwn7V8--
