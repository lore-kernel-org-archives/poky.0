Return-Path: <srinivasan.rns@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3CD2E00AB9; Tue,  4 Sep 2018 22:44:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (srinivasan.rns[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f196.google.com (mail-qt0-f196.google.com
	[209.85.216.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69FB5E00A54;
	Tue,  4 Sep 2018 22:44:00 -0700 (PDT)
Received: by mail-qt0-f196.google.com with SMTP id g44-v6so6742445qtb.12;
	Tue, 04 Sep 2018 22:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=1a0z3+yDxd/AbjwQByLgvbFSQkBkqrr4fc2Q+70qmwQ=;
	b=SfxFNwH0BVa59UT2uZ69ZukJ6OLLLX30/zwwO+UkHluUbhu/wrJhXbUw2nIHBalsin
	RR9GA0Y+4lkqgH1sSeCCTm3GvpkN2XhrR2rTyHrnckHcAaniNL1UfjVOXmszQBcIbbbe
	cYHilkmf9Lkgun1WZcMctDp9zYlO/diD6xNxg7R2Ts8aJbVuNpODODVWSBWU+NiXGFHo
	6SY2rbIlTvpaf+qhEV9FJoUA4pKPF/ol2y8+CWa0PXFDrH5t6uFECbluOisYnNUPoYSV
	ii2AAKOkb5NHhEil2rt6bHSxnQ95yDC0OvUvQtQf8CAtmG7gupw/YKLxoJR3PhN0P2IE
	5ecw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=1a0z3+yDxd/AbjwQByLgvbFSQkBkqrr4fc2Q+70qmwQ=;
	b=pAdLQzKRbh61DyWOEFM0LPeIo+g1EIbFc8JngLNgxp13hwItNf8bHhSZoJRnxwkgdF
	+cOuCGw8v+kVJwiXHnopqQLdCmVHfX74MYJPsW5YsJH9Ij1wcWPa7b7o7AE7Wk5Ff39K
	ajWyZ6YkrxAoCc4p69oVl6n2242W0kyD4+lVI3VhU7jfZ0yjJaNM5oVBnLmvi8r8vxRa
	4IV5+DJq3E4hik8moGudpGXzrjKFT8YKhSZYlC0xIM9wX1gsvRwsjvFixY0MA5WhHnkx
	ppMJxJjSpCSGou2iCpdXErHT+q+KKltW9APCqQK/v05QXIFm99A6+iQKZ8+ghL2b00sd
	F+TA==
X-Gm-Message-State: APzg51DxifelA/c7ihEq7pLVjFr2ZQpO55XMEbgFGTWUIEfHJMoeq3aJ
	/4dIzoYcgwuNJTEpEeNDYIftlJNWXn2qCTvvD6BbIk1jkMc=
X-Google-Smtp-Source: ANB0VdYaLTFkIuG4x8IX6nuv39K/8bDVigx09JpAn4LDfSQXke5146joZeIbTTJKhxFjkVfUnS7kZ/DdkGc3O/Kp66c=
X-Received: by 2002:a0c:e80c:: with SMTP id
	y12-v6mr32103771qvn.105.1536126239658; 
	Tue, 04 Sep 2018 22:43:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAFsTbWdWMce5h_MBbNiUgsJ+Pcdu=V3jJqf6StSFxJ0d82Z6WQ@mail.gmail.com>
	<CAMKF1sp7e_JZE68Cs29RC+jBRQUktj8C3-XfO_itQJT+ObQx=A@mail.gmail.com>
	<CAFsTbWeUj6zXkpKQ+LeFjZf6w2Xzv11nFWA=3S7D2XNOKOnP=w@mail.gmail.com>
	<2275019.nIMUWJAHk9@localhost.localdomain>
In-Reply-To: <2275019.nIMUWJAHk9@localhost.localdomain>
From: srinivasan <srinivasan.rns@gmail.com>
Date: Wed, 5 Sep 2018 11:13:49 +0530
Message-ID: <CAFsTbWckbdBLy5OE8FFqvq5TrMreasfNUdY2DTMXK5fkwxKoSQ@mail.gmail.com>
To: paul.eggleton@linux.intel.com
Cc: yocto-bsp@yoctoproject.org, linux-yocto@yoctoproject.org,
	yocto-infrastructure@yoctoproject.org,
	yocto-builds@yoctoproject.org, meta-intel@yoctoproject.org,
	poky@yoctoproject.org
Subject: Re: Yocto kernel compilation issues
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
X-List-Received-Date: Wed, 05 Sep 2018 05:44:00 -0000
Content-Type: multipart/alternative; boundary="000000000000d85a4b0575194214"

--000000000000d85a4b0575194214
Content-Type: text/plain; charset="UTF-8"

"inherit kernel" doesn't allow to add new kernels for the very first to
yocto build system for example adding the below kernel



*- The kernel used would be the Linux-rt-devel v4.14.39 from the git repo
in https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-rt-devel.git/
<https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-rt-devel.git/>*

Because I tried adding the above new kernel for the first time using
"inherit kernel", and ended with number of issues

And I hope, "inherit kernel" works only for yocto based linux kernels that
is already available.

Could you please guide me if my understanding is wrong w.r.t the above?

On Wed, Sep 5, 2018 at 8:21 AM Paul Eggleton <paul.eggleton@linux.intel.com>
wrote:

> On Wednesday, 5 September 2018 1:44:22 PM NZST srinivasan wrote:
> > Adding the "DEPENDS += "xz-native bc-native" in the "linux-srini_4.14.bb
> "
> > did the trick
>
> FYI the main issue with your kernel recipe is it does not "inherit kernel"
> which takes care of this (and many other things) for you. I guess you
> based
> your recipe on linux-dummy.bb, but that recipe is special and shouldn't
> be
> used as a template for a real kernel.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>
>
>

--000000000000d85a4b0575194214
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sa=
ns ms,sans-serif">&quot;inherit kernel&quot; doesn&#39;t allow to add new k=
ernels for the very first to yocto build system for example adding the belo=
w kernel</div><div class=3D"gmail_default" style=3D"font-family:comic sans =
ms,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:=
comic sans ms,sans-serif"><strong style=3D"font-family:Arial,Helvetica,sans=
-serif">- The kernel used would be the Linux-rt-devel v4.14.39 from the git=
 repo in=C2=A0<br><br><a href=3D"https://git.kernel.org/pub/scm/linux/kerne=
l/git/rt/linux-rt-devel.git/" target=3D"_blank">https://git.kernel.org/pub/=
scm/linux/kernel/git/rt/linux-rt-devel.git/</a></strong>=C2=A0=C2=A0<br></d=
iv><div class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-ser=
if"><br></div><div class=3D"gmail_default" style=3D"font-family:comic sans =
ms,sans-serif">Because I tried adding the above new kernel for the first ti=
me using &quot;inherit kernel&quot;, and ended with number of issues</div><=
div class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif">=
<br></div><div class=3D"gmail_default" style=3D"font-family:comic sans ms,s=
ans-serif">And I hope, &quot;inherit kernel&quot; works only for yocto base=
d linux kernels that is already available.</div><div class=3D"gmail_default=
" style=3D"font-family:comic sans ms,sans-serif"><br></div><div class=3D"gm=
ail_default" style=3D"font-family:comic sans ms,sans-serif">Could you pleas=
e guide me if my understanding is wrong w.r.t the above?</div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Sep 5, 2018 at 8:21 AM Pau=
l Eggleton &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com">paul.egglet=
on@linux.intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">O=
n Wednesday, 5 September 2018 1:44:22 PM NZST srinivasan wrote:<br>
&gt; Adding the &quot;DEPENDS +=3D &quot;xz-native bc-native&quot; in the &=
quot;<a href=3D"http://linux-srini_4.14.bb" rel=3D"noreferrer" target=3D"_b=
lank">linux-srini_4.14.bb</a>&quot;<br>
&gt; did the trick<br>
<br>
FYI the main issue with your kernel recipe is it does not &quot;inherit ker=
nel&quot; <br>
which takes care of this (and many other things) for you. I guess you based=
 <br>
your recipe on <a href=3D"http://linux-dummy.bb" rel=3D"noreferrer" target=
=3D"_blank">linux-dummy.bb</a>, but that recipe is special and shouldn&#39;=
t be <br>
used as a template for a real kernel.<br>
<br>
Cheers,<br>
Paul<br>
<br>
-- <br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
<br>
<br>
</blockquote></div>

--000000000000d85a4b0575194214--
