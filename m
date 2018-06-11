Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2CEDE02061; Mon, 11 Jun 2018 03:22:03 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A220E0204D
	for <poky@yoctoproject.org>; Mon, 11 Jun 2018 03:22:03 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w5BAM23T020195
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 11 Jun 2018 03:22:02 -0700 (PDT)
Received: from pek-khao-d2 (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Mon, 11 Jun 2018 03:22:01 -0700
Date: Mon, 11 Jun 2018 18:21:01 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20180611102101.GC29182@pek-khao-d2>
References: <20180610070626.84093-1-kexin.hao@windriver.com>
	<ff42bd76317a54117d93f5375007c1019eb2bd8b.camel@linuxfoundation.org>
	<de4969f9ba3f5bfa7d15b367ce88949587b5481f.camel@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <de4969f9ba3f5bfa7d15b367ce88949587b5481f.camel@linuxfoundation.org>
User-Agent: Mutt/1.9.2 (2017-12-15)
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
X-List-Received-Date: Mon, 11 Jun 2018 10:22:04 -0000
X-Groupsio-MsgNum: 11287
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="YD3LsXFS42OYHhNZ"
Content-Disposition: inline

--YD3LsXFS42OYHhNZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 11, 2018 at 08:35:17AM +0100, Richard Purdie wrote:
> On Mon, 2018-06-11 at 08:08 +0100, Richard Purdie wrote:
> > On Sun, 2018-06-10 at 15:06 +0800, Kevin Hao wrote:
> > > Bump to the latest stable kernel for 4.12, 4.14 and 4.15.
> > >=20
> > > Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> >=20
> > Thanks for this. This addresses some of the failures we saw but not
> > for
> > edgerouter:
> >=20
> > https://autobuilder.yocto.io/builders/nightly-mips-lsb/builds/1046/st
> > eps/BuildImages_1/logs/stdio
> > https://autobuilder.yocto.io/builders/nightly-mips/builds/1050/steps/
> > BuildImages_1/logs/stdio
> >=20
> > Any idea why that is contiuing to fail on 4.14 and 4.15? Were the
> > patches for gcc8 not merged into that branch?
>=20
> Perhaps we need https://git.kernel.org/pub/scm/linux/kernel/git/torvald
> s/linux.git/commit/?id=3D2479bfc9bc600dcce7f932d52dcfa8d677c41f93
> converted for mips?

No. The CFLAGS which is set to workaround the gcc 8 warning has been overri=
de
when some kernel options are enabled. I composed a patch [1] to fix this.

[1] https://lists.yoctoproject.org/pipermail/linux-yocto/2018-June/007140.h=
tml

Thanks,
Kevin

>=20
> Also https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> /commit/?id=3D415520373975d2eba565c256d2cad875ed4e9243
>=20
> This looks like the upstream version of Khem's ppc fix.
>=20
> Cheers,
>=20
> Richard

--YD3LsXFS42OYHhNZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEHc6qFoLCZqgJD98Zk1jtMN6usXEFAlseTQ0ACgkQk1jtMN6u
sXE9mwf8DVTn83wwvrrl9iqmpdWVpHJRBnIPint2N1OvTaq+fXIXI3tD4ojXXanS
0unsfwJ8ke5d9CRUs7c80L7X3/taXA8b+XWlBbW6ZplCjOmSRTZhEO30CEjFHw9k
deLBLWr/C1pdzypLlKRv5J8WqO/EoSvA2FpZHv/v+P4rtUEVHWRVsV0QldVaYIWP
F9EotTiyFBu3x5q90KnqQoq0bYsaHw7tVD89clH+mqVm9K7UqrnjUIjzpjwP7Kou
8n1wZk+UvXeDQEE5Bfxde0jayxShKp7jWP4KEcPvURHtLCyDUjYUYYAomhWqjN3z
iEhzhQi631TNCDSAkIqK+dp8f1NtqA==
=l2Lh
-----END PGP SIGNATURE-----

--YD3LsXFS42OYHhNZ--
