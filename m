Return-Path: <lpapp@archlinux.us>
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FA98E01575
	for <poky@yoctoproject.org>; Thu, 15 Aug 2013 05:03:22 -0700 (PDT)
Received: by mail-pa0-f46.google.com with SMTP id fa1so679465pad.19
	for <poky@yoctoproject.org>; Thu, 15 Aug 2013 05:03:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=Y7W5x9ShHoGfhQPmKpuuRXA+7YrSRaIsLW4t+p803yU=;
	b=F0U0n5IvpKTy3JRuZb9BQQXEbSWb+ZfphkCrNel+hx67PlsnqgszTYpoyBx8LBgDa+
	Uuitaoi4XydTX0w/FZ2gbB5H236M7wA9Of2U+JbSEoOnCspbGpLVZkOp9/XP6CPyKzAH
	+dSpNvPZyvhGgw/tLj7XuWKDSmdxfYXrguphUuAXoo9B69wdcETfNDhuCT472BezhgSc
	x74WcI2YoaPsrcB2VQTQRPYRj1KFuZ+9pIzGL3/XrKMY5kcJDKeOTtLXQJP1+HdknXZc
	astiVSID8ncq2n59vINumB2PQaOAvFW15PKGF31XwWaeG3B3+rBfOwKYg2r9d/HRl5Us
	NB4Q==
X-Gm-Message-State: ALoCoQk4rkiMtDl/EeMpHjvHHX5r/A9tMNsrSwuda0djaN2qSv32xWtAIPr7U7GD5p1Ty+53AHmY
MIME-Version: 1.0
X-Received: by 10.66.155.102 with SMTP id vv6mr6682363pab.89.1376568201877;
	Thu, 15 Aug 2013 05:03:21 -0700 (PDT)
Sender: lpapp@archlinux.us
Received: by 10.70.37.237 with HTTP; Thu, 15 Aug 2013 05:03:21 -0700 (PDT)
In-Reply-To: <520CC328.4020106@communistcode.co.uk>
References: <CAOMwXhP1MH7aYWAf7_WPm1_5-GX6ugUOtyzZtC6q_+0Wp9jZBg@mail.gmail.com>
	<CAJTo0LZH_tEGaom5n9a7Dd2q8bzfVHNm6sFRTFBqD_JKGKe-dA@mail.gmail.com>
	<CAOMwXhMLBa+qefh1HgDB57EhqU_HJ4Ju9Y-V881PRGU0UYgS4g@mail.gmail.com>
	<520C9E77.1060201@communistcode.co.uk>
	<CAOMwXhMxu1tzsXD7srHm9RBFXFbwojoZz9FcZZy7cPiohgOP1g@mail.gmail.com>
	<520CC328.4020106@communistcode.co.uk>
Date: Thu, 15 Aug 2013 13:03:21 +0100
X-Google-Sender-Auth: 6H3l_TLFtTQdqKjESGTG3IlPMvw
Message-ID: <CAOMwXhOe0dNZW4xwsrdjsGmHF2Jp1A0a48Cui7nhi2wdv1kQPw@mail.gmail.com>
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
X-List-Received-Date: Thu, 15 Aug 2013 12:03:23 -0000
Content-Type: multipart/alternative; boundary=047d7b86e3a8aea98c04e3fb426f

--047d7b86e3a8aea98c04e3fb426f
Content-Type: text/plain; charset=ISO-8859-1

That was not a real question, more like a hint for you to think a bit more
... ;-)

But since you seem to be not getting the point, should stunnel go to
recipes-support inside meta-working layer?


On Thu, Aug 15, 2013 at 1:01 PM, Jack Mitchell <ml@communistcode.co.uk>wrote:

> On 15/08/13 10:29, Laszlo Papp wrote:
> > You have to put a recipe inside a recipes-foo, right?
> >
> >
> > On Thu, Aug 15, 2013 at 10:25 AM, Jack Mitchell <ml@communistcode.co.uk
> > <mailto:ml@communistcode.co.uk>> wrote:
> >
> >     On 14/08/13 10:37, Laszlo Papp wrote:
> >     > On Wed, Aug 14, 2013 at 9:34 AM, Burton, Ross
> >     <ross.burton@intel.com <mailto:ross.burton@intel.com>
> >     > <mailto:ross.burton@intel.com <mailto:ross.burton@intel.com>>>
> wrote:
> >     >
> >     >     There's a meta-networking layer in the meta-oe repository
> which is
> >     >     probably a good place to start.
> >     >
> >     >
> >     > recipes-support?
> >     >
> >     >
> >
> >     https://github.com/openembedded/meta-oe/tree/master/meta-networking
> >
> >
> >     --
> >       Jack Mitchell (jack@embed.me.uk <mailto:jack@embed.me.uk>)
> >       Embedded Systems Engineer
> >       Cambrideshire, UK
> >       http://www.embed.me.uk
> >     --
> >     _______________________________________________
> >     poky mailing list
> >     poky@yoctoproject.org <mailto:poky@yoctoproject.org>
> >     https://lists.yoctoproject.org/listinfo/poky
> >
> >
>
> Correct, you don't want to put it in the root directory.
>
> --
>   Jack Mitchell (jack@embed.me.uk)
>   Embedded Systems Engineer
>   Cambrideshire, UK
>   http://www.embed.me.uk
> --
>

