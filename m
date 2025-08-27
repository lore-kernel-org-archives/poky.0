Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A83CA0FED
	for <webhook@archiver.kernel.org>; Wed, 27 Aug 2025 14:14:22 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web11.16187.1756304058209423114
 for <poky@lists.yoctoproject.org>;
 Wed, 27 Aug 2025 07:14:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=CwELWMNC;
 spf=pass (domain: linaro.org, ip: 209.85.167.53, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-55f40cf5e54so4287583e87.0
        for <poky@lists.yoctoproject.org>; Wed, 27 Aug 2025 07:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756304056; x=1756908856; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jDW3l2ISK2ydRP9awZA/3JLBHWVHn1lIezQVw+R05QY=;
        b=CwELWMNCxoH8ldNmPUUJpET9r9kFv88Oj5ZAWe2jOPLtYRIvDEp3RuwenSOtE0uTGS
         7e/Rbfx8ZE4MFzN4g4RUzCMGnMFd4zlnJgT8B40ucRICHFktYXjmRIDdnLLlA6UPRc4I
         Sphx3hVsQL0HS8Sn1HK/QIF5Z4kbKtHA+YwQzwWxtpsnEk5ANP6vUawXcCwdshClQHku
         rV7XJjgsv7icaKqtpZBHa/3JbXx1rCw8Jd+/97LklnoTd9o2kPO/Yy0kAZ69BcYW0KYi
         Yvf4XT65MkPKcNHk2odxtbMnokvHNhbMO3Gm4kZptQLaf3Q5poZeVzGag0raUJApBezs
         6ZBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756304056; x=1756908856;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jDW3l2ISK2ydRP9awZA/3JLBHWVHn1lIezQVw+R05QY=;
        b=KpvLR9L1Euv9FqPx417deIzRuqHZS0p2uLZyXN8q2vjRn3423L7wmOtQ1uk6XEKSm0
         n7LdKZmgHA9wqmHz/65eZsPOCtWDgBzECnQWfnVSN2aST2sJtVjcAWVyRMF8WsE58idS
         G45q2byu3wfGrM/trGPnT/Wel4jmDctuZnMHtYV1s0wan1qz7CcmsKT5C6hwsp+jEANB
         zixm2ExGmBbGsu5UHTwupHMG3LUA4v4/ZvgQ4GmkHapRblRYP1R2vRUXYTjkZGZ6z07R
         QqSUiyg7Opc5BfiLCUj1hpXP2sM00M/bRyiT86Ibcl+3Uwj74uD8LlOv0PDtFO3Hy1NV
         fTWQ==
X-Gm-Message-State: AOJu0Yx+lyiPS7HhkpvkTv3kZ1WyzGU0WV8KqxgsgtAABNiGtgEHkJS3
	lvfxRzb62LscgF2TspeJRux2mO7zQ0RO5867od94TbLMKDJ6+VgtoOITSiHT7+7THZw=
X-Gm-Gg: ASbGncu0G8fAAnwFcDd+JHDn2Nct6OL/c8z8ZTRsVw6fXAkZFL0p6lKaqFqUauqwGu6
	B0WZsTPTeRtdYkuExRaxSQHsQn8OhvW0yHV5ynfTGaj6G9J4cPb3ILiY4fGFUA6F7kzvFvxjl+v
	IZa6ZzIzbwk+qscqffQI/1CLzYpevP/UVHpzF7Qvo/iNhhrBNKreI9udvryU8oIMwEpDPNNR4Jz
	mwsbABNVfAOuM/rRJ+Tmbi5n9abxgWg7fguTSbjDl4z2IhzSF7ftdgqwELIgsSIJN2JTIxeqAtK
	MdhgMFyeycqWDwC5tkkSPQrpgcltbtBLGlbQ9TSxyqG/rb8eTiRVcDBl/TPlk9HI5jgPgzZ33F1
	uGkIUFVwurWqZ+RnzDzm+iAOeDMvNv82yrFJ8DJJsvFbBf8zk4Dba9ZMOtwR1UNDtqW63g3r7yx
	Bf
X-Google-Smtp-Source: AGHT+IFcMGOvsmJzf2w0nFSACJirCHTPh8cJrD8VVjMECg/HVyWo/9NSjLYvOhgcLrR4ypoy5AflWg==
X-Received: by 2002:a05:6512:3050:b0:55f:3faa:7bdb with SMTP id 2adb3069b0e04-55f3faa834fmr5300821e87.32.1756304056117;
        Wed, 27 Aug 2025 07:14:16 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f3edd214fsm2411189e87.54.2025.08.27.07.14.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Aug 2025 07:14:15 -0700 (PDT)
Date: Wed, 27 Aug 2025 17:14:14 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH] linux-yocto: fix compilation of 6.16 kernel on
 genericarm64
