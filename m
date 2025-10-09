Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F326ACCA471
	for <webhook@archiver.kernel.org>; Thu,  9 Oct 2025 06:10:04 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web11.5593.1759990196623817160
 for <poky@lists.yoctoproject.org>;
 Wed, 08 Oct 2025 23:09:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=d/C39JIl;
 spf=pass (domain: linaro.org, ip: 209.85.208.169, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-3696f1d5102so4592861fa.3
        for <poky@lists.yoctoproject.org>; Wed, 08 Oct 2025 23:09:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759990194; x=1760594994; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KZBPr20evtQRnLDXQhzasoqy7CYPtoloI5ZyQxBdlVg=;
        b=d/C39JIlVl4thUKxoMarwfp2FlH9fqU4Yf3bzmrLm+f7a1aNMnJ/cHYiyzbN+tnLde
         1LDb0hK98agWM9hmdDi2cQIL7Nde1uNN9upRooM5ZsXzKO+ae8hB7A4GHZptp62unWTy
         bhvK7qwwiTRxsMTALAtZPA/ygC1sDmrUERyOnUazfBDRt6lUxnGJLrzKTAn3sd/qUC6V
         Aehcuecgi2buV9nHV7zn/gbnkc66ESo+uxJDUQulst615hJ5AJQTGGyEiZQEFrnpH3/J
         bSRhsZz93acc7zZHzgf5EbytBt+nCqF6qVBmeqlTEjC02zwPGvgPsRuBAu5gp2LihhsE
         Uxfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759990194; x=1760594994;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KZBPr20evtQRnLDXQhzasoqy7CYPtoloI5ZyQxBdlVg=;
        b=ISigujr28+s1k4JO7b13wzFmba5hNewVkSqzf2KJdd2G8+SwwS2uk5iSmRbHIOlrFg
         cmX03A3lpd7r9EBUIFmyAt4N53Pavcs05X7y+vQgTLdsWRLUxPEythq0uVLxrijfEib7
         y5FoxRp6kc0PdcEoXCyrbaZaRkkBsUp56reFU0tGIs18pI+I3es0WZ6WU/FcKpRAZxDA
         DmN5FKwrGSa4fBxtsqGM9wJWRYAXAQOHF9GAJSlvrZWRbwOfqs1jBQ8RH69Jmdp79BKL
         EO2NenCh7/pWOELBoXOfvwTbrHlUhdOQyriQT3vwf95O65S/EY49W+TDvFQFotKU3M3c
         oSzA==
X-Gm-Message-State: AOJu0Yy9zg9ErskPQeJwNuVJW0q8IGI/F32rZjrPWN6wD0xP3BHK0eig
	ECs7AG/MKSh7ddH07GoGADhuRE9SebXYcfasW6Hg4GwT3R8JpyVslBkqAYvNiBCmLoQ=
X-Gm-Gg: ASbGncuyR+V02NEI8LhVlTx2yfK8hXWq39y+cZDmHsx/9vxpAFkEAKQSvdA94khYcPw
	cHgND8xoKlxWR481Mdg3nsORn2NIvkyBQN8DHJMXcGN7sTckepOW7hIdD6lUeFCku5nN1osx6Y5
	O2UvtfnrFHa6n/BWwXtw2X/dEOk9Mx2SF8GxRdWCOaAEwnj2X9j8aKDgT6tMNAeGPt4Kpz6oZ2V
	5hlAHLDKK1nAJUCs1w3wVThOa/lIjSClM6dvHWEXGd0t6Sg5J9MgPjdDfHhIBSYFAA7CvtKyf2i
	8x238xVk2tVasQpIyJFAnhp/j0RpSZNGbRPLZMijadAiw9RloBIM7BwyXmLVpAAmYT7k9zS+N2N
	tFC/x7f0wxuDOYNOW4XhsHpwtpZHgqdRCiAuW79fDHcRbhUXzsBXIH71Z+fIrgiOMycJcWXXLRl
	iTRFZjkBox
X-Google-Smtp-Source: AGHT+IE/j4GtaT8ENthYCGs8xozkdT5QUAKsm91WRAeb0K9WaZGbStD37mnypoYzw+2+SD3HBFOzPA==
X-Received: by 2002:a2e:ab81:0:b0:375:ffc2:1b2e with SMTP id 38308e7fff4ca-37609e97439mr14759241fa.45.1759990194343;
        Wed, 08 Oct 2025 23:09:54 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-375f39fdbc4sm25850341fa.17.2025.10.08.23.09.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 23:09:54 -0700 (PDT)
Date: Thu, 9 Oct 2025 09:09:52 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org, Ross Burton <ross.burton@arm.com>
Subject: Re: [poky] [PATCH] parselogs-ignores-genericarm64.txt: add error
 messages from rockpi4b
Message-ID: <aOdRsDDPMOKaDQ24@nuoska>
References: <20250918121230.3264352-1-mikko.rapeli@linaro.org>
 <aOZm94yAap52fV8i@nuoska>
 <032b5d106d0cbe940213f9721fb685da0cb550c6.camel@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <032b5d106d0cbe940213f9721fb685da0cb550c6.camel@linuxfoundation.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 09 Oct 2025 06:10:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13764

Hi,

On Wed, Oct 08, 2025 at 03:18:04PM +0100, Richard Purdie wrote:
> On Wed, 2025-10-08 at 16:28 +0300, Mikko Rapeli via lists.yoctoproject.org wrote:
> > On Thu, Sep 18, 2025 at 03:12:30PM +0300, Mikko Rapeli wrote:
> > > Rockchip rk3399 based rockpi4b with open source firmware from
> > > meta-ts https://gitlab.com/Linaro/trustedsubstrate/meta-ts
> > > triggers some non-fatal errors from various drivers.
> > > Ignore them for now since all other oeqa runtime tests pass.
> > > 
> > > https://ledge.validation.linaro.org/scheduler/job/119422
> > 
> > Any possibility to get this merged? In these tests
> > I don't control what firmware the devices have and thus
> > there can be errors like this. If I would also build the
> > u-boot firmware with genericarm64 then I could possibly
> > fix these issues, but that's not in the plans.
> > 
> > I would like to submit similar workarounds for AMD zcu102,
> > TI am62p5, Broadcom rpi4, NXP imx8mp and Qualcomm rb3gen2.
> > 
> > Cheers,
> > 
> > -Mikko
> > 
> > > Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> > > ---
> > > �.../oeqa/runtime/cases/parselogs-ignores-genericarm64.txt�� | 6 ++++++
> > > �1 file changed, 6 insertions(+)
> > > 
> > > diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
> > > index 3e96a172da..7d360bdbda 100644
> > > --- a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
> > > +++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
> > > @@ -9,3 +9,9 @@ Error applying setting, reverse things back
> > > �Can't lookup blockdev
> > > �# X11 fails to start without connected display
> > > �modeset(0): failed to set mode: Invalid argument
> > > +memory-controller: probe with driver rk3399-dmc-freq failed with error
> > > +probe with driver rockchip-pcie failed with error
> > > +platform hdmi-sound: deferred probe pending: asoc-simple-card: parse error
> > > +deferred probe pending: rockchip-spi: Failed to request optional TX DMA channel
> > > +platform sound: deferred probe pending: asoc-audio-graph-card: parse error
> > > +platform sound-dit: deferred probe pending: asoc-audio-graph-card: parse error
> 
> Perhaps resend adding a comment documenting which boards/firmwares
> these are from and then I'll agree to merge?

Good idea, I'll send a v2 with that info.

Cheers,

-Mikko

