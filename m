Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web09.22163.1647223305645288334
 for <poky@lists.yoctoproject.org>;
 Sun, 13 Mar 2022 19:01:46 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=d9G9ofih;
 spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647223306; x=1678759306;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=j3wQ4i56XSpa+4bqdXjambkw2EgG7Wu5HPtLMUxUrpM=;
  b=d9G9ofihtIJJrMlOcD4ldP7clY4z55A5g3NkMu9sRLx5VZ9xSJvnvAtz
   5cyBWzCvKKI6GS1pQtXDz43hWH0WVDqxvDF5R4GWptQLYH8/y1gyKItth
   mSUk1OCYYNCJMXbGO5Xw8H8Z4IE9z1jmW9Czj4jmw1R1FHRst5uQ8kG0m
   do9dNnck8KzZ96CzkI3KLAowz7MO2Ms/tq/J7YQG5KyDoa5gizarO/FK7
   KmLRkTTt9FuxHoFnLkEYh9zT1fROLufA84ycdeael44Bf2EP4HATgpOLr
   Q1H5QG4FyJgfWkVujGb3rwVWJ6Gzrsnm8YeIhO49jmuJhFB7ZVKBxcZST
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="255647248"
X-IronPort-AV: E=Sophos;i="5.90,179,1643702400"; 
   d="scan'208";a="255647248"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Mar 2022 19:01:46 -0700
X-IronPort-AV: E=Sophos;i="5.90,179,1643702400"; 
   d="scan'208";a="689660121"
Received: from lsim7-mobl1.gar.corp.intel.com (HELO anmitta2-mobl3.intel.com) ([10.215.229.232])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Mar 2022 19:01:44 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [honister][meta-yocto][PATCH 1/2] linux-yocto/5.10: update genericx86* machines to v5.10.99
Date: Mon, 14 Mar 2022 10:01:36 +0800
Message-Id: <20220314020137.9783-2-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220314020137.9783-1-anuj.mittal@intel.com>
References: <20220314020137.9783-1-anuj.mittal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Tamizharasan Kumar <tamizharasanx.kumar@intel.com>

Signed-off-by: Tamizharasan Kumar <tamizharasanx.kumar@intel.com>
Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index 9928466..4f4ec0f 100644
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
2.35.1

