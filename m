Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDAC1E00B87; Thu,  8 Jun 2017 18:25:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A9C6E00B57
	for <poky@yoctoproject.org>; Thu,  8 Jun 2017 18:25:46 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v591Pj1C002442
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <poky@yoctoproject.org>; Thu, 8 Jun 2017 18:25:46 -0700
Received: from pek-khao-d1 (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.294.0;
	Thu, 8 Jun 2017 18:25:45 -0700
Date: Fri, 9 Jun 2017 09:25:40 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Message-ID: <20170609012540.GB21118@pek-khao-d1>
References: <20170522054928.12481-1-kexin.hao@windriver.com>
MIME-Version: 1.0
In-Reply-To: <20170522054928.12481-1-kexin.hao@windriver.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
X-Originating-IP: [147.11.105.121]
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
X-List-Received-Date: Fri, 09 Jun 2017 01:25:50 -0000
X-Groupsio-MsgNum: 10915
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/NkBOFFp2J2Af1nK"
Content-Disposition: inline

--/NkBOFFp2J2Af1nK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 22, 2017 at 01:49:28PM +0800, Kevin Hao wrote:
> Bump to the latest stable kernel for 4.1, 4.4, 4,9 and 4.10.

Ping.

Thanks,
Kevin

>=20
> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> ---
>  meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 12 ++++++=
------
>  .../recipes-kernel/linux/linux-yocto_4.10.bbappend           | 12 ++++++=
------
>  meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 12 ++++++=
------
>  meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend | 12 ++++++=
------
>  4 files changed, 24 insertions(+), 24 deletions(-)
>=20
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend=
 b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
> index c754933c7dab..5979f8a720d7 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
> @@ -9,9 +9,9 @@ KMACHINE_genericx86-64 ?=3D "common-pc-64"
> =20
>  SRCREV_machine_genericx86    ?=3D "2ce56d130ddff67f43ec857cc51cd347666a0=
078"
>  SRCREV_machine_genericx86-64 ?=3D "2ce56d130ddff67f43ec857cc51cd347666a0=
078"
> -SRCREV_machine_edgerouter ?=3D "2ce56d130ddff67f43ec857cc51cd347666a0078"
> -SRCREV_machine_beaglebone ?=3D "235de25be3f143b91dcc69479b770722c508889e"
> -SRCREV_machine_mpc8315e-rdb ?=3D "2ce56d130ddff67f43ec857cc51cd347666a00=
78"
> +SRCREV_machine_edgerouter ?=3D "398d1785c6bde0085b99f00f346e199a15fbdcef"
> +SRCREV_machine_beaglebone ?=3D "79414e2b0e0b7f5b86e358a907f841486f428079"
> +SRCREV_machine_mpc8315e-rdb ?=3D "398d1785c6bde0085b99f00f346e199a15fbdc=
ef"
> =20
>  COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
>  COMPATIBLE_MACHINE_genericx86-64 =3D "genericx86-64"
> @@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb =3D "mpc8315e-rdb"
> =20
>  LINUX_VERSION_genericx86 =3D "4.1.38"
>  LINUX_VERSION_genericx86-64 =3D "4.1.38"
> -LINUX_VERSION_edgerouter =3D "4.1.38"
> -LINUX_VERSION_beaglebone =3D "4.1.38"
> -LINUX_VERSION_mpc8315e-rdb =3D "4.1.38"
> +LINUX_VERSION_edgerouter =3D "4.1.39"
> +LINUX_VERSION_beaglebone =3D "4.1.39"
> +LINUX_VERSION_mpc8315e-rdb =3D "4.1.39"
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappen=
d b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
> index 6430548c1153..e1d103190bc7 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
> @@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb =3D "standard/fsl-mpc8315e-rdb"
> =20
>  SRCREV_machine_genericx86    ?=3D "fe0fb8da3d633d802776081e7ff2df73ff298=
3f2"
>  SRCREV_machine_genericx86-64 ?=3D "fe0fb8da3d633d802776081e7ff2df73ff298=
3f2"
> -SRCREV_machine_edgerouter ?=3D "fe0fb8da3d633d802776081e7ff2df73ff2983f2"
> -SRCREV_machine_beaglebone ?=3D "fe0fb8da3d633d802776081e7ff2df73ff2983f2"
> -SRCREV_machine_mpc8315e-rdb ?=3D "4a84208c659563e7c2972a7a03793402766234=
7d"
> +SRCREV_machine_edgerouter ?=3D "d2c1ed3c0cbc0d8dcf429346f7ab2e96d470b504"
> +SRCREV_machine_beaglebone ?=3D "d2c1ed3c0cbc0d8dcf429346f7ab2e96d470b504"
> +SRCREV_machine_mpc8315e-rdb ?=3D "b768fff337e184ea6d714528b779f69b861d45=
92"
> =20
>  COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
>  COMPATIBLE_MACHINE_genericx86-64 =3D "genericx86-64"
> @@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb =3D "mpc8315e-rdb"
> =20
>  LINUX_VERSION_genericx86 =3D "4.10.9"
>  LINUX_VERSION_genericx86-64 =3D "4.10.9"
> -LINUX_VERSION_edgerouter =3D "4.10.9"
> -LINUX_VERSION_beaglebone =3D "4.10.9"
> -LINUX_VERSION_mpc8315e-rdb =3D "4.10.9"
> +LINUX_VERSION_edgerouter =3D "4.10.15"
> +LINUX_VERSION_beaglebone =3D "4.10.15"
> +LINUX_VERSION_mpc8315e-rdb =3D "4.10.15"
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend=
 b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
> index 8f9a8d4ed111..03dfe09bfa82 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
> @@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb =3D "standard/fsl-mpc8315e-rdb"
> =20
>  SRCREV_machine_genericx86    ?=3D "0298d3765a5c474ff5776284d49111276510d=
4b4"
>  SRCREV_machine_genericx86-64 ?=3D "0298d3765a5c474ff5776284d49111276510d=
4b4"
> -SRCREV_machine_edgerouter ?=3D "0298d3765a5c474ff5776284d49111276510d4b4"
> -SRCREV_machine_beaglebone ?=3D "0298d3765a5c474ff5776284d49111276510d4b4"
> -SRCREV_machine_mpc8315e-rdb ?=3D "90e5792370e0ae72b69a7006f0727dda4ba7e6=
29"
> +SRCREV_machine_edgerouter ?=3D "98b9340a7858f786f5ff7d50021ef83eaad0613d"
> +SRCREV_machine_beaglebone ?=3D "98b9340a7858f786f5ff7d50021ef83eaad0613d"
> +SRCREV_machine_mpc8315e-rdb ?=3D "2bf69589c6d2c1aa0db7efd735b43155a74395=
9a"
> =20
>  COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
>  COMPATIBLE_MACHINE_genericx86-64 =3D "genericx86-64"
> @@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb =3D "mpc8315e-rdb"
> =20
>  LINUX_VERSION_genericx86 =3D "4.4.60"
>  LINUX_VERSION_genericx86-64 =3D "4.4.60"
> -LINUX_VERSION_edgerouter =3D "4.4.60"
> -LINUX_VERSION_beaglebone =3D "4.4.60"
> -LINUX_VERSION_mpc8315e-rdb =3D "4.4.60"
> +LINUX_VERSION_edgerouter =3D "4.4.67"
> +LINUX_VERSION_beaglebone =3D "4.4.67"
> +LINUX_VERSION_mpc8315e-rdb =3D "4.4.67"
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend=
 b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
> index d518826d7b9c..16f2957e4973 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
> @@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb =3D "standard/fsl-mpc8315e-rdb"
> =20
>  SRCREV_machine_genericx86    ?=3D "81055b89bd32414ecaf95156ce9a5fa6643e5=
30a"
>  SRCREV_machine_genericx86-64 ?=3D "81055b89bd32414ecaf95156ce9a5fa6643e5=
30a"
> -SRCREV_machine_edgerouter ?=3D "81055b89bd32414ecaf95156ce9a5fa6643e530a"
> -SRCREV_machine_beaglebone ?=3D "81055b89bd32414ecaf95156ce9a5fa6643e530a"
> -SRCREV_machine_mpc8315e-rdb ?=3D "c74de53c637dabeeb76e556e85ea37ec7f6ffb=
13"
> +SRCREV_machine_edgerouter ?=3D "2c31d7a45ae75159a7d991abdeb7002a4493af7f"
> +SRCREV_machine_beaglebone ?=3D "2c31d7a45ae75159a7d991abdeb7002a4493af7f"
> +SRCREV_machine_mpc8315e-rdb ?=3D "fd97646e9431c0f4c09021cbe3189acc25034a=
98"
> =20
>  COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
>  COMPATIBLE_MACHINE_genericx86-64 =3D "genericx86-64"
> @@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb =3D "mpc8315e-rdb"
> =20
>  LINUX_VERSION_genericx86 =3D "4.9.21"
>  LINUX_VERSION_genericx86-64 =3D "4.9.21"
> -LINUX_VERSION_edgerouter =3D "4.9.21"
> -LINUX_VERSION_beaglebone =3D "4.9.21"
> -LINUX_VERSION_mpc8315e-rdb =3D "4.9.21"
> +LINUX_VERSION_edgerouter =3D "4.9.27"
> +LINUX_VERSION_beaglebone =3D "4.9.27"
> +LINUX_VERSION_mpc8315e-rdb =3D "4.9.27"
> --=20
> 2.9.3
>=20

--/NkBOFFp2J2Af1nK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJZOfkUAAoJEJNY7TDerrFxQoMH/1271nSgBOckTc1pdFCtHJH6
IKZaydB9tuGDCp0FJfqq+K1Cfi7t9m5AOjTH1l5nbX2K05pTBkhQxP8VeBjLL5qR
Z1AcnGOxvpndeo2OgRkNiRR/Fc6f7Lui6sJ2L+18NSVYnqUsqYWz17hXIB+9ji+d
Dj6TwoSkADbgh70K2saN54WJyrl1+AvJkqVlASY0WuH3154CdlvePoQLygEy2CHb
Y3ArJPFpVzXdESNRcFNW6aec7zY53yokvY1xSgbBTPbp3RCy54Ejnjxx2gw8KkQ9
omBeeqLjNwpeZwyeYe66BMxItLxDULd4iKBbnwiHUq3g96zm7+z36nNHfSXVTAs=
=7066
-----END PGP SIGNATURE-----

--/NkBOFFp2J2Af1nK--
