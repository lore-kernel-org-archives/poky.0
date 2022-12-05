Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web10.7514.1670215191221066750
 for <poky@lists.yoctoproject.org>;
 Sun, 04 Dec 2022 20:39:51 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=hnUTWPzs;
 spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: adhityax.siddartha.ravula@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1670215191; x=1701751191;
  h=from:to:subject:date:message-id;
  bh=GIjudr/YKWqVbhlXwL8Rb8itEhbKYBkDLCHYc6s9zcQ=;
  b=hnUTWPzsMs8uvSf7YlPNIaknAWtTPo38yD7soF9BD4FOk4IOJ6kskMDg
   n7ixRKxiaIzGcaxybwugXXFNbv7gv95uGHPIMKu8Zq1UhbpKuFcXhAEMF
   xbjS4fpXb++mNhKFC+YsUAkqP7+l+uivCH27LKlBiKk9LVcRLbPgKWbGr
   AxUVXsropWoy0GUI97CUsoqdtTNKwnwTn1GWazaeY2bMcZ+W1/1Gv+PMs
   xrRM+TETabVHYJrONOASDoLMTG4W/QMTXVpExotCqsa+/PNw9P3hLGYf5
   D40xP+gu02WUgI24ZQ5/R47yhL3FI5BiVwXMokk/e0sImBw4GMmpHr+71
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="343248589"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; 
   d="scan'208";a="343248589"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Dec 2022 20:39:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="752029481"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; 
   d="scan'208";a="752029481"
Received: from inlubt0314.iind.intel.com ([10.67.198.223])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Dec 2022 20:39:49 -0800
From: adhityax.siddartha.ravula@intel.com
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell][PATCH] linux-yocto/5.4: update genericx86* machines to v5.4.219
Date: Mon,  5 Dec 2022 10:09:24 +0530
Message-Id: <20221205043924.27472-1-adhityax.siddartha.ravula@intel.com>
X-Mailer: git-send-email 2.17.1

From: Ravula Adhitya Siddartha <adhityax.siddartha.ravula@intel.com>

Signed-off-by: Ravula Adhitya Siddartha <adhityax.siddartha.ravula@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index 219e788f47..fbe039aa95 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,8 +7,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "8a59dfded81659402005acfb06fbb00b71c8ce86"
-SRCREV_machine_genericx86-64 ?= "8a59dfded81659402005acfb06fbb00b71c8ce86"
+SRCREV_machine_genericx86 ?= "35826e154ee014b64ccfa0d1f12d36b8f8a75939"
+SRCREV_machine_genericx86-64 ?= "35826e154ee014b64ccfa0d1f12d36b8f8a75939"
 SRCREV_machine_edgerouter ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 SRCREV_machine_beaglebone-yocto ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.205"
-LINUX_VERSION_genericx86-64 = "5.4.205"
+LINUX_VERSION_genericx86 = "5.4.219"
+LINUX_VERSION_genericx86-64 = "5.4.219"
 LINUX_VERSION_edgerouter = "5.4.58"
 LINUX_VERSION_beaglebone-yocto = "5.4.58"
-- 
2.17.1

