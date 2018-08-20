Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39D36E00BD0; Sun, 19 Aug 2018 22:58:08 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9315DE00BC4
	for <poky@yoctoproject.org>; Sun, 19 Aug 2018 22:58:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w7K5w5Qa011918
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 19 Aug 2018 22:58:05 -0700 (PDT)
Received: from pek-khao-d2 (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Sun, 19 Aug 2018 22:58:04 -0700
Date: Mon, 20 Aug 2018 13:56:04 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Tom Rini <trini@konsulko.com>
Message-ID: <20180820055604.GA10454@pek-khao-d2>
References: <20180814013126.191534-1-kexin.hao@windriver.com>
	<20180814013126.191534-5-kexin.hao@windriver.com>
	<20180816140902.GT30947@bill-the-cat>
MIME-Version: 1.0
In-Reply-To: <20180816140902.GT30947@bill-the-cat>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Originating-IP: [147.11.105.121]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/6] wic: bootimg-partition: Add support to create the u-boot boot config file
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
X-List-Received-Date: Mon, 20 Aug 2018 05:58:08 -0000
X-Groupsio-MsgNum: 11369
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="8t9RHnE3ZwKMSgU+"
Content-Disposition: inline

--8t9RHnE3ZwKMSgU+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 16, 2018 at 10:09:02AM -0400, Tom Rini wrote:
> On Tue, Aug 14, 2018 at 09:31:24AM +0800, Kevin Hao wrote:
>=20
> > By leveraging the distro boot command feature in the u-boot, we can
> > compose the corresponding extlinux.conf when creating the wic image,
> > and let u-boot boot the kernel automatically. For more detail about
> > the u-boot distro boot command feature, please see doc/README.distro
> > in u-boot source files.
> >=20
> > Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
>=20
> It doesn't look like this has the ability to provide an external
> extlinux.conf file like is done for other loaders, but should.

Yes. I noticed the custom conf support in other loaders. But I chose to keep
the first version patch as simple as possible. I would make an addon patch =
to
add that function.

>=20
> [snip]
> > +        # The kernel types supported by the sysboot of u-boot
> > +        kernel_types =3D ["uImage", "zImage", "Image", "vmlinux", "fit=
Image"]
>=20
> This order isn't the best order.

In the current code, only one of these kernel images can be added in the
'IMAGE_BOOT_FILES'. If it find multi kernel images, it just throw an error =
and
exit. So the order really doesn't matter at all.

>  We should look for zImage (stock arm32
> image), Image (stock arm64 image), fitImage (preferred container in
> U-Boot) then uImage (legacy container in U-Boot).

OK, I will adjust the order as your suggested and select the preferred
kernel image if multi kernel images are found.


>  While I'm sure just
> vmlinux can work in some cases, I don't think it's appropriate here.

One of the board supported by meta-yocto-bsp (edgerouter) does use the vmli=
nux image.
So I would keep it.

Thanks,
Kevin

>=20
> --=20
> Tom



--8t9RHnE3ZwKMSgU+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEHc6qFoLCZqgJD98Zk1jtMN6usXEFAlt6V/QACgkQk1jtMN6u
sXECDQgAwC1ZaOxKpGTftBhNI841CU7SWnGiORUUQ7J1u75hC2P9P3JJzDBB5yTV
9WYrdOb6rw7kVexbM8Tmxw71yJkhsoQ/v4hxzoUwQRGwyKjmFdtq+sAIMHBe0DNp
M5/JHG6HRYn6YyqBPXDKvbQleDmFODILYxzwj7c8YtseNH7yVFcaz2W7z4mf7MC4
m4fZHNVUcFfpijRtoJZ6nE1kkD4L+Jk3wPLQrAVi++3TV6hmuBO5rHAXrWDtYMFg
dV5PCRyS9ZQHoiXBHJlB7UAvnxdutF6Ss0CISk3ocNb84w8xAg7aI/1J3Q3ZM3l5
F3scFK293Eug6EYAPdYoCv/ndj45uA==
=Tde1
-----END PGP SIGNATURE-----

--8t9RHnE3ZwKMSgU+--
