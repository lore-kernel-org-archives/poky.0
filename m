Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A21C021A1
	for <webhook@archiver.kernel.org>; Tue, 11 Feb 2025 14:16:40 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web11.13528.1739283391402363026
 for <poky@lists.yoctoproject.org>;
 Tue, 11 Feb 2025 06:16:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=f7a2CxzS;
 spf=pass (domain: gmail.com, ip: 209.85.216.45, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2f9d627b5fbso10605372a91.2
        for <poky@lists.yoctoproject.org>; Tue, 11 Feb 2025 06:16:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739283391; x=1739888191; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lzQ58rUuMJO3tK8NMbk7ukmeYP9SVOhpvHX1GzpoH4U=;
        b=f7a2CxzSjTzMIaTQPa9N4WO0xPzOvdgQYolGmzycM+ZdgQRsCvU0VWeW+a6rMpju8Z
         msulDW6hhfnG1tN4BaxATfH4nCnuwS6z4JcO36/EWwUFkfyRHskH2ue+6uDp3c4yjMUV
         gcxqGTha66se4iv+S6KywgZkMBpwPqIHUe3t1+FghSMsYIAMTR3ZHlaCQFQpEOi8NNhf
         Y2OuL82QSs4+05+VcGAZcGkb1dnvFKYoi9cHsY3biCy2wIlASab8mYstZtXGKOJHU0Tq
         F6nv6bZZcmjCpWgp1Qnh2Dr0HONHBXPx/t5PF5usMqqcXo0AAAoYfFHue7Bq9kOUKKvu
         d/lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739283391; x=1739888191;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lzQ58rUuMJO3tK8NMbk7ukmeYP9SVOhpvHX1GzpoH4U=;
        b=EDCy6nIea7p95FSib8jFG+Q301AB7NN14EiFpmOMSVWEoIE+CTpbgYY+0TSGPE7t8z
         td8zPYZ82hseeuoWWqJeDYGkQLTohETv7AbsaaaR9b0IEtuON8v+o5GnJjDRuhBJ0Tpe
         MNbDMAj3KHjP1mGYxgPmjNguND6lxL0ria1W7HXo2+4Z+2MenK0rpQ6SntsHD8UnDBjY
         yBsdH8vv98PYc7KInargcNvsk/Hl9jmLp/GhwA8uPYOLI9T5w33rHUlOO/5mEMmkDCDY
         PuJweJ6Uj6XyrwPVyx9vCbiJpDr+L3dtmhxKfnGFv15mNaLI8WQ7IfTToQNqEcK2TZbX
         ORoA==
X-Gm-Message-State: AOJu0Yy+aU+73ol7CqEPBd5fzfgKkqyDjU+vPnkHIZYdJvi2xmrCHjDB
	+slJFOP/CxzqZEmYTQonEaSbU8bk2ctEWSvcocnQdwW/EJRHInlcERieib975y+CZIbYBfJqtdd
	8tS1G+6lbNRjqI90URhDsMndHWXS24O6z6qc=
X-Gm-Gg: ASbGncsW8P3cyknWcjvYWecYxFDCjm3vIB1tFO5jz2EMqA8VOTNj2JJBxh3buIXzyEp
	ta+OqDErD6u/TOQUlbKkpi9X3FPMKGrOExbO42k8Wb2u89Zo9d+EynOZi/u7gUmDgGKnaKFfBZw
	==
X-Google-Smtp-Source: AGHT+IEvMszdFJc7fWTmWa/b6+TYIAx6Zyk2gxTL1kfRh4N03pdDIAMW/WWo+AsnITkLmch8dn/KDzNjOUqC522gd+E=
X-Received: by 2002:a17:90b:23cb:b0:2ee:d63f:d77 with SMTP id
 98e67ed59e1d1-2fa24063c18mr28192735a91.9.1739283389868; Tue, 11 Feb 2025
 06:16:29 -0800 (PST)
MIME-Version: 1.0
References: <20250211115643.1858260-1-ross.burton@arm.com>
In-Reply-To: <20250211115643.1858260-1-ross.burton@arm.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 11 Feb 2025 09:16:18 -0500
X-Gm-Features: AWEUYZm4V3o_lJihiH6byBLeigSVb52nWeiZ3tnrczdVIK6YTKhwTUMphb41jeY
Message-ID: <CADkTA4PyvXnhAeyRFfnntTDV0cwNwNTJ3UU-bcZohk68cRUjjg@mail.gmail.com>
Subject: Re: [poky] [PATCH v2] linux-yocto: revert omap8250 power management
 changes on genericarm64
To: ross.burton@arm.com
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009df2a6062dde78de"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 11 Feb 2025 14:16:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13531

--0000000000009df2a6062dde78de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ackd

Bruce

On Tue, Feb 11, 2025 at 6:56=E2=80=AFAM Ross Burton via lists.yoctoproject.=
org
<ross.burton=3Darm.com@lists.yoctoproject.org> wrote:

> The genericarm64 machine sets SERIAL_CONSOLES to a number of potential
> devices:
>
> SERIAL_CONSOLES ?=3D "115200;ttyAMA0 115200;hvc0 115200;ttyS0 115200;ttyS=
1
> 115200;ttyS2"
>
> With sysvinit this turns into getty lines in inittab, and with systemd
> the systemd-serialgetty recipe creates explicit units to spawn gettys.
>
> This worked fine with 6.6, but since "serial: 8250_omap: Drop
> pm_runtime_irq_safe()"[1] in 6.7 onwards we see kernel hangs:
>
> BUG: scheduling while atomic: getty/957/0x00000002
> Call trace:
>  dump_stack+0x1c/0x30
>  __schedule_bug+0x60/0x90
>  __schedule+0x83c/0xcf8
>  schedule+0x40/0x158
>  schedule_timeout+0xb0/0x1b0
>  wait_for_completion_timeout+0x84/0x188
>  ti_sci_set_device_state+0x134/0x220
>  ti_sci_cmd_get_device_exclusive+0x24/0x40
>  ti_sci_pd_power_on+0x34/0x68 [ti_sci_pm_domains]
>  _genpd_power_on+0xa4/0x178
>  genpd_power_on+0xb4/0x190
>  genpd_runtime_resume+0xc8/0x260
>  __rpm_callback+0x54/0x200
>  rpm_callback+0x78/0x90
>  rpm_resume+0x420/0x690
>  __pm_runtime_resume+0x5c/0xb0
>  omap8250_set_mctrl+0x38/0xe0 [8250_omap]
>  serial8250_set_mctrl+0x2c/0x60
>  uart_update_mctrl+0x98/0x120
>  uart_shutdown+0x124/0x180
>  uart_hangup+0x7c/0x180
>  __tty_hangup.part.0+0x408/0x440
>  tty_vhangup_session+0x24/0x40
>  disassociate_ctty.part.0+0x48/0x1b0
>  disassociate_ctty+0x30/0x48
> (full backtrace elided)
>
> With many thanks to TI, my understanding is that it was determined that
> the problem here is that we have a getty connected to ttyS1 which is
> actually the expansion port uart and on the BeaglePlay wired up to the
> wifi controller's debug port. The getty receives noise it doesn't know
> what to do with, and at some point the power management code does a
> suspend/result cycle of the device.  The serial drivers assume that
> child nodes use the serdev driver and they manage runtime_pm, but the
> getty opening the tty breaks a series of bad assumptions in the drivers.
>
> So, there are two bugs:
> 1) The kernel shouldn't crash if this tty is opened
> 2) The only serial port for a console on the BeaglePlay is ttyS2,
>    despite others existing.
>
> TI are looking at (1) and other patches to follow will deal with (2).
> Until one of these is resolved entirely, reverting this change to power
> management stops the crashes.
>
> [ YOCTO #15704 ]
> [1] linux 8700a7ea5519fb0b3bad2362adfeac358c2119ce
>
> Signed-off-by: Ross Burton <ross.burton@arm.com>
> ---
>  ...l-8250_omap-Drop-pm_runtime_irq_safe.patch | 130 ++++++++++++++++++
>  .../linux/linux-yocto_6.12.bbappend           |   2 +
>  2 files changed, 132 insertions(+)
>  create mode 100644
> meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250_omap-Dr=
op-pm_runtime_irq_safe.patch
>
> diff --git
> a/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250_omap-=
Drop-pm_runtime_irq_safe.patch
> b/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250_omap-=
Drop-pm_runtime_irq_safe.patch
> new file mode 100644
> index 00000000000..8837dd23464
> --- /dev/null
> +++
> b/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250_omap-=
Drop-pm_runtime_irq_safe.patch
> @@ -0,0 +1,130 @@
> +From cc255f5132cf39e9154340cf58780f8c763c6481 Mon Sep 17 00:00:00 2001
> +From: Ross Burton <ross.burton@arm.com>
> +Date: Thu, 23 Jan 2025 17:06:08 +0000
> +Subject: [PATCH] Revert "serial: 8250_omap: Drop pm_runtime_irq_safe()"
> +
> +This reverts commit 8700a7ea5519fb0b3bad2362adfeac358c2119ce.
> +
> +Upstream-Status: Inappropriate
> +Signed-off-by: Ross Burton <ross.burton@arm.com>
> +---
> + drivers/tty/serial/8250/8250_omap.c | 29 ++++++++---------------------
> + 1 file changed, 8 insertions(+), 21 deletions(-)
> +
> +diff --git a/drivers/tty/serial/8250/8250_omap.c
> b/drivers/tty/serial/8250/8250_omap.c
> +index 0dd68bdbfbcf7..db24d7d1dcb67 100644
> +--- a/drivers/tty/serial/8250/8250_omap.c
> ++++ b/drivers/tty/serial/8250/8250_omap.c
> +@@ -8,7 +8,6 @@
> +  *
> +  */
> +
> +-#include <linux/atomic.h>
> + #include <linux/clk.h>
> + #include <linux/device.h>
> + #include <linux/io.h>
> +@@ -134,7 +133,6 @@ struct omap8250_priv {
> +
> +       u8 tx_trigger;
> +       u8 rx_trigger;
> +-      atomic_t active;
> +       bool is_suspending;
> +       int wakeirq;
> +       u32 latency;
> +@@ -636,23 +634,14 @@ static irqreturn_t omap8250_irq(int irq, void
> *dev_id)
> +       unsigned int iir, lsr;
> +       int ret;
> +
> +-      pm_runtime_get_noresume(port->dev);
> +-
> +-      /* Shallow idle state wake-up to an IO interrupt? */
> +-      if (atomic_add_unless(&priv->active, 1, 1)) {
> +-              priv->latency =3D priv->calc_latency;
> +-              schedule_work(&priv->qos_work);
> +-      }
> +-
> + #ifdef CONFIG_SERIAL_8250_DMA
> +       if (up->dma) {
> +               ret =3D omap_8250_dma_handle_irq(port);
> +-              pm_runtime_mark_last_busy(port->dev);
> +-              pm_runtime_put(port->dev);
> +               return IRQ_RETVAL(ret);
> +       }
> + #endif
> +
> ++      serial8250_rpm_get(up);
> +       lsr =3D serial_port_in(port, UART_LSR);
> +       iir =3D serial_port_in(port, UART_IIR);
> +       ret =3D serial8250_handle_irq(port, iir);
> +@@ -701,8 +690,7 @@ static irqreturn_t omap8250_irq(int irq, void *dev_i=
d)
> +               schedule_delayed_work(&up->overrun_backoff, delay);
> +       }
> +
> +-      pm_runtime_mark_last_busy(port->dev);
> +-      pm_runtime_put(port->dev);
> ++      serial8250_rpm_put(up);
> +
> +       return IRQ_RETVAL(ret);
> + }
> +@@ -1314,8 +1302,11 @@ static int omap_8250_dma_handle_irq(struct
> uart_port *port)
> +       u16 status;
> +       u8 iir;
> +
> ++      serial8250_rpm_get(up);
> ++
> +       iir =3D serial_port_in(port, UART_IIR);
> +       if (iir & UART_IIR_NO_INT) {
> ++              serial8250_rpm_put(up);
> +               return IRQ_HANDLED;
> +       }
> +
> +@@ -1348,6 +1339,7 @@ static int omap_8250_dma_handle_irq(struct
> uart_port *port)
> +
> +       uart_unlock_and_check_sysrq(port);
> +
> ++      serial8250_rpm_put(up);
> +       return 1;
> + }
> +
> +@@ -1539,6 +1531,8 @@ static int omap8250_probe(struct platform_device
> *pdev)
> +       if (!of_get_available_child_count(pdev->dev.of_node))
> +               pm_runtime_set_autosuspend_delay(&pdev->dev, -1);
> +
> ++      pm_runtime_irq_safe(&pdev->dev);
> ++
> +       pm_runtime_get_sync(&pdev->dev);
> +
> +       omap_serial_fill_features_erratas(&up, priv);
> +@@ -1776,7 +1770,6 @@ static int omap8250_runtime_suspend(struct device
> *dev)
> +
> +       priv->latency =3D PM_QOS_CPU_LATENCY_DEFAULT_VALUE;
> +       schedule_work(&priv->qos_work);
> +-      atomic_set(&priv->active, 0);
> +
> +       return 0;
> + }
> +@@ -1786,10 +1779,6 @@ static int omap8250_runtime_resume(struct device
> *dev)
> +       struct omap8250_priv *priv =3D dev_get_drvdata(dev);
> +       struct uart_8250_port *up =3D NULL;
> +
> +-      /* Did the hardware wake to a device IO interrupt before a
> wakeirq? */
> +-      if (atomic_read(&priv->active))
> +-              return 0;
> +-
> +       if (priv->line >=3D 0)
> +               up =3D serial8250_get_port(priv->line);
> +
> +@@ -1805,10 +1794,8 @@ static int omap8250_runtime_resume(struct device
> *dev)
> +               uart_port_unlock_irq(&up->port);
> +       }
> +
> +-      atomic_set(&priv->active, 1);
> +       priv->latency =3D priv->calc_latency;
> +       schedule_work(&priv->qos_work);
> +-
> +       return 0;
> + }
> +
> +--
> +2.43.0
> +
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappen=
d
> b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
> index 1ffd2194d96..831cb556be4 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
> @@ -7,3 +7,5 @@ KMACHINE:beaglebone-yocto ?=3D "beaglebone"
>  KMACHINE:genericx86 ?=3D "common-pc"
>  KMACHINE:genericx86-64 ?=3D "common-pc-64"
>
> +FILESEXTRAPATHS:prepend:genericarm64 :=3D "${THISDIR}/files:"
> +SRC_URI:append:genericarm64 =3D "
> file://0001-Revert-serial-8250_omap-Drop-pm_runtime_irq_safe.patch"
> --
> 2.43.0
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13530):
> https://lists.yoctoproject.org/g/poky/message/13530
> Mute This Topic: https://lists.yoctoproject.org/mt/111120723/1050810
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

