Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D643BC28B20
	for <webhook@archiver.kernel.org>; Fri, 28 Mar 2025 19:33:30 +0000 (UTC)
Received: from mta-65-225.siemens.flowmailer.net (mta-65-225.siemens.flowmailer.net [185.136.65.225])
 by mx.groups.io with SMTP id smtpd.web10.2616.1743190403598863678
 for <poky@lists.yoctoproject.org>;
 Fri, 28 Mar 2025 12:33:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=peter.marko@siemens.com header.s=fm2 header.b=CkzEZgXU;
 spf=pass (domain: rts-flowmailer.siemens.com, ip: 185.136.65.225, mailfrom: fm-256628-202503281933208f93d8fd3b881d4a9c-vjcuxz@rts-flowmailer.siemens.com)
Received: by mta-65-225.siemens.flowmailer.net with ESMTPSA id 202503281933208f93d8fd3b881d4a9c
        for <poky@lists.yoctoproject.org>;
        Fri, 28 Mar 2025 20:33:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=peter.marko@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=xVlz7Zj9i0uB0AJjv4KEnfCOXxpqT3UrxhrSRbMAAJw=;
 b=CkzEZgXUKiQW20FBWjNHcpNMj0y/CAMF1nfRFsEjVXGQudrwzKwhQyoRpCgHpA1PbMeVpX
 dZDXdy5tpY8gl8mNjNVxiICPOM+9LlP/wmZ9B6znDCoHKHBr9EAZD84h6NhhI83XaaTUJ579
 XOPDR/OXWUt5Xw0L1ip3ZgrSYV6/ChvSmyB361z0LzpGGs9v1D4druiweXH+7CG89Mkqrj0L
 m79xDMS7SJjA7KT0yWT1tEHdqSW6Ys2fIISCjkGVED/CPhrlIwGr6xCSQ65+SBDjtM9UzuVC
 +0i7a3wPMi9aMnxa6NdC45+zYkMxyFWotzevYDh5UVMbJZQnCWI+Te1Q==;
From: Peter Marko <peter.marko@siemens.com>
To: poky@lists.yoctoproject.org
Cc: Peter Marko <peter.marko@siemens.com>
Subject: [poky][PATCH] poky-tiny: correct override syntax in poky-tiny.conf
Date: Fri, 28 Mar 2025 20:32:33 +0100
Message-Id: <20250328193233.21309-1-peter.marko@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-256628:519-21489:flowmailer
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 28 Mar 2025 19:33:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13582

From: Peter Marko <peter.marko@siemens.com>

it's a comment but should be anyway migrated to new override syntax

Signed-off-by: Peter Marko <peter.marko@siemens.com>
---
 meta-poky/conf/distro/poky-tiny.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index 20c13e6f60..075702a32c 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -39,7 +39,7 @@ TCLIBC = "musl"
 FULL_OPTIMIZATION = "-Os"
 
 # FIXME: consider adding a new "tiny" feature
-#DISTRO_FEATURES_append = " tiny"
+#DISTRO_FEATURES:append = " tiny"
 
 # Distro config is evaluated after the machine config, so we have to explicitly
 # set the kernel provider to override a machine config.

