Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E49A1E00CFD; Sat, 13 Feb 2016 10:16:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E370E00CF8
	for <poky@yoctoproject.org>; Sat, 13 Feb 2016 10:16:23 -0800 (PST)
Received: by mail-vk0-f65.google.com with SMTP id k196so6049537vka.3
	for <poky@yoctoproject.org>; Sat, 13 Feb 2016 10:16:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=dU2s+Cchsx8nd0zzmkkvIBNcNg0hgrkO8DkLBZmqUfw=;
	b=zr3sUOxU2ur+yITXggDGaBEwJGyzhQitr+3DThwpq9HHoL4bf29oa0jX+cxcyqq/lJ
	fwkVtTGxr/gmEbihwoELLOEvGoE+MRSNKPv/R3ebyiT5zpNl+i+Mgd/FN4eUPCEfQ9lu
	CsR0v8bWhiShBRrOcPgLh3a83sOlBlHMw0izP40lwX2IsfEuDTUVOx31ubbswNug+xzi
	74bV1iqSGz0QGYWcLRpPS4V3nC+DqcptditDY77MVsqU1fxUHdhJWUquM4LtuTF/H8Y1
	wXvUFbck1zptd82P1BSXX/BEwuIOIXcXLC9Zza80E5lufOPpLnG4VwhktGOzmqeUef0W
	XOpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=dU2s+Cchsx8nd0zzmkkvIBNcNg0hgrkO8DkLBZmqUfw=;
	b=jgGMO8xxOGp3kc5aEvDae3Y8LjwwvlfmhoyCWI3gOpnOd8UI5UPFV72XnzpT5wDeOH
	RsOLRBUsN7U1BlVDIwzgFhpbYrpTYG4dSvwHyn3JskFQ8UlVKWZnHKaSMyYrTNWKOYL9
	jZ6liPC8k0NUvpnHDUDuFEq1TwdW2ew97rJro7PW8yGBYExjL6GoLSBM2LUoLgS0n2wl
	Pw5r8XE4exVii6gVvV6BPIRscl6W9SRoMyCh1nw68pOmrt+Sx83Mv6isM+Wwo4/thI3X
	gH3URVl+rK1Nvrj7y2pOirhrYLrTkAXMxlspH9wwS4ADjBwRryEhBKSkP43lqoECe9Bk
	vH1g==
X-Gm-Message-State: AG10YOQvQojzZh3GA5NA0WSw9ndpwGrxpj/HB8uCZmGJB/IqRI4rkPundWsCIUwJTFXk5HX+wb2R6PKWWhgfgA==
MIME-Version: 1.0
X-Received: by 10.31.49.207 with SMTP id x198mr6596859vkx.1.1455387382633;
	Sat, 13 Feb 2016 10:16:22 -0800 (PST)
Received: by 10.176.0.50 with HTTP; Sat, 13 Feb 2016 10:16:22 -0800 (PST)
In-Reply-To: <1455352317.16142.344.camel@linuxfoundation.org>
References: <cover.1455203562.git.bruce.ashfield@windriver.com>
	<2e6d2b75837731be983d888eaa82a9cfcf660e85.1455203562.git.bruce.ashfield@windriver.com>
	<1455287765.16142.321.camel@linuxfoundation.org>
	<1455291157.16142.323.camel@linuxfoundation.org>
	<1455352317.16142.344.camel@linuxfoundation.org>
Date: Sat, 13 Feb 2016 13:16:22 -0500
Message-ID: <CADkTA4NQLqEVc8L=T=HAYoG4JWpgbhW_+uCWuafR+L1cAxN_Vw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] poky: update qemu* to prefer 4.4 kernel
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
X-List-Received-Date: Sat, 13 Feb 2016 18:16:28 -0000
Content-Type: multipart/alternative; boundary=001a11430efef3dac2052baac79e

