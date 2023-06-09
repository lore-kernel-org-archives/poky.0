Return-Path: <wen.yan.tan@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 426DDC7EE2E
	for <webhook@archiver.kernel.org>; Fri,  9 Jun 2023 03:49:56 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web11.5837.1686282592072036899
 for <poky@lists.yoctoproject.org>;
 Thu, 08 Jun 2023 20:49:52 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=TeB+Y06g;
 spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: wen.yan.tan@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1686282592; x=1717818592;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=QVCMOLWhkPglGs7fDRdjFjWbeTLvG8umXq3kgZcBuyA=;
  b=TeB+Y06gRWYdjek6W6MnMo/KF+0icyo4e2D/ofBbr4NZOkSiAXLn0/f4
   /faapm4V+UDPV0q0qwsIFNmtdzulMg5w02bk4C1CZYQCro4rsR1OnBQ+r
   JqzQBD57epwfz3EB2zVy3uIyRExo5AWy/4wNvTV3k+ooXr5NqhLL/quSR
   Esp59E6Hq6BJCPr5A09a8AAbLKmy94tk2ctZjCXw5hUBPHBEuBKK6oPjU
   hIfiWGECukTiynr3RmAb0fUHEMO1xFJS7KWnMPOIpMOK0gLMIFHA+BkBZ
   WtgeH8yXrcylmnaaXdZhBBZ3ZX4e3iERgUkP0DPPnS3rMkdsZRvoB3v5K
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="356394355"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; 
   d="scan'208";a="356394355"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2023 20:49:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="884441945"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; 
   d="scan'208";a="884441945"
Received: from andromeda02.png.intel.com ([10.221.253.198])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2023 20:49:49 -0700
From: Tan Wen Yan <wen.yan.tan@intel.com>
To: poky@lists.yoctoproject.org
Cc: Tan Wen Yan <wen.yan.tan@intel.com>
Subject: [meta-yocto-bsp][PATCH] linux-yocto/6.1: update genericx86* machines to v6.1.30
Date: Fri,  9 Jun 2023 11:38:03 +0800
Message-Id: <20230609033803.2880660-1-wen.yan.tan@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 09 Jun 2023 03:49:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13078

Signed-off-by: Tan Wen Yan <wen.yan.tan@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_6.1.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend
index b80c51848d..ed2b18ab60 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend
@@ -6,14 +6,14 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "423e1996694b61fbfc8ec3bf062fc6461d64fde1"
-SRCREV_machine:genericx86-64 ?= "423e1996694b61fbfc8ec3bf062fc6461d64fde1"
+SRCREV_machine:genericx86 ?= "6ec439b4b456ce929c4c07fe457b5d6a4b468e86"
+SRCREV_machine:genericx86-64 ?= "6ec439b4b456ce929c4c07fe457b5d6a4b468e86"
 SRCREV_machine:beaglebone-yocto ?= "423e1996694b61fbfc8ec3bf062fc6461d64fde1"
 
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "6.1.20"
-LINUX_VERSION:genericx86-64 = "6.1.20"
+LINUX_VERSION:genericx86 = "6.1.30"
+LINUX_VERSION:genericx86-64 = "6.1.30"
 LINUX_VERSION:beaglebone-yocto = "6.1.20"
-- 
2.37.3


