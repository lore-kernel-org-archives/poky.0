Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0008CE00BD0; Sun, 19 Aug 2018 23:01:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90D11E00BC4
	for <poky@yoctoproject.org>; Sun, 19 Aug 2018 23:01:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w7K6118Q001948
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 19 Aug 2018 23:01:01 -0700
Received: from pek-khao-d2 (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Sun, 19 Aug 2018 23:01:00 -0700
Date: Mon, 20 Aug 2018 13:58:59 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Tom Rini <trini@konsulko.com>
Message-ID: <20180820055859.GB10454@pek-khao-d2>
References: <20180814013126.191534-1-kexin.hao@windriver.com>
	<20180814013126.191534-7-kexin.hao@windriver.com>
	<20180816141108.GU30947@bill-the-cat>
MIME-Version: 1.0
In-Reply-To: <20180816141108.GU30947@bill-the-cat>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Originating-IP: [147.11.105.121]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 6/6] meta-yocto-bsp: beaglebone: Use the uuid for the block device naming in wic image
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
X-List-Received-Date: Mon, 20 Aug 2018 06:01:03 -0000
X-Groupsio-MsgNum: 11370
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yNb1oOkm5a9FJOVX"
Content-Disposition: inline

--yNb1oOkm5a9FJOVX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 16, 2018 at 10:11:08AM -0400, Tom Rini wrote:
> On Tue, Aug 14, 2018 at 09:31:26AM +0800, Kevin Hao wrote:
> > Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> > ---
> >  meta-yocto-bsp/wic/beaglebone-yocto.wks | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/meta-yocto-bsp/wic/beaglebone-yocto.wks b/meta-yocto-bsp/w=
ic/beaglebone-yocto.wks
> > index 0b5d793b73ec..b75f238df937 100644
> > --- a/meta-yocto-bsp/wic/beaglebone-yocto.wks
> > +++ b/meta-yocto-bsp/wic/beaglebone-yocto.wks
> > @@ -2,5 +2,5 @@
> >  # long-description: Creates a partitioned SD card image for Beaglebone.
> >  # Boot files are located in the first vfat partition.
> > =20
> > -part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=3Dvfat=
 --label boot --active --align 4 --size 16 --sourceparams=3D"loader=3Du-boo=
t"
> > -part / --source rootfs --ondisk mmcblk --fstype=3Dext4 --label root --=
align 4
> > +part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=3Dvfat=
 --label boot --active --align 4 --size 16 --sourceparams=3D"loader=3Du-boo=
t" --use-uuid
> > +part / --source rootfs --ondisk mmcblk --fstype=3Dext4 --label root --=
align 4 --use-uuid
>=20
> You should drop the --ondisk part here entirely so that UUID is used.

The '--use-uuid' does take effect even there is a '--ondisk' parameter.
Yes, it seems a bit confusion. I will make a patch to drop the '--ondisk'
parameter.

Thanks,
Kevin

>=20
> --=20
> Tom

--yNb1oOkm5a9FJOVX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEHc6qFoLCZqgJD98Zk1jtMN6usXEFAlt6WKMACgkQk1jtMN6u
sXHo3AgAoVItjtj9W2SMIw/hExa3zXjf5uY3k/iqBDRwr7Hdw/F2Fa7HC6FGvQyp
A+q/J5JsraJ54ubYUY0ZABZ2CPJSArjzH/+ohgJtP6BfPmBljrFYY9F4C7VeQAai
tK1hfYnqDfiRX+o3RZ1UXOtQRBbeoja6Jqd4q21tOhnRRRdZXvBBh8A/Pg3SuoQL
xKA8XORTcEkwmv8MCnCqEsqNUbxQcE8gx5SLMdXjN8S4fM7FdOfh03jXe0nX7mUY
OHDNcfEVeIQkr92AWcos6qQjeVecRSb40bmVkX597gPhyOcTpveYGZvsoQQESmSL
k2LGfuAMobV+5HzaCRgwksDxGrC2wA==
=wDZK
-----END PGP SIGNATURE-----

--yNb1oOkm5a9FJOVX--
