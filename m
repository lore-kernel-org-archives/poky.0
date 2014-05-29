Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 229DFE00B74; Wed, 28 May 2014 19:14:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=RCVD_IN_DNSWL_MED,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail.windriver.com (unknown [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CC5BE00B6C
	for <poky@yoctoproject.org>; Wed, 28 May 2014 19:14:00 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s4T2Dwsc022550
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 28 May 2014 19:13:58 -0700 (PDT)
Received: from pek-khao-d1.corp.ad.wrs.com (128.224.162.196) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.3.169.1; Wed, 28 May 2014 19:13:58 -0700
Date: Thu, 29 May 2014 10:13:54 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Corneliu Stoicescu <corneliux.stoicescu@intel.com>
Message-ID: <20140529021354.GB10677@pek-khao-d1.corp.ad.wrs.com>
References: <1401277049-8410-1-git-send-email-corneliux.stoicescu@intel.com>
MIME-Version: 1.0
In-Reply-To: <1401277049-8410-1-git-send-email-corneliux.stoicescu@intel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH V3] oeqa/controllers/beaglebonetarget.py: fix conditions for files copied to /boot
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
X-List-Received-Date: Thu, 29 May 2014 02:14:04 -0000
X-Groupsio-MsgNum: 9656
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="pvezYHf7grwyp3Bc"
Content-Disposition: inline

--pvezYHf7grwyp3Bc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 28, 2014 at 02:37:29PM +0300, Corneliu Stoicescu wrote:
> We need to check if the uImage file exists before copying it to /mnt/test=
rootfs/boot/.
> Using '[ ! -e /mnt/testrootfs/boot/uImage ] && cp ~/test-kernel /mnt/test=
rootfs/boot/uImage' would result in exit code 1 if the first condition is n=
ot met.
> Changing the code to return exit status 0 if /mnt/testrootfs/boot/uImage =
exists.
>=20
> Without this if the file /mnt/testrootfs/boot/uImage exists then the imag=
e deploy task would stop and do_testimage would fail.

Nitpicking, could you please wrap the commit log to about 72 characters or =
so?

Thanks,
Kevin

--pvezYHf7grwyp3Bc
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQEcBAEBAgAGBQJThpfiAAoJEJNY7TDerrFxgI4H/idpgutdU3m/J4MaTdFpMqa3
M7fEsGkBY+qRLOhR8Qv1D+dQeOBo0CpLMrC2FrvE5FY8CaQ0fRZKD+eYGVIaKrVZ
EnFK8bbURoyFclA3Nxe0LozVa7sUgt6SmlsMdfcb30nL/uD/eRpdbtdPVGEVbRYK
KkpVMeDVt7MfZ9nHv/qGxztKh/El+OFFhpX5yr9N+r4nWzMhNXa6IrEPsUD7ol+z
lIreZbJRwu0sOjUINw0Ua4nW5gVuXkhneo+d0WjTTNvtGGl6fjvl5Gmn2dxZ/lO+
UXNFMmpW/g+rBhAE2ojJIjOmVVOKBBAAlgiCA8BUmwD5FM4AV2QB8JVqRuVfJxY=
=Q8Av
-----END PGP SIGNATURE-----

--pvezYHf7grwyp3Bc--
