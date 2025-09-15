Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9EA6CAC592
	for <webhook@archiver.kernel.org>; Mon, 15 Sep 2025 11:17:36 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web10.30227.1757935055561060297
 for <poky@lists.yoctoproject.org>;
 Mon, 15 Sep 2025 04:17:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=RH4kS9gK;
 spf=pass (domain: linaro.org, ip: 209.85.167.43, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-55f716e25d9so4148161e87.1
        for <poky@lists.yoctoproject.org>; Mon, 15 Sep 2025 04:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757935053; x=1758539853; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YitmbMLbYAwR1vWLkDOciI8gwup9AZfw84Htb2RThRM=;
        b=RH4kS9gKasDz687ZnCTdO7/ZZGia9fOhsoX4IF3IGSQsstyIkkFFZcQK18uR6tkDTB
         xQfSCMsrrlFrIC9yXc3OOxiE/wRECth1BXkw6Vm/AHMJtctKNmoacoc9gk3T6iQfY3Vl
         4tdsGwTVayt+bnUYk2QM7utUhkg//svzWwmgp3/cs7osyS39E6Mdl3SnfrvItEqS+S3n
         G6KX1aIdKN0aw8OXpFMxM9GFeL12mKt5uDLpmXmPOhlREC3BMU+6spR75PcNG5BgHv8X
         eSx7ECQJPZyEb+4RPCaTRgKcwwlRYd6jfkZ71/ecF/3UOoi4NIoyVvYBHc/G52lmsZ0q
         Gdwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757935053; x=1758539853;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YitmbMLbYAwR1vWLkDOciI8gwup9AZfw84Htb2RThRM=;
        b=rNza2Y7M+qVrzKsw9ZJg6Lf6N/g1o9qSFUAmwf1j4JsvMqEMl/Xf8aHHL82jH4RljY
         QW3IEBSXbVKSf1fLGsoGOqtq4cM8iVY+5fTZudypywQH4wmgnVvyaWVLhwkKGSG1jlNc
         zL4wyAI9W8fGuRwnKos4v44f4mSBuyoUGGSI00NoM8iwctencDadD16Eld4rdo94J4vA
         GfC5MFZO/wQ5SOCaI0uoc6ekgSiYElqEYqMzZrLZFoucJ/bKYxt383tIwGwEJb5IXIU3
         8l9taAdf9ABk3n4XVQakUiKJBnfmltxBAJ879/mqaFPLCB7HURhNkMfqx9nq82jS38IU
         k4Bw==
X-Gm-Message-State: AOJu0YyAyXvXfaRReDogD9/+wAFAYlCSjMSeAXQhLHo8S/+JCalwBALP
	r/Z9kQp3kSCLYeVIKgj/Gflsr9oaU6WeujsvUWaZimX8GYQGZPYMNAKk8XghfE8sP/4=
X-Gm-Gg: ASbGncvPYohBz4gmBG2eKKIITJ4XCZxF9NYBulWKor3PmW+pkSgMps5zCdcumONRULs
	MyrsRtYnUXTErNM3Xo1OrRgTuEVjbFHsmvrlgDdfS6mIS6Re0gi/zhz6JZl+579oi5xGI5ZnJ31
	pCkBXKFjAYKMb91ae37pyKZRCqO+z75q4FGizngGC8h+K7jcuLs6RZNF2BJaem2EqcbTiJ/4jM4
	Az3tu7GrITGuYa4q0lJ9GnlypygnX+J9L9M3Mb2oseJb3p7OaA8P9+xe92cvCIAx599KsnU/aRs
	5iHjJc3WzBTJofvIKbvQFl9qm2q2qg4TRFA5lRm+69r1hY3HsSNtJrO53juhCitw8mnZUVb468D
	JL0h5P0R1Xsw1e07ijfGzczr9K4g6MGAEs5MI2uauIC3LzDF0spF33W7UnEn3DmEV6w==
X-Google-Smtp-Source: AGHT+IGsmceLp/JWp6Xiy0gLDPQGJR2+BYbejaHBmLY6J8nEbHWdsAn2JPqN45iJkfNJxcNS6g78PQ==
X-Received: by 2002:a05:6512:448a:b0:571:86bc:423b with SMTP id 2adb3069b0e04-57186bc451bmr2995800e87.44.1757935053402;
        Mon, 15 Sep 2025 04:17:33 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e6460d65asm3473344e87.100.2025.09.15.04.17.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 04:17:32 -0700 (PDT)
Date: Mon, 15 Sep 2025 14:17:31 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH] parselogs-ignores-genericarm64.txt: ignore more
 KV260 warnings
Message-ID: <aMf1y3wENto3ncZ6@nuoska>
References: <20250826081650.1940369-1-mikko.rapeli@linaro.org>
 <4d5bb7e7f2e0c33d1d5272a2dd308a0bcd390786.camel@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4d5bb7e7f2e0c33d1d5272a2dd308a0bcd390786.camel@linuxfoundation.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 15 Sep 2025 11:17:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13746

Hi,

On Mon, Sep 15, 2025 at 12:09:03PM +0100, Richard Purdie wrote:
> On Tue, 2025-08-26 at 11:16 +0300, Mikko Rapeli via lists.yoctoproject.org wrote:
> > AMD KV260 shows more non-fatal error messages with sato image.
> > Power management, pin control and X11 errors can be ignored in
> > testing.
> > 
> > https://ledge.validation.linaro.org/scheduler/job/118932
> > 
> > Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> > ---
> > �.../oeqa/runtime/cases/parselogs-ignores-genericarm64.txt� | 7 +++++++
> > �1 file changed, 7 insertions(+)
> > 
> > diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
> > index 1e8b1f4b7d1b..3e96a172da6d 100644
> > --- a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
> > +++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
> > @@ -1,4 +1,11 @@
> > �# safe to ignore minor firmware issue
> > �zynqmp-pinctrl firmware:zynqmp-firmware:pinctrl: failed to set: pin
> > +zynqmp-pinctrl firmware:zynqmp-firmware:pinctrl: set mux failed for pin
> > +request failed for node
> > +error -EACCES: failed to add to PM domain domain
> > +probe with driver sdhci-arasan failed with error
> > +Error applying setting, reverse things back
> > �# safe to ignore initrd warning
> > �Can't lookup blockdev
> > +# X11 fails to start without connected display
> > +modeset(0): failed to set mode: Invalid argument
> 
> The reason this has sat for a while is I really wanted to find time to
> dig into some of these a bit more. It is really easy to hide all this
> and ignore it but in some cases here, I think there probably should be
> some gentle pressure on the kernel or firmware people to clean up the
> "errors" which really aren't errors.
> 
> The trouble is, that kind of work is "hard" and it is much easier just
> to ignore these.
> 
> I suspect we probably need to merge it but I'm not particularly happy
> about doing so as it feels like the wrong fix.

In understand your concern. I've tried to fix these where possible
e.g. by enabling more and correct drivers in kernel but some of
these still remain.

The display related errors are sadly there because we don't have
HDMI displays connected to tested devices and different boards,
firmware and drivers report the failures in different ways.

Cheers,

-Mikko

