Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B680BC44501
	for <webhook@archiver.kernel.org>; Wed, 15 Jul 2026 16:27:38 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.11820.1784132851760533427
 for <poky@lists.yoctoproject.org>;
 Wed, 15 Jul 2026 09:27:31 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@arm.com header.s=foss header.b=gUubRWl3;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0F847153B
	for <poky@lists.yoctoproject.org>; Wed, 15 Jul 2026 09:27:27 -0700 (PDT)
Received: from cesw-amp-gbt-1s-m12830-04.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E728B3F7B4
	for <poky@lists.yoctoproject.org>; Wed, 15 Jul 2026 09:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1784132851; bh=xJl0X5tUdNMFIdBTehHKHWQlPcov5DsJoxW0A5kkFX8=;
	h=From:To:Subject:Date:From;
	b=gUubRWl3jeb4ApQcVAL7m2YSQAkbmyCaBzFlX0y4YXkv4hYCQ9UW6zoLN/uFE2u7f
	 g3usA26T77RYKpOn73mn3Pvrh9rVFPFt3j8u8S7XtYWdhgzRD/H712JpTP44SpObRp
	 hwNe2f6mys+7FQJ+9h1Vl0leupphjPscvJmSIuys=
From: Ross Burton <ross.burton@arm.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH] linux-yocto: remove unused patch
Date: Wed, 15 Jul 2026 17:27:05 +0100
Message-ID: <20260715162705.645193-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 15 Jul 2026 16:27:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13941

The bbappend that referred to this patch was removed[1] but the patch
was left behind, so delete it.

[1] meta-yocto 0e6b3a9172 ("meta-yocto-bsp: drop 6.12 bbappend")

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 ...l-8250_omap-Drop-pm_runtime_irq_safe.patch | 130 ------------------
 1 file changed, 130 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert=
-serial-8250_omap-Drop-pm_runtime_irq_safe.patch

