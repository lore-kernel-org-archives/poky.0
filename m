Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web08.13970.1645999923395250540
 for <poky@lists.yoctoproject.org>;
 Sun, 27 Feb 2022 14:12:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20210112.gappssmtp.com header.s=20210112 header.b=fKwFMG3a;
 spf=pass (domain: burtonini.com, ip: 209.85.221.45, mailfrom: ross@burtonini.com)
Received: by mail-wr1-f45.google.com with SMTP id s1so12593476wrg.10
        for <poky@lists.yoctoproject.org>; Sun, 27 Feb 2022 14:12:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LBwIC2tid8vFCSDfVenjBgkr64XVodiC19Cmrs2y49s=;
        b=fKwFMG3aeGzfWNepgyR2KDjJiIoNzHJKerkYQt5pGk0QZ8yZk0pwLOi7DCnWqIKKNg
         rUIEfC9Fl7ASyBkLuK2PQ9A+6wEweqRmZK6uRWZfFW/SDSqegSM6K0T/yYB/7feWpeb8
         kZNAq4MgCci5RaUG3uL6JsokSbIG48oFF+ne0sDSguS5iybD69Det8qWbBKAdJlPQ/7S
         G5+e1NsNGWwGNFe5PbLYPi8A79jE897MOCspvJS/2wSDDQpC0iCNfCoqorILgPoMxjAd
         OY8oPEYUnT/ahn1Zjvk+8X1Uz/bmOuuhnEbuLYo8/s6vXk0cri5+DeW4Resp7sqknCm6
         QtKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LBwIC2tid8vFCSDfVenjBgkr64XVodiC19Cmrs2y49s=;
        b=JBHoQudCJAfMLH71mZ9TiIf9eWxfrXVx49CFnEXllLzWI/a2XBTE+LhBXqquWvWTay
         5OEk3P5upbUItxyVAyAJUfsUJlIXKQnGWQ+z9FQmNYMGOmQ2Oacf6JYjQL5RUW5OtQpu
         TeTDcoU+d/O3DBc+tYa0AvPrVCS7gLgm3B00DagZNMQphDCgae+2BApz0jB3GwxAQF21
         0jjYtR6aaiO+9MGlfzThLBeK+nMdBR2P0IoodxIj/tA0RsZBQ8SlpXZiMD2BPnwvv2Dh
         h5ZCvp+fjX/hpIfAsdKb+v7xIrQN1bOnYQC9DGSTmVUaIlZYPt4DIouFzGHGyXIcn1kZ
         GeuA==
X-Gm-Message-State: AOAM5327/OyY+LQ601eq/VqXz4zD2GUNPAgmUO/KPYv+3ngtNkIBjy8t
	61hE7IrL8EgEPhUnIgpOAJ96qSc2NHFTHsHiCJ+hbg==
X-Google-Smtp-Source: ABdhPJy72Ez8nAGYtkbc9WFZcYLTy23+f2tCQt9Z2o/7fSskniT45TgI1KP4ekYOZI8O2UOZbAwouJA3jBzR+iRF3Fc=
X-Received: by 2002:adf:d22d:0:b0:1ed:f5c3:b654 with SMTP id
 k13-20020adfd22d000000b001edf5c3b654mr12983729wrh.497.1645999921647; Sun, 27
 Feb 2022 14:12:01 -0800 (PST)
MIME-Version: 1.0
References: <20220227182403.6073-1-peter.kjellerstedt@axis.com>
In-Reply-To: <20220227182403.6073-1-peter.kjellerstedt@axis.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Sun, 27 Feb 2022 22:11:50 +0000
Message-ID: <CAAnfSTsL9wVYfNtyFWgF5vjqezVEKcf-dHuY1xmbY2ajS_5jjw@mail.gmail.com>
Subject: Re: [poky] [PATCH] gma500-gfx-check: Update LICENSE to use an SPDX license identifier
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Wow, I'd forgotten this was still in the tree.

Someone should purge all this...

Ross

On Sun, 27 Feb 2022 at 18:24, Peter Kjellerstedt
<peter.kjellerstedt@axis.com> wrote:
>
> Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> ---
>  .../recipes-bsp/gma500-gfx-check/gma500-gfx-check_1.0.bb        | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check_1.0.bb b/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check_1.0.bb
> index 1fe1212419..6726f68319 100644
> --- a/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check_1.0.bb
> +++ b/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check_1.0.bb
> @@ -1,6 +1,6 @@
>  SUMMARY = "Intel gma500_gfx fix for certain hardware"
>  DESCRIPTION = "Avoid inserting gma500_gfx module for certain hardware devices."
> -LICENSE="GPLv2"
> +LICENSE = "GPL-2.0-only"
>  LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/GPL-2.0-only;md5=801f80980d171dd6425610833a22dbe6"
>
>  SRC_URI = "file://gma500-gfx-check.conf \
>
> 
>
