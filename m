Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 869EBE00C3D; Sun, 17 Sep 2017 04:46:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1596BE00B83
	for <poky@yoctoproject.org>; Sun, 17 Sep 2017 04:46:14 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v8HBkCTd004147
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 17 Sep 2017 04:46:12 -0700 (PDT)
Received: from pek-khao-d1 (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Sun, 17 Sep 2017 04:46:10 -0700
Date: Sun, 17 Sep 2017 19:48:05 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20170917114805.GA20219@pek-khao-d1>
References: <20170917062737.4658-1-kexin.hao@windriver.com>
	<1505646165.18640.110.camel@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <1505646165.18640.110.camel@linuxfoundation.org>
User-Agent: Mutt/1.8.0 (2017-02-23)
X-Originating-IP: [147.11.105.121]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] meta-yocto-bsp: bump to the latest linux stable kernel for the non-x86 BSPs
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
X-List-Received-Date: Sun, 17 Sep 2017 11:46:15 -0000
X-Groupsio-MsgNum: 11012
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="u3/rZRmxL6MmkK24"
Content-Disposition: inline

--u3/rZRmxL6MmkK24
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 17, 2017 at 12:02:45PM +0100, Richard Purdie wrote:
> On Sun, 2017-09-17 at 14:27 +0800, Kevin Hao wrote:
> > Bump to the latest stable kernel for 4.4, 4.9, 4.10 and 4.12.
> >=20
> > Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> > ---
> > =A0.../recipes-kernel/linux/linux-yocto_4.10.bbappend=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0|=A0=A06
> > +++---
> > =A0.../recipes-kernel/linux/linux-yocto_4.12.bbappend=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0| 12
> > ++++++------
> > =A0meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 12
> > ++++++------
> > =A0meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend | 12
> > ++++++------
> > =A04 files changed, 21 insertions(+), 21 deletions(-)
> >=20
> > diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-
> > yocto_4.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-
> > yocto_4.10.bbappend
>=20
> Alejandro pointed you at the patches to base this off so it would
> apply. I've rebased it myself...

Sorry, I just picked up the last patch from Alejandro's branch. I didn't re=
alize
there were three other patches. :-(

Thanks,
Kevin

>=20
> Cheers,
>=20
> Richard

--u3/rZRmxL6MmkK24
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJZvmD1AAoJEJNY7TDerrFxxd4H/RhrxPdg6KSJpamHSybRFky3
a+74HV8C0gEfdAGaLwINXFsiggkPyBLDzD29NN78l4LbfUtcVLkc0iRATq9HsyoP
Yez95G2XoBQ8gZ9Ztwa31B9x5onb3fRcALcP5MdQ6wxPM4yqo3CrwxdHNaoWX2M5
7cs2wnkQmHGWvbExITfRWAew3rOGWWNSQysrtllg9/4HQeUTDKCnMsWYTaUs3FHa
pxSU2uuxS1QkTWRuVMQ+/SHpW5H+dAf0WgOqWJUXjsANPlsUpQDlAH0fRWYCgK2E
cgUCmH0wXcslY31FzdgOzGhqdJIrXAp/MHc8OrIdhHXDVEcGMSx9aJ81+ZpkUiM=
=lmGt
-----END PGP SIGNATURE-----

--u3/rZRmxL6MmkK24--