diff --git a/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial=
-8250_omap-Drop-pm_runtime_irq_safe.patch b/meta-yocto-bsp/recipes-kernel=
/linux/files/0001-Revert-serial-8250_omap-Drop-pm_runtime_irq_safe.patch
deleted file mode 100644
index 8837dd2346..0000000000
--- a/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250_o=
map-Drop-pm_runtime_irq_safe.patch
+++ /dev/null
@@ -1,130 +0,0 @@
-From cc255f5132cf39e9154340cf58780f8c763c6481 Mon Sep 17 00:00:00 2001
-From: Ross Burton <ross.burton@arm.com>
-Date: Thu, 23 Jan 2025 17:06:08 +0000
-Subject: [PATCH] Revert "serial: 8250_omap: Drop pm_runtime_irq_safe()"
-
-This reverts commit 8700a7ea5519fb0b3bad2362adfeac358c2119ce.
-
-Upstream-Status: Inappropriate
-Signed-off-by: Ross Burton <ross.burton@arm.com>
----
- drivers/tty/serial/8250/8250_omap.c | 29 ++++++++---------------------
- 1 file changed, 8 insertions(+), 21 deletions(-)
-
-diff --git a/drivers/tty/serial/8250/8250_omap.c b/drivers/tty/serial/82=
50/8250_omap.c
-index 0dd68bdbfbcf7..db24d7d1dcb67 100644
---- a/drivers/tty/serial/8250/8250_omap.c
-+++ b/drivers/tty/serial/8250/8250_omap.c
-@@ -8,7 +8,6 @@
-  *
-  */
-=20
--#include <linux/atomic.h>
- #include <linux/clk.h>
- #include <linux/device.h>
- #include <linux/io.h>
-@@ -134,7 +133,6 @@ struct omap8250_priv {
-=20
- 	u8 tx_trigger;
- 	u8 rx_trigger;
--	atomic_t active;
- 	bool is_suspending;
- 	int wakeirq;
- 	u32 latency;
-@@ -636,23 +634,14 @@ static irqreturn_t omap8250_irq(int irq, void *dev=
_id)
- 	unsigned int iir, lsr;
- 	int ret;
-=20
--	pm_runtime_get_noresume(port->dev);
--
--	/* Shallow idle state wake-up to an IO interrupt? */
--	if (atomic_add_unless(&priv->active, 1, 1)) {
--		priv->latency =3D priv->calc_latency;
--		schedule_work(&priv->qos_work);
--	}
--
- #ifdef CONFIG_SERIAL_8250_DMA
- 	if (up->dma) {
- 		ret =3D omap_8250_dma_handle_irq(port);
--		pm_runtime_mark_last_busy(port->dev);
--		pm_runtime_put(port->dev);
- 		return IRQ_RETVAL(ret);
- 	}
- #endif
-=20
-+	serial8250_rpm_get(up);
- 	lsr =3D serial_port_in(port, UART_LSR);
- 	iir =3D serial_port_in(port, UART_IIR);
- 	ret =3D serial8250_handle_irq(port, iir);
-@@ -701,8 +690,7 @@ static irqreturn_t omap8250_irq(int irq, void *dev_i=
d)
- 		schedule_delayed_work(&up->overrun_backoff, delay);
- 	}
-=20
--	pm_runtime_mark_last_busy(port->dev);
--	pm_runtime_put(port->dev);
-+	serial8250_rpm_put(up);
-=20
- 	return IRQ_RETVAL(ret);
- }
-@@ -1314,8 +1302,11 @@ static int omap_8250_dma_handle_irq(struct uart_p=
ort *port)
- 	u16 status;
- 	u8 iir;
-=20
-+	serial8250_rpm_get(up);
-+
- 	iir =3D serial_port_in(port, UART_IIR);
- 	if (iir & UART_IIR_NO_INT) {
-+		serial8250_rpm_put(up);
- 		return IRQ_HANDLED;
- 	}
-=20
-@@ -1348,6 +1339,7 @@ static int omap_8250_dma_handle_irq(struct uart_po=
rt *port)
-=20
- 	uart_unlock_and_check_sysrq(port);
-=20
-+	serial8250_rpm_put(up);
- 	return 1;
- }
-=20
-@@ -1539,6 +1531,8 @@ static int omap8250_probe(struct platform_device *=
pdev)
- 	if (!of_get_available_child_count(pdev->dev.of_node))
- 		pm_runtime_set_autosuspend_delay(&pdev->dev, -1);
-=20
-+	pm_runtime_irq_safe(&pdev->dev);
-+
- 	pm_runtime_get_sync(&pdev->dev);
-=20
- 	omap_serial_fill_features_erratas(&up, priv);
-@@ -1776,7 +1770,6 @@ static int omap8250_runtime_suspend(struct device =
*dev)
-=20
- 	priv->latency =3D PM_QOS_CPU_LATENCY_DEFAULT_VALUE;
- 	schedule_work(&priv->qos_work);
--	atomic_set(&priv->active, 0);
-=20
- 	return 0;
- }
-@@ -1786,10 +1779,6 @@ static int omap8250_runtime_resume(struct device =
*dev)
- 	struct omap8250_priv *priv =3D dev_get_drvdata(dev);
- 	struct uart_8250_port *up =3D NULL;
-=20
--	/* Did the hardware wake to a device IO interrupt before a wakeirq? */
--	if (atomic_read(&priv->active))
--		return 0;
--
- 	if (priv->line >=3D 0)
- 		up =3D serial8250_get_port(priv->line);
-=20
-@@ -1805,10 +1794,8 @@ static int omap8250_runtime_resume(struct device =
*dev)
- 		uart_port_unlock_irq(&up->port);
- 	}
-=20
--	atomic_set(&priv->active, 1);
- 	priv->latency =3D priv->calc_latency;
- 	schedule_work(&priv->qos_work);
--
- 	return 0;
- }
-=20
---=20
-2.43.0
-
--=20
2.43.0


