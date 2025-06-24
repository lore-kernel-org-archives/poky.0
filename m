Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F197C77B7C
	for <webhook@archiver.kernel.org>; Tue, 24 Jun 2025 14:01:59 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web10.8866.1750773716889320950
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Jun 2025 07:01:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CYEQonDs;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6faf66905adso31236566d6.2
        for <poky@lists.yoctoproject.org>; Tue, 24 Jun 2025 07:01:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750773716; x=1751378516; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yUKjP9eAvVW9mlPRUTkrvyR/JqZfl+fatI62S0nygDg=;
        b=CYEQonDsISl/udKXB52FEDG6SQM3NHioFlzjM8sRCTm9u3F1AfoRsZ2IKlR8Mmj9UG
         +ESTXH/HVoJ8q4bnCyBWow8LRfPFijkTG6Gpjy7mSV7uwnpJ/UCgAu+CQOzfGYdwWxd1
         i1Q2XljvjeVdy7PPLIih+cuy5pwnIpsH8gRv7NZCjy1hcNP/nOp9xGvCjN6e3PEpx90x
         lgrlaHxbhydO+Z4dWWI871e5pM7jcDAJtwtNudgTsvp6RdJkIbnV56g0dnAZGcraoZ5Q
         Iz0H3R5kw/50m2sUpsltrCD3xo7KeZ6DSsDoWjajY6wZ+943dEC7yhR0LXeYacGB4SUi
         9AeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750773716; x=1751378516;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yUKjP9eAvVW9mlPRUTkrvyR/JqZfl+fatI62S0nygDg=;
        b=FXVyiD01EMdVcVOvVzuJYN9CNxHsdtwwZTmfV3qLpe/W1QpX9E3QbzotDE+u+B+z33
         8I5FoCI/qyDNb5qwZUExcR9TCYM5oPMm03/N4Dn60ag6MjZFZMbO/MOQ9quRiVG7ou2T
         80wZWH801IDkC85Dv59LBKZZBr/C8D/1cEBBDvXEwRgWZK5QiI30Yh0GVXzIw/6qsRoJ
         y7LiNlcV3sdfCtPBCtnOfKgfm4NJWUMmdFF6m9MI/VxDq46R55Ic0ax5iDBPR3Kp6LX0
         v+TAC5Syzc1lv5d7EtIWp4Cj8ud+DJZWX6iZP1WgPSk4c+8usek0ugQxzkSgPleFtybu
         5AvA==
X-Gm-Message-State: AOJu0YxAjt+9AAAiuEEu8FOji1AHNakuYBuXA7BOGubyar2EmBOlfv2M
	ZPAMDzkMaR2ho/ffg4fX21g/7167dFs77us5Ah4AjCnlDGBl6g67TI1UjIscSTLIdIStw+feqOn
	GKIkpoAO+lA4v5AblRlBd5vpfiIBp7Ic=
X-Gm-Gg: ASbGncsjG521GxnlFlInTO+4IVKU1NgxvOAauo3Zr150Gx8vJIJMUm/qRxBvBS/SerM
	TzCj00moJufBCOnO/EEmxdj1CjrNt256eVT5y+gqYrs6DVehXJxk6gE7RxLEdhj3rNpPRO4fiwW
	4/LL6EUptNbi2BOm6Z+p4wBvkLh69QKmQV+yUEk+XnYTlPQFUi/JmNK5TTGvobcGFYADnSKmp81
	KuLwA==
X-Google-Smtp-Source: AGHT+IF8BA7hjvTxIIz8dU4gysSP11iNgnJUQqPwNk4kjs+c1HLcby7mkeyY9v6iXUtLuDzhybe9yhxneulGdtdcFEw=
X-Received: by 2002:a05:6214:4486:b0:6fd:6f7:641b with SMTP id
 6a1803df08f44-6fd0a4da088mr302608546d6.19.1750773715655; Tue, 24 Jun 2025
 07:01:55 -0700 (PDT)
MIME-Version: 1.0
References: <20250624135017.539280-1-alex@linutronix.de> <abe975974fbba263d27ba2a0629a1bcbcc93a090.camel@linuxfoundation.org>
In-Reply-To: <abe975974fbba263d27ba2a0629a1bcbcc93a090.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 24 Jun 2025 16:01:44 +0200
X-Gm-Features: Ac12FXymBp1yWdI87EvRqR_6aZZDNhs40-AoxPmlufqY-eg0Jhqgi52pHOWELeo
Message-ID: <CANNYZj_ezZhTReLhu27H5Y99-k5mwikBfax==LuHLDQr-3p-9Q@mail.gmail.com>
Subject: Re: [poky] [PATCH] meta-yocto: remove erroneous poky-bleeding
 selftest in meta/
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org, Alexander Kanavin <alex@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 24 Jun 2025 14:01:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13671

On Tue, 24 Jun 2025 at 15:55, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:

> Since this can't work without poky, I'd argue it is in the right place?

There are a few other selftests in oe-core that have a hard dependency
on poky (e.g. multiconfig, fitimage). I don't mind keeping this test
in meta-yocto repo, but it should really be moved out of meta/
directory as it's super confusing:

https://git.yoctoproject.org/meta-yocto/tree/

Alex

