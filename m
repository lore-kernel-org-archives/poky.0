Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C5E1CA0EED
	for <webhook@archiver.kernel.org>; Thu, 28 Aug 2025 06:02:42 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web10.14308.1756360958060486380
 for <poky@lists.yoctoproject.org>;
 Wed, 27 Aug 2025 23:02:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=VuCrqRdL;
 spf=pass (domain: linaro.org, ip: 209.85.167.47, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-55f42dcbf4aso567799e87.1
        for <poky@lists.yoctoproject.org>; Wed, 27 Aug 2025 23:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756360956; x=1756965756; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Znejy/J/MzqlwCd3RqpuYzwYz9qCQdmkBQ3ngA7aZUg=;
        b=VuCrqRdLKrvZfV8l2jBkc2Rzvg8ccclqoVwWB/YAInJdsjbIgHrJZik4ce/W6Yslr3
         Q4se6Rwf+8lx4ufiZFFp+rkkwnRh/e5z5Oau1ZVawDvfoqPgzv0eZUZ9L5EeGkyfreai
         RbWFJajikJg55ABdUlOf0LOlVtLbWtDm8meQO9sfN+JLjwz8G0rkrYCpcJY99RvAOSYg
         JNDEX3Hq/QAT/9ArnWcUdGdaT0aGzb3VxpN5nguE2+QKOzH3gRIZb2a11SAR0BzTpWr5
         WsD/CnWxeUcyTntot+k/FJw+2n7C0IGD8eo9xBGzUaSi11Cw+gGmglp9EBUd6IDk5pxy
         0Qtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756360956; x=1756965756;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Znejy/J/MzqlwCd3RqpuYzwYz9qCQdmkBQ3ngA7aZUg=;
        b=lbxMG0x+0uYmifr60+jlnX76CuKNXG3EJUdwK4ikz+nBE+gDHUm9L53QQOvWlw/6zq
         ofF26GlLHvQeEQLEcpPtOdZ0kK95MF1brFmTw4HS1hP8unI0fWlGdwNJ7M/4TwgrY/jZ
         /fsSjHOuptiWXTsNebPb7YAOIorlC4aIQXYBQsUd74e9c2M5/VQJlrolXCDU+jugRRPi
         x/WJhxyTTIAzadO4H6a39qhzBuLSOkA5Fd5TEatihaR1fl0BsrSQ0qp9sCRME3/2oVEJ
         Coqlj5KMBOB5zSnBexIueYJONP0pcXohPOpwKlH2Kh6dl0F7sZ7bNRcwaZrhuUQGqH2u
         B6NQ==
X-Gm-Message-State: AOJu0YxY6YUdMszsWH3KIeBKQg3FnqREDUweyyC/S9BepOq6sHd7w7mj
	c6Vc0AbHNaMSrv2bXRzJrKsVchPWPz9/bVoUzdWA9xdhHyEkrwOef8ZUJhu+Ym5guIw=
X-Gm-Gg: ASbGncua5gDsM+cXcMl+i/+AgSm0Vd8rCt2GouUuHbpYueOsS+MdVJOSvp822PYdsoM
	yB4aMGEy9NdWiUxDXwaV/NC0wqg/RhS+McZ5tWMTeYhly4XyMEmc5n71H3XTsLFd5qM9KZStUQs
	SdeHvo7QaA6ZUGoVfen1B2ltHoqwMN2EcY0o2f5sT7K7vwSyHYn8xdWxaYBGvjQLKI4Lm2o8TMs
	818rVgOdMkkfBjFCT9obE1iZshKk6+u51M8rHIsNfTclAd6/JZiaDGYsX77a4jBHb/Oy8epJuQO
	ktCPtpkDpEOp+ChgAcQZaq8gkQwW14H713atRsnJxEZdxYGAtITX0a1qMg2VcQNa9jPg62AnZVF
	wi6IM9YDHKOVe0MDBrjZp+Lzbo0mEcctO3zpDmRF21Rrix3Mu/0KS3vg=
X-Google-Smtp-Source: AGHT+IHugxGyShOCdpAbDqXiBRXAexihVDgPxItxMtGKnhjM3atY4j+bdSgXjpRK8QZHy4GzAR6ISw==
X-Received: by 2002:a05:6512:1092:b0:55f:5cad:28c8 with SMTP id 2adb3069b0e04-55f5cad2bc2mr600108e87.39.1756360955904;
        Wed, 27 Aug 2025 23:02:35 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f35bffaa6sm3139071e87.32.2025.08.27.23.02.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Aug 2025 23:02:35 -0700 (PDT)
Date: Thu, 28 Aug 2025 09:02:33 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH] linux-yocto: fix compilation of 6.16 kernel on
 genericarm64
