Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6EA9C35FF3
	for <webhook@archiver.kernel.org>; Mon, 17 Mar 2025 10:23:28 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web11.49075.1742206998842999607
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Mar 2025 03:23:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ufml8Y6+;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6ddcff5a823so29920706d6.0
        for <poky@lists.yoctoproject.org>; Mon, 17 Mar 2025 03:23:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742206998; x=1742811798; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N8usRKOI3tnY7Y1tnHpE40EvhuYxtPYZogpae9SZK3k=;
        b=Ufml8Y6+df6AO6uing3g+mxBXyEGmQckIhBxURuidY/2GIw2aLiAamiys5BZVi0yHy
         0QqUIjEPMUt06mF1KtIvBf9qH9cBWxJU+jWntFFvlei2SbAxvdYe85xXJ1aDiyoOORCx
         YaDgVNtjtMXch0ZIazLrruisSWwxeDxlFRzrMqXT1siG1CKsg3vb84XZwgLAjikBalwV
         dy4RQGgxCuPSXZhLq2XUht7v9/NLrmixDnp3oy1dk94o419PFKqKLwLIBorDscEexiA+
         fLZF1UFbM+A1dqxQESP43Rym/wkY0cL19WVaIdOt1kwtIS8m1Ma91QLbgHza5bWQ3ap9
         j5gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742206998; x=1742811798;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N8usRKOI3tnY7Y1tnHpE40EvhuYxtPYZogpae9SZK3k=;
        b=SNNhyojzgZdYIQ7D07OXUDRtJxMhqBFWVwJv1+GtuaoAb9CY9qljTtBIQOmTjUecA3
         qBtRTAI3ZI+huJPgprqUFI6h2lB1jZxU6XCLg6UcG+IM8KbWQvnfmkzAqcQAmx3JITUt
         BPie1bjAXUwc7w92cPU4FVvSpy79spOxdI3GdnMZC989aOCwbkdb5NrxRlvbgJ2IuMY8
         bWXUuQ1rYTwsD8DqtezhOgQBCxeETBrCnPZNZtfie3fxy8QM9HwF8jbm6bOdenLkgsW6
         YWxqgOnF66FZ3BbZZU4ilFq66VDwsl+n2DUESj1EpUU1jy1oCGhJdhX1Pl4uXpJRBMdA
         VpcQ==
X-Gm-Message-State: AOJu0YzWGs9/a7tgaHEdnOP8RRw7NoPg9tfEpQV/RpYwrd8O1R65mRcd
	JkRSa8zMmFAOYYzqmV+tQgsoWdYy13Xy3YygwaXvrnS1gAgIXYn3VPk55kMAcNWo7p3MIeG5dpy
	xZsBMNqlYi0AYJs/XUn5yUa+HmtE=
X-Gm-Gg: ASbGncsMx6BnfNBeRoZ0UXVPybB3E/ycc2aAYunPjK/b1styv5m+/696ChWNqCAuF6D
	SyVpn1JzNhOZsynWIPS/ASrspz88yV65PsFufptGrzmuvX+Iu92DvQTTqX9vKXHxLt1yCKvncNz
	Xd97ypcPzj6J4W9XTpSQUqErre35IHC9F0BlJBRhzM+bc3dFxHydbmduJKtWut2FpErUqhrio=
X-Google-Smtp-Source: AGHT+IEI4+o8hzuTqHPZZeHsnprgXPHJNgoewJO6K+Y66ZSwdjukrt6KzDOP1mU48Or7Ow4HFdNhMNHBqdQfgtszJRA=
X-Received: by 2002:ad4:5ec6:0:b0:6e8:fb44:5bda with SMTP id
 6a1803df08f44-6eaeaa238f2mr216126086d6.19.1742206997834; Mon, 17 Mar 2025
 03:23:17 -0700 (PDT)
MIME-Version: 1.0
References: <20250314144539.2885974-1-frederikbraendstrup@gmail.com>
In-Reply-To: <20250314144539.2885974-1-frederikbraendstrup@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 17 Mar 2025 11:23:05 +0100
X-Gm-Features: AQ5f1JpnUnPaAVYCjS9AdoHca5uwokIt8MYpsRRWEgMu54gBNEFVr2hYpwbO0Ds
Message-ID: <CANNYZj_eOvCCLighQvQn=L3hsV3S+H=oBkp8bOhsxKhGRbhDaA@mail.gmail.com>
Subject: Re: [poky] [PATCH] Check if version is actually a file
To: frederikbraendstrup@gmail.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 17 Mar 2025 10:23:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13570

Thanks for the patch, but it should be sent to openembedded-core list,
as poky is an aggregate repository of various pieces.

Alex

On Fri, 14 Mar 2025 at 15:46, Frederik Br=C3=A6ndstrup via
lists.yoctoproject.org
<frederikbraendstrup=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Recipetool incorrectly made the assumption that version is always a
> file, but when it's a directory, the call to open fails
>
> Signed-off-by: Frede Braendstrup <frederikbraendstrup@gmail.com>
> ---
>  scripts/lib/recipetool/create_buildsys.py | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/scripts/lib/recipetool/create_buildsys.py b/scripts/lib/reci=
petool/create_buildsys.py
> index ec9d510e23..0a08fc64ca 100644
> --- a/scripts/lib/recipetool/create_buildsys.py
> +++ b/scripts/lib/recipetool/create_buildsys.py
> @@ -808,6 +808,8 @@ class VersionFileRecipeHandler(RecipeHandler):
>              version =3D None
>              for fileitem in filelist:
>                  linecount =3D 0
> +                if not os.path.isfile(fileitem):
> +                    continue
>                  with open(fileitem, 'r', errors=3D'surrogateescape') as =
f:
>                      for line in f:
>                          line =3D line.rstrip().strip('"\'')
> --
> 2.47.2
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13567): https://lists.yoctoproject.org/g/poky/message=
/13567
> Mute This Topic: https://lists.yoctoproject.org/mt/111700337/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gm=
ail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

