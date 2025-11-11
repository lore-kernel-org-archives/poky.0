Return-Path: <mathieu.dubois-briand@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56275CCFA1A
	for <webhook@archiver.kernel.org>; Tue, 11 Nov 2025 12:36:58 +0000 (UTC)
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.16166.1762864612438202981
 for <poky@lists.yoctoproject.org>;
 Tue, 11 Nov 2025 04:36:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=lzcCZFmJ;
 spf=pass (domain: bootlin.com, ip: 185.171.202.116, mailfrom: mathieu.dubois-briand@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id CFF27C0F544
	for <poky@lists.yoctoproject.org>; Tue, 11 Nov 2025 12:36:28 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 3A528606FB
	for <poky@lists.yoctoproject.org>; Tue, 11 Nov 2025 12:36:50 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 38DAE10370C3D;
	Tue, 11 Nov 2025 13:36:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1762864609; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=+gVu8+AfddV7fWmhsQWEzmN4mqAd6Ay3R92oKqZwbD8=;
	b=lzcCZFmJ+viI3QEDEML/LvWUrIJFPCP7s8jgHB2OvrORyItOuZgARomy7anz452mBzOuF8
	Nv4sFet9bN5gwKPSfPF3TxETXT7+00ITErBSdHEJT7LKj1SIdEJDJtOD9tVXJfdUC1xrXo
	9y+lWx7WaWQTYXRDTSZgeyHSLJ51FIpGl+j1VgE5oPNRzV0tzXr1diWmXwympNYYelkKHU
	A4Af9GqDB9o6JCS86vyu81XdJQbvgIrtvjWV9gVXy9uHIT9HyxJarYbn0PdCrBmMkoqtEh
	wRWxskEytVJsonXNk4daedCebzR7VZeUD1xmRqymSiDjZuIEgQWlXMhXz+TQ2A==
From: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
Date: Tue, 11 Nov 2025 13:36:26 +0100
Subject: [PATCH] poky: Add Ubuntu 25.10 to SANITY_TESTED_DISTROS
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251111-contrib-mathieu-ubuntu_2510-v1-1-4e50cc96eb00@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAMktE2kC/x2MSQqEMBAAvyJ9noYkIC5fERmS2GofjJJlGAj+3
 ca6FQVVIVFkSjA2FSL9OPEZRPSnAb/bsBHyIg5GmVYL6M+QIzs8bN6ZChZXQi5fqQq9Nl6trut
 sP4Acrkgr/9/7NN/3A7dXSiJtAAAA
X-Change-ID: 20251111-contrib-mathieu-ubuntu_2510-c12c0fb77a89
To: poky@lists.yoctoproject.org
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762864607; l=821;
 i=mathieu.dubois-briand@bootlin.com; s=20241219; h=from:subject:message-id;
 bh=WwBTEi0/DTr0kF3D6xOH58Ry5d1wGX9ObyTMXpSAC88=;
 b=zP9MPlVQRY5frASScc+lUQ8mcDqlmlqYTCJii28wfH4zRAgGTqHNCGXZYJw0Li3l9BRh/pp3g
 nMiO0Ws2E4qCG+SXh3G5bwvC8MvFed/wVsZSB7OTNkAhySr2pZGWfKF
X-Developer-Key: i=mathieu.dubois-briand@bootlin.com; a=ed25519;
 pk=1PVTmzPXfKvDwcPUzG0aqdGoKZJA3b9s+3DqRlm0Lww=
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 11 Nov 2025 12:36:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13790

Signed-off-by: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 8c291d305e9e..f1e91ec4be2b 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -36,6 +36,7 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-22.04 \n \
             ubuntu-24.04 \n \
             ubuntu-25.04 \n \
+            ubuntu-25.10 \n \
             fedora-39 \n \
             fedora-40 \n \
             fedora-41 \n \

---
base-commit: 66ea31cee15309af07afeee8dec8a6fe1d92d28e
change-id: 20251111-contrib-mathieu-ubuntu_2510-c12c0fb77a89

Best regards,
-- 
Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>


