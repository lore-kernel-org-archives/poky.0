Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C6A2EED630
	for <webhook@archiver.kernel.org>; Thu, 12 Sep 2024 17:33:34 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web10.53955.1726162410829066337
 for <poky@lists.yoctoproject.org>;
 Thu, 12 Sep 2024 10:33:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TFvN1rXY;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2d877e9054eso904698a91.3
        for <poky@lists.yoctoproject.org>; Thu, 12 Sep 2024 10:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726162410; x=1726767210; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=x+YTsOQ32BYcQQgFw9w3rw/v/+4213EMxy8JftcZcu4=;
        b=TFvN1rXYMM8QBCeXbkTzCawLrtHpjINNv5GkKIqTVIz7vk+KALvHLsKEiPFrKLdtDX
         copy5GCRZtfRMqYzafDdmOvvsQuo4jscRtvWIqcZEzY1XCyXfLVXackEVSdFioFwwPrX
         F/laCDw3ecp1c4x1JU7yMMfNpsz8J7Wk5pUInYOIm+2nJLmmweihN7w7FyD5tx/BstLq
         DdlsCrKQXpz6/uRXjP3RIp3KuYCckNacUoM+FzM3H1xhSpZ4ht1QB3aOnDbooxADL7Ox
         PvUIYiV8igAaN83Y8FZ8KKyZsOiJUV9Z3p91iIlP7gqkW67FqnrcT5DhsGm4Uc4xslUt
         peqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726162410; x=1726767210;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x+YTsOQ32BYcQQgFw9w3rw/v/+4213EMxy8JftcZcu4=;
        b=DDQ49QYJ4mDAYNXEhbmnIDCcJiP5RargunYAdGOsXzUE0KCMV09rxbJy0nc7cyHAxz
         T3e81COGVoC91pzzKo/uv0YDghwfuvSYoHJhR2rZnKjYKJOXxczTF+iTg6QnUF0+xvqW
         +3e0Kki6BHwKw18A4zKppRhAI8SOjTkiuLpyOZVHg3jSdVm+o8NIG24uQAfqKk0sNmvG
         gXIjAKezE+t4OKNnossl/fAqey+ufY/Y2DHrKXJbaVAxUPKOIfjG8iPp1Cf88z7hJYoa
         tO+NsGphjxe7vcwDoakTfbPChtXTwXjqmHFvwNT8+hcKj9pTbTXB79Mcy2iA4J0rxBRI
         7X/g==
X-Gm-Message-State: AOJu0YwC14NT34J5hrc0mxaDsVaR0ulR70JtUKs6tE3Kq6R/MdeQAR/n
	3TiHOW+GzltbexI9YPWdrwAZ8/w9CzjioZCl11kDZl8PFbZOkCwcFL93+QFl/5UZnkfe+Dm68d6
	A0/99DH2HSPgoJig45MNXr+lc+d0=
X-Google-Smtp-Source: AGHT+IH9Z/f9FOtwyFZFz6RlZ0HAyG7jWJ3GGWAv50QGV++1LkLM6rtM9tPpYKkbGevVu+sZLFOceL/UK6pwxMqcces=
X-Received: by 2002:a17:90a:f2c3:b0:2d8:b205:2345 with SMTP id
 98e67ed59e1d1-2db9ffb416cmr3858578a91.23.1726162409914; Thu, 12 Sep 2024
 10:33:29 -0700 (PDT)
MIME-Version: 1.0
References: <20240912161226.4022231-1-ross.burton@arm.com> <ADE2E25C-889A-4697-B0DC-5F0680B8F4CA@arm.com>
In-Reply-To: <ADE2E25C-889A-4697-B0DC-5F0680B8F4CA@arm.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 12 Sep 2024 13:33:21 -0400
Message-ID: <CADkTA4NpBAymTcD0iYzTbJ5zhrDv28AZr3bAwB=YZDfe=f3WQQ@mail.gmail.com>
Subject: Re: [poky] [PATCH] genericarm64: don't pin to linux 6.6
To: ross.burton@arm.com
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000004493e60621ef81b4"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 12 Sep 2024 17:33:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13437

--0000000000004493e60621ef81b4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

FWIW, I have no issue with genericarm64 moving to 6.10, it just gets us
better coverage.

Bruce

On Thu, Sep 12, 2024 at 12:46=E2=80=AFPM Ross Burton via lists.yoctoproject=
.org
<ross.burton=3Darm.com@lists.yoctoproject.org> wrote:

