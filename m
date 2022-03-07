Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by mx.groups.io with SMTP id smtpd.web12.23525.1646634208603908157
 for <poky@lists.yoctoproject.org>;
 Sun, 06 Mar 2022 22:23:28 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=Ec9F2hQ7;
 spf=pass (domain: intel.com, ip: 134.134.136.31, mailfrom: tamizharasanx.kumar@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1646634208; x=1678170208;
  h=from:to:subject:date:message-id;
  bh=UR1KjogBHU510wx3pPAtR4Jcre+ydI8iZNKVTB3ls5I=;
  b=Ec9F2hQ7PIXNchxKwgS0ZX2iM2Sx5hOvZX/siHXflkfJfbLJwvfSIvww
   5gg/hsPisipEhbSpF2RLCwt5v6MFrJe+v4zak8yAorDdN/zS5DG37QYRg
   lstsFOWps/khfedRqf5PT34jvW8Kj3R7kp8gAxuldvUGIICAwcw6cswJ3
   GNACG0JWjrJmMGzomE85ff2oBGGwO94/qdVXB4+3QF1A+stC50nYsqqPV
   OzSq3080FHPzl4Af6dffxt1RMI5E8gUR2DOmCmrIxYTm/SdvrFD6jkq3K
   hbylBSX1HPQznOG8+xyi+tS4E3KBkRe9bme3Nz4uGXpb7kXuWfYI4089h
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10278"; a="315028322"
X-IronPort-AV: E=Sophos;i="5.90,161,1643702400"; 
   d="scan'208";a="315028322"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Mar 2022 22:23:28 -0800
X-IronPort-AV: E=Sophos;i="5.90,161,1643702400"; 
   d="scan'208";a="553022445"
Received: from inlubt0314.iind.intel.com ([10.67.198.223])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Mar 2022 22:23:27 -0800
From: "Tamizharasan Kumar" <tamizharasanx.kumar@intel.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][honister][PATCH] linux-yocto/5.10: update genericx86* machines to v5.10.99
Date: Mon,  7 Mar 2022 11:53:15 +0530
Message-Id: <20220307062315.11041-1-tamizharasanx.kumar@intel.com>
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

