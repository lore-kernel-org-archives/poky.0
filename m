Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD07FCAC5BB
	for <webhook@archiver.kernel.org>; Wed,  8 Oct 2025 13:28:45 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web10.16013.1759930122468677082
 for <poky@lists.yoctoproject.org>;
 Wed, 08 Oct 2025 06:28:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=uOAPwmC/;
 spf=pass (domain: linaro.org, ip: 209.85.167.54, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-57d5ccd73dfso8185528e87.0
        for <poky@lists.yoctoproject.org>; Wed, 08 Oct 2025 06:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759930120; x=1760534920; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RDHubEjNxAvl0Qnpp+CrnA82SRzW7GdWE5G8blE/doU=;
        b=uOAPwmC/A7DfGyKFdPuc/rW8U/8eiG/KbqDYqfO9aEzDxL94Q5FiknRPnNMA05vxJt
         Nb98cKuUcvQqtK3qbv0kS5CmB+ZvHdt7R3iDgvtScqu//AaZz2xjBb2GeHkqmvnQseUW
         kFiPVwpC2LOtMUYkpDrlU+csOAceirmxRN5nYk0MUMC7vCZpYB2gwYHzF6Lvfy3nxcSt
         GtGa/ToxpYUI2VZPQ+jtKiWpPq+lG19NNFWVCUBxsh4ixlW4qUF9ospnayQxSJvPRSu8
         DqMR2z3PmfMP4TFOjHTaGeX+pTgq04+0CTUxq01IF1BOxRMIRTOnO4pvXu0gvr3XFjTn
         Ynew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759930120; x=1760534920;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RDHubEjNxAvl0Qnpp+CrnA82SRzW7GdWE5G8blE/doU=;
        b=cjwGctRWJGRPovV2Qyfuceq5rbaJuELshuJx1hGrynx6Wffhe3m1ASYM5zlYJ/0HxM
         Ve84ymG10WwlAAuWa378SLAaxbv7F5YJtIeMcO260TqmK+pcXxUHqL04T9uPS7MQDHyO
         fsIpeIMMhlAEpwX2RGqv1UWMdIHGOv5r665uXe87mKoVN1PqFhwMpPKZEqWlU2JdeXhV
         tKCf8A8AftAMUPdEb4YW6/nYine19S+Z9UAzA/WDPbOwG7DhoAJUHO9xiBeDt6U36BNO
         vRoXTBVRHTkBxgz/CTGdtjiY3XeC1EYYMSAnN6Me3LYflVvNQFmSefHkZSgKT7XlJrZP
         AHJA==
X-Gm-Message-State: AOJu0YwvJwOmt9br9N/1/6QsbSVufVZSH65Wd+tBJ2D1Gn2n9pdF7ei2
	JMOVwb5rXVnKPMllv1jRxpTcULwjsLUzv5kWXXzZzaR80rPGl7FeRZE7CYDRjGN1TrZdSVFs+3C
	tLhHhapc=
X-Gm-Gg: ASbGncuJQ1CHkbYesmB697tqlSKv9Wz8Fswrx1TGtKOxiaXDmWSxE87CC6kfZ2rAxxw
	mBO9hpFif11boifdGF2KVC+txfqVe/zE/LmriQcAf+Px9CiyH0EktKeLzw6gi0R83BNs2NoWcP9
	06zIdvXTopxeV9gXwvvBa99HecGtYlD8c8J6sa4e3u3vsJiehh5Opuw7X/BMr8euK9AGENax/m7
	BFX7e0NagT1MO1O65+QUcQDdH8Xinr4YvA3SZeG167jiLsrEyQ65wX8GQligWGeXr+1Xr4p/e/9
	+dXy6Lo4KvICiWmVfnL7VsCYnueUq14FdA53qwEA038ekvx3ZCyp7OlLG1FbqiTs6IosRfQZqP3
	zyZvInTs1wCgywemV0LWA4yscxDjGeR097CqtkoLcRrDd0Lrb1YqaSUmdzd6gHToef0KmgJlPs9
	gItoFo3QlH5YvTTWQ7pAQ=
X-Google-Smtp-Source: AGHT+IF1+WPQOb9AvDexapt8NF9FD9KrAMQ0ozO0lVY36hRhNh6nRjqvn0qcbXi8IIWez94Sjh0J/Q==
X-Received: by 2002:a05:6512:114c:b0:55f:4f1f:93fa with SMTP id 2adb3069b0e04-5906dae5c63mr956545e87.42.1759930119863;
        Wed, 08 Oct 2025 06:28:39 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0118d6dbsm7268326e87.82.2025.10.08.06.28.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 06:28:39 -0700 (PDT)
Date: Wed, 8 Oct 2025 16:28:23 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Ross Burton <ross.burton@arm.com>
Subject: Re: [PATCH] parselogs-ignores-genericarm64.txt: add error messages
 from rockpi4b
Message-ID: <aOZm94yAap52fV8i@nuoska>
References: <20250918121230.3264352-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250918121230.3264352-1-mikko.rapeli@linaro.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 08 Oct 2025 13:28:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13762

Hi,

On Thu, Sep 18, 2025 at 03:12:30PM +0300, Mikko Rapeli wrote:
> Rockchip rk3399 based rockpi4b with open source firmware from
> meta-ts https://gitlab.com/Linaro/trustedsubstrate/meta-ts
> triggers some non-fatal errors from various drivers.
> Ignore them for now since all other oeqa runtime tests pass.
> 
> https://ledge.validation.linaro.org/scheduler/job/119422

Any possibility to get this merged? In these tests
I don't control what firmware the devices have and thus
there can be errors like this. If I would also build the
u-boot firmware with genericarm64 then I could possibly
fix these issues, but that's not in the plans.

I would like to submit similar workarounds for AMD zcu102,
TI am62p5, Broadcom rpi4, NXP imx8mp and Qualcomm rb3gen2.

Cheers,

-Mikko

> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>  .../oeqa/runtime/cases/parselogs-ignores-genericarm64.txt   | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
> index 3e96a172da..7d360bdbda 100644
> --- a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
> +++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
> @@ -9,3 +9,9 @@ Error applying setting, reverse things back
>  Can't lookup blockdev
>  # X11 fails to start without connected display
>  modeset(0): failed to set mode: Invalid argument
> +memory-controller: probe with driver rk3399-dmc-freq failed with error
> +probe with driver rockchip-pcie failed with error
> +platform hdmi-sound: deferred probe pending: asoc-simple-card: parse error
> +deferred probe pending: rockchip-spi: Failed to request optional TX DMA channel
> +platform sound: deferred probe pending: asoc-audio-graph-card: parse error
> +platform sound-dit: deferred probe pending: asoc-audio-graph-card: parse error
> -- 
> 2.34.1
> 