> Eeeeehhhhh the other BSPs in this layer also pin to 6.6 so there=E2=80=99=
s
> consistency in not taking this, even if it does actually work.
>
> Maintainers choice :)
>
> Ross
>
> > On 12 Sep 2024, at 17:12, Ross Burton via lists.yoctoproject.org
> <ross.burton=3Darm.com@lists.yoctoproject.org> wrote:
> >
> > The 6.10 build has been tested on both a BeaglePlay and qemu, so we can
> > remove the pinning now.
> >
> > Signed-off-by: Ross Burton <ross.burton@arm.com>
> > ---
> > meta-yocto-bsp/conf/machine/genericarm64.conf | 1 -
> > 1 file changed, 1 deletion(-)
> >
> > diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf
> b/meta-yocto-bsp/conf/machine/genericarm64.conf
> > index 8c1b09fdd50..1cb5e46dcf7 100644
> > --- a/meta-yocto-bsp/conf/machine/genericarm64.conf
> > +++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
> > @@ -12,7 +12,6 @@ MACHINE_FEATURES =3D "acpi alsa bluetooth efi keyboar=
d
> pci qemu-usermode rtc scree
> >
> > KERNEL_IMAGETYPE =3D "Image"
> > PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
> > -PREFERRED_VERSION_linux-yocto ?=3D "6.6%"
> >
> > # Install all the kernel modules into the rootfs
> > MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
> > --
> > 2.34.1
> >
> >
> >
> >
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13436):
> https://lists.yoctoproject.org/g/poky/message/13436
> Mute This Topic: https://lists.yoctoproject.org/mt/108416069/1050810
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> bruce.ashfield@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--0000000000004493e60621ef81b4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">FWI=
W, I have no issue with genericarm64 moving to 6.10, it just gets us better=
 coverage.</div><div class=3D"gmail_default" style=3D"font-size:small"><br>=
</div><div class=3D"gmail_default" style=3D"font-size:small">Bruce</div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Thu, Sep 12, 2024 at 12:46=E2=80=AFPM Ross Burton via <a href=3D"http://lis=
ts.yoctoproject.org">lists.yoctoproject.org</a> &lt;ross.burton=3D<a href=
=3D"mailto:arm.com@lists.yoctoproject.org">arm.com@lists.yoctoproject.org</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Ee=
eeehhhhh the other BSPs in this layer also pin to 6.6 so there=E2=80=99s co=
nsistency in not taking this, even if it does actually work.<br>
<br>
Maintainers choice :)<br>
<br>
Ross<br>
<br>
&gt; On 12 Sep 2024, at 17:12, Ross Burton via <a href=3D"http://lists.yoct=
oproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</=
a> &lt;ross.burton=3D<a href=3D"mailto:arm.com@lists.yoctoproject.org" targ=
et=3D"_blank">arm.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt; <br>
&gt; The 6.10 build has been tested on both a BeaglePlay and qemu, so we ca=
n<br>
&gt; remove the pinning now.<br>
&gt; <br>
&gt; Signed-off-by: Ross Burton &lt;<a href=3D"mailto:ross.burton@arm.com" =
target=3D"_blank">ross.burton@arm.com</a>&gt;<br>
&gt; ---<br>
&gt; meta-yocto-bsp/conf/machine/genericarm64.conf | 1 -<br>
&gt; 1 file changed, 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yoct=
o-bsp/conf/machine/genericarm64.conf<br>
&gt; index 8c1b09fdd50..1cb5e46dcf7 100644<br>
&gt; --- a/meta-yocto-bsp/conf/machine/genericarm64.conf<br>
&gt; +++ b/meta-yocto-bsp/conf/machine/genericarm64.conf<br>
&gt; @@ -12,7 +12,6 @@ MACHINE_FEATURES =3D &quot;acpi alsa bluetooth efi k=
eyboard pci qemu-usermode rtc scree<br>
&gt; <br>
&gt; KERNEL_IMAGETYPE =3D &quot;Image&quot;<br>
&gt; PREFERRED_PROVIDER_virtual/kernel ?=3D &quot;linux-yocto&quot;<br>
&gt; -PREFERRED_VERSION_linux-yocto ?=3D &quot;6.6%&quot;<br>
&gt; <br>
&gt; # Install all the kernel modules into the rootfs<br>
&gt; MACHINE_EXTRA_RRECOMMENDS +=3D &quot;kernel-modules&quot;<br>
&gt; -- <br>
&gt; 2.34.1<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13436): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13436" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13436</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/108416069/105=
0810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/108416069/1050810</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.as=
hfield@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature">- =
Thou shalt not follow the NULL pointer, for chaos and madness await thee at=
 its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star Trek II<br><b=
r></div>

--0000000000004493e60621ef81b4--

