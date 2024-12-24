Return-Path: <antonin.godard@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0069E7718E
	for <webhook@archiver.kernel.org>; Tue, 24 Dec 2024 13:12:33 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web11.32967.1735045951603808685
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Dec 2024 05:12:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=EAornr54;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: antonin.godard@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 008611BF208;
	Tue, 24 Dec 2024 13:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1735045950;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IkgHK+Hhj3I6AXCr/snrnsaf2o3+ROnTn5YvPgqTM4k=;
	b=EAornr54xnZb43uRbnIdiGAy+a80z/zcuqUXIM2hYuIiZa0vQMAqd5A2oICufLQKUKCLu3
	aZD8ll/ZZvRi+E9Y/dcLvn7naNAhPDdiyeW8aqzCLXzZ008JWQ5LnGX3BquVmaL2hjjRRD
	dkytcLV48Zc90KiOaY+G6gCBPW1G/BmVW/QaWh9lzBMaqUlhhqcwlmitUF6MgrjjXODPfK
	okb4r83CQEPxWPf3j41Kpd63nEXIxvLTiTqo4yj5f06ALIm1f6wuwEW9Dj0Lg6vDJGJ7j/
	F0qPLGvISEPYU+MBYTscRX5qzgYwrltkwT1tsMRAkbqn1rLoIPSRWXl+aWfFSg==
From: Antonin Godard <antonin.godard@bootlin.com>
To: poky@lists.yoctoproject.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Steve Sakoman <steve@sakoman.com>,
	Antonin Godard <antonin.godard@bootlin.com>
Subject: [kirkstone][PATCH] poky.conf: add new tested distros
Date: Tue, 24 Dec 2024 14:09:29 +0100
Message-ID: <20241224130933.1810659-3-antonin.godard@bootlin.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241224130933.1810659-1-antonin.godard@bootlin.com>
References: <20241224130933.1810659-1-antonin.godard@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: antonin.godard@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 24 Dec 2024 13:12:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13500

These are currently tested on the autobuilder for Kirkstone.

Signed-off-by: Antonin Godard <antonin.godard@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 08c8d5f..701736a 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -38,9 +38,14 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-20.04 \n \
             ubuntu-22.04 \n \
             fedora-37 \n \
+            fedora-39 \n \
+            fedora-40 \n \
             debian-11 \n \
             opensuseleap-15.3 \n \
             almalinux-8.8 \n \
+            almalinux-8.9 \n \
+            almalinux-8.10 \n \
+            almalinux-9.4 \n \
             "
 # add poky sanity bbclass
 INHERIT += "poky-sanity"