Message-ID: <aK_w-XjLA3cWLUHA@nuoska>
References: <20250827100852.2093378-1-mikko.rapeli@linaro.org>
 <20250827101114.2093782-1-mikko.rapeli@linaro.org>
 <CADkTA4Na0w8tVNaM8uJkhqPShggKvAyVcr-Kg2aCkeLmqD6K7w@mail.gmail.com>
 <aK8Stgc4Zw-bFDkk@nuoska>
 <CADkTA4McmV9giAU_pZG4eFcKZ_aoOgqE0R40NU2dfgK+WBz_kA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CADkTA4McmV9giAU_pZG4eFcKZ_aoOgqE0R40NU2dfgK+WBz_kA@mail.gmail.com>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 28 Aug 2025 06:02:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13735

Hi,

On Wed, Aug 27, 2025 at 09:59:14PM -0300, Bruce Ashfield wrote:
> On Wed, Aug 27, 2025 at 11:14 AM Mikko Rapeli <mikko.rapeli@linaro.org>
> wrote:
> > On Wed, Aug 27, 2025 at 10:55:14AM -0300, Bruce Ashfield wrote:
> > > On Wed, Aug 27, 2025 at 7:11 AM Mikko Rapeli via lists.yoctoproject.org
> > > <mikko.rapeli=linaro.org@lists.yoctoproject.org> wrote:
> > >
> > > > If the TI serial console revert is still needed, which needs
> > > > to be confirmed separately, then one extra revert is needed
> > > > for 6.16 kernel to compile for genericarm64 machine.
> > > > Tested boot and oeqa runtime tests on arm64 build machine
> > > > with qemu and qemu kvm on AMD KV260:
> > > >
> > >
> > > Are those different from ones on 6.12. or the same ? I just ask (i didn't
> > > find anything in a quick search), since if I dropped them, that is my
> > > mistake (When I merge patches that are to be carried forward, they
> > > go into kernel-cache master and will always be in the next version).
> >
> > Yes, the same revert as in 6.12 bbappend.
> >
> > > The real reason I ask is that we shouldn't be patching linux-yocto
> > > like this in a bbappend. I can simply to the reverts and apply the
> > > patches on the BSP branch or v6.16/standard/base if they are
> > > appropriate for all boards.
> >
> > Right. So I should move the patches from linux-yocto bbappend in
> > poky/meta-yocto-bsp to linux-yocto proper for genericarm64?
> > A new branch for genericarm64 would be needed then.
> >
> > If there is a way to reproduce the BeaglePlay serial console
> > issue we could also try the kernel without reverts.
> >
> 
> I forgot to reply to this part.
> 
> I'm not fully aware of the issues, so I haven't tried myself. Do you
> have the subject of any threads on it, so I can look up the details
> and get up to speed ?

https://bugzilla.yoctoproject.org/show_bug.cgi?id=15704

https://git.yoctoproject.org/poky/commit/?id=959db9cb12c19c81c1114b09d8f3eadf9831d280

I guess there are some details between Ross and TI that are not public.
But one major contributing factor is that genericarm64 machine hardcodes
SERIAL_CONSOLES which do not exist on many boards and agetty is
started on those. This impacts "poky" distro with sysvinit the most.
"poky-altcfg" and builds with systemd start agetty via udev to detected
serial ports. But of course starting agetty on serial port connected
wifi controller debug port should not hang/crash the kernel.

Cheers,

-Mikko

