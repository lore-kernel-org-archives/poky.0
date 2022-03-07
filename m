Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web09.25016.1646649518151792020
 for <poky@lists.yoctoproject.org>;
 Mon, 07 Mar 2022 02:38:41 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=iO5fupGA;
 spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: bindhux.v@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1646649521; x=1678185521;
  h=from:to:subject:date:message-id:in-reply-to:references;
  bh=NnusOBQaRkTULSGoxsyFrOkByNL7rxJ0NtiQzDPNZc8=;
  b=iO5fupGA5jNZWC4B0OPFhey7gM9M2Ih9iVwN7ocC/8HC9BQT2e8pa6nh
   zZFoMXHzmjMmNbCjEXzvGMHOKpTKenCj/D5+TvKI+GKqhYeBSHxBEGdLc
   2lAXjo+xavRHM7sZBElftYxtQc5jZq6Bm/axzmHN4ggHFMoZ0pawHvjeU
   aHwQYxPelP2WnDQcey9Atte6Gd8gVLcs3p99R4BJLwvmDGDd4vg5f3HtE
   1K1TlNhHhmKRWwDkvAP5sGQAwIaIRYQpUq0U/911e+afhGAl/sQD6qXbF
   7l/GS5LDOe2htdemLbMlVAKcVCufO7Kb/uo5jTX36Yl5xYZBnUBsaa3TN
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10278"; a="317592354"
X-IronPort-AV: E=Sophos;i="5.90,161,1643702400"; 
   d="scan'208";a="317592354"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Mar 2022 02:38:41 -0800
X-IronPort-AV: E=Sophos;i="5.90,161,1643702400"; 
   d="scan'208";a="553104073"
Received: from inlubt0314.iind.intel.com ([10.67.198.223])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Mar 2022 02:38:40 -0800
From: "Bindhu V" <bindhux.v@intel.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][hardknott][PATCH 2/2] linux-yocto/5.4: update genericx86* machines to v5.4.178
Date: Mon,  7 Mar 2022 16:08:24 +0530
Message-Id: <20220307103824.11098-2-bindhux.v@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220307103824.11098-1-bindhux.v@intel.com>
References: <20220307103824.11098-1-bindhux.v@intel.com>

Signed-off-by: Bindhu V <bindhux.v@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index cd059c06c4..b2824cbb1d 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,8 +7,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "76404f1ae59698b6a446dba29c885ca78c69c330"
-SRCREV_machine_genericx86-64 ?= "76404f1ae59698b6a446dba29c885ca78c69c330"
+SRCREV_machine_genericx86 ?= "e2020dbe2ccaef50d7e8f37a5bf08c68a006a064"
+SRCREV_machine_genericx86-64 ?= "e2020dbe2ccaef50d7e8f37a5bf08c68a006a064"
 SRCREV_machine_edgerouter ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 SRCREV_machine_beaglebone-yocto ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.158"
-LINUX_VERSION_genericx86-64 = "5.4.158"
+LINUX_VERSION_genericx86 = "5.4.178"
+LINUX_VERSION_genericx86-64 = "5.4.178"
 LINUX_VERSION_edgerouter = "5.4.58"
 LINUX_VERSION_beaglebone-yocto = "5.4.58"
-- 
2.17.1

