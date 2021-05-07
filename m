Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web10.17105.1620424648000307234
 for <poky@lists.yoctoproject.org>;
 Fri, 07 May 2021 14:57:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=G434bDwy;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id v12so10625270wrq.6
        for <poky@lists.yoctoproject.org>; Fri, 07 May 2021 14:57:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=9SxT1+A7WVew0rj4dRDtvwu5BOlEccOsb0W1PqBg3EI=;
        b=G434bDwyA2HO/qQyHAt6yT3BwsXksC1HjODcSAE/ZZp32NWAPlPxan5/+CUXQnJ477
         UJJLhVNQWN3VO9f0zMOny1Sc1pvsg7UyMBDKW9/x+J+Gi9ElqZNVjGiyAcEcSY/04z+o
         ZuoFjPnZFa/bDkPbx6lEz2xU7zvS7wYkpDFOI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=9SxT1+A7WVew0rj4dRDtvwu5BOlEccOsb0W1PqBg3EI=;
        b=UvkvBjC4KEyORTCgBnSry+Ik3WdCE7X1NIgS5iH3XLEFIXcUbhIiSgF5H7GJ2XZP8U
         g1pu3OSAOwF6ItMbZi2Vny+aq5PMYTqbJ16E/VaaIKhx+oL7SPZ9kl0QqlvtwvW/Xhxe
         Vso/EqtpUxwDgt2cxGqodZpgd4u2QeJxw6fMGSdCKymAwkQiiu+oG7VI/6FO9EJLy6ZL
         vB4LIkAloYbUxy5z2lv4EQUDcjXV494gYtHeTsUoUm+nvtEi3Cbwb9V3xtZrZGp8rXUx
         rRI1aoZjYSLYz/uQsMX7vAm97EgyjTq9Y3eIALR6xXyCZk0SmefaWbGRBDSpXjTkp8g5
         6nkA==
X-Gm-Message-State: AOAM532r6hfjaP3dg6EZpvRsvyoQOBoKkiocKVKRX8KdH78qZ44ITtGs
	YN4Vi00IXTdgQnUd0rYg/jh6Ew==
X-Google-Smtp-Source: ABdhPJzeokhugp21Y2G7KlpkCq/yAksstHifpkyvFWQRlBdpO0398lWIwEnJsqdvhxHPhoFN4vz/jQ==
X-Received: by 2002:a5d:5242:: with SMTP id k2mr15311436wrc.269.1620424646489;
        Fri, 07 May 2021 14:57:26 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:8b6c:ea91:f112:97a5? ([2001:8b0:aba:5f3c:8b6c:ea91:f112:97a5])
        by smtp.gmail.com with ESMTPSA id l18sm9828467wrx.96.2021.05.07.14.57.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 May 2021 14:57:25 -0700 (PDT)
Message-ID: <53c84f02a55895e9c1d723b7f74f7441184ef88c.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] poky.conf: move pam DISTRO_FEATURE from altcfg to default poky
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, poky@lists.yoctoproject.org
Date: Fri, 07 May 2021 22:57:25 +0100
In-Reply-To: <20210507184732.733161-1-alex.kanavin@gmail.com>
References: <20210507184732.733161-1-alex.kanavin@gmail.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2021-05-07 at 20:47 +0200, Alexander Kanavin wrote:
> This is needed to run libpam-ptest and also for running weston under
> systemd which is an increasingly common configuration.
> 
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>  meta-poky/conf/distro/include/poky-distro-alt-test-config.inc | 4 ++--
>  meta-poky/conf/distro/poky.conf                               | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
> index 273ebfdfef..4c377b4deb 100644
> --- a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
> +++ b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
> @@ -1,5 +1,5 @@
> -# Add an extra DISTRO_FEATURE
> -DISTRO_FEATURES_append = " pam"
> +# Remove an extra DISTRO_FEATURE
> +DISTRO_FEATURES_remove = "pam"

Red flag number one is a remove in our own configuration flags. We should
never really be doing that. I know we do in some cases, I still hate it
every time I see it and we need to minimise it.

>  # Use the LTSI Kernel
>  PREFERRED_VERSION_linux-yocto = "5.4%"
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
> index 522cc92f74..03abc6c55a 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -13,7 +13,7 @@ TARGET_VENDOR = "-poky"
>  LOCALCONF_VERSION = "1"
>   # Override these in poky based distros
> -POKY_DEFAULT_DISTRO_FEATURES = "largefile opengl ptest multiarch wayland vulkan"
> +POKY_DEFAULT_DISTRO_FEATURES = "largefile opengl pam ptest multiarch wayland vulkan"
>  POKY_DEFAULT_EXTRA_RDEPENDS = "packagegroup-core-boot"
>  POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"

This change moves pam away from our systemd configuration which I suspect will 
break your wayland changes.

I also would like to maintain the pam distro feature in testing and I suspect this
way around, we have more users testing it and the other way around we'd see a lot
of bitrot and breakage.

I've commented elsewhere there is a perception pam is heavy, both through extra
dependencies and also in more convoluted codepaths for things like logins. Some
users need/want the simpler option.

The reason driving the change is being able to test libpam-ptest and I suspect adding
that on its own to one of our altcfg images and triggering the ptest runner may
be a better way to resolve the issue.

Cheers,

Richard


