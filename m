Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.19443.1794315758596005154
 for <poky@lists.yoctoproject.org>;
 Tue, 10 Nov 2026 05:02:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=SbEGoNmN;
 spf=pass (domain: bootlin.com, ip: 185.246.84.56, mailfrom: mathieu.dubois-briand@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 5A0181A15FE
	for <poky@lists.yoctoproject.org>; Tue, 10 Nov 2026 13:02:36 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 1F59C60012
	for <poky@lists.yoctoproject.org>; Tue, 10 Nov 2026 13:02:36 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id DD3A7103293FD;
	Tue, 10 Nov 2026 14:02:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1794315755; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=BOkI9nMuu1g+6GfolXF2XE8L8PMmi8ZhFGpaI2jVMgw=;
	b=SbEGoNmNRs0CqgI+yhKHP5E1bfXT//ca1Noq6hFXhOdbd2iTy16j1vWmI2vdWS8mtdwUyM
	99Co/M078fMdisiDE54Y2lQBURJy1q2LNMljDOBcVvb/m8cWmv4b2MGSaXJhgIDv00VL8m
	sJCWs15ONtEU/kIXeVasJj/v+ypAMXUQyZuz44l6vHJHIt1xjP4XJzo7SzczalgwlXyhGY
	pH7xrPPxxiOyv+JtkVULfIv7kC9oGxOVeAQg5csIEaMT7u82ea5zW08tDJ4G03BiQFGIFU
	2hGmkz0xMRvu7WhwtLHBJPWmdWbpsAkde9FyLdjBfRjeSxYUKYBC335Bz67REg==
From: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
Date: Tue, 10 Nov 2026 14:02:24 +0100
Subject: [PATCH] poky.conf: Update the list of sanity tested distros
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261110-mathieu-debian11-removal-v1-1-29c78c1cc467@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAN8V82oC/x3MQQqDMBBG4avIrB1wIljsVUoXo/mtAxpLoiKId
 ze4/BbvnZQQDYnexUkRuyVbQoaUBfWjhh/YfDa5yjUiUvGs62jY2KMzDSIcMS+7Tly7VhQYfN2
 8KOf/iMGOZ/35XtcN7B9SJGoAAAA=
X-Change-ID: 20261110-mathieu-debian11-removal-3291aeefd367
To: poky@lists.yoctoproject.org
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794315754; l=978;
 i=mathieu.dubois-briand@bootlin.com; s=20241219; h=from:subject:message-id;
 bh=aHy5OVrz+Xxo++VJcBJnQACxjAyAMJuhQfpeNsQPjWI=;
 b=ogvLHNJIIGFxdv359VOim9vcl0TMeSHTyZMLenx69JRpltn/hC+4kdUTC/M52TuKe62/AbRKH
 z/D3uRi+Y9tC1jXq6wyx16RUgxWxnCwepg7UJh6jWtDl74zksAbimqQ
X-Developer-Key: i=mathieu.dubois-briand@bootlin.com; a=ed25519;
 pk=1PVTmzPXfKvDwcPUzG0aqdGoKZJA3b9s+3DqRlm0Lww=
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <poky@lists.yoctoproject.org>; Tue, 10 Nov 2026 13:02:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13994

Debian 11 and Suse leap 15.6 are not supported anymore.

Signed-off-by: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 2 --
 1 file changed, 2 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index adadb95615a9..76808150677b 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -42,10 +42,8 @@ SANITY_TESTED_DISTROS ?= " \
             fedora-45 \n \
             centos-9 \n \
             centos-10 \n \
-            debian-11 \n \
             debian-12 \n \
             debian-13 \n \
-            opensuseleap-15.6 \n \
             opensuseleap-16.0 \n \
             almalinux-8.10 \n \
             almalinux-9.8 \n \

---
base-commit: dd6c2950bb507f8c311bd82410a032ed6eb38063
change-id: 20261110-mathieu-debian11-removal-3291aeefd367

Best regards,
-- 
Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>

