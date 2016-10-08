Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACBC0E00CE1; Sat,  8 Oct 2016 00:36:43 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81378E00CD9;
	Sat,  8 Oct 2016 00:36:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u987acsc022930
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 8 Oct 2016 00:36:39 -0700 (PDT)
Received: from pek-khao-d1 (147.11.178.22) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.294.0;
	Sat, 8 Oct 2016 00:36:38 -0700
Date: Sat, 8 Oct 2016 15:36:34 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: <linux-yocto@yoctoproject.org>, <poky@yoctoproject.org>
Message-ID: <20161008073634.GA19124@pek-khao-d1>
References: <20160920120025.159211-1-kexin.hao@windriver.com>
	<20160920120025.159211-2-kexin.hao@windriver.com>
MIME-Version: 1.0
In-Reply-To: <20160920120025.159211-2-kexin.hao@windriver.com>
User-Agent: Mutt/1.6.1 (2016-04-27)
Subject: Re: [kernel-meta] meta-yocto-bsp: beaglebone: remove the stale kernel options
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
X-List-Received-Date: Sat, 08 Oct 2016 07:36:43 -0000
X-Groupsio-MsgNum: 10635
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IJpNTDwzlM2Ie8A6"
Content-Disposition: inline

--IJpNTDwzlM2Ie8A6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 20, 2016 at 08:00:25PM +0800, Kevin Hao wrote:
> The kernel_configcheck complains about these unnecessary kernel options.
> The final .config is the same with or without them.

Hi Bruce,

It seems that you missed this patch for the linux 4.1 kernel-meta.

Thanks,
Kevin

>=20
> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> ---
>  bsp/beaglebone/beaglebone.cfg | 8 --------
>  1 file changed, 8 deletions(-)
>=20
> diff --git a/bsp/beaglebone/beaglebone.cfg b/bsp/beaglebone/beaglebone.cfg
> index a6fe6d33d586..4c786d0afbef 100644
> --- a/bsp/beaglebone/beaglebone.cfg
> +++ b/bsp/beaglebone/beaglebone.cfg
> @@ -229,7 +229,6 @@ CONFIG_FB_CFB_FILLRECT=3Dy
>  CONFIG_FB_CFB_COPYAREA=3Dy
>  CONFIG_FB_CFB_IMAGEBLIT=3Dy
>  # CONFIG_FB_FOREIGN_ENDIAN is not set
> -# CONFIG_FB_SYS_FOPS is not set
>  # CONFIG_FB_SVGALIB is not set
>  # CONFIG_FB_MACMODES is not set
>  # CONFIG_FB_BACKLIGHT is not set
> @@ -240,26 +239,19 @@ CONFIG_FB_TILEBLITTING=3Dy
>  # Frame buffer hardware drivers
>  #
>  # CONFIG_FB_S1D13XXX is not set
> -# CONFIG_FB_TMIO is not set
>  # CONFIG_FB_VIRTUAL is not set
>  # CONFIG_FB_METRONOME is not set
> -# CONFIG_FB_MB862XX is not set
>  # CONFIG_FB_BROADSHEET is not set
>  # CONFIG_FB_OMAP_BOOTLOADER_INIT is not set
>  # CONFIG_FB_DA8XX is not set
>  # CONFIG_FB_DA8XX_TDA998X is not set
> -CONFIG_OMAP2_VRFB=3Dy
>  CONFIG_OMAP2_DSS=3Dy
> -# CONFIG_OMAP2_DSS_COLLECT_IRQ_STATS is not set
>  CONFIG_OMAP2_DSS_DPI=3Dy
> -# CONFIG_OMAP2_DSS_RFBI is not set
>  CONFIG_OMAP2_DSS_VENC=3Dy
>  # CONFIG_OMAP2_DSS_SDI is not set
>  CONFIG_OMAP2_DSS_DSI=3Dy
>  # CONFIG_OMAP2_DSS_FAKE_VSYNC is not set
>  CONFIG_OMAP2_DSS_MIN_FCK_PER_PCK=3D0
> -CONFIG_FB_OMAP2=3Dy
> -CONFIG_FB_OMAP2_NUM_FBS=3D3
> =20
>  #
>  # OMAP Display Device Drivers (new device model)
> --=20
> 2.9.3
>=20

--IJpNTDwzlM2Ie8A6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJX+KICAAoJEJNY7TDerrFx0vMIAKVpDG456LGNb1e0r4YX/5Y4
YDUh648EgCpi8/6nsXMRU7klFLHHLV7Ak5pGQ43cfP6ARbDUydCC81mMYelzlo16
b15t4Klk5zBrj95UvKFqEpkB+ahRunY7BMZ0GFsjJ/eMCp003jpAMkcHIEJBdbih
3m5ZYqp2hNZWx/gU6+C9SYJmWbjcomDT/XRs7Hr9cHQG1TUlMpSB7Y2Cz44LRa3C
PVh1xhXgZtK3ubglUhmJ7/UHaiq8p6q+pT1U9gI+66DZjxI4oMntRDK8u59b2HqA
QkG3HjLex8TJa/RJ44xv6iNvi0itl85idD3QOG5ZGpsi2dNNt5EWk1+v9xDYHbc=
=OYWW
-----END PGP SIGNATURE-----

--IJpNTDwzlM2Ie8A6--
