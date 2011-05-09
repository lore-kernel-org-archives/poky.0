Return-Path: <cahoshing@gmail.com>
Received: from mail-px0-f173.google.com (mail-px0-f173.google.com
	[209.85.212.173])
	by mx1.pokylinux.org (Postfix) with ESMTP id BA4C24C8009D
	for <poky@yoctoproject.org>; Mon,  9 May 2011 06:43:23 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pxi16 with SMTP id 16so3620569pxi.32
	for <poky@yoctoproject.org>; Mon, 09 May 2011 04:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=MYbwaZanvcv9SPqEcugKeoauVOWuKybkhyf7eKDC50I=;
	b=xhbvD5r5yQWZ/pVfXd4AX3ANg3N5Z3nSn9jgr2TUaqIsk2OrVUUbzKguoAKAZhOcKA
	Y+JzH3Qrq5/HXIMjnlBs9a3EsyLevM70L0X4ioE8DdxZTBLdE3u3VOqvcRZROE600BHn
	0+fpG0hMa14te16gYCgcp2wvMj8Aiy8APvqNk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=gb08dEiLwstPjpWBU2qM7nVnppZ296w9xjC3N//1QfrN0J8p9h63R7GhDTPzqbJAOz
	Lc0TuHy3UyJKf3OxXjDU2a4sFIAHkqmydJ72jeBE3k9jZgDetHC6vrrDru8SKzfxMnCg
	QyLpFkYXuDZTdyNqSFwBIpLEhgcSYoCz4Il8Y=
MIME-Version: 1.0
Received: by 10.142.249.32 with SMTP id w32mr3229797wfh.317.1304941402617;
	Mon, 09 May 2011 04:43:22 -0700 (PDT)
Received: by 10.143.158.19 with HTTP; Mon, 9 May 2011 04:43:22 -0700 (PDT)
In-Reply-To: <4DC40F99.6020204@mlbassoc.com>
References: <BANLkTim-yTAu5cDewMwawEM_FeL_xkNiVA@mail.gmail.com>
	<4DC3C7B4.1000705@windriver.com> <4DC40F99.6020204@mlbassoc.com>
Date: Mon, 9 May 2011 17:13:22 +0530
Message-ID: <BANLkTimYaZR5q1qGDpsvyBvEPS3VtgDkxA@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: poky@yoctoproject.org
Subject: Re: Error in pulling cups package
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
X-List-Received-Date: Mon, 09 May 2011 11:43:24 -0000
Content-Type: multipart/alternative; boundary=001636ed68aac1760504a2d6582f

--001636ed68aac1760504a2d6582f
Content-Type: text/plain; charset=ISO-8859-1

>
> Hi,
>

   I am trying to pull chromium package from openembedded,I have wriiten my
own black.bb file which contains all the supporting packages required for it
all on poky core Bernard branch . The cups package is the one dependency for
it , for which I was getting the above error.

  Chinmaya

--001636ed68aac1760504a2d6582f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div class=3D"gmail_quote"><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex;"><div><div class=3D"h5">Hi,</div></div></blockquote><div><br></div><di=
v>=A0=A0 I am trying to pull chromium=A0package=A0from openembedded,I have =
wriiten my own <a href=3D"http://black.bb">black.bb</a> file which contains=
 all the supporting=A0packages=A0required for it all on poky core Bernard b=
ranch . The cups=A0package=A0is the one dependency for it , for which I was=
 getting the above error.</div>
<div><br></div><div>=A0=A0Chinmaya</div><div><br></div><div>=A0</div></div>=
<br></div></div>

--001636ed68aac1760504a2d6582f--
