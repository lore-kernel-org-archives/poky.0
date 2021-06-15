Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web11.730.1623777683403898130
 for <poky@lists.yoctoproject.org>;
 Tue, 15 Jun 2021 10:21:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HW6zQKYJ;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id 69so8817472plc.5
        for <poky@lists.yoctoproject.org>; Tue, 15 Jun 2021 10:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:references:from:organization:subject:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=RXrlJbJ160f33GfeaBR/ZBmP1tBAj7WUsTdENL7HU5M=;
        b=HW6zQKYJzCIHA+WRRxaXGYu7aGgBxKxJlhq8ovrjh21PNhNBUdweLTsOwM6UBNSpkj
         hwhYFxGirNAdP5+KjppNVTTwyfuOFaz1LkE9860+f7Dbs1H0FpUvh43Em0Z+yJEl/BTN
         KZUVUNiLTWUOa16wOiheS94k59r3+YUlVfMiX/Ts5ndlxXIXs9jwYjReS1IFMpg4ItSc
         iZbKEqbV2rdggxFRHJbayMjMMq/6P4aLRuZ26EEed7hOJmw0yAuQGUZEOA9FGlUm/XFd
         nPLzgqkb7jxRtaZD7iiILebbHYFeBnaygA+POoo5TKN/rp2uPxlBWG80W8F2wlwKVcXx
         VrTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:references:from:organization:subject
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=RXrlJbJ160f33GfeaBR/ZBmP1tBAj7WUsTdENL7HU5M=;
        b=Um4+AVYetmP0xoEj2558vwGRQ5+UlVxli5tx5mm1AfGhtuNbTkpjb//UMkUvXytq+z
         8atudx+NX2cPzVZpddrnojqDoapjvIkzzDZky/Uc4p2pSp8hivprZTLbws4eGAeNmzpw
         1HOibKnYwKKLNaTU2Bal3dQriVwBxkWcnO3MJaqdgZd6ib4TznyXeAsroL1KtssPSoAa
         U6JViv2HugUNvOjW262lmHC0XK5jAQaLuVHJB1D973Nm++IFsMq/TruM8mhHDLYJVd4J
         vHiPYfJn/GC7uS0fuzU5ekB4BkKOTTVDYzCFL1meuiM4iOUIQBLyipUrcP+XU50SbpDm
         xbdA==
X-Gm-Message-State: AOAM532gEwQmoZPl15CptuofdHlo7piOq+vlMh7n1zUAKfi9iW9P/16I
	/WWIJGfFzpSXW+v1xFYSJ5ImPWqwTtfokw==
X-Google-Smtp-Source: ABdhPJzzCGyAHydYQM3ey2hXVbb4PEerQY9+kpSETUN2a8TveQNGDvamb37osFJ0rnI/uWsH3DwqyA==
X-Received: by 2002:a17:902:b193:b029:11a:a179:453a with SMTP id s19-20020a170902b193b029011aa179453amr4775773plr.69.1623777682494;
        Tue, 15 Jun 2021 10:21:22 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:2116:639e:d2af:5c44? ([2601:646:9200:a0f0:2116:639e:d2af:5c44])
        by smtp.gmail.com with ESMTPSA id g8sm2748376pja.14.2021.06.15.10.21.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jun 2021 10:21:22 -0700 (PDT)
To: Alexander Kanavin <alex.kanavin@gmail.com>, poky@lists.yoctoproject.org
References: <20210615081225.1734033-1-alex.kanavin@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Subject: Re: [poky] [PATCH] local.conf.sample: disable prelink
Message-ID: <32a729c7-54a8-f808-9e3e-900cd5aebe3c@gmail.com>
Date: Tue, 15 Jun 2021 10:21:20 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210615081225.1734033-1-alex.kanavin@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 6/15/21 1:12 AM, Alexander Kanavin wrote:
> There's an issue on ppc32 where one of the wayland libraries is incorrectly
> relocated [1]. I also believe that any such custom, yocto-specific optimization
> which does intricate binary rewriting needs to be justified with rigoroous
> benchmarks but I can't find any.

We only use prelink on glibc based systems but they do give slight 
improved runtime/boottime performance on kind of devices yocto project 
is used on. However it will be good to get some idea of what this saving 
is now a days before we disable it fully.

its perhaps better to disable it for ppc alone so something like this
USER_CLASSES_remove = "image-prelink" in qemuppc.conf would be limited

> 
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=14429
> 
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>   meta-poky/conf/local.conf.sample | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
> index fb14379d28..1794126672 100644
> --- a/meta-poky/conf/local.conf.sample
> +++ b/meta-poky/conf/local.conf.sample
> @@ -148,8 +148,7 @@ EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
>   # enable extra features. Some available options which can be included in this variable
>   # are:
>   #   - 'buildstats' collect build statistics
> -#   - 'image-prelink' in order to prelink the filesystem image
> -USER_CLASSES ?= "buildstats image-prelink"
> +USER_CLASSES ?= "buildstats"
>   
>   #
>   # Runtime testing of images
> 
> 
> 
> 
> 
