Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00E71F357DA
	for <webhook@archiver.kernel.org>; Wed, 25 Feb 2026 07:18:00 +0000 (UTC)
Received: from mta-65-226.siemens.flowmailer.net (mta-65-226.siemens.flowmailer.net [185.136.65.226])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.40691.1772003877302291940
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Feb 2026 23:17:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=peter.marko@siemens.com header.s=fm2 header.b=Lvh640F2;
 spf=pass (domain: rts-flowmailer.siemens.com, ip: 185.136.65.226, mailfrom: fm-256628-20260225071753a8b2e83d7d0002074a-foymdk@rts-flowmailer.siemens.com)
Received: by mta-65-226.siemens.flowmailer.net with ESMTPSA id 20260225071753a8b2e83d7d0002074a
        for <poky@lists.yoctoproject.org>;
        Wed, 25 Feb 2026 08:17:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=peter.marko@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=UITrNVWW4mISkl9W3HM2RGmZVgy+ykZmNttGze7+iKM=;
 b=Lvh640F2kTL6I4UEfilbMjL1jxreFzk+VxScGWPusRogERMs1xbv4ol5ZJugtQxdY+i14e
 6bOtDcTYQK/g7qpAk6IgJegPZ+sV0rtWcR60GHeql67cVV13p6PPcYkL8SRVNumnZR8Z4KMM
 cZNCk0B+26HhPvAulDd3BQ1JuDdg6sLjsu60y0kM5WtnEf3D/lCvvwAARRL6cIAsc9Bo3dla
 C617WuaxcW3aN6n4eiTg0VY+C2RE2ThstDx0tCg+xck6BSB6GlafbS7kxloTjqmf4MDVD0Fy
 GNFADgjHBIFCQq6r7p5Vc91pdnKjv9cxbOxUkG8H8/6O/Nn7Pop/uLKQ==;
From: Peter Marko <peter.marko@siemens.com>
To: poky@lists.yoctoproject.org
Cc: yoann.congal@smile.fr,
	paul@pbarker.dev,
	Peter Marko <peter.marko@siemens.com>
Subject: [meta-yocto][scarthgap][PATCH] poky.conf: bump version for 5.0.16
Date: Wed, 25 Feb 2026 08:18:52 +0100
Message-Id: <20260225071852.10169-1-peter.marko@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-256628:519-21489:flowmailer
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 25 Feb 2026 07:17:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13840

From: Peter Marko <peter.marko@siemens.com>

rc1 and rc2 were built with old DISTRO_VERSION.

Signed-off-by: Peter Marko <peter.marko@siemens.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 62d9f0d..59d8f69 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "5.0.15"
+DISTRO_VERSION = "5.0.16"
 DISTRO_CODENAME = "scarthgap"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"

