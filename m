Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web12.12768.1654609909746054300
 for <poky@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 06:51:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kX79wwBR;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id l18so11962347lje.13
        for <poky@lists.yoctoproject.org>; Tue, 07 Jun 2022 06:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=jtP2bg5P7/N3/LRPmxSrCVAso6ryYVwitpG08Xl3OEY=;
        b=kX79wwBR2G+Aajtb2eiKpZPXRs0vvrKqVHOCAt3eEDy+O6W0VaD1SurLEA7/L3GlEs
         GySiCa8h61wVJK44Chz48wOsKq4vrWS89t7nbM5OPqqkFbKh5lMy82QGa0h9VKHH0MQy
         hcFiBlXV2QKbvw0YEd/yBNqBRHKXr0zEiRrSGrzEBBLzsPYuIeUiWf5LcmDFAy5nkVkW
         c+o/EaAVg7ce7ecaD/gqFmWUEKQtrJZbZ5btMJOm+0bIgY6ZxXHsfWBDIu07NoxLZIt9
         sxHwxH/p28p+RkJyrZ0ypnm/B3AP/G53cjqVaE5TtvTdSo5AwzmgtGNQKlGJKSLroQGz
         g2+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=jtP2bg5P7/N3/LRPmxSrCVAso6ryYVwitpG08Xl3OEY=;
        b=3r44DGXBqEOHQZu3j1cJ6YffdFtzEB/lZwWHzFaV3BobrC1wyUAB5ERQImClkIbS8N
         7LcYwmqdTXItEzMh62BozH7MhNVjrxvcP/+6bd/za4u4y+mXVR7v6Ohj4tpGON19ppn/
         Sl3K4oY1f/cuPpDWhnbkuf8mRKwf3XEjdiU6buB+GX6cdTIPpFECw4ZXB7N66lmuDqz6
         yZ9nr/i1qhE3auwhC7bICrVwWqZCp5p8HxVOhK15J7rLIuY++skbf1VQ9Ezkq26YK/yv
         fYpm9WEAVn7vmT6/E5ghdA0PSBxwYVPrSFz/D9KMVxl2a8AsxUGNblZjx/S5d3mbW1jQ
         J6Dg==
X-Gm-Message-State: AOAM5316vr3/bLOgG70MF6sra2fYhPMkwaTCbvfn4R0XxD3wXeLwQFP2
	W9iCXBmuzcRC5QrxFjslimgIXDJCb5PKnR9GEMI=
X-Google-Smtp-Source: ABdhPJx0goTrHMMd5VTcw0bgEF9/AhOIlsTbiSQQnHf5+Jirf14/XS0h5h/71R/e0/oiwjB1LxLP+h45/l6bakjndDw=
X-Received: by 2002:a2e:2ac1:0:b0:255:7677:97f3 with SMTP id
 q184-20020a2e2ac1000000b00255767797f3mr14490127ljq.513.1654609907580; Tue, 07
 Jun 2022 06:51:47 -0700 (PDT)
MIME-Version: 1.0
References: <l7UT.1654602886134438232.UjUB@lists.yoctoproject.org>
In-Reply-To: <l7UT.1654602886134438232.UjUB@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 7 Jun 2022 15:51:36 +0200
Message-ID: <CANNYZj-ubKi15iLszdohnTdOxsRgFdZUGi1=pr0-4F_H3kTPXw@mail.gmail.com>
Subject: Re: [poky] [PATCH] [honister][PATCH]weston-init: when x11 is enabled set xwayland=true
To: Sebastian.Suesens@baslerweb.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This needs to go to oe-core list; also should this go to master branch
first? Can you provide a test that fails without the patch and
succeeds with it? (see weston test in meta/lib/oeqa/runtime/cases)

Alex

On Tue, 7 Jun 2022 at 13:54, S=C3=BCsens, Sebastian via
lists.yoctoproject.org
<Sebastian.Suesens=3Dbaslerweb.com@lists.yoctoproject.org> wrote:
>
> When weston is build with x11 support xwayland is also build.
> To get xwayland support in weston xwayland has to be enabled via weston.i=
ni file.
>
> This patch enable xwayland support in weston.
>
> From 583bce5a1f5de91306bee5dbd914de577519247a Mon Sep 17 00:00:00 2001
> From: ssuesens <sebastian.suesens@baslerweb.com>
> Date: Tue, 7 Jun 2022 11:47:27 +0000
> Subject: [PATCH] [honister][PATCH]weston-init: when x11 is enabled set
>  xwayland=3Dtrue
>
> Signed-off-by: ssuesens <sebastian.suesens@baslerweb.com>
> ---
>  meta/recipes-graphics/wayland/weston-init.bb | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/meta/recipes-graphics/wayland/weston-init.bb b/meta/recipes-=
graphics/wayland/weston-init.bb
> index e02da0c358..51b634cb5c 100644
> --- a/meta/recipes-graphics/wayland/weston-init.bb
> +++ b/meta/recipes-graphics/wayland/weston-init.bb
> @@ -57,6 +57,10 @@ do_install() {
>   sed -i -e "/^\[core\]/a idle-time=3D0" ${D}${sysconfdir}/xdg/weston/wes=
ton.ini
>   fi
>
> + if [ "${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'yes', 'no', d)}" =
=3D "yes" ]; then
> + sed -i -e "/^\[core\]/a xwayland=3Dtrue" ${D}${sysconfdir}/xdg/weston/w=
eston.ini
> + fi
> +
>   install -dm 755 -o weston -g weston ${D}/home/weston
>  }
>
> --
> 2.25.1
>
>=20
>
