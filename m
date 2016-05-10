Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0715BE00BDE; Mon,  9 May 2016 17:23:51 -0700 (PDT)
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
	*      [209.85.220.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E453E00B98
	for <poky@yoctoproject.org>; Mon,  9 May 2016 17:23:50 -0700 (PDT)
Received: by mail-pa0-f46.google.com with SMTP id r5so79880982pag.1
	for <poky@yoctoproject.org>; Mon, 09 May 2016 17:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=9mhRMDz0LjeIom0v7E41Ihv5lzMGE65CSUKd2g6OIkk=;
	b=rl93RkCUamzqrixH0svRMGlanhC19IHmIHd/dN33BCw2nyLyUd9kedE/7rase3VpEC
	xryLsz4yWMw4fkNNcvcSexkgqzqVz24CnaWgk1jFFjYDvB6ccAzaLbe+fRcxjJgniUOc
	SzZDYY+JJI4gPA73NIJNK3uT2bTo0tqvDQvXxQJ7YjOwJGJkGR04xQsmwRQPuXxt79Ji
	nZjC+Ip4hkh17WE26uQ/0nkChIVlH6qBPqdDX3wiVOrnTOTZZy7CSrMgOrTFoLJ4EwqI
	2hO//MxHaNa/Ii1ahmidQdG2o9q//0aINsY7a7X6Dq0HWf4qU0PHyWQgEazUWSg0x2Lb
	HIPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=9mhRMDz0LjeIom0v7E41Ihv5lzMGE65CSUKd2g6OIkk=;
	b=GU0roMI3+xuBB7lxZIzuGINAlTxNCQrACctbkW5MyU+wFHhDJReG8d1s9PwrcxpnMC
	Ctz9lYgQUiC6wt2sZrURlUxN/6Sola5z3R146puy/Cy4mDRwd6V6LDT6UJX6f+XW0y2j
	ucIrF3fpe3CvVEskDj7Gq3XB19lDDCshFiia23JkcZwKDTveLbMYNxLNKXWctB1iz3Fj
	lqApUs+74i9PvbB3inl3mtVNn6lib7B9r3nQadL/gxp8tB/a6L7oYnk67U7/Xyes4IDa
	EfF4lNp0i2a6mOisN0s8+cf7WAMzbcwG2p2hrQR291u5ddfqfU8CTBuivZ27q8pUqCZb
	AJRw==
X-Gm-Message-State: AOPr4FUiNqZEfuhhMJ3QBJfxBslksO3eFd96ECmrh3cIkLU0wOqReQmxjul0YWwoeChGFg==
X-Received: by 10.66.177.75 with SMTP id co11mr54907936pac.85.1462839829730;
	Mon, 09 May 2016 17:23:49 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:1462:b3e2:90da:dbff?
	([2601:646:8800:5a9a:1462:b3e2:90da:dbff])
	by smtp.gmail.com with ESMTPSA id
	uw2sm43318230pac.10.2016.05.09.17.23.48
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 09 May 2016 17:23:48 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1462839281-6229-3-git-send-email-ruslan@babayev.com>
Date: Mon, 9 May 2016 17:24:02 -0700
Message-Id: <CB9317B5-C9E7-47AA-B371-BC241C26CD66@gmail.com>
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
X-List-Received-Date: Tue, 10 May 2016 00:23:51 -0000
X-Groupsio-MsgNum: 10416
Content-Type: multipart/signed;
	boundary="Apple-Mail=_214A2C7E-4987-455C-B051-27527921EEF0";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_214A2C7E-4987-455C-B051-27527921EEF0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

secondly, we default to n64 on mips64 so how did you end up with this =
error, I wonder.

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


--Apple-Mail=_214A2C7E-4987-455C-B051-27527921EEF0
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlcxKiIACgkQuwUzVZGdMxT6JQCgjCMndq04xQXh1ANcvNsGDRYP
OcAAoJF1buhuxtuIh593ZgF+cJ15wVKQ
=Z7FM
-----END PGP SIGNATURE-----

--Apple-Mail=_214A2C7E-4987-455C-B051-27527921EEF0--