--0000000000009df2a6062dde78de
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Ack=
d</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><di=
v class=3D"gmail_default" style=3D"font-size:small">Bruce</div></div><br><d=
iv class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Tue, Feb 11, 2025 at 6:56=E2=80=AFAM Ross Burton via <a href=
=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;ross.burt=
on=3D<a href=3D"mailto:arm.com@lists.yoctoproject.org">arm.com@lists.yoctop=
roject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">The genericarm64 machine sets SERIAL_CONSOLES to a number of pot=
ential<br>
devices:<br>
<br>
SERIAL_CONSOLES ?=3D &quot;115200;ttyAMA0 115200;hvc0 115200;ttyS0 115200;t=
tyS1 115200;ttyS2&quot;<br>
<br>
With sysvinit this turns into getty lines in inittab, and with systemd<br>
the systemd-serialgetty recipe creates explicit units to spawn gettys.<br>
<br>
This worked fine with 6.6, but since &quot;serial: 8250_omap: Drop<br>
pm_runtime_irq_safe()&quot;[1] in 6.7 onwards we see kernel hangs:<br>
<br>
BUG: scheduling while atomic: getty/957/0x00000002<br>
Call trace:<br>
=C2=A0dump_stack+0x1c/0x30<br>
=C2=A0__schedule_bug+0x60/0x90<br>
=C2=A0__schedule+0x83c/0xcf8<br>
=C2=A0schedule+0x40/0x158<br>
=C2=A0schedule_timeout+0xb0/0x1b0<br>
=C2=A0wait_for_completion_timeout+0x84/0x188<br>
=C2=A0ti_sci_set_device_state+0x134/0x220<br>
=C2=A0ti_sci_cmd_get_device_exclusive+0x24/0x40<br>
=C2=A0ti_sci_pd_power_on+0x34/0x68 [ti_sci_pm_domains]<br>
=C2=A0_genpd_power_on+0xa4/0x178<br>
=C2=A0genpd_power_on+0xb4/0x190<br>
=C2=A0genpd_runtime_resume+0xc8/0x260<br>
=C2=A0__rpm_callback+0x54/0x200<br>
=C2=A0rpm_callback+0x78/0x90<br>
=C2=A0rpm_resume+0x420/0x690<br>
=C2=A0__pm_runtime_resume+0x5c/0xb0<br>
=C2=A0omap8250_set_mctrl+0x38/0xe0 [8250_omap]<br>
=C2=A0serial8250_set_mctrl+0x2c/0x60<br>
=C2=A0uart_update_mctrl+0x98/0x120<br>
=C2=A0uart_shutdown+0x124/0x180<br>
=C2=A0uart_hangup+0x7c/0x180<br>
=C2=A0__tty_hangup.part.0+0x408/0x440<br>
=C2=A0tty_vhangup_session+0x24/0x40<br>
=C2=A0disassociate_ctty.part.0+0x48/0x1b0<br>
=C2=A0disassociate_ctty+0x30/0x48<br>
(full backtrace elided)<br>
<br>
With many thanks to TI, my understanding is that it was determined that<br>
the problem here is that we have a getty connected to ttyS1 which is<br>
actually the expansion port uart and on the BeaglePlay wired up to the<br>
wifi controller&#39;s debug port. The getty receives noise it doesn&#39;t k=
now<br>
what to do with, and at some point the power management code does a<br>
suspend/result cycle of the device.=C2=A0 The serial drivers assume that<br=
>
child nodes use the serdev driver and they manage runtime_pm, but the<br>
getty opening the tty breaks a series of bad assumptions in the drivers.<br=
>
<br>
So, there are two bugs:<br>
1) The kernel shouldn&#39;t crash if this tty is opened<br>
2) The only serial port for a console on the BeaglePlay is ttyS2,<br>
=C2=A0 =C2=A0despite others existing.<br>
<br>
TI are looking at (1) and other patches to follow will deal with (2).<br>
Until one of these is resolved entirely, reverting this change to power<br>
management stops the crashes.<br>
<br>
[ YOCTO #15704 ]<br>
[1] linux 8700a7ea5519fb0b3bad2362adfeac358c2119ce<br>
<br>
Signed-off-by: Ross Burton &lt;<a href=3D"mailto:ross.burton@arm.com" targe=
t=3D"_blank">ross.burton@arm.com</a>&gt;<br>
---<br>
=C2=A0...l-8250_omap-Drop-pm_runtime_irq_safe.patch | 130 +++++++++++++++++=
+<br>
=C2=A0.../linux/linux-yocto_6.12.bbappend=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0|=C2=A0 =C2=A02 +<br>
=C2=A02 files changed, 132 insertions(+)<br>
=C2=A0create mode 100644 meta-yocto-bsp/recipes-kernel/linux/files/0001-Rev=
ert-serial-8250_omap-Drop-pm_runtime_irq_safe.patch<br>
<br>
diff --git a/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8=
250_omap-Drop-pm_runtime_irq_safe.patch b/meta-yocto-bsp/recipes-kernel/lin=
ux/files/0001-Revert-serial-8250_omap-Drop-pm_runtime_irq_safe.patch<br>
new file mode 100644<br>
index 00000000000..8837dd23464<br>
--- /dev/null<br>
+++ b/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250_oma=
p-Drop-pm_runtime_irq_safe.patch<br>
@@ -0,0 +1,130 @@<br>
+From cc255f5132cf39e9154340cf58780f8c763c6481 Mon Sep 17 00:00:00 2001<br>
+From: Ross Burton &lt;<a href=3D"mailto:ross.burton@arm.com" target=3D"_bl=
ank">ross.burton@arm.com</a>&gt;<br>
+Date: Thu, 23 Jan 2025 17:06:08 +0000<br>
+Subject: [PATCH] Revert &quot;serial: 8250_omap: Drop pm_runtime_irq_safe(=
)&quot;<br>
+<br>
+This reverts commit 8700a7ea5519fb0b3bad2362adfeac358c2119ce.<br>
+<br>
+Upstream-Status: Inappropriate<br>
+Signed-off-by: Ross Burton &lt;<a href=3D"mailto:ross.burton@arm.com" targ=
et=3D"_blank">ross.burton@arm.com</a>&gt;<br>
+---<br>
+ drivers/tty/serial/8250/8250_omap.c | 29 ++++++++---------------------<br=
>
+ 1 file changed, 8 insertions(+), 21 deletions(-)<br>
+<br>
+diff --git a/drivers/tty/serial/8250/8250_omap.c b/drivers/tty/serial/8250=
/8250_omap.c<br>
+index 0dd68bdbfbcf7..db24d7d1dcb67 100644<br>
+--- a/drivers/tty/serial/8250/8250_omap.c<br>
++++ b/drivers/tty/serial/8250/8250_omap.c<br>
+@@ -8,7 +8,6 @@<br>
+=C2=A0 *<br>
+=C2=A0 */<br>
+ <br>
+-#include &lt;linux/atomic.h&gt;<br>
+ #include &lt;linux/clk.h&gt;<br>
+ #include &lt;linux/device.h&gt;<br>
+ #include &lt;linux/io.h&gt;<br>
+@@ -134,7 +133,6 @@ struct omap8250_priv {<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 tx_trigger;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 rx_trigger;<br>
+-=C2=A0 =C2=A0 =C2=A0 atomic_t active;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bool is_suspending;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0int wakeirq;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 latency;<br>
+@@ -636,23 +634,14 @@ static irqreturn_t omap8250_irq(int irq, void *dev_i=
d)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int iir, lsr;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0int ret;<br>
+ <br>
+-=C2=A0 =C2=A0 =C2=A0 pm_runtime_get_noresume(port-&gt;dev);<br>
+-<br>
+-=C2=A0 =C2=A0 =C2=A0 /* Shallow idle state wake-up to an IO interrupt? */=
<br>
+-=C2=A0 =C2=A0 =C2=A0 if (atomic_add_unless(&amp;priv-&gt;active, 1, 1)) {=
<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;latency =3D pri=
v-&gt;calc_latency;<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 schedule_work(&amp;priv-=
&gt;qos_work);<br>
+-=C2=A0 =C2=A0 =C2=A0 }<br>
+-<br>
+ #ifdef CONFIG_SERIAL_8250_DMA<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (up-&gt;dma) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D omap_8250_d=
ma_handle_irq(port);<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pm_runtime_mark_last_bus=
y(port-&gt;dev);<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pm_runtime_put(port-&gt;=
dev);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return IRQ_RETVAL(r=
et);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+ #endif<br>
+ <br>
++=C2=A0 =C2=A0 =C2=A0 serial8250_rpm_get(up);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0lsr =3D serial_port_in(port, UART_LSR);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0iir =3D serial_port_in(port, UART_IIR);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D serial8250_handle_irq(port, iir);<br>
+@@ -701,8 +690,7 @@ static irqreturn_t omap8250_irq(int irq, void *dev_id)=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0schedule_delayed_wo=
rk(&amp;up-&gt;overrun_backoff, delay);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 =C2=A0 =C2=A0 pm_runtime_mark_last_busy(port-&gt;dev);<br>
+-=C2=A0 =C2=A0 =C2=A0 pm_runtime_put(port-&gt;dev);<br>
++=C2=A0 =C2=A0 =C2=A0 serial8250_rpm_put(up);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return IRQ_RETVAL(ret);<br>
+ }<br>
+@@ -1314,8 +1302,11 @@ static int omap_8250_dma_handle_irq(struct uart_por=
t *port)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0u16 status;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 iir;<br>
+ <br>
++=C2=A0 =C2=A0 =C2=A0 serial8250_rpm_get(up);<br>
++<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0iir =3D serial_port_in(port, UART_IIR);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (iir &amp; UART_IIR_NO_INT) {<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 serial8250_rpm_put(up);<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return IRQ_HANDLED;=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+ <br>
+@@ -1348,6 +1339,7 @@ static int omap_8250_dma_handle_irq(struct uart_port=
 *port)<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0uart_unlock_and_check_sysrq(port);<br>
+ <br>
++=C2=A0 =C2=A0 =C2=A0 serial8250_rpm_put(up);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return 1;<br>
+ }<br>
+ <br>
+@@ -1539,6 +1531,8 @@ static int omap8250_probe(struct platform_device *pd=
ev)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!of_get_available_child_count(pdev-&gt;dev.=
of_node))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pm_runtime_set_auto=
suspend_delay(&amp;pdev-&gt;dev, -1);<br>
+ <br>
++=C2=A0 =C2=A0 =C2=A0 pm_runtime_irq_safe(&amp;pdev-&gt;dev);<br>
++<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0pm_runtime_get_sync(&amp;pdev-&gt;dev);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0omap_serial_fill_features_erratas(&amp;up, priv=
);<br>
+@@ -1776,7 +1770,6 @@ static int omap8250_runtime_suspend(struct device *d=
ev)<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;latency =3D PM_QOS_CPU_LATENCY_DEFAULT=
_VALUE;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0schedule_work(&amp;priv-&gt;qos_work);<br>
+-=C2=A0 =C2=A0 =C2=A0 atomic_set(&amp;priv-&gt;active, 0);<br>
+ <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
+ }<br>
+@@ -1786,10 +1779,6 @@ static int omap8250_runtime_resume(struct device *d=
ev)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct omap8250_priv *priv =3D dev_get_drvdata(=
dev);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct uart_8250_port *up =3D NULL;<br>
+ <br>
+-=C2=A0 =C2=A0 =C2=A0 /* Did the hardware wake to a device IO interrupt be=
fore a wakeirq? */<br>
+-=C2=A0 =C2=A0 =C2=A0 if (atomic_read(&amp;priv-&gt;active))<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>
+-<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (priv-&gt;line &gt;=3D 0)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0up =3D serial8250_g=
et_port(priv-&gt;line);<br>
+ <br>
+@@ -1805,10 +1794,8 @@ static int omap8250_runtime_resume(struct device *d=
ev)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uart_port_unlock_ir=
q(&amp;up-&gt;port);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+ <br>
+-=C2=A0 =C2=A0 =C2=A0 atomic_set(&amp;priv-&gt;active, 1);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;latency =3D priv-&gt;calc_latency;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0schedule_work(&amp;priv-&gt;qos_work);<br>
+-<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
+ }<br>
+ <br>
+-- <br>
+2.43.0<br>
+<br>
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend =
b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend<br>
index 1ffd2194d96..831cb556be4 100644<br>
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend<br>
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend<br>
@@ -7,3 +7,5 @@ KMACHINE:beaglebone-yocto ?=3D &quot;beaglebone&quot;<br>
=C2=A0KMACHINE:genericx86 ?=3D &quot;common-pc&quot;<br>
=C2=A0KMACHINE:genericx86-64 ?=3D &quot;common-pc-64&quot;<br>
<br>
+FILESEXTRAPATHS:prepend:genericarm64 :=3D &quot;${THISDIR}/files:&quot;<br=
>
+SRC_URI:append:genericarm64 =3D &quot; file://0001-Revert-serial-8250_omap=
-Drop-pm_runtime_irq_safe.patch&quot;<br>
-- <br>
2.43.0<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13530): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13530" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13530</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/111120723/105=
0810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/111120723/1050810</a><br>
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
rek II<br><br></div>

--0000000000009df2a6062dde78de--