--047d7b86e3a8aea98c04e3fb426f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That was not a real question, more like a hint for you to =
think a bit more ... ;-)<div><br></div><div>But since you seem to be not ge=
tting the point, should stunnel go to recipes-support inside meta-working l=
ayer?</div>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu,=
 Aug 15, 2013 at 1:01 PM, Jack Mitchell <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:ml@communistcode.co.uk" target=3D"_blank">ml@communistcode.co.uk</a>&g=
t;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 15/08/13 10:29, Laszlo =
Papp wrote:<br>
&gt; You have to put a recipe inside a recipes-foo, right?<br>
&gt;<br>
&gt;<br>
&gt; On Thu, Aug 15, 2013 at 10:25 AM, Jack Mitchell &lt;<a href=3D"mailto:=
ml@communistcode.co.uk">ml@communistcode.co.uk</a><br>
</div><div class=3D"im">&gt; &lt;mailto:<a href=3D"mailto:ml@communistcode.=
co.uk">ml@communistcode.co.uk</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt; =A0 =A0 On 14/08/13 10:37, Laszlo Papp wrote:<br>
&gt; =A0 =A0 &gt; On Wed, Aug 14, 2013 at 9:34 AM, Burton, Ross<br>
&gt; =A0 =A0 &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel=
.com</a> &lt;mailto:<a href=3D"mailto:ross.burton@intel.com">ross.burton@in=
tel.com</a>&gt;<br>
</div><div class=3D"im">&gt; =A0 =A0 &gt; &lt;mailto:<a href=3D"mailto:ross=
.burton@intel.com">ross.burton@intel.com</a> &lt;mailto:<a href=3D"mailto:r=
oss.burton@intel.com">ross.burton@intel.com</a>&gt;&gt;&gt; wrote:<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 There&#39;s a meta-networking layer in the meta-o=
e repository which is<br>
&gt; =A0 =A0 &gt; =A0 =A0 probably a good place to start.<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; recipes-support?<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt;<br>
&gt;<br>
&gt; =A0 =A0 <a href=3D"https://github.com/openembedded/meta-oe/tree/master=
/meta-networking" target=3D"_blank">https://github.com/openembedded/meta-oe=
/tree/master/meta-networking</a><br>
&gt;<br>
&gt;<br>
&gt; =A0 =A0 --<br>
</div>&gt; =A0 =A0 =A0 Jack Mitchell (<a href=3D"mailto:jack@embed.me.uk">j=
ack@embed.me.uk</a> &lt;mailto:<a href=3D"mailto:jack@embed.me.uk">jack@emb=
ed.me.uk</a>&gt;)<br>
<div class=3D"im">&gt; =A0 =A0 =A0 Embedded Systems Engineer<br>
&gt; =A0 =A0 =A0 Cambrideshire, UK<br>
&gt; =A0 =A0 =A0 <a href=3D"http://www.embed.me.uk" target=3D"_blank">http:=
//www.embed.me.uk</a><br>
&gt; =A0 =A0 --<br>
&gt; =A0 =A0 _______________________________________________<br>
&gt; =A0 =A0 poky mailing list<br>
</div>&gt; =A0 =A0 <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproje=
ct.org</a> &lt;mailto:<a href=3D"mailto:poky@yoctoproject.org">poky@yoctopr=
oject.org</a>&gt;<br>
&gt; =A0 =A0 <a href=3D"https://lists.yoctoproject.org/listinfo/poky" targe=
t=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
&gt;<br>
&gt;<br>
<br>
Correct, you don&#39;t want to put it in the root directory.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
--<br>
=A0 Jack Mitchell (<a href=3D"mailto:jack@embed.me.uk">jack@embed.me.uk</a>=
)<br>
=A0 Embedded Systems Engineer<br>
=A0 Cambrideshire, UK<br>
=A0 <a href=3D"http://www.embed.me.uk" target=3D"_blank">http://www.embed.m=
e.uk</a><br>
--<br>
</div></div></blockquote></div><br></div>

--047d7b86e3a8aea98c04e3fb426f--