--001a11430efef3dac2052baac79e
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 13, 2016 at 3:31 AM, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Fri, 2016-02-12 at 15:32 +0000, Richard Purdie wrote:
> > On Fri, 2016-02-12 at 14:36 +0000, Richard Purdie wrote:
> > > A quick look at upstream makes me wonder about:
> > >
> > > https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/com
> > > mi
> > > t/?id=d9fe4fab11976e56b2e992980bf6ce948bdf02ac
> > >
> > > which changes the code in this area.
> >
> > FWIW this doesn't help, the problem still exists after applying it.
> >
> > Setting CONFIG_X86_PAT to is not set in the defconfig did "fix" it,
> > unsurprisingly.
>
> Also, in the last set of builds, despite booting with "nopat", we see:
>
> https://autobuilder.yoctoproject.org/main/builders/nightly-x86-lsb/buil
> ds/637/steps/Running%20Sanity%20Tests/logs/stdio
>
> Central error: [    9.298049] Failed to add WC MTRR for
> [fd000000-fdffffff]; performance may suffer.
>
> Why we only see this on the lsb run I don't know but that address looks
> like the one causing problems elsewhere with PAT. It could therefore
> look like this is related to uvesafb.
>

Interesting. And of course as I was mentioning in my update discussion, that
I ran out of cycles to test the 3x kernel types with LSB .. murphy's law I
suppose.

Bruce


>
> Cheers,
>
> Richard
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--001a11430efef3dac2052baac79e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sat, Feb 13, 2016 at 3:31 AM, Richard Purdie <span dir=3D"ltr">&lt;<=
a href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_blank">rich=
ard.purdie@linuxfoundation.org</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><span class=3D"">On Fri, 2016-02-12 at 15:32 +0000, Richard P=
urdie wrote:<br>
&gt; On Fri, 2016-02-12 at 14:36 +0000, Richard Purdie wrote:<br>
&gt; &gt; A quick look at upstream makes me wonder about:<br>
&gt; &gt;<br>
&gt; &gt; <a href=3D"https://git.kernel.org/cgit/linux/kernel/git/torvalds/=
linux.git/com" rel=3D"noreferrer" target=3D"_blank">https://git.kernel.org/=
cgit/linux/kernel/git/torvalds/linux.git/com</a><br>
&gt; &gt; mi<br>
&gt; &gt; t/?id=3Dd9fe4fab11976e56b2e992980bf6ce948bdf02ac<br>
&gt; &gt;<br>
&gt; &gt; which changes the code in this area.<br>
&gt;<br>
&gt; FWIW this doesn&#39;t help, the problem still exists after applying it=
.<br>
&gt;<br>
&gt; Setting CONFIG_X86_PAT to is not set in the defconfig did &quot;fix&qu=
ot; it,<br>
&gt; unsurprisingly.<br>
<br>
</span>Also, in the last set of builds, despite booting with &quot;nopat&qu=
ot;, we see:<br>
<br>
<a href=3D"https://autobuilder.yoctoproject.org/main/builders/nightly-x86-l=
sb/buil
ds/637/steps/Running%20Sanity%20Tests/logs/stdio" rel=3D"noreferrer" target=
=3D"_blank">https://autobuilder.yoctoproject.org/main/builders/nightly-x86-=
lsb/buil<br>
ds/637/steps/Running%20Sanity%20Tests/logs/stdio</a><br>
<br>
Central error: [=C2=A0 =C2=A0 9.298049] Failed to add WC MTRR for [fd000000=
-fdffffff]; performance may suffer.<br>
<br>
Why we only see this on the lsb run I don&#39;t know but that address looks=
<br>
like the one causing problems elsewhere with PAT. It could therefore<br>
look like this is related to uvesafb.<br></blockquote><div><br></div><div>I=
nteresting. And of course as I was mentioning in my update discussion, that=
</div><div>I ran out of cycles to test the 3x kernel types with LSB .. murp=
hy&#39;s law I=C2=A0</div><div>suppose.</div><div><br></div><div>Bruce</div=
><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
<br>
Richard<br>
--<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div class=3D"gmail_signature">&quot;Thou shalt not follow the NULL pointer=
, for chaos and madness await thee at its end&quot;</div>
</div></div>

--001a11430efef3dac2052baac79e--
