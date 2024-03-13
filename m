Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 545E4C54E5D
	for <webhook@archiver.kernel.org>; Wed, 13 Mar 2024 01:47:27 +0000 (UTC)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web10.6557.1710294447003085003
 for <poky@lists.yoctoproject.org>;
 Tue, 12 Mar 2024 18:47:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DOO0J8Wd;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-53fa455cd94so5218598a12.2
        for <poky@lists.yoctoproject.org>; Tue, 12 Mar 2024 18:47:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710294446; x=1710899246; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dSykmFckRi3Xc+uB+WMyBlf2NcnROHjgReoAqg97roA=;
        b=DOO0J8Wd74/OTQxOFNKlYGpialPT0oXqE3VzXf6iuJuZgSSJBw3JqrDCg50vagWN+m
         Q/mM1yK7nr+vEE4Op9CwoHJfbpQ8VhUElQzbd/JRVo5ycSerHqdFUpyZcUt+mSSnDLMB
         CjqDnxzUr7sGZPoiUVTo6fEeZ/33YVA1dandbB6CaFzl5HDBqrNEeR0UsOvBaiI7Mr88
         7nDu7dycrgXrfaNwlqnPBsbF8kEXQIQl3wR+k8Vm6vU7ZoiVt2xJM84Qopm4ryBUvijp
         9Q9pDUXxL5paTLuz7/n1gpY+c4EErHu46G7mDa+PMG4zLxNkJ4UCHPOZAGcK1qCcAhap
         PtQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710294446; x=1710899246;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dSykmFckRi3Xc+uB+WMyBlf2NcnROHjgReoAqg97roA=;
        b=sTS7xea2CJiRDzujOUjhoRIB53sCpdHGexY3RM53Ctgcpbgf0FprqXrinEkCAzbk9I
         BVlr86k55O0a/dsJBErp4ibveCfZIse5PtiBOHjkhJCWsV9QCR6IJ4ddjTycr1ZX0iXH
         raBPHSprYfCUP6d7MgtxaO/L5xMqibBlTHF++p4n5W5cuena2nnzmnf9azxb06NhbrHp
         s7hksqv0r4epzJ9YSMvzj9adbz3BasMQq5hrj3t68tBxLc913o+Y7is4R5+KLMCw6J5c
         076L/yyvF2AcEpMgAM7PwC8hyg2YDacHdgv0Ypy3IIrNEYDyoEghMHzHBzAled4PWAGn
         V2YQ==
X-Gm-Message-State: AOJu0YxKFCCDv/EDMTDGqNg5fR3q4o0+kCIbVnBGA9DhYp+R4nINCjjP
	eabLCH5zkzVWPNmHKpfHMjVq1TmCM8mb9AUC2bVPu8E9LHVuYLk2GGtCu2878p3S3d8yiSXTypA
	n7/blbDTd8US/yvaqTXSo9EluWFOHqCCd
X-Google-Smtp-Source: AGHT+IH/yd0RPR9bIurQQOjNIG9cWEOzHsK3ipkh+PCtPHQzDc4mpUMUfxDeT4KkWvpJV6C96jb/ne+p6jOUinNnaCM=
X-Received: by 2002:a17:90a:e508:b0:29b:aee7:5937 with SMTP id
 t8-20020a17090ae50800b0029baee75937mr3684160pjy.23.1710294446316; Tue, 12 Mar
 2024 18:47:26 -0700 (PDT)
MIME-Version: 1.0
References: <20240312181115.3848230-1-ross.burton@arm.com> <20240312181115.3848230-2-ross.burton@arm.com>
In-Reply-To: <20240312181115.3848230-2-ross.burton@arm.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 12 Mar 2024 21:47:15 -0400
Message-ID: <CADkTA4OOYUVxp-qxVkOwHV6+MnS_eBJZg6pB7d-awVDjRdOVjw@mail.gmail.com>
Subject: Re: [poky] [PATCH 2/2] linux-yocto: implicitly track oe-core's kernel
 version for genericarm64
To: Ross Burton <ross.burton@arm.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 13 Mar 2024 01:47:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13309

On Tue, Mar 12, 2024 at 2:11=E2=80=AFPM Ross Burton <ross.burton@arm.com> w=
rote:
>
> From: Ross Burton <ross.burton@arm.com>
>
> Don't override KBRANCH/SRCREV/LINUX_VERSION, instead use the values in
> the base oe-core linux-yocto recipe.
>
> The advantage of this is that we don't need to update this file every
> time the kernel is upgraded in oe-core.

I'm ok with this as well, and in theory, we could probably do it for the
other reference BSPs as well.

It would be even better if I could boot test this with qemu, but we'll
worry about that part later.

Bruce

>
> Signed-off-by: Ross Burton <ross.burton@arm.com>
> ---
>  meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend=
 b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
> index 7a1fb6f245c..b404f827e7b 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
> @@ -3,7 +3,6 @@ COMPATIBLE_MACHINE:genericx86 =3D "genericx86"
>  COMPATIBLE_MACHINE:genericx86-64 =3D "genericx86-64"
>  COMPATIBLE_MACHINE:beaglebone-yocto =3D "beaglebone-yocto"
>
> -KBRANCH:genericarm64  =3D "v6.6/standard/base"
>  KBRANCH:genericx86  =3D "v6.6/standard/base"
>  KBRANCH:genericx86-64  =3D "v6.6/standard/base"
>  KBRANCH:beaglebone-yocto =3D "v6.6/standard/beaglebone"
> @@ -13,12 +12,10 @@ KMACHINE:genericx86 ?=3D "common-pc"
>  KMACHINE:genericx86-64 ?=3D "common-pc-64"
>  KMACHINE:beaglebone-yocto ?=3D "beaglebone"
>
> -SRCREV_machine:genericarm64 ?=3D "e064a7d658a30b027b999183e21cd37305caff=
2a"
>  SRCREV_machine:genericx86 ?=3D "332d4668fcc32826907d4f3c4938845206006089=
"
>  SRCREV_machine:genericx86-64 ?=3D "332d4668fcc32826907d4f3c4938845206006=
089"
>  SRCREV_machine:beaglebone-yocto ?=3D "332d4668fcc32826907d4f3c4938845206=
006089"
>
> -LINUX_VERSION:genericarm64 =3D "6.6.18"
>  LINUX_VERSION:genericx86 =3D "6.6.15"
>  LINUX_VERSION:genericx86-64 =3D "6.6.15"
>  LINUX_VERSION:beaglebone-yocto =3D "6.6.15"
> --
> 2.34.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13307): https://lists.yoctoproject.org/g/poky/message=
/13307
> Mute This Topic: https://lists.yoctoproject.org/mt/104890079/1050810
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [bruce.ashfield@=
gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

