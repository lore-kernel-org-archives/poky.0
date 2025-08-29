Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FA10CA0FF0
	for <webhook@archiver.kernel.org>; Fri, 29 Aug 2025 16:28:22 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
 by mx.groups.io with SMTP id smtpd.web10.18545.1756484899490013060
 for <poky@lists.yoctoproject.org>;
 Fri, 29 Aug 2025 09:28:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lMcgYNYi;
 spf=pass (domain: gmail.com, ip: 209.85.128.175, mailfrom: raj.khem@gmail.com)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-71ff2b20039so21329207b3.3
        for <poky@lists.yoctoproject.org>; Fri, 29 Aug 2025 09:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756484899; x=1757089699; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XVElGvl3eEwP0cKvNfVFm0KGzQ5y6SvNxNU//APQji4=;
        b=lMcgYNYi6gdm2ujaW8jP6ryrgM43rVzzWr399JinVq/52QsDBknKiwTMa2/rSp40ip
         ZTQqarlw0mijpvGUz4MsbRxTqyJV/jSXqirr7u+wLAhiHjybbHjY/uDPmVzdurTt47dG
         a00GP21vJciE4o4eXW/V95HgT7AccUtck1r7SoB/QlKD5lZKePCKLAkB/MdGDpiv2Nxv
         wb4L6BsUGvIHA0QuroRbMj90rTHDpqoICae+Vp2LD7N76vRd62ia+LGinwXd+T7hAdYK
         L8udGTicn50d2Aj54wT7H6Q1aJbBapZypwcqyaGdPxFKZ8qMt+FXTD5qh5gxQMlCQRSk
         mUKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756484899; x=1757089699;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XVElGvl3eEwP0cKvNfVFm0KGzQ5y6SvNxNU//APQji4=;
        b=aiCzMOi9EuzmbT5/1iejiQz73le0kMrpU0MvY1Q4ywiLrTY2iLjvxNiIOoc7AzdBN0
         VwIVykiHJTS5nRmVNechhrVmFzx1GZEd6w8uCZTBGBYeSd7NUKrp9C/LvP8xSLxO+Mck
         uTMwY7gQdsccQl85rpGgZ1ZP0DDVFnZTZWVPQG7ooqF1vxLvqi6FICQ+1eR7MuMlo+Ru
         T2i2GcSb8RDObP6lL+g0HBbHM6XDl1lJ/d6dEIXeE9q5WFK4hhMTej1d+ePUNB0mTCuu
         Hx+wXMhAA4xCg+eSe52JgUE2dH8sWObEEtXDhqS8L1i0G9L4iTwXhPXsvKoxsEuVHEDL
         J7pw==
X-Gm-Message-State: AOJu0YwTWu1zPhibpgcv+AEf+vGg8s9yTAhSW8Hp+dYPGcAOWi6tIuxz
	br+iAE7G1UQs1wcZaig/LCtCGmurk8Entc9Lj0/NlWPABUFYyrSrw5mwaOH+HAtxxInw0yMd01c
	EPwYExUOrnBCywATf3BBVrFN+GQHzzf4=
X-Gm-Gg: ASbGnct3gUn3DhqwDyCmZlmBX42o1z/2YNL4VBhs3JCfcNHlOJCuO5sMZKNjutDOlpK
	gWiTJgPJOpwNmvmfUxeB3vB6dfOS0SND/6DshJBj+gHKE8DB1agsByyazoip92JQmzFtC4IPPCf
	urLf5heufbeyp1q11+ilsdNxkmkW/KW1ySzvkz16jPGb82SwxhxKrr5Na8F/snqSkMxYbydkgsD
	DWtaFkt+K5s0XdM57VD3vtohGRbl8FrdEKrKmW4QhdUzbEIQxW3DA8sejgS8dizUZDs2Mip5/LJ
	uNsAnt7pOpR51/sqV6OMLBQyYvUkHvZT0jNN/KVriNvOu5eA/xB5KIUpbA==
X-Google-Smtp-Source: AGHT+IHaliDZWGQ/+ddSwCMxI7RoFWOZ7sp2RR4mSgKSYoZVDW2SiFt7bW6FwHmI+fJOIVxBqwl4gNf6mvLYyNECB1s=
X-Received: by 2002:a05:690c:6e93:b0:71c:1de5:5da8 with SMTP id
 00721157ae682-71fdc40d339mr335761737b3.36.1756484898327; Fri, 29 Aug 2025
 09:28:18 -0700 (PDT)
MIME-Version: 1.0
References: <20250829114713.1577609-2-frederikbraendstrup@gmail.com>
In-Reply-To: <20250829114713.1577609-2-frederikbraendstrup@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 29 Aug 2025 09:27:52 -0700
X-Gm-Features: Ac12FXwiUOTbK-GaeoJmvSdgjSYgNrO4ZOvp_kVZjFjq9jhTzZa9-zR5ItAjBkM
Message-ID: <CAMKF1srTM6KMnwOqQzfgx5=39F3RmpxEshDonev8wYKs7XTYAQ@mail.gmail.com>
Subject: Re: [poky] [PATCH] fix: use pkgconf instead of pkg-config
To: frederikbraendstrup@gmail.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 29 Aug 2025 16:28:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13739

On Fri, Aug 29, 2025 at 4:48=E2=80=AFAM Frederik Br=C3=A6ndstrup via
lists.yoctoproject.org
<frederikbraendstrup=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> As a preface, I know this is probably a bit of an aggressive move. But
> pkg-config doesn't build on newer GCC and Clang compilers due to a lot
> of hardening. The old K&R style C code is deprecated and cannot compile
> in the gcc default mode.
>
> pkgconf is a modern and compatible (although not necessarily bug
> compatible) alternative that is maintained, and has more features
> that are not available in the old pkg-config. I've been using this patch
> for a while now, and it has worked flawlessly.
>

This is bold and worth consideration, some other distros e.g.
archlinux use it too however
we need to soak it a bit more for yocto because its not battle tested
for cross-compiled systems.
Yoe distro defaulted to it in 2018 [1] for a while but some packages
e.g. chromium/firefox
builds were not happy. Perhaps things have improved overtime.

[1] https://github.com/YoeDistro/yoe-distro/blob/master/sources/meta-yoe/co=
nf/distro/yoe.inc#L126-L129

> Signed-off-by: Frede Braendstrup <frederikbraendstrup@gmail.com>
> ---
>  meta/classes-recipe/pkgconfig.bbclass | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta/classes-recipe/pkgconfig.bbclass b/meta/classes-recipe/=
pkgconfig.bbclass
> index 1e1f3824dd..55847fb705 100644
> --- a/meta/classes-recipe/pkgconfig.bbclass
> +++ b/meta/classes-recipe/pkgconfig.bbclass
> @@ -4,5 +4,5 @@
>  # SPDX-License-Identifier: MIT
>  #
>
> -DEPENDS:prepend =3D "pkgconfig-native "
> +DEPENDS:prepend =3D "pkgconf-native "
>
> --
> 2.50.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13736): https://lists.yoctoproject.org/g/poky/message=
/13736
> Mute This Topic: https://lists.yoctoproject.org/mt/114950667/1997914
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [raj.khem@gmail.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

