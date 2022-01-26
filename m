Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web12.9314.1643179150195956180
 for <poky@lists.yoctoproject.org>;
 Tue, 25 Jan 2022 22:39:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mxOQYa3T;
 spf=pass (domain: gmail.com, ip: 209.85.222.173, mailfrom: aehs29@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id h2so27414117qkp.10
        for <poky@lists.yoctoproject.org>; Tue, 25 Jan 2022 22:39:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MXAxoHwQg6fJU8ZSiqPhdy7fN35HFguWdT2hhbPGx7I=;
        b=mxOQYa3TlH1FUlPsyUJt3cOWe3jxF9Dn/vD4qjvl3P86/aDjlQ/cDL2LxrbYllUYC/
         mJ8X5GfSvnBESai2QNq4L7sZrQ5DqMNCnzVsjMF6bA/Q7aC5qVED5yLkOI4q51IQC3p4
         J6PJ+SC3MQ1DxCdbwCT/qm6VktfUMUvPgWRq7DMGPuQ0kbvWrIebEtDJw3GWujI9Qpdd
         +4G1pD0mVKIRMk6iOc+/YX739B3Roodz7idxebgY+k+AnZemYiAQqi/oPtch5bT6KEe/
         PIfSoGPteO4ZRBymBIKaUG3YQeKTok5Msl4u/eoW8KRO1TqYyH/Coz9fCFOp5Gi/ZKXy
         PUyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MXAxoHwQg6fJU8ZSiqPhdy7fN35HFguWdT2hhbPGx7I=;
        b=YZKYxD5HyrdGJpguULjMSbZ/kcH/m2iA2o1xZ/WfH72ANrRzfxOwy79F+9GoOtOdVH
         uYeh/ozBB1bBNcbvMZdHvrrpg2lxoSlIgdI95ZYXs8jnGj+j4S1gCUbc0NL4ulHAEUzj
         BKYtIVY3fpJjwmtuSr5c4QJyeSZy7kHyXjNJdZx+9br94oiC6NIL5TTlmO7Qn/hnCIy8
         aVoOOcHJORJKaNDRlk5z3FklBO6BTKe2JBCDYcjqHGrgYG2RTEVXSxSwbcrFaM4BV+Y6
         MzbGOSO+G1zbZQc6z7kg9yPCWruMGXyCeqwanoB/PIGSVkM1ZH62pbspgq3Sy+ofidoD
         gKjg==
X-Gm-Message-State: AOAM531ZCLvKhBI+4BHooTVVCtlDV1IybIglnm4yIlv2xUVZXQPULBCl
	BlFrR1f8GpdKWQ3NBcgKzZz6RvNJpuXop6qjwGo=
X-Google-Smtp-Source: ABdhPJygimy+KJ99BWFlU1sgWHTWTmv04t9DxYatUcnsuq13ASXaumylpm5LThE8Q2t+3gQNR1COD0JETgT40Jdc8mU=
X-Received: by 2002:a05:620a:4003:: with SMTP id h3mr3922559qko.396.1643179149287;
 Tue, 25 Jan 2022 22:39:09 -0800 (PST)
MIME-Version: 1.0
References: <20220122223317.1626304-1-alhe@linux.microsoft.com> <3b9952fe-1469-08de-a279-c57fdea2ec45@gmail.com>
In-Reply-To: <3b9952fe-1469-08de-a279-c57fdea2ec45@gmail.com>
From: "Alejandro Hernandez Samaniego" <alejandro@enedino.org>
Date: Wed, 26 Jan 2022 06:38:58 +0000
Message-ID: <CAHMutraAeKXoYvLvemeoO4g0hr6-fz_Lb1ymhxQ0VQQJk5-D1w@mail.gmail.com>
Subject: Re: [poky] [PATCH 1/1] busybox: Add shell arithmetic to work with poky-tiny
To: Khem Raj <raj.khem@gmail.com>
Cc: Alejandro Hernandez Samaniego <alhe@linux.microsoft.com>, poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007ee5ca05d676759c"

--0000000000007ee5ca05d676759c
Content-Type: text/plain; charset="UTF-8"

On Mon, 24 Jan 2022 at 17:38, Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On 1/22/22 2:33 PM, Alejandro Hernandez Samaniego wrote:
> > Fix error when trying to boot core-image-tiny-initramfs:
> >
> > /init: line 144: syntax error: support for $((arith)) is disabled
> > Kernel panic - not syncing: Attempted to kill init!
> >
> > [YOCTO #14702]
> >
> > Signed-off-by: Alejandro Enedino Hernandez Samaniego <
> alhe@linux.microsoft.com>
> > ---
> >   meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
> b/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
> > index b0fb88a0c1..6e9faa4119 100644
> > --- a/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
> > +++ b/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
> > @@ -1160,7 +1160,7 @@ CONFIG_CTTYHACK=y
> >   #
> >   # Options common to all shells
> >   #
> > -# CONFIG_FEATURE_SH_MATH is not set
> > +CONFIG_FEATURE_SH_MATH=y
>
>
> Hey Khem,
This adds 12KB to the compiled binary (less than 1%) and does not reflect
on the installed binary size, its required both by the tiny-init and the
initramfs-framework which throws the same error.

Alejandro



> how much does it add to binary size ?
>
> >   # CONFIG_FEATURE_SH_MATH_64 is not set
> >   # CONFIG_FEATURE_SH_MATH_BASE is not set
> >   CONFIG_FEATURE_SH_EXTRA_QUIET=y
> >
> >
> >
> >
> >
>
> 
>
>

--0000000000007ee5ca05d676759c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:arial,sans-serif;font-size:small"></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 24 Jan 2022 at 17:=
38, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><b=
r>
<br>
On 1/22/22 2:33 PM, Alejandro Hernandez Samaniego wrote:<br>
&gt; Fix error when trying to boot core-image-tiny-initramfs:<br>
&gt; <br>
&gt; /init: line 144: syntax error: support for $((arith)) is disabled<br>
&gt; Kernel panic - not syncing: Attempted to kill init!<br>
&gt; <br>
&gt; [YOCTO #14702]<br>
&gt; <br>
&gt; Signed-off-by: Alejandro Enedino Hernandez Samaniego &lt;<a href=3D"ma=
ilto:alhe@linux.microsoft.com" target=3D"_blank">alhe@linux.microsoft.com</=
a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig=
 | 2 +-<br>
&gt;=C2=A0 =C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfi=
g b/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig<br>
&gt; index b0fb88a0c1..6e9faa4119 100644<br>
&gt; --- a/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig<br>
&gt; +++ b/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig<br>
&gt; @@ -1160,7 +1160,7 @@ CONFIG_CTTYHACK=3Dy<br>
&gt;=C2=A0 =C2=A0#<br>
&gt;=C2=A0 =C2=A0# Options common to all shells<br>
&gt;=C2=A0 =C2=A0#<br>
&gt; -# CONFIG_FEATURE_SH_MATH is not set<br>
&gt; +CONFIG_FEATURE_SH_MATH=3Dy<br>
<br>
<br></blockquote><div><div class=3D"gmail_default" style=3D"font-family:ari=
al,sans-serif;font-size:small">Hey Khem,</div><div class=3D"gmail_default" =
style=3D"font-family:arial,sans-serif;font-size:small">This adds 12KB to th=
e compiled binary (less than 1%) and does not reflect on the installed bina=
ry size, its required both by the tiny-init and the initramfs-framework whi=
ch throws the same error.</div><div class=3D"gmail_default" style=3D"font-f=
amily:arial,sans-serif;font-size:small"><br></div><div class=3D"gmail_defau=
lt" style=3D"font-family:arial,sans-serif;font-size:small">Alejandro</div><=
br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>
how much does it add to binary size ?<br>
<br>
&gt;=C2=A0 =C2=A0# CONFIG_FEATURE_SH_MATH_64 is not set<br>
&gt;=C2=A0 =C2=A0# CONFIG_FEATURE_SH_MATH_BASE is not set<br>
&gt;=C2=A0 =C2=A0CONFIG_FEATURE_SH_EXTRA_QUIET=3Dy<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
<br>
<br>
</blockquote></div></div>

--0000000000007ee5ca05d676759c--
