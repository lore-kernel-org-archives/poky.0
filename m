Return-Path: <bhstalel@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41F69CAC5BB
	for <webhook@archiver.kernel.org>; Wed,  1 Oct 2025 15:19:09 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
 by mx.groups.io with SMTP id smtpd.web11.20815.1759331946932173638
 for <poky@lists.yoctoproject.org>;
 Wed, 01 Oct 2025 08:19:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=I+Qs0DrO;
 spf=pass (domain: gmail.com, ip: 209.85.160.173, mailfrom: bhstalel@gmail.com)
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-4e0353310b0so4044401cf.3
        for <poky@lists.yoctoproject.org>; Wed, 01 Oct 2025 08:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759331946; x=1759936746; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sIB8Rg0Wl0+8KKR0y50fZt/rXvgK78Api8HywIPml50=;
        b=I+Qs0DrO/ZYy4K93f29dIQlbh0LhlgawoD3PuUTbDzpj8oYRAFXOMxhSoNWz1kHZho
         UBUc7hC6pujJck0m7KG3we2N8RIQkFtuY9IYORs4RWUuEVuN8dYqjp4Nzrh7z2E/bo+8
         FjjjWeYOis5ig7rswYNF4cW6bXZUi5trSEAiBU5gvibAaGR4slLs9T+hjnTsJZ8YY6kH
         QPk2cbSgFY5Cm+HDTmpwQ8d0YDNaXNlzCEnChlbJy9AMN5/sInuabAtE/fLr/6I0qzvC
         4oKG+psfVOdVUkYdQuBwhUc0sZZBFaYzxmTrriLlYF6GQf3AOBBys3SI1++6SYvznrO1
         9SpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759331946; x=1759936746;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sIB8Rg0Wl0+8KKR0y50fZt/rXvgK78Api8HywIPml50=;
        b=v6bMLZFphugCXJ99GlHjW7qtbMOQu1i0dAmrp/GL5+qcWf/42ED2O9POCFUOC/zI8H
         Lk4t31hR/KAox0fD+vdT0BFbYYJO2g3VbMADqfgndTO8mX73D5fq8CIxUEREyfpg0m5q
         GX6U0jv0oQOfvfdOe+AVNSDB0WznEHcuUZWAAIzPA3gslaULgO8ZwHyLYFpXTb8xK3Vy
         FnleRfdBfOEstekmrq+Pgdq8mDpRSwXl70ES5xT/otuRkykdElJRiF6JF0ri8JDuwr4B
         ULEDXe+W3w4xEf9JSv+ir5UgaCfW8MOmZ4SG0iA9+01zR5L/t8kESOwCCPOfa3jwAEUp
         Ub5A==
X-Gm-Message-State: AOJu0YyfkWT65Xy9gSA5J0jMSqArcUuV/05oO155OtTJZ4JFFVhF3hKx
	MvH3w2nQW7g+jvFMZoD970P7T8SRFs7O5Wakr1Rb+yL12EApchGpadJIR0NVNE0qcYBLusiTQk+
	Zw9ieLUpC3v4lszlNHecLt3TkRtcHL9c=
X-Gm-Gg: ASbGncsq6wsSZX1somg5mAwFas+uxApj2G7vIlFIMJ8iNu3EwLN3L1G/OsWNlz36BpF
	1uAShF5+GGFGGwRwBVT8SktOQBjjAHPm7RZzz+qSVHaUw/INmQXtUVy9JLh8+rZE8GgQBcwkNvj
	VaT7VR9bzAGMd7Pp6sS0AxqnASQ/ADrJWbIJtpUjlRm0n6mBJIcxtpfIEHuTxEoU0/XHKKIIcXU
	t1ks+bIVVfTQv+iEl0pzYrFvoUbAaNECO2ZLHT7KKAVCgaBHQzg4M2asEK8uFfDag==
X-Google-Smtp-Source: AGHT+IHkNpQQAWRjXosLv5HFhak4Pg7srea0+wQIdchu/R87iLTonsi7jWc9iFLuyLDwBzYzPSzoEaWF7xbjLg//NcI=
X-Received: by 2002:a05:622a:1885:b0:4b5:e9b6:c96 with SMTP id
 d75a77b69052e-4e41ca1d0ffmr31103001cf.7.1759331945744; Wed, 01 Oct 2025
 08:19:05 -0700 (PDT)
