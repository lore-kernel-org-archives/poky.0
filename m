Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web09.38818.1665996970069270200
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Oct 2022 01:56:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=IX29lV+j;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id E49F620003;
	Mon, 17 Oct 2022 08:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1665996968;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=9sdhdp9qcE1wwuewTxV1rYT+7KQv4neRw/jePKyFJjU=;
	b=IX29lV+jBLnK+SvHpnWzKKkAxiDQ5R38v7YuijoEtWW04K51/rR+LhfoCBq4VKXiSANSSC
	eMmfgd8Qy14jfd6cZ49Na/uDYcP71KWJCYGQUINgIj+QVAcaToZP1Ca4hlblVL6Ywjb0pZ
	hYnBZD1UFeXV5xKY8mxNp/g4J8ujytJtx6TKm5M+DgSkuat4MH7M+7N8P4JMMpAKDThQ3Y
	CZMhZfCTxUvqzOkhYU4Lf8rk88xRn+2TVL/s08eL8cgb+kvA9QMRTNxy6FN1B9fd2a7n4d
	oefcin2oCTwz0X2N7cm2IhWoO53RKgLkPgu64lFwBaWtC8NdM5aBgFkHns9tWQ==
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
To: poky@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: [PATCH] poky.conf: remove Ubuntu 21.10
Date: Mon, 17 Oct 2022 10:55:55 +0200
Message-Id: <20221017085555.169604-1-michael.opdenacker@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Michael Opdenacker <michael.opdenacker@bootlin.com>

Ubuntu 21.10 is no longer updated by Canonical
and since 22.04 is available and supported, it's
no longer useful to test it and declare it as supported.

Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 4dc5db4..3e90766 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -38,7 +38,6 @@ SANITY_TESTED_DISTROS ?= " \
             poky-4.1 \n \
             ubuntu-18.04 \n \
             ubuntu-20.04 \n \
-            ubuntu-21.10 \n \
             ubuntu-22.04 \n \
             fedora-34 \n \
             fedora-35 \n \
-- 
2.34.1

