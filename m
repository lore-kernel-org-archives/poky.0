Return-Path: <kiran.bobbu@gmail.com>
Received: from mail-oa0-f43.google.com (mail-oa0-f43.google.com
	[209.85.219.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C9F1E01570
	for <poky@yoctoproject.org>; Wed, 28 Aug 2013 02:34:35 -0700 (PDT)
Received: by mail-oa0-f43.google.com with SMTP id i10so7302748oag.2
	for <poky@yoctoproject.org>; Wed, 28 Aug 2013 02:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=AzfkJnK7nbbgKnu/5mWeX060JyPDhWx6yXFMSGQmGWI=;
	b=ed26y6iURNNIOC1l4kp60l7MuHRLIRydFyd6lcrMNc8bWycDHusUxgHlSJrOBjoK0P
	KBl9016QXwEJt9J5qsgYFI4P0tOzB22iU/H9jr82POYVorgCgI8jl/J522FTD1TiZmNu
	/YC2J98i0kfV46HFU+OIEsgE+PnxqkyqrGD5armSIEWopr6xUwyb2mOHPJD+VseRYh2f
	7764R6qr8FxF4UjJvGphWMC1EaTKBC/smbdbPvgY+QDos9AUkbTELN3yoyYMwbYP+Acg
	0Fs7cORhFYqWcOowXBLaEijQLTctfaVytndD2bd34DqL13FQPqKQfhLRc+VWMZEaaIkq
	LTCg==
MIME-Version: 1.0
X-Received: by 10.60.173.145 with SMTP id bk17mr248332oec.64.1377682474855;
	Wed, 28 Aug 2013 02:34:34 -0700 (PDT)
Received: by 10.182.183.99 with HTTP; Wed, 28 Aug 2013 02:34:34 -0700 (PDT)
In-Reply-To: <20130828085429.GJ3544@jama>
References: <CAO7jpqeaH9S6aXxCkzsu_B99fNnJvQbvKsGZrH4KWszFuPkbOg@mail.gmail.com>
	<20130828085429.GJ3544@jama>
Date: Wed, 28 Aug 2013 15:04:34 +0530
Message-ID: <CAO7jpqd4wSgqw7SyTB3m6TChZUvP2Yif-96C-QGX4k_-T8r39g@mail.gmail.com>
From: kiran bobbu <kiran.bobbu@gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: how to modify compilation flags for hardfp compilation
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
X-List-Received-Date: Wed, 28 Aug 2013 09:34:37 -0000
Content-Type: multipart/alternative; boundary=089e012298e486f13a04e4feb2c1

--089e012298e486f13a04e4feb2c1
Content-Type: text/plain; charset=ISO-8859-1

i see DEFAULTTUNE  field for beagleboard.conf in  conf/machine.
But i want it for  machine type  vexpressa9


On Wed, Aug 28, 2013 at 2:24 PM, Martin Jansa <martin.jansa@gmail.com>wrote:

> On Wed, Aug 28, 2013 at 01:53:43PM +0530, kiran bobbu wrote:
> > Hi,
> >
> > By default  poky project builds with softfp compiler option.
> > how to modify this flag   to build poky filesystem   with compiler flag
> as
> > hardfp?
>
> See DEFAULTTUNE values in conf/machine/
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>



-- 

-Kiran

--089e012298e486f13a04e4feb2c1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>i see DEFAULTTUNE=A0 field for beagleboard.conf in=A0=
 conf/machine.<br></div>But i want it for=A0 machine type=A0 vexpressa9<br>=
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed,=
 Aug 28, 2013 at 2:24 PM, Martin Jansa <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>&gt=
;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On W=
ed, Aug 28, 2013 at 01:53:43PM +0530, kiran bobbu wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; By default =A0poky project builds with softfp compiler option.<br>
&gt; how to modify this flag =A0 to build poky filesystem =A0 with compiler=
 flag as<br>
&gt; hardfp?<br>
<br>
</div></div>See DEFAULTTUNE values in conf/machine/<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Martin &#39;JaMa&#39; Jansa =A0 =A0 jabber: <a href=3D"mailto:Martin.Jansa@=
gmail.com">Martin.Jansa@gmail.com</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><br>-Kira=
n<br>
</div>

--089e012298e486f13a04e4feb2c1--
