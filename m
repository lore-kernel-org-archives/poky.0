Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11C9DE00BEA; Fri, 13 Jun 2014 17:32:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EE08E00BB1
	for <poky@yoctoproject.org>; Fri, 13 Jun 2014 17:32:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s5E0WVkF027079
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 13 Jun 2014 17:32:31 -0700 (PDT)
Received: from pek-khao-d1.corp.ad.wrs.com (128.224.162.196) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.3.169.1; Fri, 13 Jun 2014 17:32:31 -0700
Date: Sat, 14 Jun 2014 08:32:27 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <20140614003227.GA31980@pek-khao-d1.corp.ad.wrs.com>
References: <1402634363-31407-1-git-send-email-kexin.hao@windriver.com>
	<1402643046.12440.468.camel@ted> <539AFBE4.4050902@windriver.com>
MIME-Version: 1.0
In-Reply-To: <539AFBE4.4050902@windriver.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] meta-yocto-bsp: enable the jffs2 for mpc8315e-rdb board
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
X-List-Received-Date: Sat, 14 Jun 2014 00:32:46 -0000
X-Groupsio-MsgNum: 9680
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="huq684BweRXVnRxX"
Content-Disposition: inline

--huq684BweRXVnRxX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 13, 2014 at 09:25:56AM -0400, Bruce Ashfield wrote:
> On 14-06-13 03:04 AM, Richard Purdie wrote:
> >Can you please put this information into the README.hardware in
> >meta-yocto-bsp so that others can find it, its useful to know how to use
> >jffs2 on the default...
>=20
> Agreed.

OK, will do.

Thanks,
Kevin

--huq684BweRXVnRxX
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQEcBAEBAgAGBQJTm5gbAAoJEJNY7TDerrFx/7kIAIh6u7B8ULxD/IMqXKiXKNhX
txPQ1y5iRFDNHOLdLF/BWj5ondhx1U8VFHQCZ4PMIekn4wdqRijfhSTcUARy7v1v
i47G9S9AkyBKhzbRP6vo8B4iRUq2NB7IjhYbDpi+56hqftyKExPFEdJic4A0pxJX
q7/OImTwYthRddmoF4aPFH0CWZt99jE9RSLQyJjpc+Bkh/JQAmU80BSPyaa3iXtC
w/McU6UUPOamyk9d70TIloZpJPKcwdHfT2bavEdSGTXIJVdhuttcmeO1BDTDVUuS
1mDfSUoE3vUoiaVDTxPmBJrRRgUgSa5lVlXMKo4mjL/TQZWnxJ9mUxSiGV8ZlOo=
=0WLx
-----END PGP SIGNATURE-----

--huq684BweRXVnRxX--
