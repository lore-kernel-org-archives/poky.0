Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web08.4745.1628050903264136510
 for <poky@lists.yoctoproject.org>;
 Tue, 03 Aug 2021 21:21:43 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 9D53040C16
	for <poky@lists.yoctoproject.org>; Wed,  4 Aug 2021 04:21:42 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mtmjx9lv7lTR for <poky@lists.yoctoproject.org>;
	Wed,  4 Aug 2021 04:21:42 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 8D01B40C06
	for <poky@lists.yoctoproject.org>; Wed,  4 Aug 2021 04:21:42 +0000 (UTC)
Received: from gimli.denix (unknown [192.168.30.6])
	by mail.denix.org (Postfix) with ESMTP id C852B17463D;
	Wed,  4 Aug 2021 00:21:41 -0400 (EDT)
From: "Denys Dmytriyenko" <denis@denix.org>
To: poky@lists.yoctoproject.org
Cc: Denys Dmytriyenko <denis@denix.org>
Subject: [PATCH] poky-tiny: drop uclibc override
Date: Wed,  4 Aug 2021 00:21:37 -0400
Message-Id: <1628050897-50449-1-git-send-email-denis@denix.org>
X-Mailer: git-send-email 2.7.4

Since uclibc is no longer supported, corresponding override was left
un-converted to the new syntax. Simply drop it.

Signed-off-by: Denys Dmytriyenko <denis@denix.org>
---
 meta-poky/conf/distro/poky-tiny.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index 80fb368..c25e50c 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -80,7 +80,6 @@ DISTRO_FEATURES = "${DISTRO_FEATURES_TINY} \
                   "
 
 # Enable LFS - see bug YOCTO #5865
-DISTRO_FEATURES:append_libc-uclibc = " largefile"
 DISTRO_FEATURES:append:libc-musl = " largefile"
 
 DISTRO_FEATURES:class-native = "${DISTRO_FEATURES_DEFAULT} ${POKY_DEFAULT_DISTRO_FEATURES}"
-- 
2.7.4

