Return-Path: <lpapp@archlinux.us>
Received: from mail-pd0-f182.google.com (mail-pd0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 258F3E01575
	for <poky@yoctoproject.org>; Thu, 15 Aug 2013 05:30:25 -0700 (PDT)
Received: by mail-pd0-f182.google.com with SMTP id r10so791975pdi.41
	for <poky@yoctoproject.org>; Thu, 15 Aug 2013 05:30:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=ab8HMkPr8Qefugd8zmbAcubIcosCb7HRlobQXb6nNgY=;
	b=JMwrAWTc2iNKJ8n/5OORSKZrSmsvuRs07LLGwbHPEbRL3hjNb2iYXa+/ujtnGEdDN9
	ODPfd9SAU+wxxhat8cfPo7buWwn2kjdTSbPJXPYbN6ULfU4rKrfvbVdSVtvlDhPxEG3d
	7SxXpb56jDPoDMgDaKxBSbkfL/7Vy+AruGAkQQeE0rPJXkbRMk2nghSJb+2CHyYJivtg
	yJKoSDo6F7b9aPuNYmTLs2WRvA1UycJFuIs45OXRin+xylBrbFL3TwGVSrqvOxbcGwF1
	bF7yfKb+XEoh5BJwuZkDPNWnI1PRebrSYxT813L+O/g2Zk4Vq1cMrHny4ItG3BhlvPnW
	QemQ==
X-Gm-Message-State: ALoCoQn4XFHeQaR5yptE2DkU8C6A1+IqC0VIlwR5XELjw+F8MwXepVzG/SBvfT7LW2pQbf8S1cCo
MIME-Version: 1.0
X-Received: by 10.68.163.131 with SMTP id yi3mr15459728pbb.55.1376569825350;
	Thu, 15 Aug 2013 05:30:25 -0700 (PDT)
Sender: lpapp@archlinux.us
Received: by 10.70.37.237 with HTTP; Thu, 15 Aug 2013 05:30:25 -0700 (PDT)
In-Reply-To: <520CC6B7.1090809@communistcode.co.uk>
References: <CAOMwXhP1MH7aYWAf7_WPm1_5-GX6ugUOtyzZtC6q_+0Wp9jZBg@mail.gmail.com>
	<CAJTo0LZH_tEGaom5n9a7Dd2q8bzfVHNm6sFRTFBqD_JKGKe-dA@mail.gmail.com>
	<CAOMwXhMLBa+qefh1HgDB57EhqU_HJ4Ju9Y-V881PRGU0UYgS4g@mail.gmail.com>
	<520C9E77.1060201@communistcode.co.uk>
	<CAOMwXhMxu1tzsXD7srHm9RBFXFbwojoZz9FcZZy7cPiohgOP1g@mail.gmail.com>
	<520CC328.4020106@communistcode.co.uk>
	<CAOMwXhOe0dNZW4xwsrdjsGmHF2Jp1A0a48Cui7nhi2wdv1kQPw@mail.gmail.com>
	<520CC46F.9020501@communistcode.co.uk>
	<CAOMwXhMHKviZBUyTmnjhot8D5RC8b4saiOAYiLveJOF_=MD0_Q@mail.gmail.com>
	<520CC6B7.1090809@communistcode.co.uk>
Date: Thu, 15 Aug 2013 13:30:25 +0100
X-Google-Sender-Auth: 6EClIhZC706ZngxIdZlf71fTHds
Message-ID: <CAOMwXhNef+qsh8kB=E7FRNBb2OmmvAJ5Cb51bE5GnHT=6TkovQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 15 Aug 2013 12:30:28 -0000
Content-Type: multipart/alternative; boundary=047d7bacb46e72ecf104e3fba3a0

--047d7bacb46e72ecf104e3fba3a0
Content-Type: text/plain; charset=ISO-8859-1

That is fine, thanks.


On Thu, Aug 15, 2013 at 1:16 PM, Jack Mitchell <ml@communistcode.co.uk>wrote:

> On 15/08/13 13:12, Laszlo Papp wrote:
> > On Thu, Aug 15, 2013 at 1:07 PM, Jack Mitchell <ml@communistcode.co.uk
> > <mailto:ml@communistcode.co.uk>> wrote:
> >
> >     I've no idea what stunnel does, I imagine you're more qualified to
> >     decide on it's sub category.
> >
> >
> > I am not really that qualified with subcategory management in Yocto, so
> > I hope someone can confirm this...
> >
> > openembedded-devel will be a better list to contact according to the
> > MAINTAINERS
> > file:
> http://cgit.openembedded.org/meta-openembedded/tree/meta-networking/MAINTAINERS
>
> Yes, I would send the patch to the openembedded-devel list, with what
> you think is a suitable sub-category.
>
> Copy in Joe MacDonald (joe@deserted.net) as he's the maintainer and will
> be best suited to helping decide where it should go.
>
> Apologies for the misunderstanding.
>
> --
>   Jack Mitchell (jack@embed.me.uk)
>   Embedded Systems Engineer
>   Cambrideshire, UK
>   http://www.embed.me.uk
> --
>

--047d7bacb46e72ecf104e3fba3a0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That is fine, thanks.</div><div class=3D"gmail_extra"><br>=
<br><div class=3D"gmail_quote">On Thu, Aug 15, 2013 at 1:16 PM, Jack Mitche=
ll <span dir=3D"ltr">&lt;<a href=3D"mailto:ml@communistcode.co.uk" target=
=3D"_blank">ml@communistcode.co.uk</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 15/08/13 13:12, Laszlo =
Papp wrote:<br>
&gt; On Thu, Aug 15, 2013 at 1:07 PM, Jack Mitchell &lt;<a href=3D"mailto:m=
l@communistcode.co.uk">ml@communistcode.co.uk</a><br>
</div><div class=3D"im">&gt; &lt;mailto:<a href=3D"mailto:ml@communistcode.=
co.uk">ml@communistcode.co.uk</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt; =A0 =A0 I&#39;ve no idea what stunnel does, I imagine you&#39;re more =
qualified to<br>
&gt; =A0 =A0 decide on it&#39;s sub category.<br>
&gt;<br>
&gt;<br>
&gt; I am not really that qualified with subcategory management in Yocto, s=
o<br>
&gt; I hope someone can confirm this...<br>
&gt;<br>
&gt; openembedded-devel will be a better list to contact according to the<b=
r>
&gt; MAINTAINERS<br>
&gt; file: <a href=3D"http://cgit.openembedded.org/meta-openembedded/tree/m=
eta-networking/MAINTAINERS" target=3D"_blank">http://cgit.openembedded.org/=
meta-openembedded/tree/meta-networking/MAINTAINERS</a><br>
<br>
</div>Yes, I would send the patch to the openembedded-devel list, with what=
<br>
you think is a suitable sub-category.<br>
<br>
Copy in Joe MacDonald (<a href=3D"mailto:joe@deserted.net">joe@deserted.net=
</a>) as he&#39;s the maintainer and will<br>
be best suited to helping decide where it should go.<br>
<br>
Apologies for the misunderstanding.<br>
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

--047d7bacb46e72ecf104e3fba3a0--
