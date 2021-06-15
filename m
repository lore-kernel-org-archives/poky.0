Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.6540.1623746936497012445
 for <poky@lists.yoctoproject.org>;
 Tue, 15 Jun 2021 01:48:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=eIwj83zO;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id t11-20020a1cc30b0000b02901cec841b6a0so460504wmf.0
        for <poky@lists.yoctoproject.org>; Tue, 15 Jun 2021 01:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=05HFHcKyxVJCqqlq+yEjruPjBx9dAmGRQePm7QJObQw=;
        b=eIwj83zOO4KUa7bstqRbXyzhhO/rYPkYHjkAEjhKplK/QEPNTahw1jPBP/TE3qWZ3x
         TKcLufLm6vqkT7ACqh/1FEJ4detMUiupDa5VtFn+vLicpNbzbLjk/Eie8IhoJU5+dnED
         DRZFg+T5uqRYJatVaChcAiV8HgVvGtSgY1uWc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=05HFHcKyxVJCqqlq+yEjruPjBx9dAmGRQePm7QJObQw=;
        b=T3IDjrMLHHViuiPGvvzINXOLHT+hTYJIT+1zfsNTwdGoqxQxAh7YU59lhf0OlLiHOM
         ruhPDIkGYpYW+KRd8NmDzKw+9gv9Ej4E9QnQZjTQpMfwudjzUgdMjRqqG0nT0rVpu24o
         twEHEv7LXz7qhHZcU/2qMAXcMhSwMjewi//j9Z4yVPvqOMPY17IbWi8FgLkDMW9GKJt+
         UgJpYMO+iAT7bJ78agLUEZagH27ZIw6ZV1AmKAv8cEBCDi9STUa+Wje8fv4Va1vI64BE
         eGZfGezUSiY90jta+JVuzWqKRedZMQd43rsbhseh9L+stMEnw5a3bW9Vkf3qSrOzDv+o
         PqHg==
X-Gm-Message-State: AOAM531tfz3MDPVxjr2ngxV8fpE2FcmJjMD70qJMUQRuyxS5WbRii/i8
	K/ZD2TrqgJEj2jG/qZnBdJDLpQ==
X-Google-Smtp-Source: ABdhPJzRMyvcrTeslQCG4CVjNo3HCftDRbylKiCSVsUpOK8uKqvO4WmUxQMi0QWjURH0rKvcxiJxUw==
X-Received: by 2002:a7b:c453:: with SMTP id l19mr3965861wmi.154.1623746934822;
        Tue, 15 Jun 2021 01:48:54 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:c376:a25:72e5:3c84? ([2001:8b0:aba:5f3c:c376:a25:72e5:3c84])
        by smtp.gmail.com with ESMTPSA id n8sm15069820wmi.16.2021.06.15.01.48.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jun 2021 01:48:54 -0700 (PDT)
Message-ID: <5ed9e1d2676d4d31289ebaf2ec3b492c1daa88a7.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] local.conf.sample: disable prelink
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, poky@lists.yoctoproject.org
Date: Tue, 15 Jun 2021 09:48:53 +0100
In-Reply-To: <20210615081225.1734033-1-alex.kanavin@gmail.com>
References: <20210615081225.1734033-1-alex.kanavin@gmail.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2021-06-15 at 10:12 +0200, Alexander Kanavin wrote:
> There's an issue on ppc32 where one of the wayland libraries is incorrectly
> relocated [1]. I also believe that any such custom, yocto-specific optimization
> which does intricate binary rewriting needs to be justified with rigoroous
> benchmarks but I can't find any.
> 
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=14429
> 
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>  meta-poky/conf/local.conf.sample | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

I appreciate the desire simply to delete/disable anything that causes issues
but in this case I draw the line and my answer is no. It works fine in the
vast majority of usage.

Cheers,

Richard

> diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
> index fb14379d28..1794126672 100644
> --- a/meta-poky/conf/local.conf.sample
> +++ b/meta-poky/conf/local.conf.sample
> @@ -148,8 +148,7 @@ EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
>  # enable extra features. Some available options which can be included in this variable
>  # are:
>  #   - 'buildstats' collect build statistics
> -#   - 'image-prelink' in order to prelink the filesystem image
> -USER_CLASSES ?= "buildstats image-prelink"
> +USER_CLASSES ?= "buildstats"
>  
> 
> 
> 
>  #
>  # Runtime testing of images
> 
> 


