Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com [209.85.208.67])
 by mx.groups.io with SMTP id smtpd.web11.64730.1600099152075074553
 for <poky@lists.yoctoproject.org>;
 Mon, 14 Sep 2020 08:59:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=aDi3zfK2;
 spf=softfail (domain: sakoman.com, ip: 209.85.208.67, mailfrom: steve@sakoman.com)
Received: by mail-ed1-f67.google.com with SMTP id ay8so67947edb.8
        for <poky@lists.yoctoproject.org>; Mon, 14 Sep 2020 08:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RIQX6TBPHM8PoNfEs6oXyDDd6kPI38z11XxZAAwWBjY=;
        b=aDi3zfK2dx2ifRBZELlVE9VEEvdbFYpgO1bkc7Y1FxNA41IPEvC5T2HmMz6/XASZ/G
         iI2OUF3UT0hG68DQI5fj41Ycyq1DAKBlK1W4xb48FohUSQrLTdXlfygbDHnKow9D9eHk
         Gl6Y3t7XiGrV3PoDpcQNBc0wLMkAiYTxkWTwtYtfYXsIDipFpc9aB4/fbm6fX/rhBZny
         mkr7lv743L9N7hzR7bjmXZm+z393LH20yYoRf3XgWxzVLmYaTp7oigmFZLv01vbpm5DE
         dBq+j3lJXsucUoWvdwJ3sS7vtjY66yqod6wgJWb2fuxNIrV0dJu/er73DzemOfOZ3/RT
         e6XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RIQX6TBPHM8PoNfEs6oXyDDd6kPI38z11XxZAAwWBjY=;
        b=E4mkBl7b4gnY6lIusaG0mC6LrFYSYOvLHpIZpLQhLn1Bmk2dFZqCrdbMFHou+3Outb
         Mm5hnAPnzZoif4OW2ehmp0PcIWbEqBDGXO1p0WPxPW8otePyK4pkqpyo2No9NleREJod
         oLlCRq73q3/Cj9QuZ+9wHTOZvy+ELUnbljvHQyjx5zc42TaNkqLyfNNwwEpZjYTBVRtQ
         YqZwMLQbNc998cEF7mM6FnOFxuS6ZtLTt1tspxERGrnqyc+vVxoHO7qqXqvpR77dJTnT
         ZwXtz/+0Tvptbu2beylbC3HTdur/UXlcb/z9yi2RcI2fLsaCGq9Gap8mGqcajSrRq5sP
         QzgQ==
X-Gm-Message-State: AOAM532Yib6VcYKnYRP8foa3SqRXR8ngDcX8kwqU+ZpagZoy2SUAv2xi
	eTUgNSy9f3S48EeoCN1gO2nEr3/A6EeonOeKM8UAfg==
X-Google-Smtp-Source: ABdhPJxcxFy5wPWhJymgvK6DdrjDqFRLaVpUlEcBKo/3Ta2KM5BkqFwciei91Jtabj1UrgyjRaPLQyPbCoLxrvqGSXU=
X-Received: by 2002:a50:d304:: with SMTP id g4mr17844659edh.248.1600099150496;
 Mon, 14 Sep 2020 08:59:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200903181055.1299273-1-ross.burton@arm.com>
In-Reply-To: <20200903181055.1299273-1-ross.burton@arm.com>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Mon, 14 Sep 2020 05:58:59 -1000
Message-ID: <CAOSpxdac=88OW-Z7rk02_urKt7iP-uNzFhTEAX2m3PUQQNO=aA@mail.gmail.com>
Subject: Re: [poky] [PATCH] local.conf.sample.extended: remove help2man reference
To: Ross Burton <ross@burtonini.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Is this patch (and the matching oe-core patch) suitable for dunfell too?

Steve

On Thu, Sep 3, 2020 at 8:11 AM Ross Burton <ross@burtonini.com> wrote:
>
> help2man isn't part of the early build anymore, so there's no point in
> referring to it here.
>
> Signed-off-by: Ross Burton <ross.burton@arm.com>
> ---
>  meta-poky/conf/local.conf.sample.extended | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
> index dc92a16f6c..44a01690e3 100644
> --- a/meta-poky/conf/local.conf.sample.extended
> +++ b/meta-poky/conf/local.conf.sample.extended
> @@ -124,9 +124,6 @@ DISTRO_FEATURES_remove = "x11"
>  #This enable mklibs library size optimization will be for all the images.
>  #MKLIBS_OPTIMIZED_IMAGES ?= "all"
>
> -# Uncomment this if your host distribution provides the help2man tool.
> -#ASSUME_PROVIDED += "help2man-native"
> -
>  # This value is currently used by pseudo to determine if the recipe should
>  # build both the 32-bit and 64-bit wrapper libraries on a 64-bit build system.
>  #
> --
> 2.28.0
>
> 
