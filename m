Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53399CEE341
	for <webhook@archiver.kernel.org>; Tue, 18 Nov 2025 17:03:10 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.2037.1763485384880186227
 for <poky@lists.yoctoproject.org>;
 Tue, 18 Nov 2025 09:03:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fZOW8JyI;
 spf=pass (domain: gmail.com, ip: 209.85.128.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-787eb2d8663so338597b3.0
        for <poky@lists.yoctoproject.org>; Tue, 18 Nov 2025 09:03:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763485384; x=1764090184; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eTMXX7UEcF5nFclEHRmUkTUnCrq7V0X5hEseWRLNIFs=;
        b=fZOW8JyIhoiURrHPPwMhQBUdhBDNglxquCZ3A5N2fGv3f53O2O6QOLVt/P86DebL+Z
         jH4tpdenFYC3Uds5c6a6IkRaxvhYcck7sFr5LAIEgU5KsZHIkAKlp8XzgI0CevvqMYqj
         wTYV9aimGlclrahK+Hs/hOfFwKtcKh200MrdphBtgFBghdozN3NDluKHzkHurlEaiSgM
         2u6E3D/XnP69g6V1XnE/iV9BXF5+hwPTX6P/dNZ/Yak0IsS1znyHTVWaaoJamlr/7YlL
         mGXsWn/ZWW+EuZVvOIwhGEVvJ9uusIzyD5esgRBI9wzDEqJHa4YQLZBm6mV9aa0FRmcl
         6FDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763485384; x=1764090184;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eTMXX7UEcF5nFclEHRmUkTUnCrq7V0X5hEseWRLNIFs=;
        b=mFDToRmtG9CGVeLYZAwhzCH2tva2WznwDOigVmChqecygs8ADnrSHnTLIVF4sx2U7h
         JvSfR8hg22+4IY25A5Cm3w0gvRmjXL6telqJ8w5w79ATeOXyPe8VEbu1+RHA85nFzg7/
         sae2pKYs5MRDpSUaBWF5ubujml0Jvbib+BG+xnwopec25TpuFZT9+tNE518UuhfQJRJN
         /gT8DHgfsK4rE5O7U/pTcqEHSbF30a4S5nO60XsrfC8VSsd74bFFIGKQho4vfjdjh4ZL
         jOOfZv0F5aLmWgxyLyLX3HLMFJXzp1utIbIJ5GhliHAwJL7YixVlDAs5wCm8Gv+cMff6
         rVSw==
X-Forwarded-Encrypted: i=1; AJvYcCWVPQcY1XI75jYe/VwOpntjsLOOofhqFDUf3pazUn7p4FhdwwsOy37MFUgc6+I01reGTJq9@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxNxm1rDh+hfPMWnF+EV+Z3pT6GLLCQxc6dvBONbdz9I0jBQL92
	O/8K+ERvkAmTUPCX3WJuYKZelXMIYpsxHkgAxUFq/Ze5Xqab/ZmBD2aJy57CCf3Cwc2ehW+0Uyu
	4gUD9nru7QORve9GJOjf70Zf6kmQgge4=
X-Gm-Gg: ASbGncugmW8SPvB618/EwWmDXRKpXt72F5TAyNXtgE5OANwSSC2pRE+Q2W6D3b0ba9G
	orCkp+K4EjGNHOqsfaoDpkV1CzBsbunbeFthH371tft+GXMh/ud51rRmjWeJV/yzCgTnA+JzokY
	xjKi4zp4F3s5UdAw1vqAZjNYCvp6p4HdCmpmTMLa3TPLEVQ41IZHuUaOH54/kRyAv/puYEBQKhM
	/DaAjKn1/9Ox79rRW7USeQ1N4ovCPyuK60YjNt+lOtEOd52NmQloCC73pvLuZabcrXfX6mC3stR
	N9fGbNlkpx4NYTXLCqLw4Sm70w7nfr87viZUpInE
X-Google-Smtp-Source: AGHT+IElpsSimEUFnS0J5Z80T6ZH3ksTAja74FLsfBfl67QuV+pf2lDg9thmpb8++zGI8kZD27EO73DIx/Bvzo/n74s=
X-Received: by 2002:a05:690c:6891:b0:781:4c5a:8d35 with SMTP id
 00721157ae682-78a6b4560c1mr1672067b3.3.1763485383918; Tue, 18 Nov 2025
 09:03:03 -0800 (PST)
MIME-Version: 1.0
References: <20251028-update-bblayers-sample-v1-1-97ec54cda94e@bootlin.com>
 <CANNYZj_2V2qu0BWBY_mCkZoC6+brOkfLu1FvYX=EOpbJk0sj_w@mail.gmail.com>
 <0cb2ae0748ee16aaa8aa31edc36c09cac4e24842.camel@linuxfoundation.org>
 <CANNYZj_FuQSGPzNE_PW8TxZH32fT_N8=-kLb00Wb7qismgYWEw@mail.gmail.com> <DEBTC0TIPC08.3HR8NAVZRT6K8@bootlin.com>
In-Reply-To: <DEBTC0TIPC08.3HR8NAVZRT6K8@bootlin.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 18 Nov 2025 18:02:51 +0100
X-Gm-Features: AWmQ_blt3bX3HM3gye5-sR2erasOOXuRU54uahgtUGpYbRCEZGN6pD3r9b1REf0
Message-ID: <CANNYZj8qoXGm=LSUndUHLW76f-XMWdUSo-BfdGB7PZBmR0pGyQ@mail.gmail.com>
Subject: Re: [poky] [PATCH] meta-poky/conf: bblayers.conf.sample: move
 meta-yocto repos out of oe-core
To: Antonin Godard <antonin.godard@bootlin.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>, poky@lists.yoctoproject.org, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 18 Nov 2025 17:03:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13800

On Tue, 18 Nov 2025 at 13:18, Antonin Godard <antonin.godard@bootlin.com> wrote:
> > Yes! oe-core and poky templates are basically duplicating each other
> > (needs to be confirmed nothing would be lost though), so that would be
> > nicely addressed.
>
> I quickly checked, this is the current diff between the two templates:
> https://0x0.st/Kffy.diff
>
> Other than the obvious consequences shown in the diff, I could also identify
> that PACKAGE_CLASSES becomes IPK as local.conf takes precedence over poky.conf.
> Maybe oecore's template should not set this variable (IPK would be taken from
> defaultsetup.conf).
>
> Oecore's conf-summary.txt would also be sort of wrong even though that's ok I
> guess.
>
> Maybe there's more consequences, I haven't checked thoroughly/tried to build.

I've just sent the patch that removes the poky template to the poky
list. On the call it was more or less agreed that this will happen (or
not :) in the next development cycle, and for now RP will take the
simple path tweak that you did. Meanwhile, the full poky template
removal can be tested on the autobuilder and maybe discussed.

Alex

