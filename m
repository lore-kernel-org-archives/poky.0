Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0FF40D116E2
	for <webhook@archiver.kernel.org>; Mon,  1 Dec 2025 07:00:58 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.15763.1764572456180414981
 for <poky@lists.yoctoproject.org>;
 Sun, 30 Nov 2025 23:00:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=lokyiQ2V;
 spf=pass (domain: linaro.org, ip: 209.85.167.44, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5958931c9c7so4999621e87.2
        for <poky@lists.yoctoproject.org>; Sun, 30 Nov 2025 23:00:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764572454; x=1765177254; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nSwVmfooQ6rXgR8lo3IqOIoz3pc0Z3evwdTcpa6NN0w=;
        b=lokyiQ2VhcwSvorKGyamjuirCN9pdC6+y2PaIAa+evoaCEw2SNywhjowE98xUzAikF
         R7F9rEIe/6CHEkSAzaVxi59Z5T1f+bFMiNTyzW3PN4qGM/KrUioYji7sKkyenLHr+yX1
         baseUz2k2yzG7f+nxLjGVO5NCIKLR71QseZ/0lhieXYhifzAvmB5eHhpbENhyi7utI7n
         L/x0WXmLFNXe/j3rNhyjgwdASjDEwoJZ7W31tiKPnK0LMZ6XbibSMiqmWhxjDQ7T+lD/
         PnaLE9gmfEfsm6AxBc2vMseeBgTwIqwP3P6GB55aS3/QuLCNLqk9mcN7lTFvyKf6jqCJ
         RgwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764572454; x=1765177254;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nSwVmfooQ6rXgR8lo3IqOIoz3pc0Z3evwdTcpa6NN0w=;
        b=LgQ3J9RYYab0ujVzYjojM7ZumY2w68HlmXQT5h7MfE6zdxttZtoschadUqj/PEHJj0
         xokecYmRrCcRz4Upob+lwGJrOzWejvcjtDKmt6L29JuzxtYXVEGs99CytLWK3h4B3pef
         OTvMqZQ2zp5y5BENZb20sxRghGKGSKWOAb/p7DZnT70J83VCRovltRdnCt93nC29Pv+u
         t9p/BWOWCYK5ik4DYsWBPSeS18uREiPXrwhnKfOkSsYDaW2mSqPx9CJMniR392SjOECU
         htxjG2ZYkVkEq9gO9iVuUDJZoiXy02v6JT8Q0L+245dEWIOxaaOWDhBVP5oCj8YIC13K
         eVQQ==
X-Gm-Message-State: AOJu0YyGymCfZ0ddczfnkijsVQu2CaMWChCPwCQPNrdOnwv5Q2/RDFB6
	W/fGCxOGUJ0BQPTe1bWe6XSVnyp439JvACmdprK7uSNwU60mnQv+MeY5hvbaUFx23d8=
X-Gm-Gg: ASbGncuwsr1osxPY1CI1lSjwy3FqkBBvT41FI2TGGUyLeDRsmVbyI66hI+m4cTp6kuL
	FATvEOEsQGRQkrK0vIqi8OG5KsxucllQoVDEEW1Vs2ONdTRhqRnQr1OBr0Pv6pH9q76sEkduSTi
	kS3+a6P3eqenTVNpR6OAOIywf0g/UkGQ41krQiuTchLzBc7GM/EsRf+sCy9e9l9xbXhinHGchN8
	scvtt9H4gUCiXqIAQN6NtmuMuMx36pvsNwB7DNAYL/jk45nurPpY4KVUCWnivXrvvMx32HYA4M+
	uYe/I9Papwa1rUM3AuKRwzKSLRpV04ZUYynpEjLN+wrGnwA1iQ0tBiBqf78hU3I7mBm87s8wEv/
	thLLTILCsMNAu1OEDAsDrlHdwIeqQO6MA1BUfQ71Fzi8o1nnIiSJprgzWMkNZOWv894Ffhu6YiS
	fUUEnBKyZeeBcHDHmFdbmMNPV9dpuviehKlBAut0S1hVX3
X-Google-Smtp-Source: AGHT+IEZiymmpCUc2N/2EwgFftJxsivSgeTsdC3JYklbUvIlwjkuvUqATGDBu++T4wJeXyNBekmSUQ==
X-Received: by 2002:a05:6512:1594:b0:595:7cb8:3eae with SMTP id 2adb3069b0e04-596b5058f2bmr7843257e87.20.1764572453830;
        Sun, 30 Nov 2025 23:00:53 -0800 (PST)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-596bfa4f69asm3415376e87.90.2025.11.30.23.00.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Nov 2025 23:00:53 -0800 (PST)
Date: Mon, 1 Dec 2025 09:00:52 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org, Ross Burton <ross.burton@arm.com>,
	Bill Mills <bill.mills@linaro.org>
Subject: Re: [poky] [PATCH] genericarm64.conf: override poky-altcfg distro
 kernel version
Message-ID: <aS09JGUXcwvwLial@nuoska>
References: <20251129133901.1732829-1-mikko.rapeli@linaro.org>
 <10a35a1b76ea399ab1c7d389f6ce9aa4a9feba57.camel@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <10a35a1b76ea399ab1c7d389f6ce9aa4a9feba57.camel@linuxfoundation.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 01 Dec 2025 07:00:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13804

Hi,

On Sat, Nov 29, 2025 at 11:36:27PM +0000, Richard Purdie wrote:
> On Sat, 2025-11-29 at 15:39 +0200, Mikko Rapeli via lists.yoctoproject.org wrote:
> > To use latest stable kernel from oe-core. It has much more genericarm64
> > support than the old version selected by poky-altcfg distro.
> > 
> > genericarm64 machine basically only works well with systemd init with
> > udev already in initramfs and thus with poky-altcfg distro, not plain
> > poky distro.
> > 
> > This setting makes default release binaries for poky-altcfg distro
> > useful for genericarm64 machine and the many HW devices we want to
> > support.
> > 
> > Cc: Ross Burton <ross.burton@arm.com>
> > Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> > ---
> > �meta-yocto-bsp/conf/machine/genericarm64.conf | 3 +++
> > �1 file changed, 3 insertions(+)
> 
> I have said no and I have explained why not. Sending it again doesn't
> change that. We need to find a different solution.

This was another implementation, an override on machine config side.

The kernel version needs to be agreed by both distro and machine configs
and we have a disagreement here.

What kind of alternatives or different solutions do we have?
Another build variant in AB?

For genericarm64 machine, the current setup is not useful with systemd and old
kernel version. Users must recompile or wait until all fixes to kernel configs
are in the oldest available kernel in tree.

Cheers,

-Mikko

