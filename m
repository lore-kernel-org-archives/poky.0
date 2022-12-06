Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by mx.groups.io with SMTP id smtpd.web10.44145.1670320497340367762
 for <poky@lists.yoctoproject.org>;
 Tue, 06 Dec 2022 01:55:00 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=XyIoVC+m;
 spf=pass (domain: intel.com, ip: 192.55.52.136, mailfrom: adhityax.siddartha.ravula@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1670320500; x=1701856500;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=Uaoi9bYl7FuCEuuNINP1UsK56w1N3/DRJC8oRqBHV6c=;
  b=XyIoVC+mm7vHD7y4BoksTHssn4xKbw0/xYRnJtWpAIYyf5Iq4Xt/PJsJ
   aKP9ka9WQZPhraZ6xv1hwrZeoVt+TFX5aCuu67v48PhQ3tW0Z95HRELKK
   TNoFNJE+fUU3Ua0g39ZPq8Ml4n2fBvs90kBmDcJHn6Hn/SW9Rdg0Fxwn+
   2b0SxgoaJQ3piplPcRTaRgc78V74LfEQPUnGBvzc9SPd6+j/eHfwWyurC
   k+VL5vp9Nj1M/CcReM2WMW9xNcyVbe1d/plQh0K2x/fRAb1qwOhGKgO2G
   6m4AXetKqbPMHrYiynmmpsoQ+cEZExMVsr8bn/vZrJeHgjpDSIdb2T7dg
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="296276806"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; 
   d="scan'208";a="296276806"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Dec 2022 01:55:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="639811261"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; 
   d="scan'208";a="639811261"
Received: from pg02rnw00154.png.intel.com ([172.22.33.69])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Dec 2022 01:54:59 -0800
From: adhityax.siddartha.ravula@intel.com
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][langdale][PATCH 2/2] linux-yocto/5.19: update genericx86* machines to v5.19.14
Date: Tue,  6 Dec 2022 17:54:35 +0800
Message-Id: <20221206095435.1401028-2-adhityax.siddartha.ravula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221206095435.1401028-1-adhityax.siddartha.ravula@intel.com>
References: <20221206095435.1401028-1-adhityax.siddartha.ravula@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ravula Adhitya Siddartha <adhityax.siddartha.ravula@intel.com>

Signed-off-by: Ravula Adhitya Siddartha <adhityax.siddartha.ravula@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.19.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.19.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.19.bbappend
index ff5070ba4a..950bf0ad9b 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.19.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.19.bbappend
@@ -7,8 +7,8 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "43e6ab6ed043f4bc8e7cffbb08af86af0bdb5e12"
-SRCREV_machine:genericx86-64 ?= "43e6ab6ed043f4bc8e7cffbb08af86af0bdb5e12"
+SRCREV_machine:genericx86 ?= "23ee2ef634b3fb51be429623fa1927b1d5c3e95c"
+SRCREV_machine:genericx86-64 ?= "23ee2ef634b3fb51be429623fa1927b1d5c3e95c"
 SRCREV_machine:edgerouter ?= "43e6ab6ed043f4bc8e7cffbb08af86af0bdb5e12"
 SRCREV_machine:beaglebone-yocto ?= "43e6ab6ed043f4bc8e7cffbb08af86af0bdb5e12"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.19"
-LINUX_VERSION:genericx86-64 = "5.19"
+LINUX_VERSION:genericx86 = "5.19.14"
+LINUX_VERSION:genericx86-64 = "5.19.14"
 LINUX_VERSION:edgerouter = "5.19"
 LINUX_VERSION:beaglebone-yocto = "5.19"
-- 
2.34.1

