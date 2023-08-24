Return-Path: <peter.kjellerstedt@axis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7454FC7EE43
	for <webhook@archiver.kernel.org>; Thu, 24 Aug 2023 18:01:04 +0000 (UTC)
Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web10.1981.1692900056505787643
 for <poky@lists.yoctoproject.org>;
 Thu, 24 Aug 2023 11:00:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=CSBw8TL0;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1692900058;
  x=1724436058;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=fpntYwIBnN/gX9rleioP2clG4h925vH3qZfI1rh1nIA=;
  b=CSBw8TL0Em+xkdc8RUNpRBO8jot0tHwZ6UzALaRUkCQK1MnFp2SdOsKf
   tSrV66+hjJH4vIvDHcnUmYppDKQBNAd22O6lM8NLilR17wP5lRD4Zf1jv
   /Bev0jXKNkUk2kp1u2vXCQMPP1Nt4/SwamFhHTDarfozrM4G47lknw4km
   FEIPsl4sA/Un6LxTkHwkfJkprYok4iMxCk/845EZ89MLALjvmpEq+q1v+
   2PNk6KwCJ2RmcUyPa+0h9Cby4/em0rPjBGknfTT/xXOCp0n/xIPM9u7Be
   7uYbsXVfLTFaDDcKalnflcMOlIVl060qXRSLM69j53b43+Z2/AoNGFxQ2
   Q==;
From: Peter Kjellerstedt <pkj@axis.com>
To: <poky@lists.yoctoproject.org>
Subject: [PATCH] poky.conf: Switch to post release name/version
Date: Thu, 24 Aug 2023 20:00:50 +0200
Message-ID: <20230824180050.4083628-1-pkj@axis.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 24 Aug 2023 18:01:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13135

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 meta-poky/conf/distro/poky.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 388694b2f8..3bc7bff011 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,7 +1,7 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "4.2"
-DISTRO_CODENAME = "mickledore"
+DISTRO_VERSION = "4.2+snapshot-${METADATA_REVISION}"
+DISTRO_CODENAME = "nanbield"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"
 SDK_VERSION[vardepvalue] = "${SDK_VERSION}"

