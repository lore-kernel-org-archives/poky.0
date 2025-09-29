Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30740CAC5B0
	for <webhook@archiver.kernel.org>; Mon, 29 Sep 2025 06:53:13 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web10.47772.1759128785122385683
 for <poky@lists.yoctoproject.org>;
 Sun, 28 Sep 2025 23:53:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=Fptg0/VA;
 spf=pass (domain: linaro.org, ip: 209.85.167.53, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-57d5ccd73dfso4381154e87.0
        for <poky@lists.yoctoproject.org>; Sun, 28 Sep 2025 23:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759128783; x=1759733583; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dyWQJTASyEsg/5lpWlGujJdTO3O8dRUjqTiCwq4piWA=;
        b=Fptg0/VALrHp/7Cj8vuYahG2aHwI/MPKFJaWSU5iycJA/5TAx2p5xYx7fWy5WeNwPi
         tbCBASlLPi9Msrf/JOkxvZhgNieOc70xJljXSYoiwrWa3mmwco7EzGlFuM7qPQ6kz8f8
         37QH1eb6CjVE/jplPdhOX+5CLK/C7V+kXgzea5n1mkB/Cm3DKO5NEkz3DP+344fqAdYH
         N9PAisC3oJCSsToxfXdNDQf8GB1GQo0xBdjA96WlCDQ6mCxBiMznFtJp6RgE1jeSOSmX
         gGPP6Qx2FceqlTVd7SQ1wFwLuhr9W7DKgw68P3mudGG4ropKJXy+weXuy9+jKp1Cx6w6
         2TUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759128783; x=1759733583;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dyWQJTASyEsg/5lpWlGujJdTO3O8dRUjqTiCwq4piWA=;
        b=nCx8t1P0FYIvObDmXeif13jk34sERFTPUQrIPxMk2wju6z1WYLfg67uyZkec4cq3GF
         SOze3zRHrS8ia3zTTn0A3EHItRPfGdrU3Y0gZIuvqdCayr4RFuzMV7ZCTmqE32XXGlBA
         BlYstVlR1ouxfDEeW6Y4V3967IjXP9G8q8uXAv/XrTiFXKFwPbMZeiQSTLJk9FqX9Q/M
         zrM3IhP6E7rPEP1hQP45eCFn9pQjLk029cRae2fMJFArQGMihB63UfO+CRg4dkeVL1IR
         xkxwKwFTUldiJdj1qYDV4t9ZDdxme+huxPUVfR0PXftE2Jdt2ttvglYc7nyrBkaGFdth
         WO3g==
X-Gm-Message-State: AOJu0Yzy6icFi9umZJRlF5dehJCF1d4prNxs0PFRZfc7LQdZ29ptm4Q8
	r6qwiioJ5aRLq9A7TVLWtgZH02Vgoew5ZsHb/uLmeY2xHUsjsinkCOK+mDpfjerVXhs=
X-Gm-Gg: ASbGnctkWhgazQvHEqVOdcaiFQLNe/aVqQ8TMHIcgFzARapdZc/fnXonfbQvr9aOqyH
	e/Aab/zecQAAaWPy3bLCWHw/5Bs+PKNr5SEN/xbN1NWWNvzrrNUnr00DIKYR74RXtztoq/ZHadR
	ZlxOVo8zphxESO987vTURmet3FBOG5fynR3kuauLYr0RmdQoa76xuO0yxnGKqCzuP/xUYZ4Ocp5
	8ukt89stPEqYKViPwmjgQRfoinczrhOd1gI0p0oFpDHoWvi9Wj9PlRVrqB6RLDF+QQqOfKFhxcr
	dtod0yNGPNl+Eam6v2iI0fwIbCYySEk9tx+xxvrGtaTUGDEgUGdVQGk1KI9AGDVrUedt8sn3wM0
	EF+0a4RMvFOobZfLO4FALe4KblxiBwaQLUx/xNDh7KiwsNj+uNsu7dZJhvYmYvNUMPyw=
X-Google-Smtp-Source: AGHT+IHm9az2PmH0AVGIQHFj2h3QAYvizrm0w0HwG0f2uun3WYcf6Tx9Sp/Vn28Nu43FVKVjMSLdFg==
X-Received: by 2002:a05:6512:ea4:b0:57c:79b7:8c59 with SMTP id 2adb3069b0e04-582d13018c5mr4582636e87.23.1759128782862;
        Sun, 28 Sep 2025 23:53:02 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58558e0110bsm2069732e87.117.2025.09.28.23.53.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Sep 2025 23:53:02 -0700 (PDT)
Date: Mon, 29 Sep 2025 09:53:00 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org, Ross Burton <Ross.Burton@arm.com>,
	Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: Re: [poky] [PATCH] poky-distro-alt-test-config.inc: don't override
 PREFERRED_VERSION_linux-yocto
Message-ID: <aNoszGV_zv03UFNz@nuoska>
References: <20250904095943.2743917-1-mikko.rapeli@linaro.org>
 <aNZF-z35JTa8PQg2@nuoska>
 <8e978bc8666c0cc74330d75d068820ca48798685.camel@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8e978bc8666c0cc74330d75d068820ca48798685.camel@linuxfoundation.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 29 Sep 2025 06:53:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13757

Hi,

On Fri, Sep 26, 2025 at 05:05:44PM +0100, Richard Purdie wrote:
> On Fri, 2025-09-26 at 10:51 +0300, Mikko Rapeli via lists.yoctoproject.org wrote:
> > On Thu, Sep 04, 2025 at 12:59:43PM +0300, Mikko Rapeli wrote:
> > > This overrides PREFERRED_VERSION_linux-yocto set in machine
> > > config. Use ?= like in poky distro config so that machines
> > > can override PREFERRED_VERSION_linux-yocto and for example
> > > update to 6.16 kernel via machine config.
> > 
> > genericarm64 does not work well on devices which are not known
> > at compile time without udev and thus systemd.
> 
> You're asking we add code to mandate systemd and disable sysvinit
> builds for genericarm64?
>
> We should also mandate the 6.16 kernel and drop support for 6.12?

No, I'm not asking for these, but I'm asking for a build variant
with latest stable kernel and systemd for genericarm64. That does not
exist. We only have older 6.12 kernel and systemd in "poky-altcfg" distro
or newer 6.16 kernel and sysvinit from "poky" distro. And from machine
config side we can't change the kernel version for example to be 6.16
in poky master branch for genericarm64 because "poky-altcfg" overrides
that.

This issue is resolved when 6.12 kernel is removed from master branch
and 6.16 comes the default, but comes back when the next kernel stable
update comes along.

> By extension that means that musl isn't supported for genericarm64
> without security issues for example.
> 
> That would be a major change to our current plans/policies :(.
> 
> So no, this simple change really isn't that simple.

The selected kernel version is IMO an agreement between machine
and distro. Currently in "poky-altcfg" distro dictates and
machines can't influense that. I think machines should be able
to influence that and for example update the kernel on all genericarm64
builds to 6.16. Support for 6.12 continues in stable branch.

In current state, the pre-built genericarm64 binaries for "poky" and
"poky-altcfg" distros are not very useful from yocto/oe-core releases.
Thus we must rebuild and also apply patches to update the kernel,
patches because even local.conf build config can't change the kernel
version set in "poky-altcfg" distro.

Cheers,

-Mikko

