Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web10.9482.1643180010845147499
 for <poky@lists.yoctoproject.org>;
 Tue, 25 Jan 2022 22:53:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ccEk/hu2;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: aehs29@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id i19so12731705qvx.12
        for <poky@lists.yoctoproject.org>; Tue, 25 Jan 2022 22:53:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SF7dulGCuqqJXSuTtcgdE/YvFeRptuP1Loa3bV4Qb+E=;
        b=ccEk/hu2C4YoW8LLK6qHFDDpfyylTpua/bJLzUGMuhIA++EC/JuRu2jP2vb+Al2mG4
         +Wdpn5WIb7NWUbfWGlANUSXCbAOpAtvPQ6CNsEPE+Lr9TT/QzvIDCjXkB5KIBlkTkQ0t
         wZTXDc4XGQOsiPkdoTxEhMK/soIv3iwXUdjJO7w55n3lsvrevXa6cKgfXmgWcBrp//al
         y4GlnXJjBSV62ZtdUsKmx3MjQ2X/l4jLo5rwemWpl+CgALeyEZksJ0A+M9fgE3PjJyp6
         4X7XrSgSqEQRzQwQ1L8CFynJStmyLuBaUjLJsgRzwwvO5xnR2nbrII77uAtM5BZgF/dx
         xDCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SF7dulGCuqqJXSuTtcgdE/YvFeRptuP1Loa3bV4Qb+E=;
        b=ypFGTGY0KmwZJaKsd8DHRgkKzrJ5o2s4Hw7LN7x5DWSdO6m4bGvVmi2hhzj7RjzNix
         0+/lO3b6lO8Lq1FJKzRikSnbEbSV35o9DgGJPwEIupD+fQYpU8O3quyi+yd3anIRuTcg
         0BYHOAjVNp4iGU0gaMOEZO9Fl45LPAn8ARHm8rZj7ufqibiZlS2yx5leo9J0ffVRh/iW
         ny7Nw9WMi74LetSw7LRZFcTv70PMOSzNxAe6yYCBjY6nR0Kr0JJsq/vtlmEM8lXn9Vuq
         hwI+X12+OjkBcDHqywedi669UH3Ggir82vx3ILvxa1Ql30NQLOva1Ntrlr49UnHOGeWt
         mnJA==
X-Gm-Message-State: AOAM533zKfXFdMJE1q7U+31s9tgMu+MVxziSA7MGmAZ8zfSQEShgZcOe
	BLGuT9ClT4bXMM3rgDTPb4UhGtuWgCI4boOxIcE=
X-Google-Smtp-Source: ABdhPJyJClpHublLxLjpa4TtSL5LQBKH7fFG2uOemq6Z/GnzlqjY48FXcGxhUdUtLlAExT6maPRIOYQ9Pv6k6c/8B1A=
X-Received: by 2002:a05:6214:2341:: with SMTP id hu1mr23179212qvb.76.1643180009818;
 Tue, 25 Jan 2022 22:53:29 -0800 (PST)
MIME-Version: 1.0
References: <20220122223317.1626304-1-alhe@linux.microsoft.com>
 <3b9952fe-1469-08de-a279-c57fdea2ec45@gmail.com> <CAHMutraAeKXoYvLvemeoO4g0hr6-fz_Lb1ymhxQ0VQQJk5-D1w@mail.gmail.com>
 <CAMKF1spriyDmDNuEOtkyu2gmTa9+QJjMFx1CyXL7Ey_-i_29uQ@mail.gmail.com>
In-Reply-To: <CAMKF1spriyDmDNuEOtkyu2gmTa9+QJjMFx1CyXL7Ey_-i_29uQ@mail.gmail.com>
From: "Alejandro Hernandez Samaniego" <alejandro@enedino.org>
Date: Wed, 26 Jan 2022 06:53:18 +0000
Message-ID: <CAHMutrZTyv3FcKuhNo04JUJAGYM4RYTHq1wa+7u8J=vWDFg+bQ@mail.gmail.com>
Subject: Re: [poky] [PATCH 1/1] busybox: Add shell arithmetic to work with poky-tiny
To: Khem Raj <raj.khem@gmail.com>
Cc: Alejandro Hernandez Samaniego <alhe@linux.microsoft.com>, poky <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c98dfa05d676a810"

--000000000000c98dfa05d676a810
Content-Type: text/plain; charset="UTF-8"

On Wed, 26 Jan 2022 at 06:44, Khem Raj <raj.khem@gmail.com> wrote:

