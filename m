Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE6A6CA0EFF
	for <webhook@archiver.kernel.org>; Thu, 28 Aug 2025 00:58:30 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.web10.10399.1756342704609992636
 for <poky@lists.yoctoproject.org>;
 Wed, 27 Aug 2025 17:58:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LtcKLiVl;
 spf=pass (domain: gmail.com, ip: 209.85.214.178, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-24456ce0b96so5267155ad.0
        for <poky@lists.yoctoproject.org>; Wed, 27 Aug 2025 17:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756342704; x=1756947504; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=L7pjjoThZpJN5U0Sss79GODMLndHQug0A0B6WHneIB4=;
        b=LtcKLiVlKmy4XS2MRemmLdzjLNZanqH9Znw2DdcaJh7sSou3oRaMw8oKld9COJHV26
         tLlG/q0YG+L/SHxcVNiGsMvGuYjnG+YRKNxejpr4xr06PDSFIup5Zi4DPJsXdqqWov0u
         NQqx2aiwVU7GENmCM1Q0dZan5k0ZvLwsxeoxXEW7VuCde8R4QxWg3ynmA0ETF2jjdGWe
         3H22OFe2RiVj7B5G/XymYvfPJ7HPrtTzzjnhJWcKwtIL2IB4hoPAb6T8/l2INeGAT+s9
         Cr1K1dpCFEOMUV7NGjL8mBJGERbLSu5dh/OjezAlhReAulU6yJ1l2J6BZxAX2GFzxZP5
         L5pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756342704; x=1756947504;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L7pjjoThZpJN5U0Sss79GODMLndHQug0A0B6WHneIB4=;
        b=E9XlbwH9TLktO1sqn54t4IRGvpPpjSATwclbHP/rANbViCCyGBwlYNsX2giVVUYmek
         bn/i6zLdr31RdLfncA/X/6ODJIE+0ZwVue8A2YMyCSMt6g2BRrLa0HSj9s8Z+mzVppaz
         d+QpMUJ5oEEeuo2a/jqNBczrLUpP7mwUmGkJrUyvpVy1pmPgP5LFWfRpUkhLfA7eIKyC
         ucnH67nuDf7PgjFwsfU2+lMEeT/Up6WK1jebkCg8vs9q5GblKy6Anql8sSj4RxH00b6G
         DOllQxhIm1XuJiqVbdlcW1mV3/d60aePqwCjknPACxXBfmHffOXY/XTdN2t5nBsmIGUI
         Lcwg==
X-Gm-Message-State: AOJu0YxADjuJSdz2KerL175tbg4IgVInSM7Z3XpY3CSHNEPzYa4EeaA3
	3fnjYP7vXDxFhVaE2waSnfT1dnSGX0YJzeJsN7Ph08a13Zr6LGho7Sr+iIWFMFJQ3mN7oRjZxed
	h91xpJ9GGvGaa4+fMUFimLrGylRjsAOk=
X-Gm-Gg: ASbGncvQIXQ+77L+qb9PyUxVLakQ8+jjmvVxbCscy+en4paOxe1t2wy7TCskMHNeshN
	U/rNSpQ9v8vF+oD4+QhbrRmkWtMQj3Fcru1i3w3IJ04MVO3nWE/g9223QRblcz/6Wnv1jTQFCi4
	wak307NdQKBBafbytx1vV4ngh5jaSI4PuX0YUsa6gjiRY+VhJyxfYwRe6MGAPcpznDTH3wP8B2i
	MP9ugSIEJLca5N24pQG4SGjSJhGvIqvj+QKeNYCVDIAorcW7b0=
X-Google-Smtp-Source: AGHT+IFAvuLGTtwNHsCAnfdlBj/lqSuIioA/5f3X9YNhzV9nu+aWGec6/ssP3u7P/tFnrEDnduOxg3WAljXR+8udSw4=
X-Received: by 2002:a17:903:2f85:b0:246:570:d7dd with SMTP id
 d9443c01a7336-248753adaa1mr102775695ad.30.1756342703654; Wed, 27 Aug 2025
 17:58:23 -0700 (PDT)
MIME-Version: 1.0
References: <20250827100852.2093378-1-mikko.rapeli@linaro.org>
 <20250827101114.2093782-1-mikko.rapeli@linaro.org> <CADkTA4Na0w8tVNaM8uJkhqPShggKvAyVcr-Kg2aCkeLmqD6K7w@mail.gmail.com>
 <aK8Stgc4Zw-bFDkk@nuoska>
In-Reply-To: <aK8Stgc4Zw-bFDkk@nuoska>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 27 Aug 2025 21:58:12 -0300
X-Gm-Features: Ac12FXy7h61rw3PzeEhsVt1jEpuuH13B-Q5VyZGaZKPXqku6SjV3-RKLp2TJAT4
Message-ID: <CADkTA4O1P-LQWZMr_75v9YtBQ0qWckDv=U-TmNph_fm8CvfOvg@mail.gmail.com>
Subject: Re: [poky] [PATCH] linux-yocto: fix compilation of 6.16 kernel on genericarm64
To: Mikko Rapeli <mikko.rapeli@linaro.org>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f48a42063d62660e"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 28 Aug 2025 00:58:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13733

--000000000000f48a42063d62660e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 27, 2025 at 11:14=E2=80=AFAM Mikko Rapeli <mikko.rapeli@linaro.=
org>
wrote:

> Hi,
>
> On Wed, Aug 27, 2025 at 10:55:14AM -0300, Bruce Ashfield wrote:
> > On Wed, Aug 27, 2025 at 7:11=E2=80=AFAM Mikko Rapeli via lists.yoctopro=
ject.org
> > <mikko.rapeli=3Dlinaro.org@lists.yoctoproject.org> wrote:
> >
> > > If the TI serial console revert is still needed, which needs
> > > to be confirmed separately, then one extra revert is needed
> > > for 6.16 kernel to compile for genericarm64 machine.
> > > Tested boot and oeqa runtime tests on arm64 build machine
> > > with qemu and qemu kvm on AMD KV260:
> > >
> >
> > Are those different from ones on 6.12. or the same ? I just ask (i didn=
't
> > find anything in a quick search), since if I dropped them, that is my
> > mistake (When I merge patches that are to be carried forward, they
> > go into kernel-cache master and will always be in the next version).
>
> Yes, the same revert as in 6.12 bbappend.
>

ah yes. I missed that when it went in for 6.12 and I didn't do a broad
enough search this time.


> > The real reason I ask is that we shouldn't be patching linux-yocto
> > like this in a bbappend. I can simply to the reverts and apply the
> > patches on the BSP branch or v6.16/standard/base if they are
> > appropriate for all boards.
>
> Right. So I should move the patches from linux-yocto bbappend in
> poky/meta-yocto-bsp to linux-yocto proper for genericarm64?
> A new branch for genericarm64 would be needed then.
>
>
That's easy to do, and the main reason we've ever created BSP
branches (to temporarily carry something that isn't suitable for
all boards).

I can create a branch and tweak the linux-yocto recipe to use the
branch and take care of grabbing those patches.

Bruce



> If there is a way to reproduce the BeaglePlay serial console
> issue we could also try the kernel without reverts.
>
> Cheers,
>
> -Mikko
>
> > Bruce
> >
> >
> >
> > >
> > > https://ledge.validation.linaro.org/scheduler/job/119012
> > >
> > > Depends on yocto-kernel-cache change to fix do_kernel_configcheck
> > > warnings.
> > >
> > > Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> > > ---
> > >  ...50-unexport-serial8250_rpm_-function.patch | 96 +++++++++++++++++=
++
> > >  .../linux/linux-yocto_6.16.bbappend           | 14 +++
> > >  2 files changed, 110 insertions(+)
> > >  create mode 100644
> > >
> meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250-unexpor=
t-serial8250_rpm_-function.patch
> > >  create mode 100644
> > > meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend
> > >
> > > diff --git
> > >
> a/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250-unexp=
ort-serial8250_rpm_-function.patch
> > >
> b/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250-unexp=
ort-serial8250_rpm_-function.patch
> > > new file mode 100644
> > > index 000000000000..b64488458238
> > > --- /dev/null
> > > +++
> > >
> b/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250-unexp=
ort-serial8250_rpm_-function.patch
> > > @@ -0,0 +1,96 @@
> > > +From 4fa6940b9891b0107abef9b3b01583332156878c Mon Sep 17 00:00:00 20=
01
> > > +From: Mikko Rapeli <mikko.rapeli@linaro.org>
> > > +Date: Wed, 27 Aug 2025 06:55:58 +0000
> > > +Subject: [PATCH] Revert "serial: 8250: unexport serial8250_rpm_*()
> > > functions"
> > > +
> > > +This reverts commit 7ba4f02e12e6f2409c5b2afae2963089b5673482.
> > > +Needed by revert of 8700a7ea5519fb0b3bad2362adfeac358c2119ce
> > > +which causes kernel hangs when starting getty's on BeaglePlay.
> > > +
> > > +[ YOCTO #15704 ]
> > > +
> > > +Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> > > +---
> > > + drivers/tty/serial/8250/8250.h      |  6 ++++++
> > > + drivers/tty/serial/8250/8250_port.c | 12 ++++++++----
> > > + 2 files changed, 14 insertions(+), 4 deletions(-)
> > > +
> > > +Upstream-Status: Inappropriate
> > > +
> > > +diff --git a/drivers/tty/serial/8250/8250.h
> > > b/drivers/tty/serial/8250/8250.h
> > > +index 18530c31a598..b861585ca02a 100644
> > > +--- a/drivers/tty/serial/8250/8250.h
> > > ++++ b/drivers/tty/serial/8250/8250.h
> > > +@@ -223,6 +223,12 @@ static inline bool serial8250_clear_THRI(struct
> > > uart_8250_port *up)
> > > + struct uart_8250_port *serial8250_setup_port(int index);
> > > + struct uart_8250_port *serial8250_get_port(int line);
> > > +
> > > ++void serial8250_rpm_get(struct uart_8250_port *p);
> > > ++void serial8250_rpm_put(struct uart_8250_port *p);
> > > ++
> > > ++void serial8250_rpm_get_tx(struct uart_8250_port *p);
> > > ++void serial8250_rpm_put_tx(struct uart_8250_port *p);
> > > ++
> > > + int serial8250_em485_config(struct uart_port *port, struct ktermios
> > > *termios,
> > > +                           struct serial_rs485 *rs485);
> > > + void serial8250_em485_start_tx(struct uart_8250_port *p, bool
> > > toggle_ier);
> > > +diff --git a/drivers/tty/serial/8250/8250_port.c
> > > b/drivers/tty/serial/8250/8250_port.c
> > > +index 6d7b8c4667c9..8d9bb91d4bae 100644
> > > +--- a/drivers/tty/serial/8250/8250_port.c
> > > ++++ b/drivers/tty/serial/8250/8250_port.c
> > > +@@ -517,20 +517,22 @@ void serial8250_clear_and_reinit_fifos(struct
> > > uart_8250_port *p)
> > > + }
> > > + EXPORT_SYMBOL_GPL(serial8250_clear_and_reinit_fifos);
> > > +
> > > +-static void serial8250_rpm_get(struct uart_8250_port *p)
> > > ++void serial8250_rpm_get(struct uart_8250_port *p)
> > > + {
> > > +       if (!(p->capabilities & UART_CAP_RPM))
> > > +               return;
> > > +       pm_runtime_get_sync(p->port.dev);
> > > + }
> > > ++EXPORT_SYMBOL_GPL(serial8250_rpm_get);
> > > +
> > > +-static void serial8250_rpm_put(struct uart_8250_port *p)
> > > ++void serial8250_rpm_put(struct uart_8250_port *p)
> > > + {
> > > +       if (!(p->capabilities & UART_CAP_RPM))
> > > +               return;
> > > +       pm_runtime_mark_last_busy(p->port.dev);
> > > +       pm_runtime_put_autosuspend(p->port.dev);
> > > + }
> > > ++EXPORT_SYMBOL_GPL(serial8250_rpm_put);
> > > +
> > > + /**
> > > +  *    serial8250_em485_init() - put uart_8250_port into rs485
> emulating
> > > +@@ -645,7 +647,7 @@ EXPORT_SYMBOL_GPL(serial8250_em485_config);
> > > +  * once and disable_runtime_pm_tx() will still disable RPM because
> the
> > > fifo is
> > > +  * empty and the HW can idle again.
> > > +  */
> > > +-static void serial8250_rpm_get_tx(struct uart_8250_port *p)
> > > ++void serial8250_rpm_get_tx(struct uart_8250_port *p)
> > > + {
> > > +       unsigned char rpm_active;
> > > +
> > > +@@ -657,8 +659,9 @@ static void serial8250_rpm_get_tx(struct
> > > uart_8250_port *p)
> > > +               return;
> > > +       pm_runtime_get_sync(p->port.dev);
> > > + }
> > > ++EXPORT_SYMBOL_GPL(serial8250_rpm_get_tx);
> > > +
> > > +-static void serial8250_rpm_put_tx(struct uart_8250_port *p)
> > > ++void serial8250_rpm_put_tx(struct uart_8250_port *p)
> > > + {
> > > +       unsigned char rpm_active;
> > > +
> > > +@@ -671,6 +674,7 @@ static void serial8250_rpm_put_tx(struct
> > > uart_8250_port *p)
> > > +       pm_runtime_mark_last_busy(p->port.dev);
> > > +       pm_runtime_put_autosuspend(p->port.dev);
> > > + }
> > > ++EXPORT_SYMBOL_GPL(serial8250_rpm_put_tx);
> > > +
> > > + /*
> > > +  * IER sleep support.  UARTs which have EFRs need the "extended
> > > +--
> > > +2.43.0
> > > +
> > > diff --git
> a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend
> > > b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend
> > > new file mode 100644
> > > index 000000000000..ef5f84cfc3aa
> > > --- /dev/null
> > > +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend
> > > @@ -0,0 +1,14 @@
> > > +COMPATIBLE_MACHINE:genericarm64 =3D "genericarm64"
> > > +COMPATIBLE_MACHINE:beaglebone-yocto =3D "beaglebone-yocto"
> > > +COMPATIBLE_MACHINE:genericx86 =3D "genericx86"
> > > +COMPATIBLE_MACHINE:genericx86-64 =3D "genericx86-64"
> > > +
> > > +KMACHINE:beaglebone-yocto ?=3D "beaglebone"
> > > +KMACHINE:genericx86 ?=3D "common-pc"
> > > +KMACHINE:genericx86-64 ?=3D "common-pc-64"
> > > +
> > > +FILESEXTRAPATHS:prepend:genericarm64 :=3D "${THISDIR}/files:"
> > > +SRC_URI:append:genericarm64 =3D " \
> > > +
> > > file://0001-Revert-serial-8250-unexport-serial8250_rpm_-function.patc=
h
> \
> > > +
> file://0001-Revert-serial-8250_omap-Drop-pm_runtime_irq_safe.patch \
> > > +"
> > > --
> > > 2.43.0
> > >
> > >
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > Links: You receive all messages sent to this group.
> > > View/Reply Online (#13730):
> > > https://lists.yoctoproject.org/g/poky/message/13730
> > > Mute This Topic: https://lists.yoctoproject.org/mt/114914972/1050810
> > > Group Owner: poky+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> > > bruce.ashfield@gmail.com]
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > >
> > >
> >
> > --
> > - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee
> > at its end
> > - "Use the force Harry" - Gandalf, Star Trek II
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--000000000000f48a42063d62660e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote gmail_quote_con=
tainer"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 27, 2025 at 11:14=
=E2=80=AFAM Mikko Rapeli &lt;<a href=3D"mailto:mikko.rapeli@linaro.org">mik=
ko.rapeli@linaro.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">Hi,<br>
<br>
On Wed, Aug 27, 2025 at 10:55:14AM -0300, Bruce Ashfield wrote:<br>
&gt; On Wed, Aug 27, 2025 at 7:11=E2=80=AFAM Mikko Rapeli via <a href=3D"ht=
tp://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoc=
toproject.org</a><br>
&gt; &lt;mikko.rapeli=3D<a href=3D"mailto:linaro.org@lists.yoctoproject.org=
" target=3D"_blank">linaro.org@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt; <br>
&gt; &gt; If the TI serial console revert is still needed, which needs<br>
&gt; &gt; to be confirmed separately, then one extra revert is needed<br>
&gt; &gt; for 6.16 kernel to compile for genericarm64 machine.<br>
&gt; &gt; Tested boot and oeqa runtime tests on arm64 build machine<br>
&gt; &gt; with qemu and qemu kvm on AMD KV260:<br>
&gt; &gt;<br>
&gt; <br>
&gt; Are those different from ones on 6.12. or the same ? I just ask (i did=
n&#39;t<br>
&gt; find anything in a quick search), since if I dropped them, that is my<=
br>
&gt; mistake (When I merge patches that are to be carried forward, they<br>
&gt; go into kernel-cache master and will always be in the next version).<b=
r>
<br>
Yes, the same revert as in 6.12 bbappend.<br></blockquote><div><br></div><d=
iv><div class=3D"gmail_default" style=3D"font-size:small">ah yes. I missed =
that when it went in for 6.12 and I didn&#39;t do a broad</div><div class=
=3D"gmail_default" style=3D"font-size:small">enough search this time.</div>=
</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
&gt; The real reason I ask is that we shouldn&#39;t be patching linux-yocto=
<br>
&gt; like this in a bbappend. I can simply to the reverts and apply the<br>
&gt; patches on the BSP branch or v6.16/standard/base if they are<br>
&gt; appropriate for all boards.<br>
<br>
Right. So I should move the patches from linux-yocto bbappend in<br>
poky/meta-yocto-bsp to linux-yocto proper for genericarm64?<br>
A new branch for genericarm64 would be needed then.<br>
<br></blockquote><div><br></div><div><div class=3D"gmail_default" style=3D"=
font-size:small">That&#39;s easy to do, and the main reason we&#39;ve ever =
created BSP</div><div class=3D"gmail_default" style=3D"font-size:small">bra=
nches (to temporarily carry something that isn&#39;t suitable for</div><div=
 class=3D"gmail_default" style=3D"font-size:small">all boards).</div><div c=
lass=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gm=
ail_default" style=3D"font-size:small">I can create a branch and tweak the =
linux-yocto recipe to use the</div><div class=3D"gmail_default" style=3D"fo=
nt-size:small">branch and take care of grabbing those patches.</div><div cl=
ass=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gma=
il_default" style=3D"font-size:small">Bruce</div><br></div><div>=C2=A0</div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">
If there is a way to reproduce the BeaglePlay serial console<br>
issue we could also try the kernel without reverts.<br>
<br>
Cheers,<br>
<br>
-Mikko<br>
<br>
&gt; Bruce<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; &gt;<br>
&gt; &gt; <a href=3D"https://ledge.validation.linaro.org/scheduler/job/1190=
12" rel=3D"noreferrer" target=3D"_blank">https://ledge.validation.linaro.or=
g/scheduler/job/119012</a><br>
&gt; &gt;<br>
&gt; &gt; Depends on yocto-kernel-cache change to fix do_kernel_configcheck=
<br>
&gt; &gt; warnings.<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Mikko Rapeli &lt;<a href=3D"mailto:mikko.rapeli@li=
naro.org" target=3D"_blank">mikko.rapeli@linaro.org</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 ...50-unexport-serial8250_rpm_-function.patch | 96 ++++++++=
+++++++++++<br>
&gt; &gt;=C2=A0 .../linux/linux-yocto_6.16.bbappend=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0| 14 +++<br>
&gt; &gt;=C2=A0 2 files changed, 110 insertions(+)<br>
&gt; &gt;=C2=A0 create mode 100644<br>
&gt; &gt; meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250=
-unexport-serial8250_rpm_-function.patch<br>
&gt; &gt;=C2=A0 create mode 100644<br>
&gt; &gt; meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend<br>
&gt; &gt;<br>
&gt; &gt; diff --git<br>
&gt; &gt; a/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-82=
50-unexport-serial8250_rpm_-function.patch<br>
&gt; &gt; b/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-82=
50-unexport-serial8250_rpm_-function.patch<br>
&gt; &gt; new file mode 100644<br>
&gt; &gt; index 000000000000..b64488458238<br>
&gt; &gt; --- /dev/null<br>
&gt; &gt; +++<br>
&gt; &gt; b/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-82=
50-unexport-serial8250_rpm_-function.patch<br>
&gt; &gt; @@ -0,0 +1,96 @@<br>
&gt; &gt; +From 4fa6940b9891b0107abef9b3b01583332156878c Mon Sep 17 00:00:0=
0 2001<br>
&gt; &gt; +From: Mikko Rapeli &lt;<a href=3D"mailto:mikko.rapeli@linaro.org=
" target=3D"_blank">mikko.rapeli@linaro.org</a>&gt;<br>
&gt; &gt; +Date: Wed, 27 Aug 2025 06:55:58 +0000<br>
&gt; &gt; +Subject: [PATCH] Revert &quot;serial: 8250: unexport serial8250_=
rpm_*()<br>
&gt; &gt; functions&quot;<br>
&gt; &gt; +<br>
&gt; &gt; +This reverts commit 7ba4f02e12e6f2409c5b2afae2963089b5673482.<br=
>
&gt; &gt; +Needed by revert of 8700a7ea5519fb0b3bad2362adfeac358c2119ce<br>
&gt; &gt; +which causes kernel hangs when starting getty&#39;s on BeaglePla=
y.<br>
&gt; &gt; +<br>
&gt; &gt; +[ YOCTO #15704 ]<br>
&gt; &gt; +<br>
&gt; &gt; +Signed-off-by: Mikko Rapeli &lt;<a href=3D"mailto:mikko.rapeli@l=
inaro.org" target=3D"_blank">mikko.rapeli@linaro.org</a>&gt;<br>
&gt; &gt; +---<br>
&gt; &gt; + drivers/tty/serial/8250/8250.h=C2=A0 =C2=A0 =C2=A0 |=C2=A0 6 ++=
++++<br>
&gt; &gt; + drivers/tty/serial/8250/8250_port.c | 12 ++++++++----<br>
&gt; &gt; + 2 files changed, 14 insertions(+), 4 deletions(-)<br>
&gt; &gt; +<br>
&gt; &gt; +Upstream-Status: Inappropriate<br>
&gt; &gt; +<br>
&gt; &gt; +diff --git a/drivers/tty/serial/8250/8250.h<br>
&gt; &gt; b/drivers/tty/serial/8250/8250.h<br>
&gt; &gt; +index 18530c31a598..b861585ca02a 100644<br>
&gt; &gt; +--- a/drivers/tty/serial/8250/8250.h<br>
&gt; &gt; ++++ b/drivers/tty/serial/8250/8250.h<br>
&gt; &gt; +@@ -223,6 +223,12 @@ static inline bool serial8250_clear_THRI(st=
ruct<br>
&gt; &gt; uart_8250_port *up)<br>
&gt; &gt; + struct uart_8250_port *serial8250_setup_port(int index);<br>
&gt; &gt; + struct uart_8250_port *serial8250_get_port(int line);<br>
&gt; &gt; +<br>
&gt; &gt; ++void serial8250_rpm_get(struct uart_8250_port *p);<br>
&gt; &gt; ++void serial8250_rpm_put(struct uart_8250_port *p);<br>
&gt; &gt; ++<br>
&gt; &gt; ++void serial8250_rpm_get_tx(struct uart_8250_port *p);<br>
&gt; &gt; ++void serial8250_rpm_put_tx(struct uart_8250_port *p);<br>
&gt; &gt; ++<br>
&gt; &gt; + int serial8250_em485_config(struct uart_port *port, struct kter=
mios<br>
&gt; &gt; *termios,<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct serial_rs485 *rs485);<br>
&gt; &gt; + void serial8250_em485_start_tx(struct uart_8250_port *p, bool<b=
r>
&gt; &gt; toggle_ier);<br>
&gt; &gt; +diff --git a/drivers/tty/serial/8250/8250_port.c<br>
&gt; &gt; b/drivers/tty/serial/8250/8250_port.c<br>
&gt; &gt; +index 6d7b8c4667c9..8d9bb91d4bae 100644<br>
&gt; &gt; +--- a/drivers/tty/serial/8250/8250_port.c<br>
&gt; &gt; ++++ b/drivers/tty/serial/8250/8250_port.c<br>
&gt; &gt; +@@ -517,20 +517,22 @@ void serial8250_clear_and_reinit_fifos(str=
uct<br>
&gt; &gt; uart_8250_port *p)<br>
&gt; &gt; + }<br>
&gt; &gt; + EXPORT_SYMBOL_GPL(serial8250_clear_and_reinit_fifos);<br>
&gt; &gt; +<br>
&gt; &gt; +-static void serial8250_rpm_get(struct uart_8250_port *p)<br>
&gt; &gt; ++void serial8250_rpm_get(struct uart_8250_port *p)<br>
&gt; &gt; + {<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!(p-&gt;capabilities &amp; UART_C=
AP_RPM))<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<b=
r>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0pm_runtime_get_sync(p-&gt;<a href=3D"=
http://port.dev" rel=3D"noreferrer" target=3D"_blank">port.dev</a>);<br>
&gt; &gt; + }<br>
&gt; &gt; ++EXPORT_SYMBOL_GPL(serial8250_rpm_get);<br>
&gt; &gt; +<br>
&gt; &gt; +-static void serial8250_rpm_put(struct uart_8250_port *p)<br>
&gt; &gt; ++void serial8250_rpm_put(struct uart_8250_port *p)<br>
&gt; &gt; + {<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!(p-&gt;capabilities &amp; UART_C=
AP_RPM))<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<b=
r>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0pm_runtime_mark_last_busy(p-&gt;<a hr=
ef=3D"http://port.dev" rel=3D"noreferrer" target=3D"_blank">port.dev</a>);<=
br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0pm_runtime_put_autosuspend(p-&gt;<a h=
ref=3D"http://port.dev" rel=3D"noreferrer" target=3D"_blank">port.dev</a>);=
<br>
&gt; &gt; + }<br>
&gt; &gt; ++EXPORT_SYMBOL_GPL(serial8250_rpm_put);<br>
&gt; &gt; +<br>
&gt; &gt; + /**<br>
&gt; &gt; +=C2=A0 *=C2=A0 =C2=A0 serial8250_em485_init() - put uart_8250_po=
rt into rs485 emulating<br>
&gt; &gt; +@@ -645,7 +647,7 @@ EXPORT_SYMBOL_GPL(serial8250_em485_config);<=
br>
&gt; &gt; +=C2=A0 * once and disable_runtime_pm_tx() will still disable RPM=
 because the<br>
&gt; &gt; fifo is<br>
&gt; &gt; +=C2=A0 * empty and the HW can idle again.<br>
&gt; &gt; +=C2=A0 */<br>
&gt; &gt; +-static void serial8250_rpm_get_tx(struct uart_8250_port *p)<br>
&gt; &gt; ++void serial8250_rpm_get_tx(struct uart_8250_port *p)<br>
&gt; &gt; + {<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char rpm_active;<br>
&gt; &gt; +<br>
&gt; &gt; +@@ -657,8 +659,9 @@ static void serial8250_rpm_get_tx(struct<br>
&gt; &gt; uart_8250_port *p)<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<b=
r>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0pm_runtime_get_sync(p-&gt;<a href=3D"=
http://port.dev" rel=3D"noreferrer" target=3D"_blank">port.dev</a>);<br>
&gt; &gt; + }<br>
&gt; &gt; ++EXPORT_SYMBOL_GPL(serial8250_rpm_get_tx);<br>
&gt; &gt; +<br>
&gt; &gt; +-static void serial8250_rpm_put_tx(struct uart_8250_port *p)<br>
&gt; &gt; ++void serial8250_rpm_put_tx(struct uart_8250_port *p)<br>
&gt; &gt; + {<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char rpm_active;<br>
&gt; &gt; +<br>
&gt; &gt; +@@ -671,6 +674,7 @@ static void serial8250_rpm_put_tx(struct<br>
&gt; &gt; uart_8250_port *p)<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0pm_runtime_mark_last_busy(p-&gt;<a hr=
ef=3D"http://port.dev" rel=3D"noreferrer" target=3D"_blank">port.dev</a>);<=
br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0pm_runtime_put_autosuspend(p-&gt;<a h=
ref=3D"http://port.dev" rel=3D"noreferrer" target=3D"_blank">port.dev</a>);=
<br>
&gt; &gt; + }<br>
&gt; &gt; ++EXPORT_SYMBOL_GPL(serial8250_rpm_put_tx);<br>
&gt; &gt; +<br>
&gt; &gt; + /*<br>
&gt; &gt; +=C2=A0 * IER sleep support.=C2=A0 UARTs which have EFRs need the=
 &quot;extended<br>
&gt; &gt; +--<br>
&gt; &gt; +2.43.0<br>
&gt; &gt; +<br>
&gt; &gt; diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16=
.bbappend<br>
&gt; &gt; b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend<b=
r>
&gt; &gt; new file mode 100644<br>
&gt; &gt; index 000000000000..ef5f84cfc3aa<br>
&gt; &gt; --- /dev/null<br>
&gt; &gt; +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappe=
nd<br>
&gt; &gt; @@ -0,0 +1,14 @@<br>
&gt; &gt; +COMPATIBLE_MACHINE:genericarm64 =3D &quot;genericarm64&quot;<br>
&gt; &gt; +COMPATIBLE_MACHINE:beaglebone-yocto =3D &quot;beaglebone-yocto&q=
uot;<br>
&gt; &gt; +COMPATIBLE_MACHINE:genericx86 =3D &quot;genericx86&quot;<br>
&gt; &gt; +COMPATIBLE_MACHINE:genericx86-64 =3D &quot;genericx86-64&quot;<b=
r>
&gt; &gt; +<br>
&gt; &gt; +KMACHINE:beaglebone-yocto ?=3D &quot;beaglebone&quot;<br>
&gt; &gt; +KMACHINE:genericx86 ?=3D &quot;common-pc&quot;<br>
&gt; &gt; +KMACHINE:genericx86-64 ?=3D &quot;common-pc-64&quot;<br>
&gt; &gt; +<br>
&gt; &gt; +FILESEXTRAPATHS:prepend:genericarm64 :=3D &quot;${THISDIR}/files=
:&quot;<br>
&gt; &gt; +SRC_URI:append:genericarm64 =3D &quot; \<br>
&gt; &gt; +<br>
&gt; &gt; file://0001-Revert-serial-8250-unexport-serial8250_rpm_-function.=
patch \<br>
&gt; &gt; +=C2=A0 =C2=A0 file://0001-Revert-serial-8250_omap-Drop-pm_runtim=
e_irq_safe.patch \<br>
&gt; &gt; +&quot;<br>
&gt; &gt; --<br>
&gt; &gt; 2.43.0<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt; Links: You receive all messages sent to this group.<br>
&gt; &gt; View/Reply Online (#13730):<br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/g/poky/message/13730" r=
el=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/m=
essage/13730</a><br>
&gt; &gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/114=
914972/1050810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/114914972/1050810</a><br>
&gt; &gt; Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.or=
g" target=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
&gt; &gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/uns=
ub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/p=
oky/unsub</a> [<br>
&gt; &gt; <a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bru=
ce.ashfield@gmail.com</a>]<br>
&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; <br>
&gt; -- <br>
&gt; - Thou shalt not follow the NULL pointer, for chaos and madness await =
thee<br>
&gt; at its end<br>
&gt; - &quot;Use the force Harry&quot; - Gandalf, Star Trek II<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature">- Thou shalt not follow the NULL pointer, for chaos and madness a=
wait thee at its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star T=
rek II<br><br></div></div>

--000000000000f48a42063d62660e--

