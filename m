Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
 by mx.groups.io with SMTP id smtpd.web12.845.1625526394751493455
 for <poky@lists.yoctoproject.org>;
 Mon, 05 Jul 2021 16:06:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ULAx9Op9;
 spf=pass (domain: gmail.com, ip: 209.85.160.182, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f182.google.com with SMTP id v10so13220396qto.1
        for <poky@lists.yoctoproject.org>; Mon, 05 Jul 2021 16:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=c0SdXLkuHkJfoRBAaL0yKfppHy+OnGo74GuJjiIn9PU=;
        b=ULAx9Op9T8U//FTHjV5UVthSzmmkZlYsP6D1H8n5TpzP7+JKcblCDvnes36/74u0hV
         h9lDW9cz94wR1UWtoB6TcStKwfeBFhTScnfRvPOMQrQaWYI3Irs3Qb5C3AgnRqfosqua
         LYYDVPGSOFnB+NBBwUIcMmNY3DJ8DtKpN2hiZwHJ0w4/vBKoGYsMK2YLgsdRAs39dmMB
         pwbsyN5dJYcWv6YKMEvZ/ZNf6RuYcoFb4dELGRoFRTw4u2lKshlh0G+NBh+Zs55pcATY
         gTdayuxARvSP+TBG/1oSMlaQpx611dkbi8vZihLHSsmlg6xbRgxgOjhdmzfiJkHj1xUV
         pOVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=c0SdXLkuHkJfoRBAaL0yKfppHy+OnGo74GuJjiIn9PU=;
        b=cbpsIO34Y61kGJ1ak5rIMF/HN8CKlBecOz3NfWJImBEhYzoPn9ydpjTUwbBctjFDD9
         L+Evhn+gLMdI3PtL+0SFUl8+SGuQJori07dXax+Oq9v/AKslX6salKs/gn0xIwuZUA7S
         oP+2PHboQ3Z9HtB+0h6W/CGEGLWPZeNsVVtPop+/Z5rWupIrwWOeA88DwNr+FmEVrdH0
         a1msl5aw2V37Y06Gjzya1DwxE5SlGng2PraVkgzSQJG6apd2OLm8gWyOufXdYJEmOlt4
         Ghv5pEgrtlRifrDiRhOcJzyNEICj6oJJ1b3zOSMwr/n+uRi0rz46BlvgAwjNGg7ghhdj
         BSsA==
X-Gm-Message-State: AOAM5312xW1qXJ0qvsmaTShq+muuq7mj0BvEF1mJRrefJ89jtKDIeeNu
	vlaAiGwZvXwtqskiCPDo2hxx/DdG7Zr5V5OQZTE=
X-Google-Smtp-Source: ABdhPJwU0vEUdUlXqyiNzzkiOSU32dzLaTtfPGguFRpFCyYV6j6+aabZBzfGmKJPKGc2UrOBpLJerq0UwE7lrfhSR48=
X-Received: by 2002:ac8:4b4b:: with SMTP id e11mr14528426qts.289.1625526393913;
 Mon, 05 Jul 2021 16:06:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210705183627.72790-1-alex.kanavin@gmail.com>
In-Reply-To: <20210705183627.72790-1-alex.kanavin@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 5 Jul 2021 16:06:08 -0700
Message-ID: <CAMKF1srCjD4ay0MJUq0G=V_gy7QwA1Y9ufmb+4bMPgWy=MNS-Q@mail.gmail.com>
Subject: Re: [poky] [PATCH] local.conf.sample: disable prelink
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: poky <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Jul 5, 2021 at 11:36 AM Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
>
> Recent tests have not shown any improvement over not prelinking,
> and without a regression test it is very hard to say when and how
> this happened.[0]
>
> There's also a concern that no one is maintaining the code, and there
> are open bugs (including serious ones such as [1]). Given that prelink
> does intricate address arithmetic and rewriting of binaries the best
> option is to disable the feature.
>
> [0] https://lists.yoctoproject.org/g/poky/message/12467
> [1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=14429
>
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>  meta-poky/conf/local.conf.sample | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
> index fb14379d28..1794126672 100644
> --- a/meta-poky/conf/local.conf.sample
> +++ b/meta-poky/conf/local.conf.sample
> @@ -148,8 +148,7 @@ EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
>  # enable extra features. Some available options which can be included in this variable
>  # are:
>  #   - 'buildstats' collect build statistics
> -#   - 'image-prelink' in order to prelink the filesystem image
> -USER_CLASSES ?= "buildstats image-prelink"
> +USER_CLASSES ?= "buildstats"

just disable it for ppc32 since thats a broken case we know.


>
>  #
>  # Runtime testing of images
> --
> 2.31.1
>
>
> 
>