> On Tue, Jan 25, 2022 at 10:39 PM Alejandro Hernandez <aehs29@gmail.com>
> wrote:
> >
> >
> > On Mon, 24 Jan 2022 at 17:38, Khem Raj <raj.khem@gmail.com> wrote:
> >>
> >>
> >>
> >> On 1/22/22 2:33 PM, Alejandro Hernandez Samaniego wrote:
> >> > Fix error when trying to boot core-image-tiny-initramfs:
> >> >
> >> > /init: line 144: syntax error: support for $((arith)) is disabled
> >> > Kernel panic - not syncing: Attempted to kill init!
> >> >
> >> > [YOCTO #14702]
> >> >
> >> > Signed-off-by: Alejandro Enedino Hernandez Samaniego <
> alhe@linux.microsoft.com>
> >> > ---
> >> >   meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig | 2 +-
> >> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >> >
> >> > diff --git
> a/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
> b/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
> >> > index b0fb88a0c1..6e9faa4119 100644
> >> > --- a/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
> >> > +++ b/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
> >> > @@ -1160,7 +1160,7 @@ CONFIG_CTTYHACK=y
> >> >   #
> >> >   # Options common to all shells
> >> >   #
> >> > -# CONFIG_FEATURE_SH_MATH is not set
> >> > +CONFIG_FEATURE_SH_MATH=y
> >>
> >>
> > Hey Khem,
> > This adds 12KB to the compiled binary (less than 1%) and does not
> reflect on the installed binary size, its required both by the tiny-init
> and the initramfs-framework which throws the same error.
>
> yeah perhaps using $((arith)) could be avoided in these shell scripts
> but I guess it should be ok if thats too hard.
>

Its true, my initial thought was to fix tiny-init but when I saw that
initramfs-framework is also
failing I thought adding it here was worth it.


> >
> > Alejandro
> >
> >
> >>
> >> how much does it add to binary size ?
> >>
> >> >   # CONFIG_FEATURE_SH_MATH_64 is not set
> >> >   # CONFIG_FEATURE_SH_MATH_BASE is not set
> >> >   CONFIG_FEATURE_SH_EXTRA_QUIET=y
> >> >
> >> >
> >> >
> >> >
> >> >
> >>
> >> 
> >>
>

--000000000000c98dfa05d676a810
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Wed, 26 Jan 2022 at 06:44, Khem Raj &l=
t;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue, Jan 25, 2=
022 at 10:39 PM Alejandro Hernandez &lt;<a href=3D"mailto:aehs29@gmail.com"=
 target=3D"_blank">aehs29@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt; On Mon, 24 Jan 2022 at 17:38, Khem Raj &lt;<a href=3D"mailto:raj.khem@=
gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On 1/22/22 2:33 PM, Alejandro Hernandez Samaniego wrote:<br>
&gt;&gt; &gt; Fix error when trying to boot core-image-tiny-initramfs:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; /init: line 144: syntax error: support for $((arith)) is disa=
bled<br>
&gt;&gt; &gt; Kernel panic - not syncing: Attempted to kill init!<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; [YOCTO #14702]<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Signed-off-by: Alejandro Enedino Hernandez Samaniego &lt;<a h=
ref=3D"mailto:alhe@linux.microsoft.com" target=3D"_blank">alhe@linux.micros=
oft.com</a>&gt;<br>
&gt;&gt; &gt; ---<br>
&gt;&gt; &gt;=C2=A0 =C2=A0meta-poky/recipes-core/busybox/busybox/poky-tiny/=
defconfig | 2 +-<br>
&gt;&gt; &gt;=C2=A0 =C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; diff --git a/meta-poky/recipes-core/busybox/busybox/poky-tiny=
/defconfig b/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig<br>
&gt;&gt; &gt; index b0fb88a0c1..6e9faa4119 100644<br>
&gt;&gt; &gt; --- a/meta-poky/recipes-core/busybox/busybox/poky-tiny/defcon=
fig<br>
&gt;&gt; &gt; +++ b/meta-poky/recipes-core/busybox/busybox/poky-tiny/defcon=
fig<br>
&gt;&gt; &gt; @@ -1160,7 +1160,7 @@ CONFIG_CTTYHACK=3Dy<br>
&gt;&gt; &gt;=C2=A0 =C2=A0#<br>
&gt;&gt; &gt;=C2=A0 =C2=A0# Options common to all shells<br>
&gt;&gt; &gt;=C2=A0 =C2=A0#<br>
&gt;&gt; &gt; -# CONFIG_FEATURE_SH_MATH is not set<br>
&gt;&gt; &gt; +CONFIG_FEATURE_SH_MATH=3Dy<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt; Hey Khem,<br>
&gt; This adds 12KB to the compiled binary (less than 1%) and does not refl=
ect on the installed binary size, its required both by the tiny-init and th=
e initramfs-framework which throws the same error.<br>
<br>
yeah perhaps using $((arith)) could be avoided in these shell scripts<br>
but I guess it should be ok if thats too hard.<br></blockquote><div><br></d=
iv><div class=3D"gmail_default" style=3D"font-family:arial,sans-serif;font-=
size:small">Its true, my initial thought was to fix tiny-init but when I sa=
w that initramfs-framework is also</div><div class=3D"gmail_default" style=
=3D"font-family:arial,sans-serif;font-size:small">failing I thought adding =
it here was worth it.</div><div class=3D"gmail_default" style=3D"font-famil=
y:arial,sans-serif;font-size:small"><br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">
<br>
&gt;<br>
&gt; Alejandro<br>
&gt;<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; how much does it add to binary size ?<br>
&gt;&gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0# CONFIG_FEATURE_SH_MATH_64 is not set<br>
&gt;&gt; &gt;=C2=A0 =C2=A0# CONFIG_FEATURE_SH_MATH_BASE is not set<br>
&gt;&gt; &gt;=C2=A0 =C2=A0CONFIG_FEATURE_SH_EXTRA_QUIET=3Dy<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; <br>
&gt;&gt;<br>
</blockquote></div></div>

--000000000000c98dfa05d676a810--
