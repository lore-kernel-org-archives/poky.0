Return-Path: <antonin.godard@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8763FD58E4C
	for <webhook@archiver.kernel.org>; Mon,  2 Mar 2026 09:33:03 +0000 (UTC)
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.156956.1772443976918646905
 for <poky@lists.yoctoproject.org>;
 Mon, 02 Mar 2026 01:32:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=xS6DQlHM;
 spf=pass (domain: bootlin.com, ip: 185.171.202.116, mailfrom: antonin.godard@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 21479C40F86
	for <poky@lists.yoctoproject.org>; Mon,  2 Mar 2026 09:33:12 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id F3F3B5FE89
	for <poky@lists.yoctoproject.org>; Mon,  2 Mar 2026 09:32:54 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D54A610369408;
	Mon,  2 Mar 2026 10:32:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772443974; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=o+O6pAgfzlQ5KV5WtoeA7h3HJoCTNMuTDgc8TlynkFQ=;
	b=xS6DQlHMqpAXKMbwN6fWOUKzWMQjupFMGk6h6pmTOl2+UNG+pr7vQ9fUs4B8E+mvTQER2i
	/F/89a2iwBQH0278H5Hol4UVUnt3tQxeiygswyQtNX9Yj8kdFAjVVxRcH3BygE29xVGHbZ
	W14rDzu3OlzF4SthESqgrapLJdg+YCyMiA4u7OYIJuCRDewxPpkFPb27fDBCMSp0LS2I5M
	mgFJ5gjc2dTigccnxbRLx/wic/lemzCxoMudh1ob+avuL6E8wrGCcBvqF3MBnz96TYxVyu
	+II2SdbyR5fDfv3e+NEe9fggmwuzdWB1SQHVJCBfjfIyuBTI++EKyCkUWkjACw==
From: Antonin Godard <antonin.godard@bootlin.com>
Date: Mon, 02 Mar 2026 10:32:25 +0100
Subject: [PATCH] templates: site.conf.sample: remove CVS proxy instructions
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260302-remove-cvs-note-v1-1-1e3f0ac1c069@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQ6CMBBG4auQWTtJLQGFqxgXpf7qmNiSDjYkh
 LtbYPkt3ltIkQRKfbVQQhaVGArOp4r824UXWB7FZI1tTW0sJ3xjBvusHOIEbjoYf3H1tXEdlWp
 MeMq8H2/3w/obPvDTtqF1/QPRJdtJcwAAAA==
X-Change-ID: 20260302-remove-cvs-note-59e0c7a385a9
To: poky@lists.yoctoproject.org
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Antonin Godard <antonin.godard@bootlin.com>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=994;
 i=antonin.godard@bootlin.com; h=from:subject:message-id;
 bh=fS/hIWdWau6SxIxsgVIdQ854oEG7WdZn4C+RkE5Dx30=;
 b=owEBbQKS/ZANAwAKAdGAQUApo6g2AcsmYgBppVlFD2NRSowXci9MSiIvW24r4JQvYdJBb0HQl
 f2Tdk7hDDGJAjMEAAEKAB0WIQSGSHJRiN1AG7mg0//RgEFAKaOoNgUCaaVZRQAKCRDRgEFAKaOo
 NtgMEAC5nEWZRkMM4JVAu6DQnYGClWEg8ofHB4l6igUEsWcOSvoYCvG73axW0X05cglrhVpnQKF
 HY09TFFDtnSr4myvkMlYkOxgSSFfwXGJ0aE7N67areazmuU8Pn81dGt6vQaEUSYduU/LLvSCffS
 N0JWmYYEqALwngd+b6Emoy1T1OSsqfDSd9stb8eV9OGK0Xvjdj/12e8pnGaEpPMzYpZmy0Lf5IR
 x3y8+V1dC06KEgxlOFZ00B+v9jMFKPCRobFXKf2sxPYq3nh8v/gXdNnKs3uDFv8iH3wSBYoirq7
 Uu+eeagVzGbEgAcJzA6GBngbkUe2oV7rBThSFaBDaWOUOIqDacED8fGaMJ8wwFL+3m45cgTcydw
 TIaNufCsPvydkNKgZgS6ZY9+4gVkvE9d66zcFkHj5RwbTl9CrbG8k6Z7p/XbPIzq+yrNgkgqKtF
 9zGEWTepx00ltinasmD4S/MR8Uw0sk9PD+XVEeY6lrbua2xJT/KCaxpfJ1T4ZBoEnL/HtKQcGBN
 ptjRcFLaPxqWtoGU3KgcxLzClTX2ffhptf4KsaNkHfPOsRxSSXso5K7p3k8bLtnfvOJZftxYlPZ
 eEU+RgMcKT8FZcE9OydUFRzqHOAMl4EGkoDepYGglFVecg0L1N/JKWXuB9bln3jYz+yRGne0JiY
 4v5ikDO/LrhrJdQ==
X-Developer-Key: i=antonin.godard@bootlin.com; a=openpgp;
 fpr=8648725188DD401BB9A0D3FFD180414029A3A836
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 02 Mar 2026 09:33:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13844

The CVS fetcher was disabled with 5427500e4f23 ("fetch: Drop CVS fetcher
module") in BitBake. Remove the CVS instructions from this file.

Signed-off-by: Antonin Godard <antonin.godard@bootlin.com>
---
 meta-poky/conf/templates/default/site.conf.sample | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/meta-poky/conf/templates/default/site.conf.sample b/meta-poky/conf/templates/default/site.conf.sample
index 5164fedf63..fd8712f315 100644
--- a/meta-poky/conf/templates/default/site.conf.sample
+++ b/meta-poky/conf/templates/default/site.conf.sample
@@ -6,10 +6,6 @@
 # changes incompatibly
 SCONF_VERSION = "1"
 
-# Uncomment to cause CVS to use the proxy host specified
-#CVS_PROXY_HOST = "proxy.example.com"
-#CVS_PROXY_PORT = "81"
-
 # For svn, you need to create ~/.subversion/servers containing:
 #[global]
 #http-proxy-host = proxy.example.com

---
base-commit: f3b63d0d6882af61020bd6f7150fae68a0322f63
change-id: 20260302-remove-cvs-note-59e0c7a385a9


