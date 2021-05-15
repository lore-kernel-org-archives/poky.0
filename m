Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web09.1673.1621043792861317271
 for <poky@lists.yoctoproject.org>;
 Fri, 14 May 2021 18:56:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=N7jD7tUQ;
 spf=pass (domain: gmail.com, ip: 209.85.160.169, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f169.google.com with SMTP id k10so977014qtp.9
        for <poky@lists.yoctoproject.org>; Fri, 14 May 2021 18:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JSxXPnjHaXN5L1oOxxVduniGSyIWEhzzRwgJV7laM1c=;
        b=N7jD7tUQb6j3aKCvdqjEVuixRNRPcKQxayG+dBNHsDvifOU+9ExTkEgBNR13k1DF7K
         sL6AzmelLLDofiHk7gSn4qDgHR8aIFr56GgxsWbpeOTdDUIa0bIdN8R0tSCcGt14HYxd
         0RriOLo9H4uJ56XUn8nWMAkxA15Hqu1mKsZy20F+BKMNUZ0sDmmwGnomyfc2qshqRBln
         gStPhGd7CigX8eyzUvGh9TAgrFmfz4Ih3IUOTF7sg7lWxPaV1WsD+PeyyY/UbAMIzWxA
         kYN6EWYZ53UK4sm8Q/2BW2X/R8Rbl8IlXcgX0pVGSDYLHOH5+PW0RfqOhIqAYTpSDGWt
         P/lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JSxXPnjHaXN5L1oOxxVduniGSyIWEhzzRwgJV7laM1c=;
        b=SbPhXFDJYwLE4vmVIWkD07JYg8J3oB1QjWaKcCHyYgacRB9Sgkb3+OdOIqXIqgxdhD
         Td4yMZhGuYz1gC6rsimYeLRL3Bn4+Zd8uM7hQXPQm4dxm5khsGh4ZBRrIOEySP2z0Wco
         FRm/pQobV9lG/wHTr3cOvKLIGMZrBlXheJ9HlzT0C5vt2ySVVB26oWQiFaSl19TjKLky
         UysxAblMJFjYiZ+YbF1L1EtSp1/RfbMBTDgNWPxXZQK6NJWB7qcx21lT6Jw0SC0avelq
         GQVxRswp8SuVceIirmf+/p2ZDwF4rXMImk4ak4BYoFT/QIYPuL5kaXfQnDVbyAAlvbdz
         DOkg==
X-Gm-Message-State: AOAM531SwH2wc0frCxFtzVvCn4Nq/RjbqpYJoKFdeNNF3KqKiI/vkHfp
	ydDEDzWjvhqAK0FRaUpnh7euUiBfyGQRdiLjZi7LZLrFJMo=
X-Google-Smtp-Source: ABdhPJyTl/6AnTpBYm2RRj3S0ZtwNhFC6VJKMV6aA8Cb+f1SchDdsmCZMqae+3DQdmUvexyPYoBUaE7zg1EF91cHCm4=
X-Received: by 2002:ac8:7e81:: with SMTP id w1mr11178306qtj.82.1621043791919;
 Fri, 14 May 2021 18:56:31 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1621037161.git.steve@sakoman.com> <76aab65e84ff6faae857a303b242bf29aa133e03.1621037161.git.steve@sakoman.com>
In-Reply-To: <76aab65e84ff6faae857a303b242bf29aa133e03.1621037161.git.steve@sakoman.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 14 May 2021 18:56:05 -0700
Message-ID: <CAMKF1spadK-4KiRk-Vt85CN4DqpBF8xMkoVMdr_p3VfiX=_eoQ@mail.gmail.com>
Subject: Re: [poky] [meta-yocto][dunfell] poky-tiny.conf: set PREFERRED_VERSION_linux-yocto-tiny to 5.4%
To: Steve Sakoman <steve@sakoman.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Fri, May 14, 2021 at 5:08 PM Steve Sakoman <steve@sakoman.com> wrote:
>
> We no longer have a recipe for 5.0% in dunfell
>
> Signed-off-by: Steve Sakoman <steve@sakoman.com>
> ---
>  meta-poky/conf/distro/poky-tiny.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
> index c6d4b88..f20cd4c 100644
> --- a/meta-poky/conf/distro/poky-tiny.conf
> +++ b/meta-poky/conf/distro/poky-tiny.conf
> @@ -38,7 +38,7 @@ TCLIBC = "musl"
>  # Distro config is evaluated after the machine config, so we have to explicitly
>  # set the kernel provider to override a machine config.
>  PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
> -PREFERRED_VERSION_linux-yocto-tiny ?= "5.0%"
> +PREFERRED_VERSION_linux-yocto-tiny ?= "5.4%"
>

seems ok to me. provided tiny config work with 5.4 as well

>  # We can use packagegroup-core-boot, but in the future we may need a new packagegroup-core-tiny
>  #POKY_DEFAULT_EXTRA_RDEPENDS += "packagegroup-core-boot"
> --
> 2.25.1
>
>
> 
>
