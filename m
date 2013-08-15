Return-Path: <lpapp@archlinux.us>
Received: from mail-pd0-f172.google.com (mail-pd0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E9A8E01575
	for <poky@yoctoproject.org>; Thu, 15 Aug 2013 02:29:20 -0700 (PDT)
Received: by mail-pd0-f172.google.com with SMTP id z10so622845pdj.31
	for <poky@yoctoproject.org>; Thu, 15 Aug 2013 02:29:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=XdoAEIbTZi9GBDatDq3b9YqajqcplxtydtACbd9VSJ0=;
	b=CWv0liPf2bipr/hUQZv4n5MA2RCQxuBpd4W8k7xLnyFNpgzPP8TWSGFNOFEC9jKoUF
	p4XI67GHlHOoURcG48/+jiYl30aU798RkHks3OC2mCJp4RrW7y3dSjHuYqxj14Gy4vPW
	PPUHQor5wcCczC3bFif79SmZXBW2bTstjE3KE7KmPNmQdBguy78V0+0YSjLH4Xl6mrB4
	pdQ9JwQ8pPfZW9m8jm3Mm60wl+3x5wZZRJGOM+lx1ic666Mr8vt4q+faMkKxbY4UTGJV
	OvoMrbo/+ew5G0fhvwPZTVyhm58Ue4AY3k5wR1vraBlnCitBuJFIl4ImDYTwKgJsN7sQ
	1O4A==
X-Gm-Message-State: ALoCoQk7YET2AakA9J+BQa5SZvLeREAPvUlxj2lMiWaoY9oMASbPnEpNifUX59jR7YyQIbzKtAm1
MIME-Version: 1.0
X-Received: by 10.66.118.204 with SMTP id ko12mr514318pab.184.1376558959787;
	Thu, 15 Aug 2013 02:29:19 -0700 (PDT)
Sender: lpapp@archlinux.us
Received: by 10.70.37.237 with HTTP; Thu, 15 Aug 2013 02:29:19 -0700 (PDT)
In-Reply-To: <520C9E77.1060201@communistcode.co.uk>
References: <CAOMwXhP1MH7aYWAf7_WPm1_5-GX6ugUOtyzZtC6q_+0Wp9jZBg@mail.gmail.com>
	<CAJTo0LZH_tEGaom5n9a7Dd2q8bzfVHNm6sFRTFBqD_JKGKe-dA@mail.gmail.com>
	<CAOMwXhMLBa+qefh1HgDB57EhqU_HJ4Ju9Y-V881PRGU0UYgS4g@mail.gmail.com>
	<520C9E77.1060201@communistcode.co.uk>
Date: Thu, 15 Aug 2013 10:29:19 +0100
X-Google-Sender-Auth: yZiTC9gnoc5UtbWEYWCFdUaLg4k
Message-ID: <CAOMwXhMxu1tzsXD7srHm9RBFXFbwojoZz9FcZZy7cPiohgOP1g@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: Jack Mitchell <ml@communistcode.co.uk>
Cc: poky@yoctoproject.org
Subject: Re: Stunnel recipe
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
X-List-Received-Date: Thu, 15 Aug 2013 09:29:21 -0000
Content-Type: multipart/alternative; boundary=e89a8ffbaa2bcf901604e3f91b00

--e89a8ffbaa2bcf901604e3f91b00
Content-Type: text/plain; charset=ISO-8859-1

You have to put a recipe inside a recipes-foo, right?


On Thu, Aug 15, 2013 at 10:25 AM, Jack Mitchell <ml@communistcode.co.uk>wrote:

> On 14/08/13 10:37, Laszlo Papp wrote:
> > On Wed, Aug 14, 2013 at 9:34 AM, Burton, Ross <ross.burton@intel.com
> > <mailto:ross.burton@intel.com>> wrote:
> >
> >     There's a meta-networking layer in the meta-oe repository which is
> >     probably a good place to start.
> >
> >
> > recipes-support?
> >
> >
>
> https://github.com/openembedded/meta-oe/tree/master/meta-networking
>
>
> --
>   Jack Mitchell (jack@embed.me.uk)
>   Embedded Systems Engineer
>   Cambrideshire, UK
>   http://www.embed.me.uk
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--e89a8ffbaa2bcf901604e3f91b00
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You have to put a recipe inside a recipes-foo, right?</div=
><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu, Aug =
15, 2013 at 10:25 AM, Jack Mitchell <span dir=3D"ltr">&lt;<a href=3D"mailto=
:ml@communistcode.co.uk" target=3D"_blank">ml@communistcode.co.uk</a>&gt;</=
span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 14/08/13 10:37, Laszlo =
Papp wrote:<br>
&gt; On Wed, Aug 14, 2013 at 9:34 AM, Burton, Ross &lt;<a href=3D"mailto:ro=
ss.burton@intel.com">ross.burton@intel.com</a><br>
</div><div class=3D"im">&gt; &lt;mailto:<a href=3D"mailto:ross.burton@intel=
.com">ross.burton@intel.com</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt; =A0 =A0 There&#39;s a meta-networking layer in the meta-oe repository =
which is<br>
&gt; =A0 =A0 probably a good place to start.<br>
&gt;<br>
&gt;<br>
&gt; recipes-support?<br>
&gt;<br>
&gt;<br>
<br>
</div><a href=3D"https://github.com/openembedded/meta-oe/tree/master/meta-n=
etworking" target=3D"_blank">https://github.com/openembedded/meta-oe/tree/m=
aster/meta-networking</a><br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
--<br>
=A0 Jack Mitchell (<a href=3D"mailto:jack@embed.me.uk">jack@embed.me.uk</a>=
)<br>
=A0 Embedded Systems Engineer<br>
=A0 Cambrideshire, UK<br>
=A0 <a href=3D"http://www.embed.me.uk" target=3D"_blank">http://www.embed.m=
e.uk</a><br>
--<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</font></span></blockquote></div><br></div>

--e89a8ffbaa2bcf901604e3f91b00--
