Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
 by mx.groups.io with SMTP id smtpd.web09.3071.1625557007361383744
 for <poky@lists.yoctoproject.org>;
 Tue, 06 Jul 2021 00:36:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iRt1hmqO;
 spf=pass (domain: gmail.com, ip: 209.85.217.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f46.google.com with SMTP id t19so5207368vst.9
        for <poky@lists.yoctoproject.org>; Tue, 06 Jul 2021 00:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dPA/XxnUN9+3PUIzuR7UUqwL7lTPtqC+z3rsG2734bs=;
        b=iRt1hmqOUBdzOvaAJHaKBc/YX8+FqXATnIZZqMKY9B1ZtegavG4hwBkdAm6aXU7mXY
         sHHbm4HLj1c1r0/+ZgYwUrpsWpNTigO44YJbGa6owlYJ43HGwwA/ASgXO9YpFopfFDqP
         FZo5KTH3Hr5smEybNjasaxfMUfZj3vn78SGU0S5TWKZKJnXQhpBppFlIl02EOKDsRNN6
         FL+yOCrU/tRPffNZUfCbFE4d1iWsnUohScbH1xapxSwdB/vYa7nWfBsTQFxNuJW8/5dQ
         9ekwAODXextR8o2sB3mvzSg+zp+tlc8A2ywfVgf7/QSwT/Vwoav/xuZD5k7qrZfXmtk/
         Ysog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dPA/XxnUN9+3PUIzuR7UUqwL7lTPtqC+z3rsG2734bs=;
        b=J7VWNg1oFxGrK9Vv25ZaqZIN1I3Jz7W6GaDl+cbZpCV0KbGxNGMCRIP/P6b0U2zQWG
         vU5RwU/mTqQumROdYF6/Ib0u4MBrXhn3bun/yRNXL29Bk270NLnkN7B20fVfwD2vKt0L
         mqiRP6C6GeezhofAVFd+YHJZuOUFSMseXiq1m0KJmfXKwMWHDj/b/ldvTIBM3mf30LIY
         L8AsFbBSKcmMlw6Jg2NJ/VeSDYSFnL1Oqcx9x6W/jSrbi4s4QH03gUD9wc89/vK5q0BJ
         7JdFMcRnQgQseLYfvFXvG81id9gSIN6qiA9LAdFsbTBmTdyyOrSxNNfYnHbxuBeHFaf4
         vA5g==
X-Gm-Message-State: AOAM533+5csD1MNMCK4DJDDXJYPYWu9ZIHcViNhgcovzi/dueIbVwu6v
	yyzjLKkqW1sgI0XTRRX6BOkIw5ZJF2KURU+ceiw=
X-Google-Smtp-Source: ABdhPJxGrJjuJUMysYHHBmHvwrtz09SI2D02UhM2rCveaNXSI5EWRUOfM9aWlmwyFM6TuwcS6Vh+24vgzHypj5e6vxo=
X-Received: by 2002:a67:ec97:: with SMTP id h23mr13412092vsp.41.1625557006510;
 Tue, 06 Jul 2021 00:36:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210705183627.72790-1-alex.kanavin@gmail.com>
 <CAMKF1srCjD4ay0MJUq0G=V_gy7QwA1Y9ufmb+4bMPgWy=MNS-Q@mail.gmail.com> <d7ca2f7f-54c9-36ad-b574-830658a5ef76@gmail.com>
In-Reply-To: <d7ca2f7f-54c9-36ad-b574-830658a5ef76@gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 6 Jul 2021 09:36:35 +0200
Message-ID: <CANNYZj-0-Y9TbxjpH=XHnwxKfpJi0PHBjgfToybwhmAsxULcOA@mail.gmail.com>
Subject: Re: [poky] [PATCH] local.conf.sample: disable prelink
To: Armin Kuster <akuster808@gmail.com>, Khem Raj <raj.khem@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ef6ea505c66f7bda"

--000000000000ef6ea505c66f7bda
Content-Type: text/plain; charset="UTF-8"

Folks, I'm not proposing to disable it because of ppc32 (even though that
was the initial trigger, and spending the whole day stepping assembly in
gdb to figure it out was not a good use of time).

Once again:

1. No measurable benefit, and actually a regression in RAM consumption.
2. No maintainer.

(see the commit message)

Alex


On Tue, 6 Jul 2021 at 02:03, Armin Kuster <akuster808@gmail.com> wrote:

>
>
> On 7/5/21 4:06 PM, Khem Raj wrote:
> > On Mon, Jul 5, 2021 at 11:36 AM Alexander Kanavin
> > <alex.kanavin@gmail.com> wrote:
> >> Recent tests have not shown any improvement over not prelinking,
> >> and without a regression test it is very hard to say when and how
> >> this happened.[0]
> >>
> >> There's also a concern that no one is maintaining the code, and there
> >> are open bugs (including serious ones such as [1]). Given that prelink
> >> does intricate address arithmetic and rewriting of binaries the best
> >> option is to disable the feature.
> >>
> >> [0] https://lists.yoctoproject.org/g/poky/message/12467
> >> [1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=14429
> >>
> >> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> >> ---
> >>  meta-poky/conf/local.conf.sample | 3 +--
> >>  1 file changed, 1 insertion(+), 2 deletions(-)
> >>
> >> diff --git a/meta-poky/conf/local.conf.sample
> b/meta-poky/conf/local.conf.sample
> >> index fb14379d28..1794126672 100644
> >> --- a/meta-poky/conf/local.conf.sample
> >> +++ b/meta-poky/conf/local.conf.sample
> >> @@ -148,8 +148,7 @@ EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
> >>  # enable extra features. Some available options which can be included
> in this variable
> >>  # are:
> >>  #   - 'buildstats' collect build statistics
> >> -#   - 'image-prelink' in order to prelink the filesystem image
> >> -USER_CLASSES ?= "buildstats image-prelink"
> >> +USER_CLASSES ?= "buildstats"
> > just disable it for ppc32 since thats a broken case we know.
> So does PPC64 work with prelink? There is a long standing issue with it.
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=1331
>
> -armin
> >
> >
> >>  #
> >>  # Runtime testing of images
> >> --
> >> 2.31.1
> >>
> >>
> >>
> >>
> >>
> >>
> >>
>
>
> 
>
>

--000000000000ef6ea505c66f7bda
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Folks, I&#39;m not proposing to disable it because of=
 ppc32 (even though that was the initial trigger, and spending the whole da=
y stepping assembly in gdb to figure it out was not a good use of time). <b=
r></div><div><br></div><div>Once again:<br></div><div><br></div><div>1. No =
measurable benefit, and actually a regression in RAM consumption.</div><div=
>2. No maintainer.</div><div><br></div><div>(see the commit message)<br></d=
iv><div><br></div><div>Alex<br></div><div><br></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 6 Jul 2021 at 0=
2:03, Armin Kuster &lt;<a href=3D"mailto:akuster808@gmail.com">akuster808@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><br>
<br>
On 7/5/21 4:06 PM, Khem Raj wrote:<br>
&gt; On Mon, Jul 5, 2021 at 11:36 AM Alexander Kanavin<br>
&gt; &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.=
kanavin@gmail.com</a>&gt; wrote:<br>
&gt;&gt; Recent tests have not shown any improvement over not prelinking,<=
br>
&gt;&gt; and without a regression test it is very hard to say when and how=
<br>
&gt;&gt; this happened.[0]<br>
&gt;&gt;<br>
&gt;&gt; There&#39;s also a concern that no one is maintaining the code, a=
nd there<br>
&gt;&gt; are open bugs (including serious ones such as [1]). Given that pr=
elink<br>
&gt;&gt; does intricate address arithmetic and rewriting of binaries the b=
est<br>
&gt;&gt; option is to disable the feature.<br>
&gt;&gt;<br>
&gt;&gt; [0] <a href=3D"https://lists.yoctoproject.org/g/poky/message/1246=
7" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/po=
ky/message/12467</a><br>
&gt;&gt; [1] <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D14429" rel=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoproje=
ct.org/show_bug.cgi?id=3D14429</a><br>
&gt;&gt;<br>
&gt;&gt; Signed-off-by: Alexander Kanavin &lt;<a href=3D"mailto:alex.kanav=
in@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 meta-poky/conf/local.conf.sample | 3 +--<br>
&gt;&gt;=C2=A0 1 file changed, 1 insertion(+), 2 deletions(-)<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/lo=
cal.conf.sample<br>
&gt;&gt; index fb14379d28..1794126672 100644<br>
&gt;&gt; --- a/meta-poky/conf/local.conf.sample<br>
&gt;&gt; +++ b/meta-poky/conf/local.conf.sample<br>
&gt;&gt; @@ -148,8 +148,7 @@ EXTRA_IMAGE_FEATURES ?=3D &quot;debug-tweaks&=
quot;<br>
&gt;&gt;=C2=A0 # enable extra features. Some available options which can b=
e included in this variable<br>
&gt;&gt;=C2=A0 # are:<br>
&gt;&gt;=C2=A0 #=C2=A0 =C2=A0- &#39;buildstats&#39; collect build statisti=
cs<br>
&gt;&gt; -#=C2=A0 =C2=A0- &#39;image-prelink&#39; in order to prelink the =
filesystem image<br>
&gt;&gt; -USER_CLASSES ?=3D &quot;buildstats image-prelink&quot;<br>
&gt;&gt; +USER_CLASSES ?=3D &quot;buildstats&quot;<br>
&gt; just disable it for ppc32 since thats a broken case we know.<br>
So does PPC64 work with prelink? There is a long standing issue with it.<b=
r>
<br>
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1331" rel=
=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D1331</a><br>
<br>
-armin<br>
&gt;<br>
&gt;<br>
&gt;&gt;=C2=A0 #<br>
&gt;&gt;=C2=A0 # Runtime testing of images<br>
&gt;&gt; --<br>
&gt;&gt; 2.31.1<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; <br>
&gt;&gt;<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000ef6ea505c66f7bda--
