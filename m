Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A128BE00CBA; Mon,  9 May 2016 20:33:21 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4570BE00CB4
	for <poky@yoctoproject.org>; Mon,  9 May 2016 20:33:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u4A3XF1L021019
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 9 May 2016 20:33:16 -0700 (PDT)
Received: from pek-khao-d1.corp.ad.wrs.com (147.11.178.22) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Mon, 9 May 2016 20:33:14 -0700
Date: Tue, 10 May 2016 11:33:11 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Ruslan Babayev <ruslan@babayev.com>
Message-ID: <20160510033311.GA5960@pek-khao-d1.corp.ad.wrs.com>
References: <877ff73zh2.fsf@babayev.com>
	<20160508130617.GA14034@pek-khao-d1.corp.ad.wrs.com>
	<87zis0ifrw.fsf@babayev.com>
	<20160509123822.GA13739@pek-khao-d1.corp.ad.wrs.com>
	<87eg9bdqju.fsf@babayev.com>
MIME-Version: 1.0
In-Reply-To: <87eg9bdqju.fsf@babayev.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] edgerouter: fix machine tune
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
X-List-Received-Date: Tue, 10 May 2016 03:33:21 -0000
X-Groupsio-MsgNum: 10417
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="UlVJffcvxoiEqYs2"
Content-Disposition: inline

--UlVJffcvxoiEqYs2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 09, 2016 at 11:39:17AM -0700, Ruslan Babayev wrote:
>=20
> Kevin Hao writes:
>=20
> >>=20
> >> Without this change OpenSSH (ssh-keygen) dies with SIGILL at
> >> runtime.=20
> >
> > The ssh-keygen works pretty well for me. Could you show the steps to
> > reproduce this issue?
> >
>=20
> Sorry, I should have mentioned I have seen the crash with TCLIBC =3D
> "musl" only. Not sure what's going on. Perhaps glibc by default falls
> back to soft-float at run-time.

Since the kernel has FPU emulation, we should not run into this crash even =
if
musl use the hard float instructions. That is also why the edgerouter BSP
can works previously. It seems a bug in musl.

>=20
> With "musl" I also saw a mips related compilation failure in libffi which=
 I
> have fixed.
>=20
> Just to verify I have rebuilt core-image-minimal with glibc and I ssh-key=
gen
> works. Regarding core-image-sato, is it even officially supported for
> edgerouter? The release notes [1] only mention core-image-minimal.

We don't have an officially image type supported list for each BSP.
The core-image-minimal is only referred as an example in release note, but
that doesn't mean we only support this image type. A patch should not break
the build of an image type which is buildable currently at least.

Thanks,
Kevin

>=20
>=20
> Regards,
> Ruslan
>=20
> [1] https://www.yoctoproject.org/downloads/bsps/krogoth21/edgerouter

--UlVJffcvxoiEqYs2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXMVZvAAoJEJNY7TDerrFxQ8gH/1HGKM9VgmbrViREGXJwhthX
JWDBfLMcmvW0YSsP2woom+hUnZQJNu+SWKIsAmlJyQyEkxujnXdxDEei/G0D2uGs
IruRtTaz9X3I3RhJacfqQSog8xnspHQqpI4TSF1gEgstiqZfsLRJEexME4/2mwIN
MC1LEikW94FFmbQgF8ufJ1XudI6jWIJ/XOPGIfOxDXZwi+mR8dsUvphLswIPjkxL
WZIOb8IqauV52XMw2Fri52gthTsG6ZoU3oGdLaBIuc3z4sCFFVk7dptSWNysFBfz
7GgvGravQizwCUkbiYK5AbnjB8HEvUV4N2ZpQicGywiY6Mbe8i6hMHqU6lxDGUw=
=ZwNB
-----END PGP SIGNATURE-----

--UlVJffcvxoiEqYs2--
