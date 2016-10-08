Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F856E00CE1; Sat,  8 Oct 2016 00:38:02 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB07CE00791;
	Sat,  8 Oct 2016 00:38:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u987c1Bv022941
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 8 Oct 2016 00:38:01 -0700 (PDT)
Received: from pek-khao-d1 (147.11.178.22) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.294.0;
	Sat, 8 Oct 2016 00:38:00 -0700
Date: Sat, 8 Oct 2016 15:37:57 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: <linux-yocto@yoctoproject.org>, <poky@yoctoproject.org>
Message-ID: <20161008073757.GB19124@pek-khao-d1>
References: <20160920120025.159211-1-kexin.hao@windriver.com>
	<20160920120025.159211-2-kexin.hao@windriver.com>
	<20161008073634.GA19124@pek-khao-d1>
MIME-Version: 1.0
In-Reply-To: <20161008073634.GA19124@pek-khao-d1>
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
X-List-Received-Date: Sat, 08 Oct 2016 07:38:02 -0000
X-Groupsio-MsgNum: 10636
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="+pHx0qQiF2pBVqBT"
Content-Disposition: inline

--+pHx0qQiF2pBVqBT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 08, 2016 at 03:36:34PM +0800, Kevin Hao wrote:
> On Tue, Sep 20, 2016 at 08:00:25PM +0800, Kevin Hao wrote:
> > The kernel_configcheck complains about these unnecessary kernel options.
> > The final .config is the same with or without them.
>=20
> Hi Bruce,
>=20
> It seems that you missed this patch for the linux 4.1 kernel-meta.

Sorry for the typo. Should be linux 4.4.

Thanks,
Kevin

--+pHx0qQiF2pBVqBT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJX+KJVAAoJEJNY7TDerrFxu+YIAL//HW+lXHuSwoc8HXp62kf9
9q/tr+JsXbkRywIoNIpAOuTGfV9iVtjajyxzI9xVsw0j33DAm4zI/dGLme1qT0K3
VLH9uFSk48r0szkkxeFRpaIpRAGmCsovAagZElCaHTxLbYmyksOQs40LG+dSXZSl
LKpgeh4zqxKHuaapVpoKSeRlNXdnuyOdd3VBxcgX+MfC60vN8hkhLN0YtT2je1Hu
c/IXTy4Hk1n4JHF3ucigbdsYEWUCaUpgo0tbdXL36ueSq2ZiparvTveo5xuuYSM2
39YT5Cjh5gdK8FQNyIf+9Px/mCdLfw8H/aR7be9l4Ipia57JidwNT553Aucl4cA=
=E/Dq
-----END PGP SIGNATURE-----

--+pHx0qQiF2pBVqBT--
