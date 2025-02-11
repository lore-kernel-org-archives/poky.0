Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36721C0219B
	for <webhook@archiver.kernel.org>; Tue, 11 Feb 2025 16:18:56 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.3271.1739290727445731901
 for <poky@lists.yoctoproject.org>;
 Tue, 11 Feb 2025 08:18:47 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1AD9A13D5
	for <poky@lists.yoctoproject.org>; Tue, 11 Feb 2025 08:19:08 -0800 (PST)
Received: from cesw-amp-gbt-1s-m12830-04.oss.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5BE0A3F6A8
	for <poky@lists.yoctoproject.org>; Tue, 11 Feb 2025 08:18:46 -0800 (PST)
From: Ross Burton <ross.burton@arm.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH v2] linux-yocto: revert omap8250 power management changes on genericarm64
Date: Tue, 11 Feb 2025 16:18:41 +0000
Message-ID: <20250211161841.2386821-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 11 Feb 2025 16:18:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13532

The genericarm64 machine sets SERIAL_CONSOLES to a number of potential
devices:

SERIAL_CONSOLES ?=3D "115200;ttyAMA0 115200;hvc0 115200;ttyS0 115200;ttyS=
1 115200;ttyS2"

With sysvinit this turns into getty lines in inittab, and with systemd
the systemd-serialgetty recipe creates explicit units to spawn gettys.

This worked fine with 6.6, but since "serial: 8250_omap: Drop
pm_runtime_irq_safe()"[1] in 6.7 onwards we see kernel hangs:

BUG: scheduling while atomic: getty/957/0x00000002
Call trace:
 dump_stack+0x1c/0x30
 __schedule_bug+0x60/0x90
 __schedule+0x83c/0xcf8
 schedule+0x40/0x158
 schedule_timeout+0xb0/0x1b0
 wait_for_completion_timeout+0x84/0x188
 ti_sci_set_device_state+0x134/0x220
 ti_sci_cmd_get_device_exclusive+0x24/0x40
 ti_sci_pd_power_on+0x34/0x68 [ti_sci_pm_domains]
 _genpd_power_on+0xa4/0x178
 genpd_power_on+0xb4/0x190
 genpd_runtime_resume+0xc8/0x260
 __rpm_callback+0x54/0x200
 rpm_callback+0x78/0x90
 rpm_resume+0x420/0x690
 __pm_runtime_resume+0x5c/0xb0
 omap8250_set_mctrl+0x38/0xe0 [8250_omap]
 serial8250_set_mctrl+0x2c/0x60
 uart_update_mctrl+0x98/0x120
 uart_shutdown+0x124/0x180
 uart_hangup+0x7c/0x180
 __tty_hangup.part.0+0x408/0x440
 tty_vhangup_session+0x24/0x40
 disassociate_ctty.part.0+0x48/0x1b0
 disassociate_ctty+0x30/0x48
(full backtrace elided)

With many thanks to TI, my understanding is that it was determined that
the problem here is that we have a getty connected to ttyS1 which is
actually the expansion port uart and on the BeaglePlay wired up to the
wifi controller's debug port. The getty receives noise it doesn't know
what to do with, and at some point the power management code does a
suspend/result cycle of the device.  The serial drivers assume that
child nodes use the serdev driver and they manage runtime_pm, but the
getty opening the tty breaks a series of bad assumptions in the drivers.

So, there are two bugs:
1) The kernel shouldn't crash if this tty is opened
2) The only serial port for a console on the BeaglePlay is ttyS2,
   despite others existing.

TI are looking at (1) and other patches to follow will deal with (2).
Until one of these is resolved entirely, reverting this change to power
management stops the crashes.

