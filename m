Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web10.44226.1670320850669695747
 for <poky@lists.yoctoproject.org>;
 Tue, 06 Dec 2022 02:00:52 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=EO87DIpV;
 spf=pass (domain: intel.com, ip: 134.134.136.126, mailfrom: adhityax.siddartha.ravula@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1670320852; x=1701856852;
  h=from:to:subject:date:message-id:in-reply-to:references;
  bh=SoJQi32QJydRonsktFxnii4/gAVH8+MCZWJH/cNV2U0=;
  b=EO87DIpVfr1R5wvVoWZ0ZlKe9C9ALPHacabi/V2Wof6iL/i/PVWH8K/l
   6cL9FFnzIG95g8DJITJZqeIf43wNIuRYjvPEQapaOob5t2BKs5aq9CsJZ
   aLCfJh4AdPaYnb2Gx9YF5VkoQDCl1xL+6Bs6Le0qaJGWrEvq0PZTFKj+6
   +j6BxRbyVsbQJS2ywo6T8MtnE4BjLGZxQLv6Z1XkGBFLQJmM4QCoDZL+B
   JoxYqUnoO4lUEeu4OaF/BsejhHcTYgejmXNV6Ax8Gs56/gxAz7t4cWzET
   t0rYR9s5A4no1A5IDETF1ULfI1s/IuxmOEOkl2NToB5RN4mt+jk3Vtbmj
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="300008715"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; 
   d="scan'208";a="300008715"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Dec 2022 02:00:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="891321022"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; 
   d="scan'208";a="891321022"
Received: from inlubt0314.iind.intel.com ([10.67.198.223])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Dec 2022 02:00:51 -0800
From: adhityax.siddartha.ravula@intel.com
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][PATCH 2/2] linux-yocto/5.19: update genericx86* machines to v5.19.17
Date: Tue,  6 Dec 2022 15:30:38 +0530
Message-Id: <20221206100038.29702-2-adhityax.siddartha.ravula@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221206100038.29702-1-adhityax.siddartha.ravula@intel.com>
References: <20221206100038.29702-1-adhityax.siddartha.ravula@intel.com>

From: Ravula Adhitya Siddartha <adhityax.siddartha.ravula@intel.com>

Signed-off-by: Ravula Adhitya Siddartha <adhityax.siddartha.ravula@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.19.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.19.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.19.bbappend
index ff5070ba4a..5794657cfe 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.19.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.19.bbappend
@@ -7,8 +7,8 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "43e6ab6ed043f4bc8e7cffbb08af86af0bdb5e12"
-SRCREV_machine:genericx86-64 ?= "43e6ab6ed043f4bc8e7cffbb08af86af0bdb5e12"
+SRCREV_machine:genericx86 ?= "aaf4490d1807c49e3e0ceab1372533937ef2c82b"
+SRCREV_machine:genericx86-64 ?= "aaf4490d1807c49e3e0ceab1372533937ef2c82b"
 SRCREV_machine:edgerouter ?= "43e6ab6ed043f4bc8e7cffbb08af86af0bdb5e12"
 SRCREV_machine:beaglebone-yocto ?= "43e6ab6ed043f4bc8e7cffbb08af86af0bdb5e12"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.19"
-LINUX_VERSION:genericx86-64 = "5.19"
+LINUX_VERSION:genericx86 = "5.19.17"
+LINUX_VERSION:genericx86-64 = "5.19.17"
 LINUX_VERSION:edgerouter = "5.19"
 LINUX_VERSION:beaglebone-yocto = "5.19"
-- 
2.17.1

