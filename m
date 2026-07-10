Return-Path: <mathieu.dubois-briand@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D20CC43458
	for <webhook@archiver.kernel.org>; Fri, 10 Jul 2026 14:22:43 +0000 (UTC)
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.34.1783693352525951020
 for <poky@lists.yoctoproject.org>;
 Fri, 10 Jul 2026 07:22:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=AUHIioSZ;
 spf=pass (domain: bootlin.com, ip: 185.246.85.4, mailfrom: mathieu.dubois-briand@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 4E9CB4E40D32
	for <poky@lists.yoctoproject.org>; Fri, 10 Jul 2026 14:22:30 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 1C0DB60342
	for <poky@lists.yoctoproject.org>; Fri, 10 Jul 2026 14:22:30 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id AFD1411BD0D41;
	Fri, 10 Jul 2026 16:22:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1783693349; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=lFNghx4uG6yrHjcH2GscHc6inzCA2tBCWqZutpUR7eo=;
	b=AUHIioSZebN3e8PaPkqbaqc08RLrquEv4xb1dP3RaT/x7addv1z7tIwx05Sg0CdgNCxjx+
	9G15s22NCmUsB8IHblLTUufJwACheHcDWBS69V2G0/WzS+1nNbNZoKbYjFhlc5+x99vPqk
	gm2S3cUpboheTlZYzzULKC2C5DVYZdqRxu+1JpeF6aR1XVWSjUI2l6fpTXJegQTvHK2gGv
	R++B9mU6qjAElxtU6fymnycjYFLS59uXKKD5aRl04mlRH7QqHqZ3B1PvUD6lI7OmfhzxdU
	VAjapbZyVCsMNcaPLXgiL2yOa6JKCMH/Z902vGIBX7xUmY++pE9vXfzQGEQwOA==
From: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
Date: Fri, 10 Jul 2026 16:22:09 +0200
Subject: [PATCH] poky.conf: Update the list of sanity tested distros list
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260710-mathieu-add-fedora44-v1-1-e6b57779b4cc@bootlin.com>
X-B4-Tracking: v=1; b=H4sIABAAUWoC/x3MTQqAIBBA4avErBvQ0MquEi1Ep5xFP2hFIN09a
 fkt3suQKDIlGKoMkW5OvG8Fsq7ABbsthOyLoRFNKzopcLVnYLrQeo8z+T1apVBrp53RTvXGQEm
 PSDM//3ac3vcDs/Q992YAAAA=
X-Change-ID: 20260710-mathieu-add-fedora44-55c5c95c4899
To: poky@lists.yoctoproject.org
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783693348; l=1317;
 i=mathieu.dubois-briand@bootlin.com; s=20241219; h=from:subject:message-id;
 bh=cbNrkTkBzPfCkjT3BBZrn5KPZqWgaCVTzby01CjXdqQ=;
 b=R3ochw9SOUhdqvboJNTHzLXKXucJ+4w06VXFQQDQ4JhhPYfGgd+f1kNrr2ItHzcorXE+fzpNO
 Db62hZafKpOCn4o5IGcGB3GaLAFkgnpdu2/46vWMRB4w+hvDfKBIz4D
X-Developer-Key: i=mathieu.dubois-briand@bootlin.com; a=ed25519;
 pk=1PVTmzPXfKvDwcPUzG0aqdGoKZJA3b9s+3DqRlm0Lww=
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 10 Jul 2026 14:22:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13938

Fedora 44 and Alma 10 workers were added to the autobuilder. Alma 8 and
9 workers were updated.

Signed-off-by: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 55d224d564c2..2ba98f4ba244 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -38,6 +38,7 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-25.10 \n \
             ubuntu-26.04 \n \
             fedora-43 \n \
+            fedora-44 \n \
             centos-9 \n \
             centos-10 \n \
             debian-11 \n \
@@ -45,8 +46,9 @@ SANITY_TESTED_DISTROS ?= " \
             debian-13 \n \
             opensuseleap-15.6 \n \
             opensuseleap-16.0 \n \
-            almalinux-8.8 \n \
-            almalinux-9.2 \n \
+            almalinux-8.10 \n \
+            almalinux-9.8 \n \
+            almalinux-10.2 \n \
             rocky-8 \n \
             rocky-9 \n \
             "

---
base-commit: 366fa2f21bfb0d9c4de492e0204a0dd38ce241ab
change-id: 20260710-mathieu-add-fedora44-55c5c95c4899

Best regards,
-- 
Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>


