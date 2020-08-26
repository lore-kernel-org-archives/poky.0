Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
 by mx.groups.io with SMTP id smtpd.web11.14829.1598455451290898573
 for <poky@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 08:24:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KNpEszba;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.68, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f68.google.com with SMTP id t2so2157592wma.0
        for <poky@lists.yoctoproject.org>; Wed, 26 Aug 2020 08:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=BoJ59jvkNBh7gm40JgiEqLTyYRg/uEHoya9DZddUBiU=;
        b=KNpEszba16v0RU/ZOBj/mu2a+MgvCUUQzTIvB1jlHsL+qO9VZel8xOOTth4Dr+fkm7
         M6XBMm1HoUZOUJsCvHd4swrcdDes+McfzgrAi8FVoU3FJWlRMp4VBQcov3ehmyRpXLF/
         nRmLStlzBklfSS2dGrNOZVzhVekAtqoCvwpFU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=BoJ59jvkNBh7gm40JgiEqLTyYRg/uEHoya9DZddUBiU=;
        b=DXnrZ2EgUZTQVe10IoKzJNklzxpwsQ2TQ0iHwamJuAtamnMrMMr8IZuYbCnTQ1sgUV
         rAn+Kf6l0KVPp5byaUWa2dFhCu2MCsyB3700y8/ssfMUwZNFGwQ7ABrif6E+ZJqarWVY
         T2LKQcz3GQ5fPXUBsZoMPVPTA1EBHWD9g4/PbC4JCb7ifcamXTkUvJV3PIoGD7TzE/8R
         YEDVPM8uMWa5Y+9s4+b83PMMEeeWTkaslfDwcQqv7F9t9wdZsV3st8kIva0Q/1bFNYcT
         y6QxLrFx1HBuX/q/w+H7p3zh+gt8ckcUcvwqYpQmK2UfUZvUNZLE84jQy7SC7LQOlcoG
         MlCA==
X-Gm-Message-State: AOAM530DFLdeIsouOZha6nsgtCcwM8kAmt1fzO+Kc5zUcaqnsYnmPZhG
	6zpXpthryzMove0/T/RuZboRb+hM5EU5ELwC
X-Google-Smtp-Source: ABdhPJxo5RHmvQHEZ0FTcZy/59drm78Exp6/UB1YM4CMIrcMXEx7nymGxi6w56IV1nzZ4l9KdHUOSA==
X-Received: by 2002:a1c:a5ca:: with SMTP id o193mr7540893wme.106.1598455449488;
        Wed, 26 Aug 2020 08:24:09 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from d.9.b.8.7.0.d.0.8.3.5.0.7.0.4.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (d.9.b.8.7.0.d.0.8.3.5.0.7.0.4.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:c407:538:d07:8b9d])
        by smtp.gmail.com with ESMTPSA id 8sm7473389wrl.7.2020.08.26.08.24.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 08:24:08 -0700 (PDT)
Message-ID: <3adabcedbdb85a19e12d0bb3f50a99d6030affa2.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] poky.conf: do not install packagegroup-core-device-devel into qemu images
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, poky@lists.yoctoproject.org
Date: Wed, 26 Aug 2020 16:24:06 +0100
In-Reply-To: <20200826145206.6871-1-alex.kanavin@gmail.com>
References: <20200826145206.6871-1-alex.kanavin@gmail.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-08-26 at 16:52 +0200, Alexander Kanavin wrote:
> The purpose of the group and what it should contain is no longer
> clear, and
> generally adding userspace development items to images is best done
> at the image/class level.
> 
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>  meta-poky/conf/distro/poky.conf | 8 --------
>  1 file changed, 8 deletions(-)
> 
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-
> poky/conf/distro/poky.conf
> index 826f0d633a..e55641d87f 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -29,14 +29,6 @@ SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
>  DISTRO_EXTRA_RDEPENDS += " ${POKY_DEFAULT_EXTRA_RDEPENDS}"
>  DISTRO_EXTRA_RRECOMMENDS += " ${POKY_DEFAULT_EXTRA_RRECOMMENDS}"
>  
> -POKYQEMUDEPS = "${@bb.utils.contains("INCOMPATIBLE_LICENSE", "GPL-
> 3.0", "", "packagegroup-core-device-devel",d)}"
> -DISTRO_EXTRA_RDEPENDS_append_qemuarm = " ${POKYQEMUDEPS}"
> -DISTRO_EXTRA_RDEPENDS_append_qemuarm64 = " ${POKYQEMUDEPS}"
> -DISTRO_EXTRA_RDEPENDS_append_qemumips = " ${POKYQEMUDEPS}"
> -DISTRO_EXTRA_RDEPENDS_append_qemuppc = " ${POKYQEMUDEPS}"
> -DISTRO_EXTRA_RDEPENDS_append_qemux86 = " ${POKYQEMUDEPS}"
> -DISTRO_EXTRA_RDEPENDS_append_qemux86-64 = " ${POKYQEMUDEPS}"
> -
>  TCLIBCAPPEND = ""

A test build is showing this isn't going to be without issues:

https://autobuilder.yoctoproject.org/typhoon/#/builders/57/builds/2343

(the rest is still building)

Cheers,

Richard

