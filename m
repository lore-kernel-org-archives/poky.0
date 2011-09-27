Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F6FCE004E9
	for <poky@yoctoproject.org>; Tue, 27 Sep 2011 06:07:15 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyg10 with SMTP id 10so10056162wyg.35
	for <poky@yoctoproject.org>; Tue, 27 Sep 2011 06:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=D4009Su7PAuqxNrdiizWaaYMsFDtuqoCEvqLr4ib9WI=;
	b=kbbIrL7NYYmRUyC/FsdhvIsdZoh7GvvNRntC0FjR+I+hVXPng2eZ8pBNjpwOvEpS2P
	OHYRq5FUvJyvucdXPBjeGDOIEkz65UI8HgHpICYStLT9T95/I0k7LBsCEi+abNjNOzXN
	X3dZq/hpoyHQ0r9hv8LlVHbO82HNbzrTJMQiU=
MIME-Version: 1.0
Received: by 10.227.37.38 with SMTP id v38mr9448042wbd.66.1317128834793; Tue,
	27 Sep 2011 06:07:14 -0700 (PDT)
Received: by 10.180.87.197 with HTTP; Tue, 27 Sep 2011 06:07:14 -0700 (PDT)
In-Reply-To: <4E81C907.8080407@mlbassoc.com>
References: <4E81C907.8080407@mlbassoc.com>
Date: Tue, 27 Sep 2011 09:07:14 -0400
Message-ID: <CADkTA4MoiHfz3xR56pGHAL8Oex5aZvMhgJAg566Wy-KPSpsCvA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Crazy versioning
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 27 Sep 2011 13:07:16 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 27, 2011 at 9:00 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> I'm trying to use the recipe meta/recipes-bsp/u-boot/u-boot_2011.06.bb
> Since there are a number of u-boot recipes, I want to make sure I get
> the right one, plus I'm writing a .bbappend file to add patches for
> my own boards.
>
> So I added this to my MACHINE.conf:
> =A0PREFERRED_VERSION_u-boot =3D "2011.06"
>
> When I try to build, I get this error:
> =A0NOTE: preferred version 2011.06 of u-boot not available (for item u-bo=
ot)
> =A0NOTE: versions of u-boot available: git
> v2011.06+git16+b1af6f532e0d348b153d5c148369229d24af361a
> I guess this is because the recipe has this for PV
> =A0SRCREV =3D "b1af6f532e0d348b153d5c148369229d24af361a"
> =A0PV =3D "v2011.06+git${SRCPV}"
> The truly bizarre thing is that if my cache is rebuilt, the version print=
ed
> changes, e.g.
> =A0% touch conf/local.conf
> =A0% bitbake u-boot
> =A0NOTE: versions of u-boot available: git
> v2011.06+git18+b1af6f532e0d348b153d5c148369229d24af361a
>
> So, how do I specify the right value in PREFERRED_VERSION?

Should just be:

 PREFERRED_VERSION_u-boot =3D "v2011.06%"

or

   PREFERRED_VERSION_u-boot =3D "v2011.06+git%"

if you like that format more. I went through the same thing with the kernel
recipes, and the solution is to specify a wildcard via %

Cheers,

Bruce


>
> --
> ------------------------------------------------------------
> Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the
> MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world
> ------------------------------------------------------------
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

