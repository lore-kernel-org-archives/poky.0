Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web09.12132.1645532795425744825
 for <poky@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 04:26:36 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=WY51uenY;
 spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: tamizharasanx.kumar@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645532795; x=1677068795;
  h=from:to:subject:date:message-id;
  bh=UR1KjogBHU510wx3pPAtR4Jcre+ydI8iZNKVTB3ls5I=;
  b=WY51uenY6FyDay2duBPfuBU6CaCux64JIbxlztGFwkaQk7g2XQ4YrT0P
   Lx4R7deC1k/k0FnnFX5GlzK09Z55bUzNtFICD+TPoRyluIp1YtZKn234x
   nPftFRwnEAdhGgLS9TQpNoSobWWX5xAcflrwmW0ayIFjnb2cLhl66KL+s
   n03zNxTqkt+h9w/QurOax5zK1p65+XPVPqJJ7X0RW1SwcjaXEkKyZEcju
   OfGTPWZCoTaAdQrHW1Co7j/577T8asIpH5F9f8Yc78KkNQoh7cBf4TYTP
   KbYe8hVg/mDzfbIyLGxQKZHlxrcQvBOcNdCr3te/p+QsEZcfAbGIbxgGC
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="338122888"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; 
   d="scan'208";a="338122888"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Feb 2022 04:26:34 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; 
   d="scan'208";a="532209099"
Received: from inlubt0314.iind.intel.com ([10.67.198.223])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Feb 2022 04:26:33 -0800
From: tamizharasanx.kumar@intel.com
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][PATCH 1/2] linux-yocto/5.10: update genericx86* machines to v5.10.99
Date: Tue, 22 Feb 2022 17:56:25 +0530
Message-Id: <20220222122626.15817-1-tamizharasanx.kumar@intel.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Tamizharasan Kumar <tamizharasanx.kumar@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index 9928466b27..4f4ec0f210 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,8 +7,8 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "4f2bb635ea267e71f112fd11323c1d3a2f2b85d0"
-SRCREV_machine:genericx86-64 ?= "4f2bb635ea267e71f112fd11323c1d3a2f2b85d0"
+SRCREV_machine:genericx86 ?= "c0b313d988a16b25c1ee730bfe7393c462ee8a5c"
+SRCREV_machine:genericx86-64 ?= "c0b313d988a16b25c1ee730bfe7393c462ee8a5c"
 SRCREV_machine:edgerouter ?= "4ab94e777d8b41ee1ee4c279259e9733bc8049b1"
 SRCREV_machine:beaglebone-yocto ?= "941cc9c3849f96f7eaf109b1e35e05ba366aca56"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.10.87"
-LINUX_VERSION:genericx86-64 = "5.10.87"
+LINUX_VERSION:genericx86 = "5.10.99"
+LINUX_VERSION:genericx86-64 = "5.10.99"
 LINUX_VERSION:edgerouter = "5.10.63"
 LINUX_VERSION:beaglebone-yocto = "5.10.63"
-- 
2.17.1