MIME-Version: 1.0
References: <20251001141723.267866-1-richard.purdie@linuxfoundation.org>
In-Reply-To: <20251001141723.267866-1-richard.purdie@linuxfoundation.org>
From: Talel BELHADJ SALEM <bhstalel@gmail.com>
Date: Wed, 1 Oct 2025 16:18:54 +0100
X-Gm-Features: AS18NWCHqzovymnTKr1x60_aDrLAbochQLOCbnfFPWh8TIb5ejkW9IS5qzUXlBI
Message-ID: <CAOgG7m3Hd75kg50JjM0NHRUCQrRs4FNJr6O4Aqco0J7UOad6Mw@mail.gmail.com>
Subject: Re: [poky] [PATCH] poky: Update SANITY_TESTED_DISTROS
To: richard.purdie@linuxfoundation.org
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ab0efc06401a6300"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 01 Oct 2025 15:19:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13760

--000000000000ab0efc06401a6300
Content-Type: text/plain; charset="UTF-8"

Hello,

A typo in the commit description, Fedora 42 and not 52.

On Wed, 1 Oct 2025 at 15:17 Richard Purdie via lists.yoctoproject.org
<richard.purdie=linuxfoundation.org@lists.yoctoproject.org> wrote:

> Add Fedora 52, Debian 13 and Ubuntu 25.04, drop Ubuntu 24.10.
>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  meta-poky/conf/distro/poky.conf | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/meta-poky/conf/distro/poky.conf
> b/meta-poky/conf/distro/poky.conf
> index 3a17748fdba..8c291d305e9 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -35,13 +35,15 @@ SANITY_TESTED_DISTROS ?= " \
>              poky-5.2 \n \
>              ubuntu-22.04 \n \
>              ubuntu-24.04 \n \
> -            ubuntu-24.10 \n \
> +            ubuntu-25.04 \n \
>              fedora-39 \n \
>              fedora-40 \n \
>              fedora-41 \n \
> +            fedora-42 \n \
>              centosstream-9 \n \
>              debian-11 \n \
>              debian-12 \n \
> +            debian-13 \n \
>              opensuseleap-15.5 \n \
>              opensuseleap-15.6 \n \
>              almalinux-8.8 \n \
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13759):
> https://lists.yoctoproject.org/g/poky/message/13759
> Mute This Topic: https://lists.yoctoproject.org/mt/115534299/1955228
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> bhstalel@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000ab0efc06401a6300
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,</div><div dir=3D"auto"><br></div><div dir=3D"auto"=
>A typo in the commit description, Fedora 42 and not 52.</div><div><br><div=
 class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Wed, 1 Oct 2025 at 15:17 Richard Purdie via <a href=3D"http://li=
sts.yoctoproject.org">lists.yoctoproject.org</a> &lt;richard.purdie=3D<a hr=
ef=3D"mailto:linuxfoundation.org@lists.yoctoproject.org">linuxfoundation.or=
g@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left=
-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">Add Fedor=
a 52, Debian 13 and Ubuntu 25.04, drop Ubuntu 24.10.<br>
<br>
Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfou=
ndation.org" target=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt;<b=
r>
---<br>
=C2=A0meta-poky/conf/distro/poky.conf | 4 +++-<br>
=C2=A01 file changed, 3 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.c=
onf<br>
index 3a17748fdba..8c291d305e9 100644<br>
--- a/meta-poky/conf/distro/poky.conf<br>
+++ b/meta-poky/conf/distro/poky.conf<br>
@@ -35,13 +35,15 @@ SANITY_TESTED_DISTROS ?=3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0poky-5.2 \n \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ubuntu-22.04 \n \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ubuntu-24.04 \n \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ubuntu-24.10 \n \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ubuntu-25.04 \n \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fedora-39 \n \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fedora-40 \n \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fedora-41 \n \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fedora-42 \n \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0centosstream-9 \n \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0debian-11 \n \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0debian-12 \n \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 debian-13 \n \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0opensuseleap-15.5 \n \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0opensuseleap-15.6 \n \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0almalinux-8.8 \n \<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13759): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13759" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13759</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/115534299/195=
5228" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/115534299/1955228</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:bhstalel@gmail.com" target=3D"_blank">bhstalel@gmail=
.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000ab0efc06401a6300--

