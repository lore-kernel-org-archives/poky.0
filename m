Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE6CD358DC
	for <webhook@archiver.kernel.org>; Thu, 29 Jan 2026 08:14:45 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.10612.1769674483198117926
 for <poky@lists.yoctoproject.org>;
 Thu, 29 Jan 2026 00:14:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=Hz3i0QTU;
 spf=pass (domain: linaro.org, ip: 209.85.167.46, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-59dea72099eso815079e87.0
        for <poky@lists.yoctoproject.org>; Thu, 29 Jan 2026 00:14:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769674481; x=1770279281; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lBrWTgG7oScpKU6uMlnPKqi5ln84bRpkC8jBAO1lK6s=;
        b=Hz3i0QTUZMVL0IfNLEx1HRRZljkhEbWK+FMFTB1jHQenWpSUfT00YnY2YypP3yt3EI
         jy+oj9rVQRW+65qCIR+IeSgrwIdrKZCNJwWWJtegnBwFSstieEOb9Y4WgYuWo6OOMJe0
         kmHx1qWPlLt/VRAKYpDbedfOIC9HOm/MUZW/itOSItgjPL3cd7HeBgGuW7ElqalSon6j
         kHvfEXW6uE/M7lataiAOcAKF1mcoV+aJYrlbO4UDVU2LOo6Nn9tTyh48MF+O4THt482C
         1YVJWlcC+y9Mwo60et2P6jr0Ts2LXTE2vd348gbjs3yWJwCXGNY8o8ZgBkuE/SY2M/Sz
         GQsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769674481; x=1770279281;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lBrWTgG7oScpKU6uMlnPKqi5ln84bRpkC8jBAO1lK6s=;
        b=nLA5Fv5J/S8rVXb6FLPkLdHRS1eAu1K2gaWqjkpNDK4IAHPGEzrpaGAXvKsFEy5DJf
         /aXSXFzY3AZMG8ganh76bb/v/OLAlcGy7cKibdFSlgKnGEjqJw3EbFhEceiybjGUAC9r
         T2L5cv39Lvk0/gUYhHVuQ86cyXREMiASU5W/4QoMUAckNFpN4Bjmk9+9vpsT31Y2p9lN
         rGjSgroMIS1caFdmzjmixy2uB+3Ujc/45FhS1BXvIgrR3iUfM1BBwRt7Buk1LtwAhPzr
         YXOCYwLCA6Rb6O78B7ciRlET5puHnZvjuhklIYHxslIUbRQA30Qvw317yIB83VBhWEq+
         HhkQ==
X-Gm-Message-State: AOJu0YznBrXqCfgFphV4yrYplhgE7c0PBqZVeyZPSeTRsgEhb8VTb/7x
	I//fg11qh+3H1FgGQXcgXaSvIHh/DNhh7LK98xPMIhCyuNTagAT7SJfaIKrGe50uEK3K7LN8YRW
	Aj6LNis0=
X-Gm-Gg: AZuq6aIeJSzlUfvwoRiCg6IETu9iEAy89U3NCC3R1tufEkvdpB22OcLDjRJ45ttbTtc
	0kyk4NM8oWurWfkoYLO+ZewNy2h1vyGUyn3TLpGXCrD/GZ22TGLO6lRDedQDBthq+SJlXUrxmM4
	JfbFfatNFftH0xbvNno24Y6ylZzEA902OlK2+OVLbAUgGg2s6/e/x6AdoBDXacXsAQazmN8WbGr
	5tg4hYQGOstvAjyoCMg3IC9UnSE+fZIJCDBMKJJJuotBOATyZ3q/doAs9AT6HaFSiRu/I2owfKR
	/EtgVqv/33raeq2y/JoYJhE1KaGlfRqU986zW+wHGCwKQWvuGiLAI/21vegYsL/mB39csICLBp6
	1iKZ4TC+O7CPZmxTzu8ObhNNCCbIDyNrEqMACLEuNTSU1/KRg5MFpmDdM5CoFOkv0cGBaQ4Fl8V
	TejFLPAqUfu77BcBCP5PGym5NtQqKZR+bA4HlN3eQ7TcEW
X-Received: by 2002:a05:6512:2249:b0:59d:f473:aa8e with SMTP id 2adb3069b0e04-59e0402416amr3855324e87.27.1769674480781;
        Thu, 29 Jan 2026 00:14:40 -0800 (PST)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e074b6e08sm1021458e87.67.2026.01.29.00.14.40
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 00:14:40 -0800 (PST)
Date: Thu, 29 Jan 2026 10:14:39 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Subject: Re: [PATCH] parselogs: ignore panfrost fan error message on
 genericarm64
Message-ID: <aXsW71wQStuZv64x@nuoska>
References: <20260108145645.637369-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260108145645.637369-1-mikko.rapeli@linaro.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 29 Jan 2026 08:14:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13827

Hi,

It's been a few weeks. Could this applied to master branch?

Cheers,

-Mikko

On Thu, Jan 08, 2026 at 04:56:45PM +0200, Mikko Rapeli wrote:
> Some devices don't have active cooling so this is not
> an error:
> 
> https://ledge.validation.linaro.org/scheduler/job/125155
> 
> panfrost ff9a0000.gpu: [drm:panfrost_devfreq_init [panfrost]] Failed to register cooling device
> 
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>  .../lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt   | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
> index 3dc12d34ecdb..039c4ad8923f 100644
> --- a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
> +++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
> @@ -18,6 +18,8 @@ platform hdmi-sound: deferred probe pending: asoc-simple-card: parse error
>  deferred probe pending: rockchip-spi: Failed to request optional TX DMA channel
>  platform sound: deferred probe pending: asoc-audio-graph-card: parse error
>  platform sound-dit: deferred probe pending: asoc-audio-graph-card: parse error
> +# no GPU fan
> +Failed to register cooling device
>  
>  # AMD zcu102 with u-boot 2025.10rc2 based firmware
>  # optee not available on all devices
> -- 
> 2.34.1
> 

