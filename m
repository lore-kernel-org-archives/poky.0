Return-Path: <lpapp@archlinux.us>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C747BE00475
	for <poky@yoctoproject.org>; Thu,  6 Feb 2014 07:11:00 -0800 (PST)
Received: by mail-wi0-f176.google.com with SMTP id hi5so1705316wib.9
	for <poky@yoctoproject.org>; Thu, 06 Feb 2014 07:10:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=UJw160+dt/Km/5BK7C9+2HsfWV0rTOisnvsEBlKtTsc=;
	b=PGPK5iy88Ai2ofE3aiDr4V3/acsA1O1w3/B3mJoxzOIzfMfOk5sg5xs+tttWQPlzsQ
	jehW6a8+yRplj7zgcFxl5W3lXZ8RZmb+UdlTUIrOEwA06KgC9BJ49rBs8bIBj8X3nnlj
	RzIXVySV+5noiredbzHcJfBPp3EWnffH62RbnBUfiBsXjlkDgs50kiGTS0uKCFC98ZUt
	h0jm9ZhrlWezJjXTrStmM6T6zjwgGA8mCQcMP01m2D4z7FEPAXvQiaFAoXEiDARaCufM
	ZJH4HbKQ/zxzsi6AvRn0MiiOBkS9KdnRV49LeH7ql7CVd0Onko95YsBlNp1bBr/KRyeD
	tfiQ==
X-Gm-Message-State: ALoCoQk6h/mQssvFFtdllBoBHtRluwCgCaj3Ebw5hlC+MT5AYXscQESwCP49LB8Uqm2QhBNPcOn3
X-Received: by 10.180.211.50 with SMTP id mz18mr14379588wic.43.1391699458562; 
	Thu, 06 Feb 2014 07:10:58 -0800 (PST)
Received: from lpapp@archlinux.us (mail.polatis.com. [212.44.19.228])
	by mx.google.com with ESMTPSA id j9sm3083132wjz.13.2014.02.06.07.10.56
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 06 Feb 2014 07:10:57 -0800 (PST)
Sender: Laszlo Papp <lpapp@archlinux.us>
Received: by lpapp@archlinux.us (sSMTP sendmail emulation);
	Thu, 06 Feb 2014 15:05:24 +0000
From: Laszlo Papp <lpapp@kde.org>
To: poky@yoctoproject.org
Date: Thu,  6 Feb 2014 15:05:21 +0000
Message-Id: <1391699121-535-1-git-send-email-lpapp@kde.org>
X-Mailer: git-send-email 1.8.5.3
Subject: [PATCH] package_regex.inc: fix a minor typo
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 06 Feb 2014 15:11:04 -0000

---
 meta-yocto/conf/distro/include/package_regex.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index da6e738..23a25c6 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -1,7 +1,7 @@
 # package_regex.inc - This file contains data that tracks
 # upstream project associated with a given recipe. This list is needed
 # for recipes that version information can not be automagically discovered.
-# As we automate this checking, this file will slowed be reduced.
+# As we automate this checking, this file will slowly be reduced.
 #"
 # This data is used by the package reporting system (packages.yoctoproject.org)
 #"
-- 
1.8.5.3


