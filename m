Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web12.14862.1589987729268033693
 for <poky@lists.yoctoproject.org>;
 Wed, 20 May 2020 08:15:29 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.126, mailfrom: anuj.mittal@intel.com)
IronPort-SDR: o2kzPkchzaM0ggTl9sa2TJ4mtzZeeBvIfBI/qWYKPUp1Zla6URI+hx9qPivPGTNCCRj15pxBj8
 L+MRyEkJAXPQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2020 08:15:28 -0700
IronPort-SDR: oulWSIpLsJQYqUp36FWO5S6OINJCNsIum317iTJAs0afYWBV3dWCTjRpGdjUai9Mt5sf2ks0l1
 aa8MQzNA/ENA==
X-IronPort-AV: E=Sophos;i="5.73,414,1583222400"; 
   d="scan'208";a="253635685"
Received: from anmitta2-mobl1.gar.corp.intel.com ([10.249.71.250])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2020 08:15:26 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org,
	richard.purdie@linuxfoundation.org
Subject: [meta-yocto][PATCH] linux-yocto: bump genericx86 kernel version to v5.4.40
Date: Wed, 20 May 2020 23:15:17 +0800
Message-Id: <20200520151517.1020431-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index 9734cd5..7207442 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,8 +7,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "f4d7dbafb103e4f782323017c239c548871c1567"
-SRCREV_machine_genericx86-64 ?= "f4d7dbafb103e4f782323017c239c548871c1567"
+SRCREV_machine_genericx86 ?= "29f44c85c379c38f15e544828e7e77b3c008f378"
+SRCREV_machine_genericx86-64 ?= "29f44c85c379c38f15e544828e7e77b3c008f378"
 SRCREV_machine_edgerouter ?= "f4d7dbafb103e4f782323017c239c548871c1567"
 SRCREV_machine_beaglebone-yocto ?= "f4d7dbafb103e4f782323017c239c548871c1567"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.20"
-LINUX_VERSION_genericx86-64 = "5.4.20"
+LINUX_VERSION_genericx86 = "5.4.40"
+LINUX_VERSION_genericx86-64 = "5.4.40"
 LINUX_VERSION_edgerouter = "5.4.20"
 LINUX_VERSION_beaglebone-yocto = "5.4.20"
-- 
2.25.4

