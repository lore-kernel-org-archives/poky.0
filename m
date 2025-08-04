Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71F64C87FCF
	for <webhook@archiver.kernel.org>; Mon,  4 Aug 2025 10:15:54 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.web11.14656.1754302546598926647
 for <poky@lists.yoctoproject.org>;
 Mon, 04 Aug 2025 03:15:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QtORi/cw;
 spf=pass (domain: gmail.com, ip: 209.85.219.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-70884da4b55so31881946d6.3
        for <poky@lists.yoctoproject.org>; Mon, 04 Aug 2025 03:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754302545; x=1754907345; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=akVBetESGcanj026Y0lpV7uymFSRyuU36iky90QfWzg=;
        b=QtORi/cwtMXFow5QNn7Yz4MIaU6/1DIdzRLf9aoRzVYLGj9xtcNIgQ/9P6v7BwF7jh
         EMQak/uetKroLJLRAwmFFRh4eB1cl9zwaVCwyH6gJ+5sxLZeS3vpyfVp9DwshDoK53Pr
         tsFRWMwK+W1EPEAkIo2qzapC1+HohqTFbdhsYhgPvoAX3bIOiH9b+MYgGpvofzY7iO04
         o1tCxzw+KkJd0aONyMWxxIMPgA6NxzcGx+EkQ2fA3j1QLgOI7IQbpV2GU3SMrR43KZXg
         OzJPevSQ736iEpu2Ec6RdSE9/EcOWh7vkLdnbliMacncD4nwNZijBfJ/4OHd1g+TIhPl
         Kk6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754302545; x=1754907345;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=akVBetESGcanj026Y0lpV7uymFSRyuU36iky90QfWzg=;
        b=lqiezDUR4E+mJeUJsNshkqAr2dTmjs74f5gqulAZCeEH8M1v3fzdty/405HzT8AaA6
         0AGvcFA0VJq1ajgaM4y9j0D75uOLmUrSlI6Sx0o5prcM/i1ZRQhIFjBG4kTlHbV6NC2J
         NWfQf78ODIMHuxUOvITTUBopLaWfEms1IjrNt/FxDCSrB9YazH9Df7tvEQ7al4Jgnln5
         UhLTEix2O2fAEvekBeG8r6rSVrLWietYXNKCvNVEVz2hDiU7LZlPmyQ+eSzE/IjHbPmE
         PYP3Q8+tMl+RNClQQEyumTmigqvr2jfjp6WDrG77WgXtEhKKWmzM7Eyz1V4ejHyZiARa
         tWpQ==
X-Gm-Message-State: AOJu0YyXBq88CiNty/fw9SCEIGJLQLB6ijJhJSi81VAWLZTk2vymzJl9
	JxANqHvfQFeAcmbfLnQ5HNXOadkNeeHxmScQUHpYyqg+k7VyGiqrFWl4CrCmuyPguyo+ykMjJb1
	j4NpcbegL2sGTlY+f9CovWt3pmn2gJ0A=
X-Gm-Gg: ASbGncs0NXaVem2q2Efs0dN4gfv/SZWoS+FPwcW0PzgtTmrBMNDIvxg6Ydt3m3SYLU4
	53ELWvKnb7mL114+SJLeIez3m7cPqUzeUUHR506VXhtSpchAhO3JTcACLILccS5URrjczSBjnqs
	FOlHOkG5+06FZ4baJ8BEm9h6IVFgFt2xZcD+KBBaSySJjUZfVuIws/8jpewgRtlETqsBk0Ej/9X
	3bHfVSjNYJ2e61fPrHmA7ICq0hFDsxlIv6UoC9lUR8aT4KWws1v
X-Google-Smtp-Source: AGHT+IHNUTHnxeYJZ8RpXyeHM1nXi4MQILPkGAhSpnndaiVT8HDVsM0m1xwEguIZMDPOpiQJtuXtUsfrr4DfwVXJFGI=
X-Received: by 2002:a05:6214:20c2:b0:708:4802:caf4 with SMTP id
 6a1803df08f44-70935f58060mr122071776d6.17.1754302545263; Mon, 04 Aug 2025
 03:15:45 -0700 (PDT)
MIME-Version: 1.0
References: <2n8W.1754202497905279149.soMo@lists.yoctoproject.org>
In-Reply-To: <2n8W.1754202497905279149.soMo@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 4 Aug 2025 12:15:34 +0200
X-Gm-Features: Ac12FXzYst13QsIEQaPZvPpwmsNy0RJ19bmO28C70Ne_iHl1LoIONzWiEvgd6NU
Message-ID: <CANNYZj9gh1ucaFOtcCPScawXGT25O4MHfcAiJ=EYf-cUhXcX-Q@mail.gmail.com>
Subject: Re: [poky] How to override mesa VULKAN_DRIVERS and GALLIUMDRIVERS variables?
To: trent.piepho@igorinstitute.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 04 Aug 2025 10:15:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13705

On Sun, 3 Aug 2025 at 08:28, trent.piepho via lists.yoctoproject.org
<trent.piepho=igorinstitute.com@lists.yoctoproject.org> wrote:
>
> I'd like to change the value of these.
>
> However, they are set like this:
> VULKAN_DRIVERS = ""
> VULKAN_DRIVERS:append:x86 = ",intel,amd"
> VULKAN_DRIVERS:append:x86-64 = ",intel,amd"
> ...
> VULKAN_DRIVERS:append ="${@bb.utils.contains('PACKAGECONFIG', 'freedreno', ',freedreno', '', d)}"
>
> Setting VULKAN_DRIVERS in an bbappend or machine conf file to something like "intel" doesn't work, because the append actions still append to that value all additional drivers.
> Trying to remove other drivers with something like VULKAN_DRIVERS:remove = ",amd" doesn't work either, as remove only matches on word boundaries and the list is command delimited, not space delimited.

VULKAN_DRIVERS is basically internal to the recipe. You need to set
PACKAGECONFIG for mesa to include the needed set:

VULKAN_DRIVERS:append = "${@bb.utils.contains('PACKAGECONFIG',
'freedreno', ',freedreno', '', d)}"
VULKAN_DRIVERS:append = "${@bb.utils.contains('PACKAGECONFIG',
'broadcom', ',broadcom', '', d)}"
VULKAN_DRIVERS:append = "${@bb.utils.contains('PACKAGECONFIG',
'gallium-llvm', '${VULKAN_DRIVERS_LLVM}', '', d)}"
VULKAN_DRIVERS:append = "${@bb.utils.contains('PACKAGECONFIG',
'imagination', ',imagination-experimental', '', d)}"
VULKAN_DRIVERS:append = "${@bb.utils.contains('PACKAGECONFIG',
'panfrost', ',panfrost', '', d)}"
etc.

It's possible something is missing in the above, in which case,
patches to fix that are welcome.

Alex