Message-ID: <aK8Stgc4Zw-bFDkk@nuoska>
References: <20250827100852.2093378-1-mikko.rapeli@linaro.org>
 <20250827101114.2093782-1-mikko.rapeli@linaro.org>
 <CADkTA4Na0w8tVNaM8uJkhqPShggKvAyVcr-Kg2aCkeLmqD6K7w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CADkTA4Na0w8tVNaM8uJkhqPShggKvAyVcr-Kg2aCkeLmqD6K7w@mail.gmail.com>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 27 Aug 2025 14:14:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13732

Hi,

On Wed, Aug 27, 2025 at 10:55:14AM -0300, Bruce Ashfield wrote:
> On Wed, Aug 27, 2025 at 7:11 AM Mikko Rapeli via lists.yoctoproject.org
> <mikko.rapeli=linaro.org@lists.yoctoproject.org> wrote:
> 
> > If the TI serial console revert is still needed, which needs
> > to be confirmed separately, then one extra revert is needed
> > for 6.16 kernel to compile for genericarm64 machine.
> > Tested boot and oeqa runtime tests on arm64 build machine
> > with qemu and qemu kvm on AMD KV260:
> >
> 
> Are those different from ones on 6.12. or the same ? I just ask (i didn't
> find anything in a quick search), since if I dropped them, that is my
> mistake (When I merge patches that are to be carried forward, they
> go into kernel-cache master and will always be in the next version).

Yes, the same revert as in 6.12 bbappend.

> The real reason I ask is that we shouldn't be patching linux-yocto
> like this in a bbappend. I can simply to the reverts and apply the
> patches on the BSP branch or v6.16/standard/base if they are
> appropriate for all boards.

Right. So I should move the patches from linux-yocto bbappend in
poky/meta-yocto-bsp to linux-yocto proper for genericarm64?
A new branch for genericarm64 would be needed then.

If there is a way to reproduce the BeaglePlay serial console
issue we could also try the kernel without reverts.

Cheers,

-Mikko

