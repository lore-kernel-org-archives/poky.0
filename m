Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0465EC021B5
	for <webhook@archiver.kernel.org>; Fri, 21 Feb 2025 10:01:53 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web11.19932.1740132108222841853
 for <poky@lists.yoctoproject.org>;
 Fri, 21 Feb 2025 02:01:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=f3pZY2YQ;
 spf=pass (domain: linaro.org, ip: 209.85.208.169, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-30613802a04so20348841fa.2
        for <poky@lists.yoctoproject.org>; Fri, 21 Feb 2025 02:01:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740132106; x=1740736906; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HWtPSnW0HnfMqtUYL1WhOPkO3ScF/ruOopSLs91dOjo=;
        b=f3pZY2YQTugNxP3hAFEWd6clEK7tkXG+8AaenXlw6QxPg5oMj4E7r4eMfEXEr9YQsj
         SYZZYdKmPckuaBgRnE052faCP3LllJmRVTj7qIyVGRuHo+JH6Zpgto4ysiU/+dPevRmi
         JzUr4lx5up5ceibMOr1W0I+0W5ElKFK/kS9v38Am8fCOC5MXC8zJTC5UioH9BmlOPSI5
         FziXfQUOQtcba3qQeWvsXPk6srW8Jlvn5r+kybypEiPP5qhCJZHlZVJropvEIeisd4JL
         E2lr7BkELgaE7WhZKcOffJVut/dakB0xujkN1/AmpUelZJTjHPcW+KSyWg5FJGyfO6bS
         3S3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740132106; x=1740736906;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HWtPSnW0HnfMqtUYL1WhOPkO3ScF/ruOopSLs91dOjo=;
        b=txwRio4/v4erl6uxkwoiEowYXuHE0X1XMfpw3GwQsecdyTevlpFh9pYFn/HOqEZCrG
         YE8gd1zq0sAtTGH4v24ONl7ehX3wEIK7r2utRe/BjW6+JXdvuZsf3beXak0fYku/J4Pz
         AcJR1nijEst9JVaiATvHev2vaSch9lFdGbnKamAQ9sJcAePWeB1PlPuPLwp3LAHbED1V
         W40nz+rjjUE3JToGsC4i4I2oPrLyQfSWx66/uf6YhbPbIDqRMpcDVE4mq3v8UiMvnQzL
         KWRHisodBcTQXshu93qPdSJSE2MRh0egPpTzptOkGU61qgJNnnmsMCpr2r0WNo4CtrBM
         9HJQ==
X-Gm-Message-State: AOJu0Yxl3eeJr9N5Q/EZeOl1M22wYlMX/f2Icp12RdSrH3qRtWamMU6g
	NQdKsjlRXuhp3PkvO9cADrWrIVns/3XfK3J0kppQs6+aBw9QzOSvpQMSyYbhYjo=
X-Gm-Gg: ASbGncs05d1XwCLqAp6r3+ACoyj5h3fdRS1VeJ/VplqhsgXPe2d7WWt9D60AfM3/q/v
	vvWSFX9XBJwB27LVFZ7OqxYGdboFsL2/e20ix/4KpeMLLhcq8gPBOYX6XO9k66W6sK7xOmea61e
	/XIrVYBeG/LG+9ePm+3YkO0prx9wKLQbbsF3/ojLRzQyybI8Ku83j9WxLzIP8C5jF6nWqwdYvP5
	K4aar2jZ4seWH9EllpqgufxSMElaU3qt3YDnLz02bUWDF6y7qTiiYi4At/Bq84yN5Srh2ce0l9f
	SPkbk2U8Yd8cScCNHS+2TCDAveEA2J1Cm1QLhoI1b5ATSySCrv0=
X-Google-Smtp-Source: AGHT+IF4OLreZEZGh7R2anKuzvnsl+YfvmuiDgexygKUZrmRjuGQKQEnGl6y5FfwL8JcmVTNeusr+A==
X-Received: by 2002:a2e:87c6:0:b0:300:317c:9b75 with SMTP id 38308e7fff4ca-30a5b1829d0mr6116321fa.12.1740132106261;
        Fri, 21 Feb 2025 02:01:46 -0800 (PST)
Received: from nuoska (78-27-76-97.bb.dnainternet.fi. [78.27.76.97])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3091d7e4fb9sm25676401fa.17.2025.02.21.02.01.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 02:01:44 -0800 (PST)
Date: Fri, 21 Feb 2025 12:01:41 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Ross Burton <Ross.Burton@arm.com>
Cc: poky@lists.yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] [PATCH 1/2] systemd: use serial-getty-generator on
 genericarm64
Message-ID: <Z7hPBb3YN4yte4Ec@nuoska>
References: <1821A59E0CD03150.18160@lists.openembedded.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1821A59E0CD03150.18160@lists.openembedded.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 21 Feb 2025 10:01:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13537

Hi Ross,

Do you have some feedback to this? The kernel side issue
is now worked around/fixed but this boottime delay is still there.

Cheers,

-Mikko

On Thu, Feb 06, 2025 at 04:43:12PM +0200, Mikko Rapeli via lists.openembedded.org wrote:
> systemd-serialgetty recipe sets serial consoles based
> on SERIAL_CONSOLES build time variable. These fail to
> be detected on multiple devices including qemu and the
> resulting failures delay boot to systemd "running" state
> by one minute on an example aarch64 build machine and qemu.
> Serial console login works with both since udev will
> trigger agetty on correct devices. Using systemd side
> serial-getty-generator disables systemd-serialgetty.
> 
> qemu-system-aarch64 core-image-base boot time with
> systemd-serialgetty before this patch:
> 
> $ systemd-analyze
> Startup finished in 8.314s (firmware) + 9.805s (loader) + 14.338s (kernel) + 1min 34.392s (userspace) = 2min 6.851s
> multi-user.target reached after 1min 34.387s in userspace.
> 
> with this patch:
> 
> Startup finished in 8.312s (firmware) + 9.804s (loader) + 14.295s (kernel) + 29.808s (userspace) = 1min 2.220s
> multi-user.target reached after 29.802s in userspace.
> 
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>  meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend | 3 +++
>  1 file changed, 3 insertions(+)
>  create mode 100644 meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend
> 
> diff --git a/meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend b/meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend
> new file mode 100644
> index 0000000000..f23852a351
> --- /dev/null
> +++ b/meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend
> @@ -0,0 +1,3 @@
> +# auto detection instead of build time configured via SERIAL_CONSOLES
> +# to support multiple devices
> +PACKAGECONFIG:append:genericarm64 = " serial-getty-generator"
> -- 
> 2.43.0
> 

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#210938): https://lists.openembedded.org/g/openembedded-core/message/210938
> Mute This Topic: https://lists.openembedded.org/mt/111032615/7159507
> Group Owner: openembedded-core+owner@lists.openembedded.org
> Unsubscribe: https://lists.openembedded.org/g/openembedded-core/unsub [mikko.rapeli@linaro.org]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


