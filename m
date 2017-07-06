Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63D11E00AE6; Thu,  6 Jul 2017 04:30:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.179 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f179.google.com (mail-qt0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 300CAE00718
	for <poky@yoctoproject.org>; Thu,  6 Jul 2017 04:30:20 -0700 (PDT)
Received: by mail-qt0-f179.google.com with SMTP id i2so12586681qta.3
	for <poky@yoctoproject.org>; Thu, 06 Jul 2017 04:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kuNIjUE5gOVVq08obl6x0rtq1I6niXdwZP6pbYincQk=;
	b=2KVm8uNOKTY2to27KNGwoh+zgeNA0LFHzP9IH+2RuBi31neOl0L34Wl93CP6kMHxz1
	le21evKnA5IDM8J5Rh1nw336vvsJmtLRcTTH8/VE25fq4mhxkAji3m7DsW2bZzQDdYXH
	p0DFrwo2S6YjBl4XonMaky/YMEmWdFVNwaW9QMm6S4G/nmaFiuHkgzmbAZnww608U0r7
	NG9CnQCsncgEmv/OGSOZUmacBDPH1zoeNeIvIJZeQ4v9MjkQBHEv5v1f6G2mjdEVIUCP
	DpQBXZ9O8Bs03Naa3kVr8brqoetE5FF3k1N8Sznfme05R7/IhVHCq7SlRvXcw7CMNenc
	PZNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kuNIjUE5gOVVq08obl6x0rtq1I6niXdwZP6pbYincQk=;
	b=hLH5txf4bN8mtw0frr1gSRW8Q7AJcNiX6mWDwUyCRegZPK7ZM2X1I2xZAf0Q0tM15f
	QsNM3KzgnbHR6hww+IjZ1AAxNjpRnf1gYKhBFOuaKEF3gJyOXFw4HriKeX1QzrfLSIHM
	UOhl0t6ID2N0xe9TeH3UT1KjfYE4ABLQA0kdhQuaUL+pOKe4higRWPnCgwRP08jva/8E
	GcbCNWXH2g6IVblGrhvfrXkU+1UQPNL1Tn/qXUzaz0eqCnIQKty7xP9h58AkDl6lgISJ
	zsHpUPZDBaJTBKuFjuBUr2+wqfiOg4maEHDPyd2T2IvdIxY1aONMn0Mm4BdWI4iARdyz
	lTWw==
X-Gm-Message-State: AIVw113lt59VYEeTTvhInQITYrNFQth4In+VxjMuNJTFi1jzy59En8XF
	gJRYig2VG7Xi3QBKFf31/HuTP3Pq5KPO
X-Received: by 10.237.55.105 with SMTP id i96mr35290027qtb.139.1499340620036; 
	Thu, 06 Jul 2017 04:30:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.31.118 with HTTP; Thu, 6 Jul 2017 04:29:59 -0700 (PDT)
In-Reply-To: <A8809961EB141E4596386C258A901BD70299E8CD80@SATURN.env.local>
References: <A8809961EB141E4596386C258A901BD70299E8CD31@SATURN.env.local>
	<CAJTo0LaOadfQdP8H1cin-Hd9BMPW_h0-q=XJz4A=Pwpf5+2Qvw@mail.gmail.com>
	<A8809961EB141E4596386C258A901BD70299E8CD80@SATURN.env.local>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 6 Jul 2017 12:29:59 +0100
Message-ID: <CAJTo0LYd97yFPTc+EGu=rAUcsB+pU8-=XWYYXU2whby8kVLRCA@mail.gmail.com>
To: David Freitag <DFreitag@environics.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] meta: Add support for GTK+-3.0 static libraries
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
X-List-Received-Date: Thu, 06 Jul 2017 11:30:24 -0000
Content-Type: multipart/alternative; boundary="001a113cd0180e13e00553a47157"

--001a113cd0180e13e00553a47157
Content-Type: text/plain; charset="UTF-8"

On 6 July 2017 at 00:16, David Freitag <DFreitag@environics.com> wrote:

> > GTK+ for many years has explicitly disabled static libraries, which is
> why you need to override that here.  That is my first hint that this may
> not be right.
>
> Interesting. Given this, would a patch of this nature even be merged
> upstream? Would a disabled-by-default PACKAGECONFIG be welcome?


I'd be opposed to enabling a static build of GTK+ out of the box because of
how many limitations it has (see below). GTK+ doesn't want to support
static linking because statically linking to GTK+ isn't really possible in
the real world.


> > *If* you want to support a static build of GTK+ then there are ways you
> can make it sort of work, but this is not it.  Look up
> --with-included-immodules, --disable-modules, etc in the GTK+
> documentation, and pass those.  You should end up with a static gtk+ which
> contains all the input method modules builtin, but as far as I know
> printing will still be broken.
>
> As the target system is an embedded device without the ability to print in
> the first place, losing support for print backends is a non-issue.
> Supposing a patch of this nature is welcome upstream, there would be a
> bitbake warning about this lack of support.


It's not just printing, of course.

GIO modules are all loaded at runtime.  gdk-pixbuf loaders are loaded at
runtime by default. Input method modules are loaded at runtime by default.
You may be willing to take the hit on all of this in your build but I don't
think it should be available as an option out of the box.

Seriously, have you considered not statically linking? This isn't 1987
anymore, even in embedded...

Ross

--001a113cd0180e13e00553a47157
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 6 July 2017 at 00:16, David Freitag <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:DFreitag@environics.com" target=3D"_blank">DFreitag@environics.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">&gt; G=
TK+ for many years has explicitly disabled static libraries, which is why y=
ou need to override that here.=C2=A0 That is my first hint that this may no=
t be right.<br>
<br>
</span>Interesting. Given this, would a patch of this nature even be merged=
 upstream? Would a disabled-by-default PACKAGECONFIG be welcome?</blockquot=
e><div><br></div><div>I&#39;d be opposed to enabling a static build of GTK+=
 out of the box because of how many limitations it has (see below). GTK+ do=
esn&#39;t want to support static linking because statically linking to GTK+=
 isn&#39;t really possible in the real world.</div><div>=C2=A0</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><span class=3D"">
&gt; *If* you want to support a static build of GTK+ then there are ways yo=
u can make it sort of work, but this is not it.=C2=A0 Look up --with-includ=
ed-immodules, --disable-modules, etc in the GTK+ documentation, and pass th=
ose.=C2=A0 You should end up with a static gtk+ which contains all the inpu=
t method modules builtin, but as far as I know printing will still be broke=
n.<br>
<br>
</span>As the target system is an embedded device without the ability to pr=
int in the first place, losing support for print backends is a non-issue. S=
upposing a patch of this nature is welcome upstream, there would be a bitba=
ke warning about this lack of support.</blockquote></div><br>It&#39;s not j=
ust printing, of course.</div><div class=3D"gmail_extra"><br></div><div cla=
ss=3D"gmail_extra">GIO modules are all loaded at runtime. =C2=A0gdk-pixbuf =
loaders are loaded at runtime by default. Input method modules are loaded a=
t runtime by default.=C2=A0 You may be willing to take the hit on all of th=
is in your build but I don&#39;t think it should be available as an option =
out of the box.</div><div class=3D"gmail_extra"><br></div><div class=3D"gma=
il_extra">Seriously, have you considered not statically linking? This isn&#=
39;t 1987 anymore, even in embedded...</div><div class=3D"gmail_extra"><br>=
</div><div class=3D"gmail_extra">Ross</div></div>

--001a113cd0180e13e00553a47157--