> Bruce
> 
> 
> 
> >
> > https://ledge.validation.linaro.org/scheduler/job/119012
> >
> > Depends on yocto-kernel-cache change to fix do_kernel_configcheck
> > warnings.
> >
> > Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> > ---
> >  ...50-unexport-serial8250_rpm_-function.patch | 96 +++++++++++++++++++
> >  .../linux/linux-yocto_6.16.bbappend           | 14 +++
> >  2 files changed, 110 insertions(+)
> >  create mode 100644
> > meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250-unexport-serial8250_rpm_-function.patch
> >  create mode 100644
> > meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend
> >
> > diff --git
> > a/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250-unexport-serial8250_rpm_-function.patch
> > b/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250-unexport-serial8250_rpm_-function.patch
> > new file mode 100644
> > index 000000000000..b64488458238
> > --- /dev/null
> > +++
> > b/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250-unexport-serial8250_rpm_-function.patch
> > @@ -0,0 +1,96 @@
> > +From 4fa6940b9891b0107abef9b3b01583332156878c Mon Sep 17 00:00:00 2001
> > +From: Mikko Rapeli <mikko.rapeli@linaro.org>
> > +Date: Wed, 27 Aug 2025 06:55:58 +0000
> > +Subject: [PATCH] Revert "serial: 8250: unexport serial8250_rpm_*()
> > functions"
> > +
> > +This reverts commit 7ba4f02e12e6f2409c5b2afae2963089b5673482.
> > +Needed by revert of 8700a7ea5519fb0b3bad2362adfeac358c2119ce
> > +which causes kernel hangs when starting getty's on BeaglePlay.
> > +
> > +[ YOCTO #15704 ]
> > +
> > +Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> > +---
> > + drivers/tty/serial/8250/8250.h      |  6 ++++++
> > + drivers/tty/serial/8250/8250_port.c | 12 ++++++++----
> > + 2 files changed, 14 insertions(+), 4 deletions(-)
> > +
> > +Upstream-Status: Inappropriate
> > +
> > +diff --git a/drivers/tty/serial/8250/8250.h
> > b/drivers/tty/serial/8250/8250.h
> > +index 18530c31a598..b861585ca02a 100644
> > +--- a/drivers/tty/serial/8250/8250.h
> > ++++ b/drivers/tty/serial/8250/8250.h
> > +@@ -223,6 +223,12 @@ static inline bool serial8250_clear_THRI(struct
> > uart_8250_port *up)
> > + struct uart_8250_port *serial8250_setup_port(int index);
> > + struct uart_8250_port *serial8250_get_port(int line);
> > +
> > ++void serial8250_rpm_get(struct uart_8250_port *p);
> > ++void serial8250_rpm_put(struct uart_8250_port *p);
> > ++
> > ++void serial8250_rpm_get_tx(struct uart_8250_port *p);
> > ++void serial8250_rpm_put_tx(struct uart_8250_port *p);
> > ++
> > + int serial8250_em485_config(struct uart_port *port, struct ktermios
> > *termios,
> > +                           struct serial_rs485 *rs485);
> > + void serial8250_em485_start_tx(struct uart_8250_port *p, bool
> > toggle_ier);
> > +diff --git a/drivers/tty/serial/8250/8250_port.c
> > b/drivers/tty/serial/8250/8250_port.c
> > +index 6d7b8c4667c9..8d9bb91d4bae 100644
> > +--- a/drivers/tty/serial/8250/8250_port.c
> > ++++ b/drivers/tty/serial/8250/8250_port.c
> > +@@ -517,20 +517,22 @@ void serial8250_clear_and_reinit_fifos(struct
> > uart_8250_port *p)
> > + }
> > + EXPORT_SYMBOL_GPL(serial8250_clear_and_reinit_fifos);
> > +
> > +-static void serial8250_rpm_get(struct uart_8250_port *p)
> > ++void serial8250_rpm_get(struct uart_8250_port *p)
> > + {
> > +       if (!(p->capabilities & UART_CAP_RPM))
> > +               return;
> > +       pm_runtime_get_sync(p->port.dev);
> > + }
> > ++EXPORT_SYMBOL_GPL(serial8250_rpm_get);
> > +
> > +-static void serial8250_rpm_put(struct uart_8250_port *p)
> > ++void serial8250_rpm_put(struct uart_8250_port *p)
> > + {
> > +       if (!(p->capabilities & UART_CAP_RPM))
> > +               return;
> > +       pm_runtime_mark_last_busy(p->port.dev);
> > +       pm_runtime_put_autosuspend(p->port.dev);
> > + }
> > ++EXPORT_SYMBOL_GPL(serial8250_rpm_put);
> > +
> > + /**
> > +  *    serial8250_em485_init() - put uart_8250_port into rs485 emulating
> > +@@ -645,7 +647,7 @@ EXPORT_SYMBOL_GPL(serial8250_em485_config);
> > +  * once and disable_runtime_pm_tx() will still disable RPM because the
> > fifo is
> > +  * empty and the HW can idle again.
> > +  */
> > +-static void serial8250_rpm_get_tx(struct uart_8250_port *p)
> > ++void serial8250_rpm_get_tx(struct uart_8250_port *p)
> > + {
> > +       unsigned char rpm_active;
> > +
> > +@@ -657,8 +659,9 @@ static void serial8250_rpm_get_tx(struct
> > uart_8250_port *p)
> > +               return;
> > +       pm_runtime_get_sync(p->port.dev);
> > + }
> > ++EXPORT_SYMBOL_GPL(serial8250_rpm_get_tx);
> > +
> > +-static void serial8250_rpm_put_tx(struct uart_8250_port *p)
> > ++void serial8250_rpm_put_tx(struct uart_8250_port *p)
> > + {
> > +       unsigned char rpm_active;
> > +
> > +@@ -671,6 +674,7 @@ static void serial8250_rpm_put_tx(struct
> > uart_8250_port *p)
> > +       pm_runtime_mark_last_busy(p->port.dev);
> > +       pm_runtime_put_autosuspend(p->port.dev);
> > + }
> > ++EXPORT_SYMBOL_GPL(serial8250_rpm_put_tx);
> > +
> > + /*
> > +  * IER sleep support.  UARTs which have EFRs need the "extended
> > +--
> > +2.43.0
> > +
> > diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend
> > b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend
> > new file mode 100644
> > index 000000000000..ef5f84cfc3aa
> > --- /dev/null
> > +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend
> > @@ -0,0 +1,14 @@
> > +COMPATIBLE_MACHINE:genericarm64 = "genericarm64"
> > +COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
> > +COMPATIBLE_MACHINE:genericx86 = "genericx86"
> > +COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
> > +
> > +KMACHINE:beaglebone-yocto ?= "beaglebone"
> > +KMACHINE:genericx86 ?= "common-pc"
> > +KMACHINE:genericx86-64 ?= "common-pc-64"
> > +
> > +FILESEXTRAPATHS:prepend:genericarm64 := "${THISDIR}/files:"
> > +SRC_URI:append:genericarm64 = " \
> > +
> > file://0001-Revert-serial-8250-unexport-serial8250_rpm_-function.patch \
> > +    file://0001-Revert-serial-8250_omap-Drop-pm_runtime_irq_safe.patch \
> > +"
> > --
> > 2.43.0
> >
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#13730):
> > https://lists.yoctoproject.org/g/poky/message/13730
> > Mute This Topic: https://lists.yoctoproject.org/mt/114914972/1050810
> > Group Owner: poky+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> > bruce.ashfield@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >
> >
> 
> -- 
> - Thou shalt not follow the NULL pointer, for chaos and madness await thee
> at its end
> - "Use the force Harry" - Gandalf, Star Trek II

