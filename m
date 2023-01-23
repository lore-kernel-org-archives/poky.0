Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web11.39219.1674467771273493711
 for <poky@lists.yoctoproject.org>;
 Mon, 23 Jan 2023 01:56:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=d8ALrGXl;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 921F31C000E;
	Mon, 23 Jan 2023 09:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1674467768;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=kO7aMKSFoYpfZt/X6vLyAM838fN2pZc3c6zZ63mYnPE=;
	b=d8ALrGXlwiWTkeGH9DfSHkvTPF0Kj7GWsKQqOkMpUlL0N8ph6jqG6VxO9L2S43XgKbrylw
	g0PehgdHzA9HEVQtV8mqXWQXEjL1JI3ekoo1r/ArgNgZPj9+pPziCJQ6uM3gj1ytSqu2ow
	N7kJnhzDFVfYW5XMApJbp60zZxdmRXhySch/BKFZwS+83Ezdl6LAiuNkllePwsitUxDyJR
	qCKZqeAqADruMl1ypZzMXYZmqmsYmJTleSinXOB6q6l3KtkPL8gwzugJR0IE9ilM/kGpdj
	zpvwqFkYTndL4P2ciFuqsN8VyOwK4eF4Nibh2WCFXLtraHjBJicB4yOJBZZdyg==
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
To: poky@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: [PATCH] poky.conf: set INIT_MANAGER with ?=
Date: Mon, 23 Jan 2023 10:55:29 +0100
Message-Id: <20230123095529.21702-1-michael.opdenacker@bootlin.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Michael Opdenacker <michael.opdenacker@bootlin.com>

Allowing to set INIT_MANAGER from conf/local.conf

---

This has been tested on the autobuilder:
https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/4797

This will allow to document INIT_MANAGER properly
and address a few related bugs.

Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index dc0e8e76ab..072d2ab32f 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -65,7 +65,7 @@ INHERIT += "uninative"
 BB_SIGNATURE_HANDLER ?= "OEEquivHash"
 BB_HASHSERVE ??= "auto"
 
-INIT_MANAGER = "sysvinit"
+INIT_MANAGER ?= "sysvinit"
 
 # We need debug symbols so that SPDX license manifests for the kernel work
 KERNEL_EXTRA_FEATURES:append = " features/debug/debug-kernel.scc"
-- 
2.37.2

