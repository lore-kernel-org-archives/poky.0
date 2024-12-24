Return-Path: <antonin.godard@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D838E7718D
	for <webhook@archiver.kernel.org>; Tue, 24 Dec 2024 13:12:33 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web11.32965.1735045951558784807
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Dec 2024 05:12:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=m+6PQ2wz;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: antonin.godard@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id BE1091BF207;
	Tue, 24 Dec 2024 13:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1735045949;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9xcCqtbXGsbNH2OVtXMU1EQJhQBAJcYE5dSjTTnGLFM=;
	b=m+6PQ2wzsYR4hnLnRckd3/wIHlg7EfgDKHZXSU9s/yymzGEJtRBZaKpT+LOWHF7hByDR4X
	NQ0DgmbAgJ8/YgwskM5v4X4YFixaPxjlkaZr/bg8pJu+sUKcd99pxEvQgiH0P7dTe7s7O7
	GMSd8PrFlHnngNBXSsVbkDjWRBjmcdYT6eC6Y+93RWgguAywzFA5sZeewlkd9Imdc/aEtT
	7sFU5QITfsFaetwUFFvNROCrXltNrQWDNqQ8gCb831KVH54k95roffjm6ft6kAx8cSmd/J
	bkEedtbcQi0YJxfXGxH4AOYqI8PfiXyFKtkrm2NSKz2FD/uYi27HlqQfcWVr6w==
From: Antonin Godard <antonin.godard@bootlin.com>
To: poky@lists.yoctoproject.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Steve Sakoman <steve@sakoman.com>,
	Antonin Godard <antonin.godard@bootlin.com>
Subject: [scarthgap][PATCH] poky.conf: add new tested distros
Date: Tue, 24 Dec 2024 14:09:28 +0100
Message-ID: <20241224130933.1810659-2-antonin.godard@bootlin.com>
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13498

These are currently tested on the autobuilder for Scarthgap.

Signed-off-by: Antonin Godard <antonin.godard@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 9d47fc5..da9d2cf 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -40,12 +40,16 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-23.04 \n \
             fedora-38 \n \
             fedora-39 \n \
+            fedora-40 \n \
             centosstream-8 \n \
             debian-11 \n \
             debian-12 \n \
             opensuseleap-15.4 \n \
             almalinux-8.8 \n \
+            almalinux-8.9 \n \
+            almalinux-8.10 \n \
             almalinux-9.2 \n \
+            almalinux-9.4 \n \
             rocky-9 \n \
             "
 # add poky sanity bbclass

