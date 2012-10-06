Return-Path: <nobodydead@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C2ACE00293
	for <poky@yoctoproject.org>; Sat,  6 Oct 2012 01:46:55 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id wy7so3399630pbc.35
	for <poky@yoctoproject.org>; Sat, 06 Oct 2012 01:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:cc:content-type;
	bh=JnuDs/lLIm8+1BEOorr/QAr9aYozxb8/GRa+y56Wzkc=;
	b=uAQTBbUWK2ixp78uCwqqnHmEoqAvYpCN5YCscuhLdJxQf1KjffucSgZQkf3NtSQ9KO
	v60wRezkBTpVnLWaDE88XEZxZ41p66P1oUebf8Rol7X7a1f4qHIo5/GxsAn8HawqP1Ro
	13na19gNzlXH+IfhZ4SVBXZ6FVBJfvEIP7SviXVm+PUOdVQc/sBIfx5ToP2bWD5rB/MG
	5ohzsOEbAslBtwYiSmY412cvhqycchSQu/h7u9r5jkt64q/KYsrZZPn7NHzzCqAsW5UF
	RjR0i8d3DoCGQIT//K8lp3aTz7hc5d/gqa8/mab0AhM8bHKrFQQaVZ3P9M5GDESUwbG8
	aKcA==
MIME-Version: 1.0
Received: by 10.66.90.36 with SMTP id bt4mr27740290pab.54.1349513210610; Sat,
	06 Oct 2012 01:46:50 -0700 (PDT)
Sender: nobodydead@gmail.com
Received: by 10.68.55.230 with HTTP; Sat, 6 Oct 2012 01:46:50 -0700 (PDT)
In-Reply-To: <1349430119.32599.0.camel@localhost>
References: <CABtOAfw9y1rjQ3YsS42ZiM71nCUtmWVoOkNZiSb7X1r2JXFjcg@mail.gmail.com>
	<506EAAEC.1050704@r-finger.com>
	<1349430119.32599.0.camel@localhost>
Date: Sat, 6 Oct 2012 12:46:50 +0400
X-Google-Sender-Auth: FYtWOpel7fcn9vpS_9RyqGSAXQE
Message-ID: <CABtOAfyzdkKdhROvoKUHqx8Ki+UKV5AwBSmY4hT_5o9oFsxu7Q@mail.gmail.com>
From: Alexander Khryukin <alexander@mezon.ru>
Cc: poky@yoctoproject.org
Subject: Re: docbook-utils-native-0.6.14-r3
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
X-List-Received-Date: Sat, 06 Oct 2012 08:46:55 -0000
Content-Type: multipart/alternative; boundary=f46d042f95c089c54904cb600716

--f46d042f95c089c54904cb600716
Content-Type: text/plain; charset=KOI8-R
Content-Transfer-Encoding: quoted-printable

2012/10/5 Alexander Khryukin <alexander@mezon.ru>

> =F7 =F0=D4., 05/10/2012 =D7 10:39 +0100, Tomas Frydrych =D0=C9=DB=C5=D4:
> > On 05/10/12 10:12, Alexander Khryukin wrote:
> > > | jade: symbol lookup error:
> > >
> /home/user/poky/build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/lib/lib=
ospgrove.so.0:
> > > undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE
> >
> > Looks like the jade executable was not linked against the version of th=
e
> > lib in your sysroot; try rebuilding openjade-native.
> >
> > Tomas
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
>
>
> >try rebuilding openjade-native
>
> How i can do it?Now i'm rebuilding bitbake core-image-sato-sdk again
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


Bump!Issue still here.
And i dont't know how to solve it

--f46d042f95c089c54904cb600716
Content-Type: text/html; charset=KOI8-R
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">2012/10/5 Alexander Khryukin <span dir=
=3D"ltr">&lt;<a href=3D"mailto:alexander@mezon.ru" target=3D"_blank">alexan=
der@mezon.ru</a>&gt;</span><br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
=F7 =F0=D4., 05/10/2012 =D7 10:39 +0100, Tomas Frydrych =D0=C9=DB=C5=D4:<br=
>
<div><div class=3D"h5">&gt; On 05/10/12 10:12, Alexander Khryukin wrote:<br=
>
&gt; &gt; | jade: symbol lookup error:<br>
&gt; &gt; /home/user/poky/build/tmp/sysroots/x86_64-linux/usr/bin/../../usr=
/lib/libospgrove.so.0:<br>
&gt; &gt; undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE<br>
&gt;<br>
&gt; Looks like the jade executable was not linked against the version of t=
he<br>
&gt; lib in your sysroot; try rebuilding openjade-native.<br>
&gt;<br>
&gt; Tomas<br>
&gt; _______________________________________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/poky</a><br>
<br>
<br>
</div></div>&gt;try rebuilding openjade-native<br>
<br>
How i can do it?Now i&#39;m rebuilding bitbake core-image-sato-sdk again<br=
>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</div></div></blockquote></div><br><br>Bump!Issue still here.<br>And i dont=
&#39;t know how to solve it<br>

--f46d042f95c089c54904cb600716--
