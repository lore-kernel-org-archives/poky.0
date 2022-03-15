Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web08.12014.1647356335188999750
 for <poky@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 07:58:56 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=dmuBn90w;
 spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647356336; x=1678892336;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=pPweBxJaSe143UNyRcOIlLEuFq65jCX8TYfcLZS/1bA=;
  b=dmuBn90w8kgrsQ+39mX1D0wfzAbDXHRb8LwQxSJrPLGT7H8j5fZ/xgwI
   OteR9RKHLlem7+s020JQKO/Cku/NxMM5DPfhI05eFg9u1PKRvlh54u3dz
   gSDD+1zp6j8JnTVpV6eV+Dfe8ARMlMWwNA9eQIKPwHimrtoHYjxmjP1bM
   ih0yBzINQjTtViBSfJT4LRoy7Fg+6RZ3KVMZYFveoC4C8fbGXsW155qu9
   /jdSFKMb47e75VJfnRWq7XrUkI+FLYxaIjeg8jlmX5LwwoqwH8wyYQVnw
   bmxz/blKWOdE0a//R6jWtavWiXB0hgVgSJUT9Y8plkzmeceo3BTbaD0Hp
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="256050767"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; 
   d="scan'208";a="256050767"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Mar 2022 07:58:53 -0700
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; 
   d="scan'208";a="498045936"
Received: from ezulkifl-mobl.gar.corp.intel.com (HELO anmitta2-mobl3.intel.com) ([10.215.233.253])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Mar 2022 07:58:52 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [hardknott][meta-yocto][PATCH 1/3] linux-yocto/5.10: update genericx86* machines to v5.10.99
Date: Tue, 15 Mar 2022 22:58:44 +0800
Message-Id: <20220315145846.5535-2-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220315145846.5535-1-anuj.mittal@intel.com>
References: <20220315145846.5535-1-anuj.mittal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bindhu V <bindhux.v@intel.com>

Signed-off-by: Bindhu V <bindhux.v@intel.com>
Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index 21f99ea..b9bb9a0 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,8 +7,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "1bb9d730ac6630d3f41c2ef529fab09f12bcf07d"
-SRCREV_machine_genericx86-64 ?= "1bb9d730ac6630d3f41c2ef529fab09f12bcf07d"
+SRCREV_machine_genericx86 ?= "84f6a75f64961e59d61bf3d70ab17e8bb430386b"
+SRCREV_machine_genericx86-64 ?= "84f6a75f64961e59d61bf3d70ab17e8bb430386b"
 SRCREV_machine_edgerouter ?= "4ab94e777d8b41ee1ee4c279259e9733bc8049b1"
 SRCREV_machine_beaglebone-yocto ?= "941cc9c3849f96f7eaf109b1e35e05ba366aca56"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.10.82"
-LINUX_VERSION_genericx86-64 = "5.10.82"
+LINUX_VERSION_genericx86 = "5.10.99"
+LINUX_VERSION_genericx86-64 = "5.10.99"
 LINUX_VERSION_edgerouter = "5.10.63"
 LINUX_VERSION_beaglebone-yocto = "5.10.63"
-- 
2.35.1

