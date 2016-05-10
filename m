Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7C82E00BDE; Mon,  9 May 2016 17:21:52 -0700 (PDT)
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
	*      [209.85.192.171 listed in list.dnswl.org]
Received: from mail-pf0-f171.google.com (mail-pf0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E63DE00B98
	for <poky@yoctoproject.org>; Mon,  9 May 2016 17:21:49 -0700 (PDT)
Received: by mail-pf0-f171.google.com with SMTP id y69so80959203pfb.1
	for <poky@yoctoproject.org>; Mon, 09 May 2016 17:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=URIsjNzh9kVyjDgV3dLiKuidCSl/eRAyoOuI0ftbo3A=;
	b=yZkBScZr9hN/ajcwevPOOdyk/w+bVhYZ8gqpfVPgXIjvr8mxoO+97atajVwrm6I2aQ
	Af7neygrAVIMjOq7mxDEeaiE5RbGlZMbzUzyow4jaxPISBmbSNwOrqGS+wp8rg9z6vPt
	dMuM5lWFHx4RZUd+4oS71tfC/HOvcvShRdHIhaqnv24hYdgCPiD7+ZAWzBW3TNEB9hrp
	gjlHLaq3yaej01dr/XUSla6q/l5Ugo8S/g8k6ERH2N4gkkqYKjmZGDEQrtq+KeLP5jp/
	kyisKvO2n+yznXkzq/UNQCgcDutoLvl5F7rDK6FlT5xqMp52cchTP2Jvg+PeMSAF6yAE
	rz1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=URIsjNzh9kVyjDgV3dLiKuidCSl/eRAyoOuI0ftbo3A=;
	b=XTgb9/byb0Ec+jyIPemn8kDI25ivXHWBj3TLJ4d9MzWUtSouEwHUG5kG1eGjtlrE/v
	dRSpmPvmWeDGMhxhHC0tgcf1EqcrORN5TVdHmiWYhU++w+X1TyGoqj19oS4zVSPjsgzl
	fLa0LUqJ/tsvg/HeiSJ5/cIadG9G6RyrCVDbX0/TcTA+YH9F86fEVbUx7s5PodMquWjJ
	ym6W8k3Px1wBkRXOOX1PC9jWSUJEscRK8gV6Z+wW6A4CuGW6TGHhAUqOlHWyW0DF5Dzh
	j2R1F52xx3iSV9loflibpnLKCwwajhZcBKWORC1MHvYg8PGIC9bbEO1KbY960NWv3Su+
	I3Dw==
X-Gm-Message-State: AOPr4FVd+eUmHSYQt8waRv0VulRk86sjvkxZa29CMoVmcGEZxzVjjyJdYh8JksthQ0mJYQ==
X-Received: by 10.98.54.194 with SMTP id d185mr46202863pfa.34.1462839709046;
	Mon, 09 May 2016 17:21:49 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:1462:b3e2:90da:dbff?
	([2601:646:8800:5a9a:1462:b3e2:90da:dbff])
	by smtp.gmail.com with ESMTPSA id
	fv10sm43314597pad.40.2016.05.09.17.21.48
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 09 May 2016 17:21:48 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1462839281-6229-3-git-send-email-ruslan@babayev.com>
Date: Mon, 9 May 2016 17:21:57 -0700
Message-Id: <C1FA2C09-6E60-4706-BA1E-27CBB1A06F59@gmail.com>
References: <1462839281-6229-1-git-send-email-ruslan@babayev.com>
	<1462839281-6229-3-git-send-email-ruslan@babayev.com>
To: Ruslan Babayev <ruslan@babayev.com>
X-Mailer: Apple Mail (2.3124)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/2] edgerouter: libffi: fix build with soft-float tune
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
X-List-Received-Date: Tue, 10 May 2016 00:21:52 -0000
X-Groupsio-MsgNum: 10415
Content-Type: multipart/signed;
	boundary="Apple-Mail=_490F29F7-4D2D-4497-8764-7D0C7A40FBFA";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_490F29F7-4D2D-4497-8764-7D0C7A40FBFA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Ruslan

Send this patch to OE-Core ml.

> On May 9, 2016, at 5:14 PM, Ruslan Babayev <ruslan@babayev.com> wrote:
>=20
> Signed-off-by: Ruslan Babayev <ruslan@babayev.com>
> ---
> .../recipes-support/libffi/libffi/mips-n32-soft-float.patch | 13 =
+++++++++++++
> meta/recipes-support/libffi/libffi_3.2.1.bb                 |  1 +
> 2 files changed, 14 insertions(+)
> create mode 100644 =
meta/recipes-support/libffi/libffi/mips-n32-soft-float.patch
>=20
> diff --git =
a/meta/recipes-support/libffi/libffi/mips-n32-soft-float.patch =
b/meta/recipes-support/libffi/libffi/mips-n32-soft-float.patch
> new file mode 100644
> index 0000000..c901614
> --- /dev/null
> +++ b/meta/recipes-support/libffi/libffi/mips-n32-soft-float.patch
> @@ -0,0 +1,13 @@
> +Index: libffi-3.2.1/src/mips/n32.S
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +--- libffi-3.2.1.orig/src/mips/n32.S
> ++++ libffi-3.2.1/src/mips/n32.S
> +@@ -30,7 +30,7 @@
> +
> + /* Only build this code if we are compiling for n32 */

Please change the comment to reflect this change n32-sf or something.

>=20
> +
> +-#if defined(FFI_MIPS_N32)
> ++#if defined(FFI_MIPS_N32) && !defined(__mips_soft_float)
> +
> + #define callback a0
> + #define bytes	 a2
> diff --git a/meta/recipes-support/libffi/libffi_3.2.1.bb =
b/meta/recipes-support/libffi/libffi_3.2.1.bb
> index 72e25fb..5b57e79 100644
> --- a/meta/recipes-support/libffi/libffi_3.2.1.bb
> +++ b/meta/recipes-support/libffi/libffi_3.2.1.bb
> @@ -12,6 +12,7 @@ LIC_FILES_CHKSUM =3D =
"file://LICENSE;md5=3D3610bb17683a0089ed64055416b2ae1b"
> SRC_URI =3D "ftp://sourceware.org/pub/libffi/${BP}.tar.gz \
>            file://not-win32.patch \
> 	   file://0001-mips-Use-compiler-internal-define-for-linux.patch =
\
> +           file://mips-n32-soft-float.patch \
> 	   "
>=20
> SRC_URI[md5sum] =3D "83b89587607e3eb65c70d361f13bab43"
> --
> 2.7.4
>=20


--Apple-Mail=_490F29F7-4D2D-4497-8764-7D0C7A40FBFA
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlcxKakACgkQuwUzVZGdMxRQ5ACfTQKxSohZZWOl+LmGYQCn2/86
c4YAniKG/kbosbnCGbOVmzq078V8xIBh
=mIF8
-----END PGP SIGNATURE-----

--Apple-Mail=_490F29F7-4D2D-4497-8764-7D0C7A40FBFA--
