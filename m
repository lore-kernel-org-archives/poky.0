Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web10.44226.1670320850669695747
 for <poky@lists.yoctoproject.org>;
 Tue, 06 Dec 2022 02:00:50 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=hQb1VI5R;
 spf=pass (domain: intel.com, ip: 134.134.136.126, mailfrom: adhityax.siddartha.ravula@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1670320850; x=1701856850;
  h=from:to:subject:date:message-id;
  bh=V/E2LsEtFiO0L07AV9EZ0Ijc77KAfoUsghU/5bwqCuk=;
  b=hQb1VI5RZiihSFicYQKImg+YxPGVdbkwENV+ZWSl+DdLPlHazU9oufdE
   FH7CG3QWE5IjGwwUK6K25YttlG+1etDH3CxQiJDHMC89gQGqNhbMq610W
   kI7bF5QsJ2AaYExBv3L0/sexfVVv7oy40+NhmKWS6d9mVc9LSHJ8zOYqz
   NxqEzrnf4VWFo8rcSg7YotmpcbO1ETfrOuhqmyxssTLjKf8rdHg0b0tpi
   0V/YHd9KPzgkHCeX3fjXZ/9W4iH25tQyHb/zQJngObYn0uE34ekA1yDyq
   8QkqsT/ey9PVoHZdeSA0GyBARBayjkoHuoohI+I87a/g1I1HF386fWWwm
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="300008702"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; 
   d="scan'208";a="300008702"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Dec 2022 02:00:49 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="891321008"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; 
   d="scan'208";a="891321008"
Received: from inlubt0314.iind.intel.com ([10.67.198.223])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Dec 2022 02:00:48 -0800
From: adhityax.siddartha.ravula@intel.com
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][PATCH 1/2] linux-yocto/5.15: update genericx86* machines to v5.15.78
Date: Tue,  6 Dec 2022 15:30:37 +0530
Message-Id: <20221206100038.29702-1-adhityax.siddartha.ravula@intel.com>
X-Mailer: git-send-email 2.17.1

From: Ravula Adhitya Siddartha <adhityax.siddartha.ravula@intel.com>

Signed-off-by: Ravula Adhitya Siddartha <adhityax.siddartha.ravula@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.15.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
index a5c0ecdbd9..e4a08cfe03 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
@@ -7,8 +7,8 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "a40d2daf2795d89e3ef8af0413b25190558831ec"
-SRCREV_machine:genericx86-64 ?= "a40d2daf2795d89e3ef8af0413b25190558831ec"
+SRCREV_machine:genericx86 ?= "8cd3f1c8dc13e8fa2d9a25ce0285d3526705eea7"
+SRCREV_machine:genericx86-64 ?= "8cd3f1c8dc13e8fa2d9a25ce0285d3526705eea7"
 SRCREV_machine:edgerouter ?= "90f1ee6589264545f548d731c2480b08a007230f"
 SRCREV_machine:beaglebone-yocto ?= "9aabbaa89fcb21af7028e814c1f5b61171314d5a"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.15.54"
-LINUX_VERSION:genericx86-64 = "5.15.54"
+LINUX_VERSION:genericx86 = "5.15.78"
+LINUX_VERSION:genericx86-64 = "5.15.78"
 LINUX_VERSION:edgerouter = "5.15.54"
 LINUX_VERSION:beaglebone-yocto = "5.15.54"
-- 
2.17.1

