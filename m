Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web11.5651.1670473710367793110
 for <poky@lists.yoctoproject.org>;
 Wed, 07 Dec 2022 20:28:30 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=ED6F6aja;
 spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: adhityax.siddartha.ravula@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1670473710; x=1702009710;
  h=from:to:subject:date:message-id;
  bh=B3MQwmGEWvJpMbro4GwaV3+q+pEYahYb7uVnop3xZyk=;
  b=ED6F6ajaUfUaBvKc0SoKpAR60Na3ja512f/GGVpz5/gjFO9sndrmb5dm
   r+ePhd//5tDl910eqFwaviBdiV/b7uMv6WUCpvxsDxrWFzltPbSKJRA3G
   CMBKbSdcdKVFqpGYzg72sKfun7K0CwFAStGYJ5UsXtK89k7X2QL6KmHo9
   YHSF6Cz8zS3Qgq2ThQ/aKxamMf9B0CfYPp+zcni2T8W+aFlDpWg1LNUbE
   7ZQ6LlOz2ajppHzTnA7grnqVTV6NDcJmJtkod5ab1nyFf5bcVnL3fqgIv
   LdFBwqH31pAt98m6xJbl/efqFJqy5QHGqqiKTKLAz0VXxZVH636wFM57S
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="314715232"
X-IronPort-AV: E=Sophos;i="5.96,226,1665471600"; 
   d="scan'208";a="314715232"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Dec 2022 20:28:29 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="975710317"
X-IronPort-AV: E=Sophos;i="5.96,226,1665471600"; 
   d="scan'208";a="975710317"
Received: from inlubt0314.iind.intel.com ([10.67.198.223])
  by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Dec 2022 20:28:28 -0800
From: adhityax.siddartha.ravula@intel.com
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone][PATCH 1/2] linux-yocto/5.10: update genericx86* machines to v5.10.149
Date: Thu,  8 Dec 2022 09:58:17 +0530
Message-Id: <20221208042818.841-1-adhityax.siddartha.ravula@intel.com>
X-Mailer: git-send-email 2.17.1

From: Ravula Adhitya Siddartha <adhityax.siddartha.ravula@intel.com>

Signed-off-by: Ravula Adhitya Siddartha <adhityax.siddartha.ravula@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index 1f49fd106c..c6032a84d8 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,8 +7,8 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "d09b184cbc0321794bda715ab560dec077a048d0"
-SRCREV_machine:genericx86-64 ?= "d09b184cbc0321794bda715ab560dec077a048d0"
+SRCREV_machine:genericx86 ?= "7abf3b31ec4e4fc9564b7a8db6844d9b4d71a1b2"
+SRCREV_machine:genericx86-64 ?= "7abf3b31ec4e4fc9564b7a8db6844d9b4d71a1b2"
 SRCREV_machine:edgerouter ?= "7c9332d91089ee63581be6cd3e7197c9d3e9a883"
 SRCREV_machine:beaglebone-yocto ?= "3c44f12b9de336579d00ac0105852f4cbf7e8b7d"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.10.135"
-LINUX_VERSION:genericx86-64 = "5.10.135"
+LINUX_VERSION:genericx86 = "5.10.149"
+LINUX_VERSION:genericx86-64 = "5.10.149"
 LINUX_VERSION:edgerouter = "5.10.130"
 LINUX_VERSION:beaglebone-yocto = "5.10.130"
-- 
2.17.1