[ YOCTO #15704 ]
[1] linux 8700a7ea5519fb0b3bad2362adfeac358c2119ce

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 ...l-8250_omap-Drop-pm_runtime_irq_safe.patch | 130 ++++++++++++++++++
 .../linux/linux-yocto_6.12.bbappend           |   2 +
 2 files changed, 132 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert=
-serial-8250_omap-Drop-pm_runtime_irq_safe.patch

diff --git a/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial=
-8250_omap-Drop-pm_runtime_irq_safe.patch b/meta-yocto-bsp/recipes-kernel=
/linux/files/0001-Revert-serial-8250_omap-Drop-pm_runtime_irq_safe.patch
new file mode 100644
index 00000000000..8837dd23464
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250_o=
map-Drop-pm_runtime_irq_safe.patch
@@ -0,0 +1,130 @@
+From cc255f5132cf39e9154340cf58780f8c763c6481 Mon Sep 17 00:00:00 2001
+From: Ross Burton <ross.burton@arm.com>
+Date: Thu, 23 Jan 2025 17:06:08 +0000
+Subject: [PATCH] Revert "serial: 8250_omap: Drop pm_runtime_irq_safe()"
+
+This reverts commit 8700a7ea5519fb0b3bad2362adfeac358c2119ce.
+
+Upstream-Status: Inappropriate
+Signed-off-by: Ross Burton <ross.burton@arm.com>
+---
+ drivers/tty/serial/8250/8250_omap.c | 29 ++++++++---------------------
+ 1 file changed, 8 insertions(+), 21 deletions(-)
+
+diff --git a/drivers/tty/serial/8250/8250_omap.c b/drivers/tty/serial/82=
50/8250_omap.c
+index 0dd68bdbfbcf7..db24d7d1dcb67 100644
+--- a/drivers/tty/serial/8250/8250_omap.c
++++ b/drivers/tty/serial/8250/8250_omap.c
+@@ -8,7 +8,6 @@
+  *
+  */
+=20
+-#include <linux/atomic.h>
+ #include <linux/clk.h>
+ #include <linux/device.h>
+ #include <linux/io.h>
+@@ -134,7 +133,6 @@ struct omap8250_priv {
+=20
+ 	u8 tx_trigger;
+ 	u8 rx_trigger;
+-	atomic_t active;
+ 	bool is_suspending;
+ 	int wakeirq;
+ 	u32 latency;
+@@ -636,23 +634,14 @@ static irqreturn_t omap8250_irq(int irq, void *dev=
_id)
+ 	unsigned int iir, lsr;
+ 	int ret;
+=20
+-	pm_runtime_get_noresume(port->dev);
+-
+-	/* Shallow idle state wake-up to an IO interrupt? */
+-	if (atomic_add_unless(&priv->active, 1, 1)) {
+-		priv->latency =3D priv->calc_latency;
+-		schedule_work(&priv->qos_work);
+-	}
+-
+ #ifdef CONFIG_SERIAL_8250_DMA
+ 	if (up->dma) {
+ 		ret =3D omap_8250_dma_handle_irq(port);
+-		pm_runtime_mark_last_busy(port->dev);
+-		pm_runtime_put(port->dev);
+ 		return IRQ_RETVAL(ret);
+ 	}
+ #endif
+=20
++	serial8250_rpm_get(up);
+ 	lsr =3D serial_port_in(port, UART_LSR);
+ 	iir =3D serial_port_in(port, UART_IIR);
+ 	ret =3D serial8250_handle_irq(port, iir);
+@@ -701,8 +690,7 @@ static irqreturn_t omap8250_irq(int irq, void *dev_i=
d)
+ 		schedule_delayed_work(&up->overrun_backoff, delay);
+ 	}
+=20
+-	pm_runtime_mark_last_busy(port->dev);
+-	pm_runtime_put(port->dev);
++	serial8250_rpm_put(up);
+=20
+ 	return IRQ_RETVAL(ret);
+ }
+@@ -1314,8 +1302,11 @@ static int omap_8250_dma_handle_irq(struct uart_p=
ort *port)
+ 	u16 status;
+ 	u8 iir;
+=20
++	serial8250_rpm_get(up);
++
+ 	iir =3D serial_port_in(port, UART_IIR);
+ 	if (iir & UART_IIR_NO_INT) {
++		serial8250_rpm_put(up);
+ 		return IRQ_HANDLED;
+ 	}
+=20
+@@ -1348,6 +1339,7 @@ static int omap_8250_dma_handle_irq(struct uart_po=
rt *port)
+=20
+ 	uart_unlock_and_check_sysrq(port);
+=20
++	serial8250_rpm_put(up);
+ 	return 1;
+ }
+=20
+@@ -1539,6 +1531,8 @@ static int omap8250_probe(struct platform_device *=
pdev)
+ 	if (!of_get_available_child_count(pdev->dev.of_node))
+ 		pm_runtime_set_autosuspend_delay(&pdev->dev, -1);
+=20
++	pm_runtime_irq_safe(&pdev->dev);
++
+ 	pm_runtime_get_sync(&pdev->dev);
+=20
+ 	omap_serial_fill_features_erratas(&up, priv);
+@@ -1776,7 +1770,6 @@ static int omap8250_runtime_suspend(struct device =
*dev)
+=20
+ 	priv->latency =3D PM_QOS_CPU_LATENCY_DEFAULT_VALUE;
+ 	schedule_work(&priv->qos_work);
+-	atomic_set(&priv->active, 0);
+=20
+ 	return 0;
+ }
+@@ -1786,10 +1779,6 @@ static int omap8250_runtime_resume(struct device =
*dev)
+ 	struct omap8250_priv *priv =3D dev_get_drvdata(dev);
+ 	struct uart_8250_port *up =3D NULL;
+=20
+-	/* Did the hardware wake to a device IO interrupt before a wakeirq? */
+-	if (atomic_read(&priv->active))
+-		return 0;
+-
+ 	if (priv->line >=3D 0)
+ 		up =3D serial8250_get_port(priv->line);
+=20
+@@ -1805,10 +1794,8 @@ static int omap8250_runtime_resume(struct device =
*dev)
+ 		uart_port_unlock_irq(&up->port);
+ 	}
+=20
+-	atomic_set(&priv->active, 1);
+ 	priv->latency =3D priv->calc_latency;
+ 	schedule_work(&priv->qos_work);
+-
+ 	return 0;
+ }
+=20
+--=20
+2.43.0
+
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappen=
d b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
index 1ffd2194d96..831cb556be4 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
@@ -7,3 +7,5 @@ KMACHINE:beaglebone-yocto ?=3D "beaglebone"
 KMACHINE:genericx86 ?=3D "common-pc"
 KMACHINE:genericx86-64 ?=3D "common-pc-64"
=20
+FILESEXTRAPATHS:prepend:genericarm64 :=3D "${THISDIR}/files:"
+SRC_URI:append:genericarm64 =3D " file://0001-Revert-serial-8250_omap-Dr=
op-pm_runtime_irq_safe.patch"
--=20
2.43.0


