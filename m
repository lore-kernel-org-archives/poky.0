Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EE95E00D6B; Tue, 18 Jun 2019 14:29:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C7F5E00CF4
	for <poky@yoctoproject.org>; Tue, 18 Jun 2019 14:29:51 -0700 (PDT)
Received: by mail-wm1-f50.google.com with SMTP id w9so3183129wmd.1
	for <poky@yoctoproject.org>; Tue, 18 Jun 2019 14:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=BbnvxqS3jRDMLe+svMhxgbVUOm027b8AFdxpXXg+lTw=;
	b=VVC0Ljy0+LXdKBCDwM7x3I+fmhWv3fFu0XQWWLbsupgF48AEVYRJdtrZYrzkCGc0kC
	2l9+fopyOjyVkk8HoU4HGkd9XM/BKHs1fvhVkOMucmv6V4HNJ6+SOKmmP7V0FG1NGd/E
	KT34l/LlV28nV8/AaTjdPP8etrveIzcYgf1FrLHzbkxXDybvpBrRfLldnXaAahazEKdU
	YUWYJ/CZOr8byCi9pcyWwkG4JQwEbwHhPWl1VxlS6kz0hzfqbUPmhxd+BE4hbqa05Pm5
	Sid6A37pTXEacTQTYFtdSTT6cGJFdRpBsGAqYHtzoW7CbYBRH4Du4M+0domtd/unI2TA
	IlRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=BbnvxqS3jRDMLe+svMhxgbVUOm027b8AFdxpXXg+lTw=;
	b=ll/n4ZJ9sFXYr6a5vAZ68hpPwjDWKp/cchieooyb40Gb7U35lTWH34sp7q+5SEnfvp
	VjJLg3LkyiHkC3WWFm/OnskVxK2MegJmfV/G6kImYz5sCHzys9EhoBHpKSOALYaDhjX8
	DzsvNBDqNxDvlSsffjJ3EqAQjsN8Jcy7/OpcT+TpR/B8dkg52ogosEGlTpxd8Xo6R9I6
	y5gzMsbwUhSfNSijtzzKVm9O+WHXKQOe0YYOSSG7eSQw3Kl2D8UmWqS2D6pl/rdrzub5
	G4gXRLilzvvgpjJjjhpLMb2EH9VDRGUoY3u9HKsyCVwpTOSXwXT9hysDnsOxhF4ZfJyG
	0jpQ==
X-Gm-Message-State: APjAAAXwBFUk/SzBFhw4tPZSi0eRgVqqDxsxsJgfg5sA/bj88+HdDMjz
	BVJXuVAHtQYOqNqC60A6gDMQ4S04
X-Google-Smtp-Source: APXvYqwcOR8UazPkX6BKkJR/xvMbM6LE7HXLz9wFcIMDN7SvUR8Z0PKxAbqPeQy7XRPLwfvCDHYQyg==
X-Received: by 2002:a1c:e709:: with SMTP id e9mr4999930wmh.144.1560893390168; 
	Tue, 18 Jun 2019 14:29:50 -0700 (PDT)
Received: from localhost (ip-217-030-068-212.aim-net.cz. [217.30.68.212])
	by smtp.gmail.com with ESMTPSA id l1sm3646216wmg.13.2019.06.18.14.29.49
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 18 Jun 2019 14:29:49 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 18 Jun 2019 23:29:56 +0200
To: Jonathan Richardson <jonathan.richardson@broadcom.com>
Message-ID: <20190618212956.GD1501@jama>
References: <e3607e3b603a3c19c520e59774b7039d@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <e3607e3b603a3c19c520e59774b7039d@mail.gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Cc: poky@yoctoproject.org
Subject: Re: openssl10 in warrior
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
X-List-Received-Date: Tue, 18 Jun 2019 21:29:52 -0000
X-Groupsio-MsgNum: 11680
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Ycz6tD7Th1CMF4v7"
Content-Disposition: inline

--Ycz6tD7Th1CMF4v7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 18, 2019 at 01:29:00PM -0700, Jonathan Richardson wrote:
> Hello,
>=20
> How do you set the version of openssl back to openssl10? There is no
> PROVIDES
> openssl in openssl10  so I can't set PREFERRED_PROVIDER_openssl. If I
> change my
> DEPENDS in the my recipe to openssl10-native  eventually another native
> recipe that
> depends on openssl tries to populate a library to sysroot and fails
> because its already
> there.

Hi,

it never worked with both openssl versions being pulled into the same
RSS (which is quite common for bigger components like qtbase).

If you really need to use openssl10 and have components which require
it, then you can temporary rename openssl10 recipe as openssl in our
layer to overlay 1.1 version from oe-core and use this openssl-1.0
everywhere (there aren't many packages which would be compatible with
openssl-1.1 and incompatible with openssl-1.0 - from the layers I have
included in my world build I know about these:

PNBLACKLIST[wvstreams] ?=3D "not compatible with openssl-1.0 since https://=
github.com/apenwarr/wvstreams/commit/5506a74e1b033776ad441b4554716cdcfa88fe=
03 which was backported to meta-oe and later reverted in upstream"
PNBLACKLIST[wvdial] ?=3D "depends on blacklisted wvstreams"
PNBLACKLIST[python3-m2crypto] ?=3D "not compatible with openssl-1.0"
PNBLACKLIST[python-m2crypto] ?=3D "not compatible with openssl-1.0"
PNBLACKLIST[rtmpdump] ?=3D "not compatible with openssl-1.0"
PNBLACKLIST[libtorrent] ?=3D "not compatible with openssl-1.0"
PNBLACKLIST[freeradius] ?=3D "not compatible with openssl-1.0"
PNBLACKLIST[rtorrent] ?=3D "depends on blacklisted libtorrent"
PNBLACKLIST[openlmi-tools] ?=3D "depends on blacklisted python-m2crypto"
PNBLACKLIST[python-pywbem] ?=3D "depends on blacklisted python-m2crypto"

and in all these cases it's simple to revert them to older from which
was compatible with openssl-1.0 before big bang.

But this work around should be only temporary and you should really try
to get rid of openssl10 soon.

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--Ycz6tD7Th1CMF4v7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCXQlX0gAKCRA3VSO3ZXaA
HApOAKCPFLJhn+oIDsQs9q4PJuVb+sh6kgCfbIiPPY4VnUbLr3sJH06r7ygAZpk=
=5z3X
-----END PGP SIGNATURE-----

--Ycz6tD7Th1CMF4v7--
