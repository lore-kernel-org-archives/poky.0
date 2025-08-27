Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 837CECA0EFF
	for <webhook@archiver.kernel.org>; Wed, 27 Aug 2025 13:55:32 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web11.15709.1756302929621228278
 for <poky@lists.yoctoproject.org>;
 Wed, 27 Aug 2025 06:55:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hW0CdwdR;
 spf=pass (domain: gmail.com, ip: 209.85.214.179, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2449978aceaso50090345ad.2
        for <poky@lists.yoctoproject.org>; Wed, 27 Aug 2025 06:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756302929; x=1756907729; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/vZLcE4inpYxqmOsnN4QIg+DcZpjBdYxRNYGevt5K7Q=;
        b=hW0CdwdRXr0RYrS0c4G4897PUBRiUpQkvfh+DTkd9ZFEVdbOEXSGA/71V/c+u6tzqq
         DuRnFxj7RubjJN+vN9lTGwfOCKUt+tW1XLxMxs5sqflH9MiJad2GmFWPeGciYLCGwS0b
         HPRVe+NgXlbhFryUglgFflWKyEH216YkTdIqCmUDMizUjqxDYolfkaFb2KJPsgHfcdS+
         aAWIEpcXbZGKBRd3SGx5UJWKqFG3WLFSaPY+p5L4C1VLJ+c7XGHpTfCvvCCybQaL5dTO
         m8KJH+OcoVCenpS7lLjOccVaZbQ5+q5uA0n9u2VlRdOYjfbFwdV6wr+Crirxua1+1wHy
         VCDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756302929; x=1756907729;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/vZLcE4inpYxqmOsnN4QIg+DcZpjBdYxRNYGevt5K7Q=;
        b=VDD7J/b+s9CgCCzfKX/ZluJa2x6bwmJIw+KDvaypyHFJk5MXJ+ntwBKKY3vDfKdVnt
         dVEiUS3Wl1ASPyl9G/ozv+OAoDWDSiSuweDWvf3/hnzAMAQewFxROGCREnsSn+A9hwE7
         wCzufEBXiVKFLIJykXJexjBnEgasdju/22swzoOJ/XyzXiLaxEVkdz3wQdryxnmZUzvT
         Zhmf1EmNZxuMqFM+FFanj48Zlg+xQQXWkZjVViIjXxH4H2xCpa4Lnm0FivpYX0DvSVWJ
         RaVOy3P3dO7yxCv3cLMI5ravzN//CeTs7tUbGl6R2t0eIs9BH0L5X63lw+wmFpQG/lS7
         nALw==
X-Gm-Message-State: AOJu0YwjwZPTDr45a0Uvxj6Qml0e+ZmiIUzmr53Ag0pdz0eCcgOPjkAD
	qAPzHr3mKuwZm1g89neByh0DzDQ2YlUqKULGBDItOJjesqMETYh9Vw4UftkH8EdL0bIOrpHvhyt
	ve9Z6HLAe7UbK4x53J2GRuAgLx5+ah7E=
X-Gm-Gg: ASbGnctZydkbFzUpMtCFtcQnumabTdqUSDUyFwGkmI/tjuE0XwP+8Uq6rj5HYxF+se4
	x17L5995Ghkl8kUXVdf6uODDQgDMk6he7TqYyKYgFF1ZIpDC//6z8QxPJlwhNjmB1gRYzEti+Xv
	yuOq0N/OcJ1s58/dNQ8D8KFOomxF8pgNRCUNTgQY/n8U8I2mxbNWYCEF36theg6JCKSge5MVMpV
	ddJWc4OYorJOD6Xrb+NZf7IymP9QT2Jc4fioUmJuz1TQYwWNUM=
X-Google-Smtp-Source: AGHT+IH5oUomZJDPaFOKc/qJrzNjK5jVT9pQy0//BXw2gHThFDphoVySw6uNEGKigWCEOq5fGlonBEgHvkwRoFwErMA=
X-Received: by 2002:a17:903:380b:b0:240:6ae4:3695 with SMTP id
 d9443c01a7336-2462ee0cf11mr242462605ad.4.1756302928580; Wed, 27 Aug 2025
 06:55:28 -0700 (PDT)
MIME-Version: 1.0
References: <20250827100852.2093378-1-mikko.rapeli@linaro.org> <20250827101114.2093782-1-mikko.rapeli@linaro.org>
In-Reply-To: <20250827101114.2093782-1-mikko.rapeli@linaro.org>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 27 Aug 2025 10:55:14 -0300
X-Gm-Features: Ac12FXxpD7Y_zySIE5SB9mkpqHpcpffe2k4vblpn2sOJBYtRGYYyEcChgibNBtw
Message-ID: <CADkTA4Na0w8tVNaM8uJkhqPShggKvAyVcr-Kg2aCkeLmqD6K7w@mail.gmail.com>
Subject: Re: [poky] [PATCH] linux-yocto: fix compilation of 6.16 kernel on genericarm64
To: mikko.rapeli@linaro.org
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002d1432063d592451"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 27 Aug 2025 13:55:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13731

--0000000000002d1432063d592451
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 27, 2025 at 7:11=E2=80=AFAM Mikko Rapeli via lists.yoctoproject=
.org
<mikko.rapeli=3Dlinaro.org@lists.yoctoproject.org> wrote:

> If the TI serial console revert is still needed, which needs
> to be confirmed separately, then one extra revert is needed
> for 6.16 kernel to compile for genericarm64 machine.
> Tested boot and oeqa runtime tests on arm64 build machine
> with qemu and qemu kvm on AMD KV260:
>

Are those different from ones on 6.12. or the same ? I just ask (i didn't
find anything in a quick search), since if I dropped them, that is my
mistake (When I merge patches that are to be carried forward, they
go into kernel-cache master and will always be in the next version).

The real reason I ask is that we shouldn't be patching linux-yocto
like this in a bbappend. I can simply to the reverts and apply the
patches on the BSP branch or v6.16/standard/base if they are
appropriate for all boards.

Bruce



>
> https://ledge.validation.linaro.org/scheduler/job/119012
>
> Depends on yocto-kernel-cache change to fix do_kernel_configcheck
> warnings.
>
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>  ...50-unexport-serial8250_rpm_-function.patch | 96 +++++++++++++++++++
>  .../linux/linux-yocto_6.16.bbappend           | 14 +++
>  2 files changed, 110 insertions(+)
>  create mode 100644
> meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250-unexpor=
t-serial8250_rpm_-function.patch
>  create mode 100644
> meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend
>
> diff --git
> a/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250-unexp=
ort-serial8250_rpm_-function.patch
> b/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250-unexp=
ort-serial8250_rpm_-function.patch
> new file mode 100644
> index 000000000000..b64488458238
> --- /dev/null
> +++
> b/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250-unexp=
ort-serial8250_rpm_-function.patch
> @@ -0,0 +1,96 @@
> +From 4fa6940b9891b0107abef9b3b01583332156878c Mon Sep 17 00:00:00 2001
> +From: Mikko Rapeli <mikko.rapeli@linaro.org>
> +Date: Wed, 27 Aug 2025 06:55:58 +0000
> +Subject: [PATCH] Revert "serial: 8250: unexport serial8250_rpm_*()
> functions"
> +
> +This reverts commit 7ba4f02e12e6f2409c5b2afae2963089b5673482.
> +Needed by revert of 8700a7ea5519fb0b3bad2362adfeac358c2119ce
> +which causes kernel hangs when starting getty's on BeaglePlay.
> +
> +[ YOCTO #15704 ]
> +
> +Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> +---
> + drivers/tty/serial/8250/8250.h      |  6 ++++++
> + drivers/tty/serial/8250/8250_port.c | 12 ++++++++----
> + 2 files changed, 14 insertions(+), 4 deletions(-)
> +
> +Upstream-Status: Inappropriate
> +
> +diff --git a/drivers/tty/serial/8250/8250.h
> b/drivers/tty/serial/8250/8250.h
> +index 18530c31a598..b861585ca02a 100644
> +--- a/drivers/tty/serial/8250/8250.h
> ++++ b/drivers/tty/serial/8250/8250.h
> +@@ -223,6 +223,12 @@ static inline bool serial8250_clear_THRI(struct
> uart_8250_port *up)
> + struct uart_8250_port *serial8250_setup_port(int index);
> + struct uart_8250_port *serial8250_get_port(int line);
> +
> ++void serial8250_rpm_get(struct uart_8250_port *p);
> ++void serial8250_rpm_put(struct uart_8250_port *p);
> ++
> ++void serial8250_rpm_get_tx(struct uart_8250_port *p);
> ++void serial8250_rpm_put_tx(struct uart_8250_port *p);
> ++
> + int serial8250_em485_config(struct uart_port *port, struct ktermios
> *termios,
> +                           struct serial_rs485 *rs485);
> + void serial8250_em485_start_tx(struct uart_8250_port *p, bool
> toggle_ier);
> +diff --git a/drivers/tty/serial/8250/8250_port.c
> b/drivers/tty/serial/8250/8250_port.c
> +index 6d7b8c4667c9..8d9bb91d4bae 100644
> +--- a/drivers/tty/serial/8250/8250_port.c
> ++++ b/drivers/tty/serial/8250/8250_port.c
> +@@ -517,20 +517,22 @@ void serial8250_clear_and_reinit_fifos(struct
> uart_8250_port *p)
> + }
> + EXPORT_SYMBOL_GPL(serial8250_clear_and_reinit_fifos);
> +
> +-static void serial8250_rpm_get(struct uart_8250_port *p)
> ++void serial8250_rpm_get(struct uart_8250_port *p)
> + {
> +       if (!(p->capabilities & UART_CAP_RPM))
> +               return;
> +       pm_runtime_get_sync(p->port.dev);
> + }
> ++EXPORT_SYMBOL_GPL(serial8250_rpm_get);
> +
> +-static void serial8250_rpm_put(struct uart_8250_port *p)
> ++void serial8250_rpm_put(struct uart_8250_port *p)
> + {
> +       if (!(p->capabilities & UART_CAP_RPM))
> +               return;
> +       pm_runtime_mark_last_busy(p->port.dev);
> +       pm_runtime_put_autosuspend(p->port.dev);
> + }
> ++EXPORT_SYMBOL_GPL(serial8250_rpm_put);
> +
> + /**
> +  *    serial8250_em485_init() - put uart_8250_port into rs485 emulating
> +@@ -645,7 +647,7 @@ EXPORT_SYMBOL_GPL(serial8250_em485_config);
> +  * once and disable_runtime_pm_tx() will still disable RPM because the
> fifo is
> +  * empty and the HW can idle again.
> +  */
> +-static void serial8250_rpm_get_tx(struct uart_8250_port *p)
> ++void serial8250_rpm_get_tx(struct uart_8250_port *p)
> + {
> +       unsigned char rpm_active;
> +
> +@@ -657,8 +659,9 @@ static void serial8250_rpm_get_tx(struct
> uart_8250_port *p)
> +               return;
> +       pm_runtime_get_sync(p->port.dev);
> + }
> ++EXPORT_SYMBOL_GPL(serial8250_rpm_get_tx);
> +
> +-static void serial8250_rpm_put_tx(struct uart_8250_port *p)
> ++void serial8250_rpm_put_tx(struct uart_8250_port *p)
> + {
> +       unsigned char rpm_active;
> +
> +@@ -671,6 +674,7 @@ static void serial8250_rpm_put_tx(struct
> uart_8250_port *p)
> +       pm_runtime_mark_last_busy(p->port.dev);
> +       pm_runtime_put_autosuspend(p->port.dev);
> + }
> ++EXPORT_SYMBOL_GPL(serial8250_rpm_put_tx);
> +
> + /*
> +  * IER sleep support.  UARTs which have EFRs need the "extended
> +--
> +2.43.0
> +
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappen=
d
> b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend
> new file mode 100644
> index 000000000000..ef5f84cfc3aa
> --- /dev/null
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend
> @@ -0,0 +1,14 @@
> +COMPATIBLE_MACHINE:genericarm64 =3D "genericarm64"
> +COMPATIBLE_MACHINE:beaglebone-yocto =3D "beaglebone-yocto"
> +COMPATIBLE_MACHINE:genericx86 =3D "genericx86"
> +COMPATIBLE_MACHINE:genericx86-64 =3D "genericx86-64"
> +
> +KMACHINE:beaglebone-yocto ?=3D "beaglebone"
> +KMACHINE:genericx86 ?=3D "common-pc"
> +KMACHINE:genericx86-64 ?=3D "common-pc-64"
> +
> +FILESEXTRAPATHS:prepend:genericarm64 :=3D "${THISDIR}/files:"
> +SRC_URI:append:genericarm64 =3D " \
> +
> file://0001-Revert-serial-8250-unexport-serial8250_rpm_-function.patch \
> +    file://0001-Revert-serial-8250_omap-Drop-pm_runtime_irq_safe.patch \
> +"
> --
> 2.43.0
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13730):
> https://lists.yoctoproject.org/g/poky/message/13730
> Mute This Topic: https://lists.yoctoproject.org/mt/114914972/1050810
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> bruce.ashfield@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--0000000000002d1432063d592451
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote gmail_quote_con=
tainer"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 27, 2025 at 7:11=
=E2=80=AFAM Mikko Rapeli via <a href=3D"http://lists.yoctoproject.org">list=
s.yoctoproject.org</a> &lt;mikko.rapeli=3D<a href=3D"mailto:linaro.org@list=
s.yoctoproject.org">linaro.org@lists.yoctoproject.org</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">If the TI serial conso=
le revert is still needed, which needs<br>
to be confirmed separately, then one extra revert is needed<br>
for 6.16 kernel to compile for genericarm64 machine.<br>
Tested boot and oeqa runtime tests on arm64 build machine<br>
with qemu and qemu kvm on AMD KV260:<br></blockquote><div><br></div><div><d=
iv class=3D"gmail_default" style=3D"font-size:small">Are those different fr=
om ones on 6.12. or the same ? I just=C2=A0ask (i didn&#39;t</div><div clas=
s=3D"gmail_default" style=3D"font-size:small">find anything in a quick sear=
ch), since if I dropped them, that is my</div><div class=3D"gmail_default" =
style=3D"font-size:small">mistake (When I merge patches that are to be carr=
ied forward, they</div><div class=3D"gmail_default" style=3D"font-size:smal=
l">go into kernel-cache master and will always be in the next version).</di=
v><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div cla=
ss=3D"gmail_default" style=3D"font-size:small">The real reason I ask is tha=
t we shouldn&#39;t be patching linux-yocto</div><div class=3D"gmail_default=
" style=3D"font-size:small">like this in a bbappend. I can simply to the re=
verts and apply the</div><div class=3D"gmail_default" style=3D"font-size:sm=
all">patches on the BSP branch or v6.16/standard/base if they are</div><div=
 class=3D"gmail_default" style=3D"font-size:small">appropriate for all boar=
ds.</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><=
div class=3D"gmail_default" style=3D"font-size:small">Bruce</div><br></div>=
<div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
<a href=3D"https://ledge.validation.linaro.org/scheduler/job/119012" rel=3D=
"noreferrer" target=3D"_blank">https://ledge.validation.linaro.org/schedule=
r/job/119012</a><br>
<br>
Depends on yocto-kernel-cache change to fix do_kernel_configcheck<br>
warnings.<br>
<br>
Signed-off-by: Mikko Rapeli &lt;<a href=3D"mailto:mikko.rapeli@linaro.org" =
target=3D"_blank">mikko.rapeli@linaro.org</a>&gt;<br>
---<br>
=C2=A0...50-unexport-serial8250_rpm_-function.patch | 96 ++++++++++++++++++=
+<br>
=C2=A0.../linux/linux-yocto_6.16.bbappend=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0| 14 +++<br>
=C2=A02 files changed, 110 insertions(+)<br>
=C2=A0create mode 100644 meta-yocto-bsp/recipes-kernel/linux/files/0001-Rev=
ert-serial-8250-unexport-serial8250_rpm_-function.patch<br>
=C2=A0create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.=
16.bbappend<br>
<br>
diff --git a/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8=
250-unexport-serial8250_rpm_-function.patch b/meta-yocto-bsp/recipes-kernel=
/linux/files/0001-Revert-serial-8250-unexport-serial8250_rpm_-function.patc=
h<br>
new file mode 100644<br>
index 000000000000..b64488458238<br>
--- /dev/null<br>
+++ b/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250-une=
xport-serial8250_rpm_-function.patch<br>
@@ -0,0 +1,96 @@<br>
+From 4fa6940b9891b0107abef9b3b01583332156878c Mon Sep 17 00:00:00 2001<br>
+From: Mikko Rapeli &lt;<a href=3D"mailto:mikko.rapeli@linaro.org" target=
=3D"_blank">mikko.rapeli@linaro.org</a>&gt;<br>
+Date: Wed, 27 Aug 2025 06:55:58 +0000<br>
+Subject: [PATCH] Revert &quot;serial: 8250: unexport serial8250_rpm_*() fu=
nctions&quot;<br>
+<br>
+This reverts commit 7ba4f02e12e6f2409c5b2afae2963089b5673482.<br>
+Needed by revert of 8700a7ea5519fb0b3bad2362adfeac358c2119ce<br>
+which causes kernel hangs when starting getty&#39;s on BeaglePlay.<br>
+<br>
+[ YOCTO #15704 ]<br>
+<br>
+Signed-off-by: Mikko Rapeli &lt;<a href=3D"mailto:mikko.rapeli@linaro.org"=
 target=3D"_blank">mikko.rapeli@linaro.org</a>&gt;<br>
+---<br>
+ drivers/tty/serial/8250/8250.h=C2=A0 =C2=A0 =C2=A0 |=C2=A0 6 ++++++<br>
+ drivers/tty/serial/8250/8250_port.c | 12 ++++++++----<br>
+ 2 files changed, 14 insertions(+), 4 deletions(-)<br>
+<br>
+Upstream-Status: Inappropriate<br>
+<br>
+diff --git a/drivers/tty/serial/8250/8250.h b/drivers/tty/serial/8250/8250=
.h<br>
+index 18530c31a598..b861585ca02a 100644<br>
+--- a/drivers/tty/serial/8250/8250.h<br>
++++ b/drivers/tty/serial/8250/8250.h<br>
+@@ -223,6 +223,12 @@ static inline bool serial8250_clear_THRI(struct uart_=
8250_port *up)<br>
+ struct uart_8250_port *serial8250_setup_port(int index);<br>
+ struct uart_8250_port *serial8250_get_port(int line);<br>
+ <br>
++void serial8250_rpm_get(struct uart_8250_port *p);<br>
++void serial8250_rpm_put(struct uart_8250_port *p);<br>
++<br>
++void serial8250_rpm_get_tx(struct uart_8250_port *p);<br>
++void serial8250_rpm_put_tx(struct uart_8250_port *p);<br>
++<br>
+ int serial8250_em485_config(struct uart_port *port, struct ktermios *term=
ios,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0struct serial_rs485 *rs485);<br>
+ void serial8250_em485_start_tx(struct uart_8250_port *p, bool toggle_ier)=
;<br>
+diff --git a/drivers/tty/serial/8250/8250_port.c b/drivers/tty/serial/8250=
/8250_port.c<br>
+index 6d7b8c4667c9..8d9bb91d4bae 100644<br>
+--- a/drivers/tty/serial/8250/8250_port.c<br>
++++ b/drivers/tty/serial/8250/8250_port.c<br>
+@@ -517,20 +517,22 @@ void serial8250_clear_and_reinit_fifos(struct uart_8=
250_port *p)<br>
+ }<br>
+ EXPORT_SYMBOL_GPL(serial8250_clear_and_reinit_fifos);<br>
+ <br>
+-static void serial8250_rpm_get(struct uart_8250_port *p)<br>
++void serial8250_rpm_get(struct uart_8250_port *p)<br>
+ {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!(p-&gt;capabilities &amp; UART_CAP_RPM))<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0pm_runtime_get_sync(p-&gt;<a href=3D"http://por=
t.dev" rel=3D"noreferrer" target=3D"_blank">port.dev</a>);<br>
+ }<br>
++EXPORT_SYMBOL_GPL(serial8250_rpm_get);<br>
+ <br>
+-static void serial8250_rpm_put(struct uart_8250_port *p)<br>
++void serial8250_rpm_put(struct uart_8250_port *p)<br>
+ {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!(p-&gt;capabilities &amp; UART_CAP_RPM))<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0pm_runtime_mark_last_busy(p-&gt;<a href=3D"http=
://port.dev" rel=3D"noreferrer" target=3D"_blank">port.dev</a>);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0pm_runtime_put_autosuspend(p-&gt;<a href=3D"htt=
p://port.dev" rel=3D"noreferrer" target=3D"_blank">port.dev</a>);<br>
+ }<br>
++EXPORT_SYMBOL_GPL(serial8250_rpm_put);<br>
+ <br>
+ /**<br>
+=C2=A0 *=C2=A0 =C2=A0 serial8250_em485_init() - put uart_8250_port into rs=
485 emulating<br>
+@@ -645,7 +647,7 @@ EXPORT_SYMBOL_GPL(serial8250_em485_config);<br>
+=C2=A0 * once and disable_runtime_pm_tx() will still disable RPM because t=
he fifo is<br>
+=C2=A0 * empty and the HW can idle again.<br>
+=C2=A0 */<br>
+-static void serial8250_rpm_get_tx(struct uart_8250_port *p)<br>
++void serial8250_rpm_get_tx(struct uart_8250_port *p)<br>
+ {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char rpm_active;<br>
+ <br>
+@@ -657,8 +659,9 @@ static void serial8250_rpm_get_tx(struct uart_8250_por=
t *p)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0pm_runtime_get_sync(p-&gt;<a href=3D"http://por=
t.dev" rel=3D"noreferrer" target=3D"_blank">port.dev</a>);<br>
+ }<br>
++EXPORT_SYMBOL_GPL(serial8250_rpm_get_tx);<br>
+ <br>
+-static void serial8250_rpm_put_tx(struct uart_8250_port *p)<br>
++void serial8250_rpm_put_tx(struct uart_8250_port *p)<br>
+ {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char rpm_active;<br>
+ <br>
+@@ -671,6 +674,7 @@ static void serial8250_rpm_put_tx(struct uart_8250_por=
t *p)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0pm_runtime_mark_last_busy(p-&gt;<a href=3D"http=
://port.dev" rel=3D"noreferrer" target=3D"_blank">port.dev</a>);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0pm_runtime_put_autosuspend(p-&gt;<a href=3D"htt=
p://port.dev" rel=3D"noreferrer" target=3D"_blank">port.dev</a>);<br>
+ }<br>
++EXPORT_SYMBOL_GPL(serial8250_rpm_put_tx);<br>
+ <br>
+ /*<br>
+=C2=A0 * IER sleep support.=C2=A0 UARTs which have EFRs need the &quot;ext=
ended<br>
+-- <br>
+2.43.0<br>
+<br>
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend =
b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend<br>
new file mode 100644<br>
index 000000000000..ef5f84cfc3aa<br>
--- /dev/null<br>
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend<br>
@@ -0,0 +1,14 @@<br>
+COMPATIBLE_MACHINE:genericarm64 =3D &quot;genericarm64&quot;<br>
+COMPATIBLE_MACHINE:beaglebone-yocto =3D &quot;beaglebone-yocto&quot;<br>
+COMPATIBLE_MACHINE:genericx86 =3D &quot;genericx86&quot;<br>
+COMPATIBLE_MACHINE:genericx86-64 =3D &quot;genericx86-64&quot;<br>
+<br>
+KMACHINE:beaglebone-yocto ?=3D &quot;beaglebone&quot;<br>
+KMACHINE:genericx86 ?=3D &quot;common-pc&quot;<br>
+KMACHINE:genericx86-64 ?=3D &quot;common-pc-64&quot;<br>
+<br>
+FILESEXTRAPATHS:prepend:genericarm64 :=3D &quot;${THISDIR}/files:&quot;<br=
>
+SRC_URI:append:genericarm64 =3D &quot; \<br>
+=C2=A0 =C2=A0 file://0001-Revert-serial-8250-unexport-serial8250_rpm_-func=
tion.patch \<br>
+=C2=A0 =C2=A0 file://0001-Revert-serial-8250_omap-Drop-pm_runtime_irq_safe=
.patch \<br>
+&quot;<br>
-- <br>
2.43.0<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13730): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13730" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13730</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/114914972/105=
0810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/114914972/1050810</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.as=
hfield@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature">- Thou shalt not follow the NULL pointer, for chaos and madness a=
wait thee at its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star T=
rek II<br><br></div></div>

--0000000000002d1432063d592451--

