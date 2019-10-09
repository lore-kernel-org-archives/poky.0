Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2355E00D8B; Wed,  9 Oct 2019 07:49:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.67 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f67.google.com (mail-ua1-f67.google.com
	[209.85.222.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29290E00BFF
	for <poky@yoctoproject.org>; Wed,  9 Oct 2019 07:49:25 -0700 (PDT)
Received: by mail-ua1-f67.google.com with SMTP id r19so853173uap.9
	for <poky@yoctoproject.org>; Wed, 09 Oct 2019 07:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=I8+X4Jx/LXzgYjS+jpCC3W7NuuKyLSJj8nnBxpmLwmc=;
	b=DiNETNP8aiICbfAYFeI/IE23wquln0sdEJABN9waOdZZxNQzNCwdAZCFCGISCj2FCs
	LfEY6ileT5ngOQTTDNeuV6XmT32bTQu6FUvlf7WPgDtGOBUbpLkBOU/ZNIgmN5s16jAQ
	LFCSxKwPQJ9NQ5dJc+i3mOlbsZ2GVutLfl8KofwoVbCFJz69f9MLHvQBfZvHTcK95BKJ
	4PNgH0eyM4gGYHOWzH28UyL6yxjMe9QYfjG5ICbGik9+97t36s2rkTv4byOXqPnAm/6O
	vf2NcsSCqBCB+PitbMbUQegk9mKgHLrxPOLo6PHavL1p9m9815ySqiV4pvRicR69Li4k
	6SUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=I8+X4Jx/LXzgYjS+jpCC3W7NuuKyLSJj8nnBxpmLwmc=;
	b=KbdtzoBc7ot7K7fPgpfDw5wJj4Sa+GwU9ZzRLLkurUmJyoIZAIcOcYDQF09aXzUPdn
	f7iGdAK0UhqmU12m6skbSfMonoJ+IK/suJEj4LS0XnC86RPKG/oh+GcuIfYhT1EaXEKQ
	UYtNplQks9KhVHkw8TztvZQH0a9r/fMuCVinzRgas16k2pNdEcGJ5i591Y4UNmrZ0PU1
	1MptMCkCI+vPf92y+XhtDPEPntZFq1pJ2z/gSMW0gFrflwoE6WKLQarSc3EANL8/PXVN
	4TlEBUWlZSCJvPKqzdidQ4d+I1NzkHvT0DZAvILhatY31TwOeALC2qP9npkd5YlS1eDZ
	2bpA==
X-Gm-Message-State: APjAAAXelOJflyxhIQuDYvbvFdVW6cNlIELhfkxkHex3K4qvL4EPBr2Q
	n3kfg/wRlNpAp1stmyN90xyiS9ePlnSRQGpx3Wk=
X-Google-Smtp-Source: APXvYqw0QvBueBhep5h0yVgCZmQMA+Bavws93iy5DOxSjOgQ+YTMUfCdRkCZLxLFI7aSwTP47D6O0Z+X5FBh78POWhw=
X-Received: by 2002:ab0:3f1:: with SMTP id 104mr1389383uau.93.1570632564499;
	Wed, 09 Oct 2019 07:49:24 -0700 (PDT)
MIME-Version: 1.0
References: <20191009130328.28520-1-ross.burton@intel.com>
	<20191009133153.GA29168@localhost>
In-Reply-To: <20191009133153.GA29168@localhost>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 9 Oct 2019 16:49:13 +0200
Message-ID: <CANNYZj8RsOn3T_aXpNSP8MBdiUd28gnasWcgJENrZ2TzPxRRRg@mail.gmail.com>
To: Adrian Bunk <bunk@stusta.de>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] poky: add Ubuntu 19.04 as a supported distribution
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
X-List-Received-Date: Wed, 09 Oct 2019 14:49:25 -0000
Content-Type: multipart/alternative; boundary="000000000000146e9d05947b6456"

--000000000000146e9d05947b6456
Content-Type: text/plain; charset="UTF-8"

On Wed, 9 Oct 2019 at 15:41, Adrian Bunk <bunk@stusta.de> wrote:

> > diff --git a/meta-poky/conf/distro/poky.conf
> b/meta-poky/conf/distro/poky.conf
> > index f999992c90a..e3df6be2ac5 100644
> > --- a/meta-poky/conf/distro/poky.conf
> > +++ b/meta-poky/conf/distro/poky.conf
> > @@ -54,6 +54,7 @@ SANITY_TESTED_DISTROS ?= " \
> >              poky-2.7 \n \
> >              ubuntu-16.04 \n \
> >              ubuntu-18.04 \n \
> > +            ubuntu-19.04 \n \
> >...
>
> I am not convinced that declaring (and testing?) support for
> non-LTS Ubuntu releases is a good idea.
>
> Ubuntu 19.04 will be EOL in January, and 19.10 will be released in a week.
>

I believe this list is compiled from a specific set of distributions that
are actually installed and used on the Yocto autobuilder. If ubuntu 19.04
is there, then it is added to the list. It is up to the users if they want
to use that (in a container maybe), or something else that is current.

Alex

--000000000000146e9d05947b6456
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, 9 Oct 2019 at 15:41, Adrian Bunk =
&lt;<a href=3D"mailto:bunk@stusta.de">bunk@stusta.de</a>&gt; wrote:<br></di=
v><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">&gt; diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/dist=
ro/poky.conf<br>
&gt; index f999992c90a..e3df6be2ac5 100644<br>
&gt; --- a/meta-poky/conf/distro/poky.conf<br>
&gt; +++ b/meta-poky/conf/distro/poky.conf<br>
&gt; @@ -54,6 +54,7 @@ SANITY_TESTED_DISTROS ?=3D &quot; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 poky-2.7 \n \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ubuntu-16.04 \n \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ubuntu-18.04 \n \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ubuntu-19.04 \n \<br>
&gt;...<br>
<br>
I am not convinced that declaring (and testing?) support for<br>
non-LTS Ubuntu releases is a good idea.<br>
<br>
Ubuntu 19.04 will be EOL in January, and 19.10 will be released in a week.<=
br></blockquote><div><br></div><div>I believe this list is compiled from a =
specific set of distributions that are actually installed and used on the Y=
octo autobuilder. If ubuntu 19.04 is there, then it is added to the list. I=
t is up to the users if they want to use that (in a container maybe), or so=
mething else that is current.</div><div><br></div><div>Alex<br></div></div>=
</div>

--000000000000146e9d05947b6456--
