Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77921E00CCF; Sun, 28 Feb 2016 17:51:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f176.google.com (mail-pf0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C46EE00C90
	for <poky@yoctoproject.org>; Sun, 28 Feb 2016 17:51:15 -0800 (PST)
Received: by mail-pf0-f176.google.com with SMTP id 124so21280325pfg.0
	for <poky@yoctoproject.org>; Sun, 28 Feb 2016 17:51:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=MPi9MBsC/38UgNUbZ+Tj9jsC/uqnXocoeIZ3YZSk7+o=;
	b=DX65IRZMDPtDah6r8AoVRalpdyFkQhT+OzidOxh/+FDyDmc5xKakU4SW0Z9ELGKyOv
	nbA7B4k2TObbpERIbLvlo1CUrpX6kr5S3uT7Ai4uZm1Wa6uTQahwaQ8cxJJWUdx968is
	ciyKKalsRaa5jkklxiAcchiAKHQBqtwBTQbD5jL6hFcuPbcMjIxAtJ+81qCUYX4nmlkk
	q8aQSl0hzG+B19iAy0kaWdNpKeHUg6Be6v3MjRwNkddsGzKzDmBQI4crq5JVrpJpX6cn
	INGGjsWVBvPPBwnNb1XEAcHlS42RN0ZVi0JHRRPIP8H/3ztBX+NJomcl7ELdQrsecLE0
	wL/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=MPi9MBsC/38UgNUbZ+Tj9jsC/uqnXocoeIZ3YZSk7+o=;
	b=AUj0FLxZ5Boz6UyPCFx+5PM9kIitscnTw6ktkqOEMUj+4AtDkFLwIJ6tDsuhE0UGra
	4fdjTTJwbJHTLbccFT+IoLgFD3OTDKZWnzJstGbVYyyL4a4lBPLbL6C/7mW1cEJ8l889
	pVKASTB/PJPvM01ZKAtHI3QpLiSTSKL4UF9M4G9J5xyIiKsuKTwbmBfdzGqhF90ic0Dw
	mz2avmzcAsEY6lmlo551wiCj9K2o1hYSjRoqq0fH3VANAEYePvFiv8QynhekHomx1SNn
	mAK/xodWW59Z2Qcchb/Biuvv2LXvfdBNw2hCmSuuLlwMyZEoIxl5U0xugy3+tIL+f+tA
	GQew==
X-Gm-Message-State: AD7BkJKdfdiDBKTYafavGvopjV0ku0pugueFqxVpz4mtUW+Q4xFnkrJ0x5P5klBuy9/Y0g==
X-Received: by 10.98.66.75 with SMTP id p72mr18955963pfa.50.1456710675323;
	Sun, 28 Feb 2016 17:51:15 -0800 (PST)
Received: from ?IPv6:2601:646:8800:5a9a:84d:892b:d60c:cf63?
	([2601:646:8800:5a9a:84d:892b:d60c:cf63])
	by smtp.gmail.com with ESMTPSA id
	s197sm33555447pfs.62.2016.02.28.17.51.14
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 28 Feb 2016 17:51:14 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1456701104.11498.173.camel@linuxfoundation.org>
Date: Sun, 28 Feb 2016 17:50:09 -0800
Message-Id: <9181490C-0A74-45A0-841B-1BAE20BA6C58@gmail.com>
References: <1456656603.11498.156.camel@linuxfoundation.org>
	<CAMKF1srow_MbndaELxsBHQoJsBe23Tf2uXHFgD=9j1WsUk7R=w@mail.gmail.com>
	<1456701104.11498.173.camel@linuxfoundation.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.3112)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] meta-yocto: Rename to meta-poky to better match its purpose
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
X-List-Received-Date: Mon, 29 Feb 2016 01:51:20 -0000
X-Groupsio-MsgNum: 10315
Content-Type: multipart/signed;
	boundary="Apple-Mail=_5623A8CD-3236-43F9-B647-51D3997DEA8D";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_5623A8CD-3236-43F9-B647-51D3997DEA8D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Feb 28, 2016, at 3:11 PM, Richard Purdie =
<richard.purdie@linuxfoundation.org> wrote:
>=20
> On Sun, 2016-02-28 at 11:57 -0800, Khem Raj wrote:
>> On Sun, Feb 28, 2016 at 2:50 AM, Richard Purdie
>> <richard.purdie@linuxfoundation.org> wrote:
>>> "poky" is the reference distribution for the Yocto Project. This
>>> renames
>>> the layer within the meta-yocto repository to meta-poky, better
>>> matching
>>> what that layer contains.
>>>=20
>>> A layer.conf file is left behind as this is the only way which
>>> allows
>>> existing builds to migrate safely to the new name. It will be
>>> removed
>>> at some future point.
>>>=20
>>> This change requires the corresponding OE-Core change to handle the
>>> migration and the changes to the infrastructure to support this.
>>>=20
>>=20
>> This is a welcome change. Do we rename meta-yocto-bsp to something as
>> well ?
>=20
> I thought about that. These truly are the Yocto Project reference/test
> BSPs, they're not really poky so I think the name is right as it is.
>=20
>> may people confuse which layers to use with poky for some machines
>> which exist in both places e.g. beaglebone may be renaming the
>> machine name could solve this issue as well.
>=20
> That is the first time that has been proposed. I'm not entirely sure =
it
> would help, it might be something improving the documentation might
> help more.

I have seen people ask should they use meta-ti or Yocto provided BSP for =
beaglebone
which is official supported BSP, documentation can help surely. however, =
avoiding
namespace conflicts could be better. Having said that it does not =
preclude
the wider problem which might happen involving other BSP layers =
providing same
machine configurations.

--Apple-Mail=_5623A8CD-3236-43F9-B647-51D3997DEA8D
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlbTo9EACgkQuwUzVZGdMxTrpwCeLsndrmeZxqOFOh/41FK8t5PA
H6AAoJIdGY0zRONNCmo8JvH5KN00Z+F2
=kBnX
-----END PGP SIGNATURE-----

--Apple-Mail=_5623A8CD-3236-43F9-B647-51D3997DEA8D--
