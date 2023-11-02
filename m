Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14F0DC4332F
	for <webhook@archiver.kernel.org>; Thu,  2 Nov 2023 10:39:27 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by mx.groups.io with SMTP id smtpd.web10.27995.1698921557719316433
 for <poky@lists.yoctoproject.org>;
 Thu, 02 Nov 2023 03:39:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=m0csoH7T;
 spf=pass (domain: intel.com, ip: 198.175.65.10, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1698921558; x=1730457558;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=mYvd9ZCSdrUtRAgqNHkVGR7AnX10fBZXcDp/Ro9STAY=;
  b=m0csoH7TDA3KmuwYz+usyPLTWliDSY+3hDh5JUDJgrwXcf324fPDfchn
   1qSUbtgyCriYz3e61mHh5pxroZL7cqKGuQUQNu2Fgi9q0yGPmFDknAicY
   vVjK9pNuf6peWIiptQKeA0UJqkQmsVnbSPC8FV4GI8UexefELsslg3A0/
   eBLxXjp6er20Fu3OPgQ7JhOJKPzq0rO1SJtl+k+8ML50DCycb2RdM047O
   OzPyvCEgQdWr7h9eH9/Ku3rNJTbZBgSDZzLq4viwMHZpFwSN1bl4pgj1E
   pAGbYt2LhdTxiiqtoHlGtJTybKKBntI9FXCJpk4rPrYZQLqqZtqh1aMBS
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="1609834"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; 
   d="scan'208";a="1609834"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Nov 2023 03:39:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="754741409"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; 
   d="scan'208";a="754741409"
Received: from cheeyang-desk1.png.intel.com ([172.30.130.8])
  by orsmga007.jf.intel.com with ESMTP; 02 Nov 2023 03:39:16 -0700
From: chee.yang.lee@intel.com
To: poky@lists.yoctoproject.org
Subject: [meta-yocto-bsp][PATCH] machine: drop obsolete SERIAL_CONSOLES_CHECK
Date: Thu,  2 Nov 2023 18:36:48 +0800
Message-Id: <20231102103648.3681280-1-chee.yang.lee@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 02 Nov 2023 10:39:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13194

From: Lee Chee Yang <chee.yang.lee@intel.com>

Signed-off-by: Lee Chee Yang <chee.yang.lee@intel.com>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 1 -
 meta-yocto-bsp/conf/machine/genericx86-64.conf    | 1 -
 2 files changed, 2 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index 8b67cefef7..9f389711b3 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -18,7 +18,6 @@ MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "kernel-image kernel-devicetree"
 do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot virtual/bootloader:do_deploy"
 
 SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0 115200;ttyAMA0"
-SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_VERSION_linux-yocto ?= "6.1%"
diff --git a/meta-yocto-bsp/conf/machine/genericx86-64.conf b/meta-yocto-bsp/conf/machine/genericx86-64.conf
index 14913ea1f1..f19a1c1527 100644
--- a/meta-yocto-bsp/conf/machine/genericx86-64.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86-64.conf
@@ -6,6 +6,5 @@ DEFAULTTUNE ?= "core2-64"
 require conf/machine/include/x86/tune-core2.inc
 require conf/machine/include/genericx86-common.inc
 
-SERIAL_CONSOLES_CHECK = "ttyS0"
 #For runqemu
 QB_SYSTEM_NAME = "qemu-system-x86_64"
-- 
2.34.1


