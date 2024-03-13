Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65514C54E5D
	for <webhook@archiver.kernel.org>; Wed, 13 Mar 2024 01:46:07 +0000 (UTC)
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web10.6531.1710294350560476545
 for <poky@lists.yoctoproject.org>;
 Tue, 12 Mar 2024 18:45:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kh5lpBY7;
 spf=pass (domain: gmail.com, ip: 209.85.210.175, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-6e6082eab17so460686b3a.1
        for <poky@lists.yoctoproject.org>; Tue, 12 Mar 2024 18:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710294350; x=1710899150; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SA1jvnEm3o4W5aq0cDMFiY5LGiMbSnOJXHNMtuaFuJQ=;
        b=kh5lpBY7dIUnbaJ2H7R+rP0fHwmVOZjqaNw+Ct8WnWdBqyefntjIO6JFvAwW1ifKd1
         L7zENczz6LBWk9Ak+wHDL3K59RNqVBayYPrpq9XQufuLWVKdO7W/pHJVw1BsC7LdNYY4
         nYu5NBEmrBjPaWJVeXHuxyaBjdl8V5bQaGnkdDTz4+d1ZPdHCm4aHlU8tH1SFgmM6yDl
         kRW6Ul/cVNI6WMha+jQYjtaQo0/Qoqge2eSM/rro7ynN2Xmgn4zJzSCCLvzBySBZqvQH
         zg0/xV6Q+/V4VKOQ2Y9sLhoAadNTMnHUBK7dAfjOIiyjrWD1Wa+0cfHweTwe5kBzfw41
         gd3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710294350; x=1710899150;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SA1jvnEm3o4W5aq0cDMFiY5LGiMbSnOJXHNMtuaFuJQ=;
        b=mfMUWP1lvIg9r/MgVF249DOfkyZlpG9UN7WldyFfw4T7HNy29PrNzgex0izYUIYQ4w
         ssByCYW1qfFfFqh0QHyk6/cd+lvUQ/nacarIcNyJ1CpEH++clK1oe0kc2Icgv1scFURY
         IlqYSOl6ImSawULmKwkUppUqhOviBTFvDhBYBxowgq7RdFsZV9sjA5XY6TnWFaehXwxs
         AMsAcoSl8wD5xtnnDbmwlKTvMNXElTzeaCKP5EiNpPlxoW7c/D/Y8VvvnNWY5zYg74Y5
         YacJPvwPEzmRmtIP3+Rf/baeh0dLU38JPExkjX7ZlZI+E0ROjhgRk6Nlem98rdCQ2BGf
         w+9w==
X-Gm-Message-State: AOJu0Ywov64lcVi3gyGzvnt1V4kfVmzW8PvIUE+ANWzmpeyy7f24aCu0
	TUXiF0iznWXWzFEkHFBgfDk0vQC7UnBoEfbwrhbCD6UI8AkZqdvY7g34QniIqMLXlzrdyZgzYOs
	RkHnVA9J5/Uy1LE9YpIzenhDhK+nXPsYm
X-Google-Smtp-Source: AGHT+IFrND7QNg74bBpMoKls/KNliSgKHAiqd+neXhb7pOgvrnaroIwPoHdw9yWGyL3Pt+0rinWtwIeHFTRnqeeNLzU=
X-Received: by 2002:a05:6a20:43a2:b0:1a1:3651:8234 with SMTP id
 i34-20020a056a2043a200b001a136518234mr6380560pzl.60.1710294349600; Tue, 12
 Mar 2024 18:45:49 -0700 (PDT)
MIME-Version: 1.0
References: <20240312181115.3848230-1-ross.burton@arm.com>
In-Reply-To: <20240312181115.3848230-1-ross.burton@arm.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 12 Mar 2024 21:45:38 -0400
Message-ID: <CADkTA4OqpmyYq3qaH9hBH2LqnQ=O_8AvMwh94TKtWpeWjZg6zw@mail.gmail.com>
Subject: Re: [poky] [PATCH 1/2] linux-yocto: put COMPATIBLE_MACHINE first
To: Ross Burton <ross.burton@arm.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 13 Mar 2024 01:46:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13308

On Tue, Mar 12, 2024 at 2:11=E2=80=AFPM Ross Burton <ross.burton@arm.com> w=
rote:
>
> From: Ross Burton <ross.burton@arm.com>
>
> Move the COMPATIBLE_MACHINE assignments to the top of the file as they
> effectively control what machines this bbappend is for.

I'm ok with shuffling the chairs. Hopefully it's no on the deck of the tita=
nic.

Bruce

>
> Signed-off-by: Ross Burton <ross.burton@arm.com>
> ---
>  .../recipes-kernel/linux/linux-yocto_6.6.bbappend      | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend=
 b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
> index ca7b2b09df7..7a1fb6f245c 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
> @@ -1,3 +1,8 @@
> +COMPATIBLE_MACHINE:genericarm64 =3D "genericarm64"
> +COMPATIBLE_MACHINE:genericx86 =3D "genericx86"
> +COMPATIBLE_MACHINE:genericx86-64 =3D "genericx86-64"
> +COMPATIBLE_MACHINE:beaglebone-yocto =3D "beaglebone-yocto"
> +
>  KBRANCH:genericarm64  =3D "v6.6/standard/base"
>  KBRANCH:genericx86  =3D "v6.6/standard/base"
>  KBRANCH:genericx86-64  =3D "v6.6/standard/base"
> @@ -13,11 +18,6 @@ SRCREV_machine:genericx86 ?=3D "332d4668fcc32826907d4f=
3c4938845206006089"
>  SRCREV_machine:genericx86-64 ?=3D "332d4668fcc32826907d4f3c4938845206006=
089"
>  SRCREV_machine:beaglebone-yocto ?=3D "332d4668fcc32826907d4f3c4938845206=
006089"
>
> -COMPATIBLE_MACHINE:genericarm64 =3D "genericarm64"
> -COMPATIBLE_MACHINE:genericx86 =3D "genericx86"
> -COMPATIBLE_MACHINE:genericx86-64 =3D "genericx86-64"
> -COMPATIBLE_MACHINE:beaglebone-yocto =3D "beaglebone-yocto"
> -
>  LINUX_VERSION:genericarm64 =3D "6.6.18"
>  LINUX_VERSION:genericx86 =3D "6.6.15"
>  LINUX_VERSION:genericx86-64 =3D "6.6.15"
> --
> 2.34.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13306): https://lists.yoctoproject.org/g/poky/message=
/13306
> Mute This Topic: https://lists.yoctoproject.org/mt/104890078/1050810
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [bruce.ashfield@=
gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

