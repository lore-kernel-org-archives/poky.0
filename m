Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web12.30544.1640246880657467956
 for <poky@lists.yoctoproject.org>;
 Thu, 23 Dec 2021 00:08:01 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=jeVWaoRN;
 spf=pass (domain: intel.com, ip: 134.134.136.126, mailfrom: jay.shen.teoh@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1640246880; x=1671782880;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=rG43FyCreb5JOcukHCJzcAdm31TlH9O3St1s+dxkLBI=;
  b=jeVWaoRNwG5pQvrOK3wvyLIwJUZFWGh74bl4UOM7ABq4XhiLJ0VmIU5R
   mcyFg3J+/1/ou007uKulIS9IaWTpIWQEJ10fLGV/nU43lr8Xowfz5sz3v
   ifKRign7cFwEHO/xHRpe2xX7/wXzcyJDOguYHvVe5qzbyhatmEghQyYK6
   35i2Z+ZXmOfxoLL40wjLuHFl2dSb5n8oTE5rNfjqREHf1KP6Ph2C3RY7/
   phLp98AUQH8zRZepdyHzDTAL9hajINOD+ou+Mdbn4Z/Y9DhBfLV34iM30
   WKNfrHK11pyfIgUTRC1d3P3LytxKc0obXuZNSnhv7qiuNd5bYc1gDokrn
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10206"; a="227625087"
X-IronPort-AV: E=Sophos;i="5.88,228,1635231600"; 
   d="scan'208";a="227625087"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Dec 2021 00:07:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,228,1635231600"; 
   d="scan'208";a="550577340"
Received: from andromeda02.png.intel.com ([10.221.183.11])
  by orsmga001.jf.intel.com with ESMTP; 23 Dec 2021 00:07:55 -0800
From: "Teoh, Jay Shen" <jay.shen.teoh@intel.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto] [PATCH 1/2] linux-yocto/5.10: update genericx86* machines to v5.10.87
Date: Thu, 23 Dec 2021 16:07:51 +0800
Message-Id: <20211223080752.71819-1-jay.shen.teoh@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Teoh Jay Shen <jay.shen.teoh@intel.com>

Signed-off-by: Teoh Jay Shen <jay.shen.teoh@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index a7ef143dc9..9928466b27 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,8 +7,8 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "164ed895bc1e94722e80fe6496b176f6bb815cd4"
-SRCREV_machine:genericx86-64 ?= "164ed895bc1e94722e80fe6496b176f6bb815cd4"
+SRCREV_machine:genericx86 ?= "4f2bb635ea267e71f112fd11323c1d3a2f2b85d0"
+SRCREV_machine:genericx86-64 ?= "4f2bb635ea267e71f112fd11323c1d3a2f2b85d0"
 SRCREV_machine:edgerouter ?= "4ab94e777d8b41ee1ee4c279259e9733bc8049b1"
 SRCREV_machine:beaglebone-yocto ?= "941cc9c3849f96f7eaf109b1e35e05ba366aca56"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.10.63"
-LINUX_VERSION:genericx86-64 = "5.10.63"
+LINUX_VERSION:genericx86 = "5.10.87"
+LINUX_VERSION:genericx86-64 = "5.10.87"
 LINUX_VERSION:edgerouter = "5.10.63"
 LINUX_VERSION:beaglebone-yocto = "5.10.63"
-- 
2.33.1

