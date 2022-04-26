Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web11.654.1651008096989121064
 for <poky@lists.yoctoproject.org>;
 Tue, 26 Apr 2022 14:21:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=dIqzjSTN;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 9B5DE1BF205;
	Tue, 26 Apr 2022 21:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1651008094;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Cih6Za7PViN63jh19A/VbN0z7FUxFnRSnxEmk0qjac4=;
	b=dIqzjSTNMve4WvoXXX5PETCNrA3rPcTrTPAN+HF+tazpZK3eqzkiGPIs+oa1Y0VLjpjuRH
	A4YOy2ehh7ivCuHni22YfcpGKvRKsxTZ7CWf+maZJ9/NgaDTqpzzLiINwh6H6MBNVUqj2T
	6S9MeK3Q2Jo8kpEeRcnosh6yOsNoFyWDCn6HTR4+UZNeqAvDU4Gr07PjWul233arHeb71T
	3Yz1pDnI5GxCA+blpOTVrt+Aojn/E9s3f+7aWRRCd4iRElpcv4chVH6xHcjmUVURp7FBDM
	nYpzZuWpQoC9TRUhmTz7JASPhH+ZL+cwtwxVC5J7AqrvzX2DnPbtfX5kKESDQw==
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
To: poky@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: [PATCH] meta-poky: update conf-notes.txt
Date: Tue, 26 Apr 2022 23:21:18 +0200
Message-Id: <20220426212118.196989-1-michael.opdenacker@bootlin.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Michael Opdenacker <michael.opdenacker@bootlin.com>

Now suggesting to run 'runqemu qemux86-64',
aligning with conf-notes.txt in openembedded-core

'runqemu qemux86' doesn't work any more.
The "Quick Build" documentation has already been updated
but not this message that we get when sourcing "oe-init-build-env"

Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
---
 meta-poky/conf/conf-notes.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/conf-notes.txt b/meta-poky/conf/conf-notes.txt
index 084cc98..cfd1f19 100644
--- a/meta-poky/conf/conf-notes.txt
+++ b/meta-poky/conf/conf-notes.txt
@@ -11,7 +11,7 @@ Common targets are:
     meta-toolchain
     meta-ide-support
 
-You can also run generated qemu images with a command like 'runqemu qemux86'
+You can also run generated qemu images with a command like 'runqemu qemux86-64'.
 
 Other commonly useful commands are:
  - 'devtool' and 'recipetool' handle common recipe tasks
-- 
2.25.1

