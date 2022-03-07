Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web09.25016.1646649518151792020
 for <poky@lists.yoctoproject.org>;
 Mon, 07 Mar 2022 02:38:38 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=SxnHM6RE;
 spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: bindhux.v@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1646649518; x=1678185518;
  h=from:to:subject:date:message-id;
  bh=Lfg0ADwRml1YCjeYTOcn8q6oIYjpjiDZqI148NXd4jk=;
  b=SxnHM6REFOvPZdxZKmMS4UJdbCaSzBFyOee8d63JKkyR5XxfnnA/ABc3
   iC3eqTgAEjrhP1cvV6ZMBMXe0yP39OBgHI0dKpb/95UXruli5qTm+j8I1
   2Gk3cUYrK6xTa/CBNsL8GyX8EkjhfambcqS8l1JfrxxKWCsOhb6TX+bSq
   eb7w5Ie4qCn56jrdggQEWsHUK4q47y8DoStZQx+v0Z46LP6SQjj2p1Gah
   jmA2fNQm2T9CthtjJKBwdXEMIF62tug7ZDYJjn9ZYg+boTfvZT/PMCVL0
   sIaffEKd28q1czEz6U+f9t6Cxb8gyqIwucoMojeGBkopaxrm2hKyvY8aS
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10278"; a="317592333"
X-IronPort-AV: E=Sophos;i="5.90,161,1643702400"; 
   d="scan'208";a="317592333"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Mar 2022 02:38:37 -0800
X-IronPort-AV: E=Sophos;i="5.90,161,1643702400"; 
   d="scan'208";a="553104060"
Received: from inlubt0314.iind.intel.com ([10.67.198.223])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Mar 2022 02:38:36 -0800
From: bindhux.v@intel.com
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][hardknott][PATCH 1/2] linux-yocto/5.10: update genericx86* machines to v5.10.99
Date: Mon,  7 Mar 2022 16:08:23 +0530
Message-Id: <20220307103824.11098-1-bindhux.v@intel.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Bindhu V <bindhux.v@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index 21f99ea452..b9bb9a087c 100644
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
2.17.1

