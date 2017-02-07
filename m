Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 397B4E0082E; Mon,  6 Feb 2017 17:12:52 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16061E007AD
	for <poky@yoctoproject.org>; Mon,  6 Feb 2017 17:12:48 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v171Cku3024773
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 6 Feb 2017 17:12:47 -0800 (PST)
Received: from pek-khao-d1 (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.294.0;
	Mon, 6 Feb 2017 17:12:46 -0800
Date: Tue, 7 Feb 2017 09:12:41 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20170207011241.GA19912@pek-khao-d1>
References: <20170206084152.223852-1-kexin.hao@windriver.com>
	<CAJTo0LYbhmK_Oi9Zy5M6=X6xfpY=Kk9=Sm1270R+t4RjgZbcgg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYbhmK_Oi9Zy5M6=X6xfpY=Kk9=Sm1270R+t4RjgZbcgg@mail.gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
X-Originating-IP: [147.11.105.121]
Cc: Poky Project <poky@yoctoproject.org>
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
X-List-Received-Date: Tue, 07 Feb 2017 01:12:52 -0000
X-Groupsio-MsgNum: 10796
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7JfCtLOvnd9MIVvH"
Content-Disposition: inline

--7JfCtLOvnd9MIVvH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 06, 2017 at 03:05:55PM +0000, Burton, Ross wrote:
>=20
> On 6 February 2017 at 08:41, Kevin Hao <kexin.hao@windriver.com> wrote:
>=20
>     Bump to the latest stable kernel for 4.1, 4.4, 4,8 and 4.9. Also set
>     the default kernel to 4.9.
>=20
>=20
> Bruce also sent a series to upgrade various kernels which has been merged=
, can
> you rebase please.

Sure.

Thanks,
Kevin

>=20
> Ross.

--7JfCtLOvnd9MIVvH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJYmR8JAAoJEJNY7TDerrFxOpcH/RsmaCBxceTkyCjllwlK+u0v
VtNd7KUxBMPErHGFQa9+NK7DazkNUU0r+jAJTv4DOVsZqMV45/uWNSrjwcMVdxx5
v9IzfphopzItUvQRnH8HWvLI+daMTYrUI6ZFAKMLxTgYVviWIH9+WAJ1kkJhmwQP
ntzAhd3ggwsVK9y4WlfEsGL/TnnVUGrRXDAyA8geS45p5TBCMwNbyFdZIKrP8UL9
kNVQKgqiWLJ9NUxgY5ewNFqQUdVGCwYJItM8+2ngRLQSQQpzLvBGneZV+WySIzF+
xor+Hyv4jiFiGNlOEXIX/916PNd0Ki/r921gHSd7DFgEArDFp0O8gNSOaoUb1wg=
=kHYR
-----END PGP SIGNATURE-----

--7JfCtLOvnd9MIVvH--
