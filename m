Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web10.17109.1670424658461637706
 for <poky@lists.yoctoproject.org>;
 Wed, 07 Dec 2022 06:50:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=MN0Wr4Ef;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.47, mailfrom: steve@sakoman.com)
Received: by mail-ej1-f47.google.com with SMTP id t17so14603588eju.1
        for <poky@lists.yoctoproject.org>; Wed, 07 Dec 2022 06:50:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UFIpLKJf7o11EJkViCd+ZaNW14VA4xukSi5amqjWVWY=;
        b=MN0Wr4EfmpMoMQSUWC+6Ju4TRiHFaC/c7ETh1AXOZtiECnHqmifBCeyOAWOS/bEcT6
         vW7OpneczyUEWBpVngomNY5xEgDHDwgIbYwpK2AvIjbCUHweGkIoeUAuv68gDhloCMmV
         LbRp64nZ8mSNByTSI24nERHlENiA9JCAhImGVMPQyPunSwqoWJO7qFzqlKoZVNMEngbW
         w7FAgySfw94YTe9gxWvXQWyEESHmpgH9SzmFbVCktDacpQRBGdvQIPn98lvmDqo/Ltpp
         Y7TvqJ/7ZOhDPIuTG0mmKbT8EnZMeXwoKjdETElbf+czJZcxbMZ83E8ggyPRYIqKcJ/S
         i6FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UFIpLKJf7o11EJkViCd+ZaNW14VA4xukSi5amqjWVWY=;
        b=sbcyBIvoOD/xKKGMTuDMT/DAPS0DXzV4ptCIa/EZK7AzT08L1ZmSLaIJUuwc4Jdv0w
         w0HCfKqseCupaBYMJoLplOqYJ8fKp9XFhc30Z2Hvda500mkxQrj09E5/6t/Nglkhw0Rg
         0fQOBbWx6U4ichmISAT/sM0/wO/NuXLOFBdhNquapx+jHTdeflRR94rmLjEOONFhyZKs
         dvXz5GmOWL+RYubpvaPKVSOJGFtF0HwntvC7wPuFm5HtWCFxbfURJdHSfi8B/Q1HZ1b2
         +jRF3zmciHfbo9cgEARN1BoUR9+YSBchcVCOWvI98bEhis4xNTAQEry3GVrOOLeMxI7u
         ojbw==
X-Gm-Message-State: ANoB5pma/Tprs6Tw8Ma9oRgntC9tInTD48cSPi+L+isXWMRjtPeZTeCF
	IQFWNznGPfRjBA4N5htfwYoud2/dYz8eE6AhI64+4A==
X-Google-Smtp-Source: AA0mqf5zya8FjDwzqJUgwOjB4zjrJNK9XtApfgj6ut5ftHohciCu6YVDxKfbyTbipURYK52OhwJojzZ68loQ3ejGObM=
X-Received: by 2002:a17:906:c24d:b0:7ac:2e16:a8d2 with SMTP id
 bl13-20020a170906c24d00b007ac2e16a8d2mr66452919ejb.584.1670424656665; Wed, 07
 Dec 2022 06:50:56 -0800 (PST)
MIME-Version: 1.0
References: <20221206095435.1401028-1-adhityax.siddartha.ravula@intel.com>
In-Reply-To: <20221206095435.1401028-1-adhityax.siddartha.ravula@intel.com>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Wed, 7 Dec 2022 04:50:44 -1000
Message-ID: <CAOSpxdYHyNsGArfXG9VBz7g1Q685ALRY0_8nYS9S37+2YHDRcA@mail.gmail.com>
Subject: Re: [poky] [meta-yocto][langdale][PATCH 1/2] linux-yocto/5.15: update genericx86* machines to v5.15.72
To: adhityax.siddartha.ravula@intel.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Do you plan to send version bumps for kirkstone too?

Thanks!

Steve

On Mon, Dec 5, 2022 at 11:54 PM <adhityax.siddartha.ravula@intel.com> wrote:
>
> From: Ravula Adhitya Siddartha <adhityax.siddartha.ravula@intel.com>
>
> Signed-off-by: Ravula Adhitya Siddartha <adhityax.siddartha.ravula@intel.com>
> ---
>  .../recipes-kernel/linux/linux-yocto_5.15.bbappend        | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
> index a5c0ecdbd9..3ad175dc84 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
> @@ -7,8 +7,8 @@ KMACHINE:genericx86 ?= "common-pc"
>  KMACHINE:genericx86-64 ?= "common-pc-64"
>  KMACHINE:beaglebone-yocto ?= "beaglebone"
>
> -SRCREV_machine:genericx86 ?= "a40d2daf2795d89e3ef8af0413b25190558831ec"
> -SRCREV_machine:genericx86-64 ?= "a40d2daf2795d89e3ef8af0413b25190558831ec"
> +SRCREV_machine:genericx86 ?= "0b628306d1f9ea28c0e86369ce9bb87a47893c9c"
> +SRCREV_machine:genericx86-64 ?= "0b628306d1f9ea28c0e86369ce9bb87a47893c9c"
>  SRCREV_machine:edgerouter ?= "90f1ee6589264545f548d731c2480b08a007230f"
>  SRCREV_machine:beaglebone-yocto ?= "9aabbaa89fcb21af7028e814c1f5b61171314d5a"
>
> @@ -17,7 +17,7 @@ COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
>  COMPATIBLE_MACHINE:edgerouter = "edgerouter"
>  COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
>
> -LINUX_VERSION:genericx86 = "5.15.54"
> -LINUX_VERSION:genericx86-64 = "5.15.54"
> +LINUX_VERSION:genericx86 = "5.15.72"
> +LINUX_VERSION:genericx86-64 = "5.15.72"
>  LINUX_VERSION:edgerouter = "5.15.54"
>  LINUX_VERSION:beaglebone-yocto = "5.15.54"
> --
> 2.34.1
>
>
> 
>
