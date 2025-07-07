Return-Path: <adrian.freihofer@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 038CDC83F14
	for <webhook@archiver.kernel.org>; Mon,  7 Jul 2025 20:38:29 +0000 (UTC)
Received: from mta-64-228.siemens.flowmailer.net (mta-64-228.siemens.flowmailer.net [185.136.64.228])
 by mx.groups.io with SMTP id smtpd.web11.2852.1751920708278051673
 for <poky@lists.yoctoproject.org>;
 Mon, 07 Jul 2025 13:38:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=adrian.freihofer@siemens.com header.s=fm1 header.b=ZsHnuNQ4;
 spf=pass (domain: rts-flowmailer.siemens.com, ip: 185.136.64.228, mailfrom: fm-1329275-20250707203826025bec738156f5bc88-6tsrjo@rts-flowmailer.siemens.com)
Received: by mta-64-228.siemens.flowmailer.net with ESMTPSA id 20250707203826025bec738156f5bc88
        for <poky@lists.yoctoproject.org>;
        Mon, 07 Jul 2025 22:38:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=adrian.freihofer@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=xjnqSzW/zv7jqyYUGyCO8j2WzlAE0OSmrWlqUAG57ns=;
 b=ZsHnuNQ4YIq+9qFE8tEwmjFPKzXcZKGWtXvNvAF9vJJJU1joUtYdQASfWR7CrXqb7Y/CCq
 VdGKuCCNtNrFSW1ZncipBryx4Eiumg8ZzsciU6ef2U6P2JZB19hCjU/Fvv6KxVQjNWBsokrd
 AGW78kq16QgV7J+sDCZGcBHqmtHt2UNZHJjrMhctSJ+wlW0B/2kS41/IaJP/4mkAtMXMDVm0
 /tMPBzNoxu3H6zMr+Yizg+mGD4IKkQKEw07Gus1MLmDTwZw8vw+w/Vmsm6bjnV4Y39fl+7Ki
 bTZf5dyZmSME1XrKjj1tGXryS8cFf2966bHowSHdeOIXWNDP+zeLooBQ==;
From: AdrianF <adrian.freihofer@siemens.com>
To: poky@lists.yoctoproject.org
Cc: Adrian Freihofer <adrian.freihofer@siemens.com>
Subject: [PATCH v2 5/5] poky-altcfg: use FIT kernel for the beaglebone
Date: Mon,  7 Jul 2025 22:37:58 +0200
Message-ID: <20250707203820.2554184-6-adrian.freihofer@siemens.com>
In-Reply-To: <20250707203820.2554184-1-adrian.freihofer@siemens.com>
References: <20250707203820.2554184-1-adrian.freihofer@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1329275:519-21489:flowmailer
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 07 Jul 2025 20:38:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13694

From: Adrian Freihofer <adrian.freihofer@siemens.com>

This is mainly for getting more test coverage with oe-selftest and on
real hardware.

Signed-off-by: Adrian Freihofer <adrian.freihofer@siemens.com>
---
 meta-poky/conf/distro/include/poky-distro-alt-test-config.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
index da9199dcd4d..e48a56148a8 100644
--- a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
+++ b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
@@ -6,3 +6,6 @@ PREFERRED_VERSION_linux-yocto = "6.12%"
 
 # Ensure the kernel nfs server is enabled
 KERNEL_FEATURES:append:pn-linux-yocto = " features/nfsd/nfsd-enable.scc"
+
+# Use the FIT image for the beaglebone reference hardware just for testing purpose
+FIT_IMAGE_KERNEL = "1"
-- 
2.50.0


