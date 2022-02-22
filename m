Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web09.12132.1645532795425744825
 for <poky@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 04:26:37 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=HbfAQKjT;
 spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: tamizharasanx.kumar@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645532797; x=1677068797;
  h=from:to:subject:date:message-id:in-reply-to:references;
  bh=UGDVPjTCfV7tm7Fg+8QSmKXdNmd8J+j0AocZvyoZznY=;
  b=HbfAQKjTFImc3DbMuY8DTvrFWe37KKmVg0pqTjTFTe0jFS0WocwkdI0U
   tupRWV1TCkqQfYRifbRUSBukOu0t5579/P7+DuHtQ/prW1OodJk27vC++
   WsHL+hQC7R84Yiw4BDx2rJCfFHa3on5uuapUchT6Tr/8T2U9e8qBicKic
   EWw9LzphAhfa3ZEH2jQDlKG73MGQOLhHH6jcf6maKKRqxhJZsjHECGtCC
   8dPk/e2J1Vkaj3zP79ejh/fIoAUzKdQcHrTwskLCvKUK5gTD83cBJwrDW
   iBfiJujtS4ViUWwq5I1dl1G5nS5M2FIV72feWaT3aEURKl+iHjRB8SQ0G
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="338122894"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; 
   d="scan'208";a="338122894"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Feb 2022 04:26:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; 
   d="scan'208";a="532209106"
Received: from inlubt0314.iind.intel.com ([10.67.198.223])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Feb 2022 04:26:34 -0800
From: "Tamizharasan Kumar" <tamizharasanx.kumar@intel.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][PATCH 2/2] linux-yocto/5.15: update genericx86* machines to v5.15.22
Date: Tue, 22 Feb 2022 17:56:26 +0530
Message-Id: <20220222122626.15817-2-tamizharasanx.kumar@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220222122626.15817-1-tamizharasanx.kumar@intel.com>
References: <20220222122626.15817-1-tamizharasanx.kumar@intel.com>

Signed-off-by: Tamizharasan Kumar <tamizharasanx.kumar@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.15.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
index ea36a2b096..ff85e2e64b 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
@@ -7,8 +7,8 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "5a8ec126c297dd9e410eb23685003f670f8f3d57"
-SRCREV_machine:genericx86-64 ?= "5a8ec126c297dd9e410eb23685003f670f8f3d57"
+SRCREV_machine:genericx86 ?= "7f685244afb3acd13e94968312580b63d7296705"
+SRCREV_machine:genericx86-64 ?= "7f685244afb3acd13e94968312580b63d7296705"
 SRCREV_machine:edgerouter ?= "5a8ec126c297dd9e410eb23685003f670f8f3d57"
 SRCREV_machine:beaglebone-yocto ?= "5a8ec126c297dd9e410eb23685003f670f8f3d57"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.15.1"
-LINUX_VERSION:genericx86-64 = "5.15.1"
+LINUX_VERSION:genericx86 = "5.15.22"
+LINUX_VERSION:genericx86-64 = "5.15.22"
 LINUX_VERSION:edgerouter = "5.15.1"
 LINUX_VERSION:beaglebone-yocto = "5.15.1"
-- 
2.17.1

