Return-Path: <andrei@gherzan.ro>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFAAAE013EB
	for <poky@yoctoproject.org>; Thu, 21 Jun 2012 14:24:26 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so1130829ggn.35
	for <poky@yoctoproject.org>; Thu, 21 Jun 2012 14:24:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=tFyrWb/C6flkVNf5xQAqsYguPhc9WYnf+19lmvJUxTw=;
	b=bDnMgzsjlYxlvBQm3Hz+WbAO3cwJQIorIdfjkrhzgogfRJ8aVbc+hqsotFPynSUnO1
	5D79EQQK0uwompn0CrkDAIAomhRpCUSEqCOB6agr2aVFrqZYHWorflqaCozXOHvvaThS
	zqQSY1oNbxIOaD65D7QMURZY+hyWENy+EeN01bwehmZnNYtk3h3+PA+1IaGy2jhLZWPf
	4NkgbpkQYmCHG9eNXQtdRffbkC4K7mwMU9k8UTpFKpW7ga2S/KYRYMdh711MbIP/KH5E
	jelOUUuFo7HCvW5tEdafr6suvRkhoMElH4XYH+fL5dCUrKnnVR+38FLNsHgIk90Xvsjy
	1lYw==
Received: by 10.50.202.102 with SMTP id kh6mr8944818igc.69.1340313866000; Thu,
	21 Jun 2012 14:24:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.42.103 with HTTP; Thu, 21 Jun 2012 14:24:05 -0700 (PDT)
X-Originating-IP: [79.117.123.32]
In-Reply-To: <20120621211416.GI9352@jama.jama.net>
References: <cover.1340038493.git.scott.a.garman@intel.com>
	<3a231c484aaa511b95f9232d000b1190327b4626.1340038494.git.scott.a.garman@intel.com>
	<CAMKF1sp4KvDtK68NQNtOhSmCF6WK738Yr9cXOA0ntkHJ9wpYUQ@mail.gmail.com>
	<CAK18fxEp=CsaCPXBocP3PCb9dnxBTR_jb_Qv+oUSKn6qwM7acQ@mail.gmail.com>
	<CAK18fxGm5_7xMHpOOUpWWjkAaq33hN-fqeJwrFDDvB5XgekmYA@mail.gmail.com>
	<20120621211416.GI9352@jama.jama.net>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 22 Jun 2012 00:24:05 +0300
Message-ID: <CAK18fxHhSDnqyqbfnwKYLZJJf7z_m9Zt47e+zpkPgot-eYppzg@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
X-Gm-Message-State: ALoCoQnoKJSUNGrg0vw4bWqVfJIWgxt0dyL2lyf3IGMOu/6gOIsMBLiZI78OMWWvVDlFEmWDG3SZ
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/8] sanity.bbclass: warn the user if BBPATH contains wrong entries
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
X-List-Received-Date: Thu, 21 Jun 2012 21:24:27 -0000
Content-Type: multipart/alternative; boundary=f46d04478853deda9b04c30223e4

--f46d04478853deda9b04c30223e4
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Jun 22, 2012 at 12:14 AM, Martin Jansa <martin.jansa@gmail.com>wrote:

> On Fri, Jun 22, 2012 at 12:00:09AM +0300, Andrei Gherzan wrote:
> > In a qemumips build with master poky:
> >
> > WARNING: BBPATH references the current directory, either through an empty
> > entry, or a '.'.
> >  This is unsafe and means your layer configuration is adding empty
> elements
> > to BBPATH.
> >  Please check your layer.conf files and other BBPATH settings to remove
> the
> > current working directory references.
> >
> > And this is because BBPATH contains:
> >
> /home/agherzan/work/personal/yocto/poky-contrib/meta-yocto::/home/agherzan/work/personal/yocto/poky-contrib/meta
> >
> > Well it's strange that:
> > meta: BBPATH .= ":${LAYERDIR}"
> > meta-yocto: BBPATH := "${LAYERDIR}:${BBPATH}"
> >
> > This explains the way BBPATH above ended
> > like:
> /home/agherzan/work/personal/yocto/poky-contrib/meta-yocto::/home/agherzan/work/personal/yocto/poky-contrib/meta
> >
> > Why don't we assign BBPATH as this in meta:
> > BBPATH .= "${LAYERDIR}"
> >
> > And then in all other layers use: meta-yocto: BBPATH :=
> > "${LAYERDIR}:${BBPATH}". In this way the variable would be correctly
> > generated.
>
> IMHO it's better to change meta-yocto/conf/layer to
> BBPATH .= ":${LAYERDIR}"
> so the BBPATH order is the same as order of layers in bblayers.conf
>
> This wouldn't fix it. As BBPATH would still have an empty value: the first
-> ":bla:bla"

@g

--f46d04478853deda9b04c30223e4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Fri, Jun 22, 2012 at 12:14 AM, Martin Jansa <=
span dir=3D"ltr">&lt;<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_b=
lank">martin.jansa@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">

<div class=3D"im">On Fri, Jun 22, 2012 at 12:00:09AM +0300, Andrei Gherzan =
wrote:<br>
&gt; In a qemumips build with master poky:<br>
&gt;<br>
&gt; WARNING: BBPATH references the current directory, either through an em=
pty<br>
&gt; entry, or a &#39;.&#39;.<br>
&gt; =A0This is unsafe and means your layer configuration is adding empty e=
lements<br>
&gt; to BBPATH.<br>
&gt; =A0Please check your layer.conf files and other BBPATH settings to rem=
ove the<br>
&gt; current working directory references.<br>
&gt;<br>
&gt; And this is because BBPATH contains:<br>
&gt; /home/agherzan/work/personal/yocto/poky-contrib/meta-yocto::/home/aghe=
rzan/work/personal/yocto/poky-contrib/meta<br>
&gt;<br>
&gt; Well it&#39;s strange that:<br>
&gt; meta: BBPATH .=3D &quot;:${LAYERDIR}&quot;<br>
&gt; meta-yocto: BBPATH :=3D &quot;${LAYERDIR}:${BBPATH}&quot;<br>
&gt;<br>
&gt; This explains the way BBPATH above ended<br>
&gt; like: /home/agherzan/work/personal/yocto/poky-contrib/meta-yocto::/hom=
e/agherzan/work/personal/yocto/poky-contrib/meta<br>
&gt;<br>
&gt; Why don&#39;t we assign BBPATH as this in meta:<br>
&gt; BBPATH .=3D &quot;${LAYERDIR}&quot;<br>
&gt;<br>
&gt; And then in all other layers use: meta-yocto: BBPATH :=3D<br>
&gt; &quot;${LAYERDIR}:${BBPATH}&quot;. In this way the variable would be c=
orrectly<br>
&gt; generated.<br>
<br>
</div>IMHO it&#39;s better to change meta-yocto/conf/layer to<br>
BBPATH .=3D &quot;:${LAYERDIR}&quot;<br>
so the BBPATH order is the same as order of layers in bblayers.conf<br><br>
</blockquote></div>This wouldn&#39;t fix it. As BBPATH would still have an =
empty value: the first -&gt; &quot;:bla:bla&quot;<div><br></div><div>@g</di=
v>

--f46d04478853deda9b04c30223e4--
