Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38956E00D9A; Thu, 19 May 2016 10:05:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.44 listed in list.dnswl.org]
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB6BBE00D91
	for <poky@yoctoproject.org>; Thu, 19 May 2016 10:05:39 -0700 (PDT)
Received: by mail-pa0-f44.google.com with SMTP id bt5so30625814pac.3
	for <poky@yoctoproject.org>; Thu, 19 May 2016 10:05:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=usflGjzySQMe+rU0qbSzANyIwoBTKYcVnIok9PPcC+k=;
	b=PP3tqdgH7Zcga0b+fbVljakoNUCQl+qjgiFzwP71srZoJCOnskrZWfiSWHpcr2zV/d
	KOB6VWSZDu+bntR3uOv+/DOZNCKRb8LTl5T1GksomEm9Dq7f5WwBU2Wme5uAOQUN7/Cg
	1tHX3MunLfCKsfrl93pd/Ag9Hl/t7SJsJ5MbFCYDfSVu/WQyc5CsInpYYKFHbn6zZ5d9
	B7hjkJaIk95gmTJ8HAx0zrNOEzTTy0WdnMOdoBM5+m1raT4CWTSAOuMElPykMCi4sOQ/
	7C4QYfcy7KzZZF1VzK+/m46rqM5Bp/AoUd3hCSs0fS9RZ3wJrF1mrMt9yBRQ+BogpyKk
	qJuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=usflGjzySQMe+rU0qbSzANyIwoBTKYcVnIok9PPcC+k=;
	b=HS+n9S4AvZJf1JzsBvpuwB+hZ8xsVmtThs/Rv2PxVFWNZJpYxc3ltROYmTNkFri608
	D+qP+KUax3lcMWPkNghTPcCjv/uSZGNH0TkZm5N5UtrzttXJhVAQXZUiRphzzpCNCBsO
	+DsN7zt851fGv2qSyCqejFRQex3ah3vr9w0y/0W2PssR/Wvp4GF6AIbi49AGB1FHUg5x
	9nRid75LgbXUtU/jVQwqRek8E0H0aBOzqcHMkNm7PXddY1UtElkeXEVrpanSgJqO86T0
	YBY6/2o0ynvKKXUVnBWWq9he9uFsGgPrBXh2H9/a5oK37V3rdrF0QuDbmIvgUtrDpcx7
	Cisw==
X-Gm-Message-State: AOPr4FU1oTGLvnL5ym2p1A5M1EQr5Sbxxc2jw6BYoiwJSR3EwbZHGM7roE4CDIPkhUTg4A==
X-Received: by 10.66.83.163 with SMTP id r3mr21068691pay.54.1463677538862;
	Thu, 19 May 2016 10:05:38 -0700 (PDT)
Received: from ?IPv6:2601:646:9b80:c0a8:4dc:d7b8:6757:e35f?
	([2601:646:9b80:c0a8:4dc:d7b8:6757:e35f])
	by smtp.gmail.com with ESMTPSA id
	tn7sm18979104pac.29.2016.05.19.10.05.37
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 19 May 2016 10:05:38 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAO7m3AmuueFfYGJZ4YBvz-cuMTAYqThUQnWVTm+iEc1a0ka0pA@mail.gmail.com>
Date: Thu, 19 May 2016 10:05:33 -0700
Message-Id: <149BAA46-BBAE-40A1-9564-F8F1272EA903@gmail.com>
References: <CAO7m3AmuueFfYGJZ4YBvz-cuMTAYqThUQnWVTm+iEc1a0ka0pA@mail.gmail.com>
To: Thomas Besemer <thomas.besemer@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: poky@yoctoproject.org
Subject: Re: yasm as host tool with populate_sdk
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
X-List-Received-Date: Thu, 19 May 2016 17:05:42 -0000
X-Groupsio-MsgNum: 10429
Content-Type: multipart/signed;
	boundary="Apple-Mail=_DAED44A1-5AB4-493C-B09E-5BB46AC14D11";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_DAED44A1-5AB4-493C-B09E-5BB46AC14D11
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On May 19, 2016, at 9:59 AM, Thomas Besemer <thomas.besemer@gmail.com> =
wrote:
>=20
> I'm trying to get yasm into the SDK, but have only been able to get it =
into build through IMAGE_INSTALL_append (I don't want it on target).
>=20
> Have tried:
>=20
> TOOLCHAIN_HOST_TASK_append =3D " yasm"
>=20
> Error is:
>=20
> NOTE: Not found yasm by name, searching provides ...
> NOTE: cmd: =
/home/tbesemer/src/yocto-full-0411a/poky/build/tmp/sysroots/x86_64-linux/u=
sr/bin/smart --log-level=3Dwarning =
--data-dir=3D/home/tbesemer/src/yocto-full-0411a/poky/build/tmp/work/sps-p=
oky-linux/core-image-minimal/1.0-r0/sdk/image/var/lib/smart query =
--provides yasm --show-format=3D'$name-$version' | sed -ne 's/ =
*Provides://p'
> ERROR: yasm not found in the base feeds (x86_64-nativesdk noarch any =
all)
>=20
>=20
> Error happens during 'bitbake core-image-minimal -c populate_sdk=E2=80=99=


in  yasm recipe in meta/recipes-devtools/yasm/
add
BBCLASSEXTEND =3D "nativesdk"
>=20
> Release is Jethro 2.0.1
>=20
>=20
>=20
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--Apple-Mail=_DAED44A1-5AB4-493C-B09E-5BB46AC14D11
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlc98mEACgkQuwUzVZGdMxQL7ACfU1GPsCNR+3glsgznbaAkCHL9
gkIAn1gO4+R61hmsI6lqdQBun8gp9xgf
=c0tH
-----END PGP SIGNATURE-----

--Apple-Mail=_DAED44A1-5AB4-493C-B09E-5BB46AC14D11--