> Bruce
> 
> 
> 
> >
> > Cheers,
> >
> > -Mikko
> >
> > > Bruce
> > >
> > >
> > >
> > > >
> > > > https://ledge.validation.linaro.org/scheduler/job/119012
> > > >
> > > > Depends on yocto-kernel-cache change to fix do_kernel_configcheck
> > > > warnings.
> > > >
> > > > Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> > > > ---
> > > >  ...50-unexport-serial8250_rpm_-function.patch | 96 +++++++++++++++++++
> > > >  .../linux/linux-yocto_6.16.bbappend           | 14 +++
> > > >  2 files changed, 110 insertions(+)
> > > >  create mode 100644
> > > >
> > meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250-unexport-serial8250_rpm_-function.patch
> > > >  create mode 100644
> > > > meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend
> > > >
> > > > diff --git
> > > >
> > a/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250-unexport-serial8250_rpm_-function.patch
> > > >
> > b/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250-unexport-serial8250_rpm_-function.patch
> > > > new file mode 100644
> > > > index 000000000000..b64488458238
> > > > --- /dev/null
> > > > +++
> > > >
> > b/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250-unexport-serial8250_rpm_-function.patch
> > > > @@ -0,0 +1,96 @@
> > > > +From 4fa6940b9891b0107abef9b3b01583332156878c Mon Sep 17 00:00:00 2001
> > > > +From: Mikko Rapeli <mikko.rapeli@linaro.org>
> > > > +Date: Wed, 27 Aug 2025 06:55:58 +0000
> > > > +Subject: [PATCH] Revert "serial: 8250: unexport serial8250_rpm_*()
> > > > functions"
> > > > +
> > > > +This reverts commit 7ba4f02e12e6f2409c5b2afae2963089b5673482.
> > > > +Needed by revert of 8700a7ea5519fb0b3bad2362adfeac358c2119ce
> > > > +which causes kernel hangs when starting getty's on BeaglePlay.
> > > > +
> > > > +[ YOCTO #15704 ]
> > > > +
> > > > +Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> > > > +---
> > > > + drivers/tty/serial/8250/8250.h      |  6 ++++++
> > > > + drivers/tty/serial/8250/8250_port.c | 12 ++++++++----
> > > > + 2 files changed, 14 insertions(+), 4 deletions(-)
> > > > +
> > > > +Upstream-Status: Inappropriate
> > > > +
> > > > +diff --git a/drivers/tty/serial/8250/8250.h
> > > > b/drivers/tty/serial/8250/8250.h
> > > > +index 18530c31a598..b861585ca02a 100644
> > > > +--- a/drivers/tty/serial/8250/8250.h
> > > > ++++ b/drivers/tty/serial/8250/8250.h
> > > > +@@ -223,6 +223,12 @@ static inline bool serial8250_clear_THRI(struct
> > > > uart_8250_port *up)
> > > > + struct uart_8250_port *serial8250_setup_port(int index);
> > > > + struct uart_8250_port *serial8250_get_port(int line);
> > > > +
> > > > ++void serial8250_rpm_get(struct uart_8250_port *p);
> > > > ++void serial8250_rpm_put(struct uart_8250_port *p);
> > > > ++
> > > > ++void serial8250_rpm_get_tx(struct uart_8250_port *p);
> > > > ++void serial8250_rpm_put_tx(struct uart_8250_port *p);
> > > > ++
> > > > + int serial8250_em485_config(struct uart_port *port, struct ktermios
> > > > *termios,
> > > > +                           struct serial_rs485 *rs485);
> > > > + void serial8250_em485_start_tx(struct uart_8250_port *p, bool
> > > > toggle_ier);
> > > > +diff --git a/drivers/tty/serial/8250/8250_port.c
> > > > b/drivers/tty/serial/8250/8250_port.c
> > > > +index 6d7b8c4667c9..8d9bb91d4bae 100644
> > > > +--- a/drivers/tty/serial/8250/8250_port.c
> > > > ++++ b/drivers/tty/serial/8250/8250_port.c
> > > > +@@ -517,20 +517,22 @@ void serial8250_clear_and_reinit_fifos(struct
> > > > uart_8250_port *p)
> > > > + }
> > > > + EXPORT_SYMBOL_GPL(serial8250_clear_and_reinit_fifos);
> > > > +
> > > > +-static void serial8250_rpm_get(struct uart_8250_port *p)
> > > > ++void serial8250_rpm_get(struct uart_8250_port *p)
> > > > + {
> > > > +       if (!(p->capabilities & UART_CAP_RPM))
> > > > +               return;
> > > > +       pm_runtime_get_sync(p->port.dev);
> > > > + }
> > > > ++EXPORT_SYMBOL_GPL(serial8250_rpm_get);
> > > > +
> > > > +-static void serial8250_rpm_put(struct uart_8250_port *p)
> > > > ++void serial8250_rpm_put(struct uart_8250_port *p)
> > > > + {
> > > > +       if (!(p->capabilities & UART_CAP_RPM))
> > > > +               return;
> > > > +       pm_runtime_mark_last_busy(p->port.dev);
> > > > +       pm_runtime_put_autosuspend(p->port.dev);
> > > > + }
> > > > ++EXPORT_SYMBOL_GPL(serial8250_rpm_put);
> > > > +
> > > > + /**
> > > > +  *    serial8250_em485_init() - put uart_8250_port into rs485
> > emulating
> > > > +@@ -645,7 +647,7 @@ EXPORT_SYMBOL_GPL(serial8250_em485_config);
> > > > +  * once and disable_runtime_pm_tx() will still disable RPM because
> > the
> > > > fifo is
> > > > +  * empty and the HW can idle again.
> > > > +  */
> > > > +-static void serial8250_rpm_get_tx(struct uart_8250_port *p)
> > > > ++void serial8250_rpm_get_tx(struct uart_8250_port *p)
> > > > + {
> > > > +       unsigned char rpm_active;
> > > > +
> > > > +@@ -657,8 +659,9 @@ static void serial8250_rpm_get_tx(struct
> > > > uart_8250_port *p)
> > > > +               return;
> > > > +       pm_runtime_get_sync(p->port.dev);
> > > > + }
> > > > ++EXPORT_SYMBOL_GPL(serial8250_rpm_get_tx);
> > > > +
> > > > +-static void serial8250_rpm_put_tx(struct uart_8250_port *p)
> > > > ++void serial8250_rpm_put_tx(struct uart_8250_port *p)
> > > > + {
> > > > +       unsigned char rpm_active;
> > > > +
> > > > +@@ -671,6 +674,7 @@ static void serial8250_rpm_put_tx(struct
> > > > uart_8250_port *p)
> > > > +       pm_runtime_mark_last_busy(p->port.dev);
> > > > +       pm_runtime_put_autosuspend(p->port.dev);
> > > > + }
> > > > ++EXPORT_SYMBOL_GPL(serial8250_rpm_put_tx);
> > > > +
> > > > + /*
> > > > +  * IER sleep support.  UARTs which have EFRs need the "extended
> > > > +--
> > > > +2.43.0
> > > > +
> > > > diff --git
> > a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend
> > > > b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend
> > > > new file mode 100644
> > > > index 000000000000..ef5f84cfc3aa
> > > > --- /dev/null
> > > > +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend
> > > > @@ -0,0 +1,14 @@
> > > > +COMPATIBLE_MACHINE:genericarm64 = "genericarm64"
> > > > +COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
> > > > +COMPATIBLE_MACHINE:genericx86 = "genericx86"
> > > > +COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
> > > > +
> > > > +KMACHINE:beaglebone-yocto ?= "beaglebone"
> > > > +KMACHINE:genericx86 ?= "common-pc"
> > > > +KMACHINE:genericx86-64 ?= "common-pc-64"
> > > > +
> > > > +FILESEXTRAPATHS:prepend:genericarm64 := "${THISDIR}/files:"
> > > > +SRC_URI:append:genericarm64 = " \
> > > > +
> > > > file://0001-Revert-serial-8250-unexport-serial8250_rpm_-function.patch
> > \
> > > > +
> > file://0001-Revert-serial-8250_omap-Drop-pm_runtime_irq_safe.patch \
> > > > +"
> > > > --
> > > > 2.43.0
> > > >
> > > >
> > > > -=-=-=-=-=-=-=-=-=-=-=-
> > > > Links: You receive all messages sent to this group.
> > > > View/Reply Online (#13730):
> > > > https://lists.yoctoproject.org/g/poky/message/13730
> > > > Mute This Topic: https://lists.yoctoproject.org/mt/114914972/1050810
> > > > Group Owner: poky+owner@lists.yoctoproject.org
> > > > Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> > > > bruce.ashfield@gmail.com]
> > > > -=-=-=-=-=-=-=-=-=-=-=-
> > > >
> > > >
> > >
> > > --
> > > - Thou shalt not follow the NULL pointer, for chaos and madness await
> > thee
> > > at its end
> > > - "Use the force Harry" - Gandalf, Star Trek II
> >
> 
> 
> -- 
> - Thou shalt not follow the NULL pointer, for chaos and madness await thee
> at its end
> - "Use the force Harry" - Gandalf, Star Trek II

