Return-Path: <antonin.godard@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4BD5E77188
	for <webhook@archiver.kernel.org>; Tue, 24 Dec 2024 13:12:23 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web11.32964.1735045942193084064
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Dec 2024 05:12:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=mkE4UExl;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: antonin.godard@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 589D060002;
	Tue, 24 Dec 2024 13:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1735045940;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=JPsZnkbUsB8/1pYFKhgSO87dFvY9iVbg8PfgW+7vkO8=;
	b=mkE4UExlIg27BqmAypO6i+C8SHjqjD3FzL/djsAITjXpn0RMkqHpZPyZ3vMoOCsJ3d4aLH
	9Pv94m0aJX0TNsit3HtyVlQq8B6b2CeUn22a25xsm9gbTt+3oUlJwCktr+e+H7gHr0AKCI
	/n9ORq7tB09wi7saYT/G3iw5Ol0xR80mH57DKyFFwTp4Fq7IPcW0cWugDegaPB+0loLV78
	Pn5/13QkRmm/7TQVFpIPeTRB1vWI3y/d4ke8TzhyKM8dppNvTBcOkQyLRZ/TWZi8dS63ZX
	UoZQtxBqxKaUoRaXCBMZukXCnL4LJ6kkcaZxwL+qUDcuDZ6CVGU1h6TZI3dwiQ==
From: Antonin Godard <antonin.godard@bootlin.com>
To: poky@lists.yoctoproject.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Antonin Godard <antonin.godard@bootlin.com>
Subject: [PATCH] poky.conf: update tested distros
Date: Tue, 24 Dec 2024 14:12:06 +0100
Message-ID: <20241224131210.1816521-1-antonin.godard@bootlin.com>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: antonin.godard@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 24 Dec 2024 13:12:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13497

To match the current list of workers on the autobuilder.

Signed-off-by: Antonin Godard <antonin.godard@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index eeaacd7..ae15e0b 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -37,17 +37,18 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-22.04 \n \
             ubuntu-24.04 \n \
             ubuntu-24.10 \n \
-            fedora-38 \n \
             fedora-39 \n \
             fedora-40 \n \
-            centosstream-8 \n \
+            fedora-41 \n \
+            centosstream-9 \n \
             debian-11 \n \
             debian-12 \n \
-            opensuseleap-15.4 \n \
             opensuseleap-15.5 \n \
             opensuseleap-15.6 \n \
-            almalinux-8.8 \n \
-            almalinux-9.2 \n \
+            almalinux-8.9 \n \
+            almalinux-8.10 \n \
+            almalinux-9.4 \n \
+            rocky-8 \n \
             rocky-9 \n \
             "
 # add poky sanity bbclass

