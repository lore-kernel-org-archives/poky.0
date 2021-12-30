Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web08.60577.1640833196635274479
 for <poky@lists.yoctoproject.org>;
 Wed, 29 Dec 2021 18:59:57 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=G+IE667m;
 spf=pass (domain: intel.com, ip: 134.134.136.20, mailfrom: jay.shen.teoh@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1640833197; x=1672369197;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=MrpBUwn5+4Vqp2OHLxwgRy0ZjEEEiCWn79lfMWmsGXM=;
  b=G+IE667m1h20pv+6EkUdg2F9VgQrLmJSH4k/CJCsmArrfFX8fGDeu9vy
   WXUYIIxpjY/WvenenRt2fUrV6Iz/ey/LIPYyH8jo3nGj1qdj6to1ITG57
   cGJSO/PWsSWK7VScN5b9akoU+Wmao0KExYQywkYirzKLWZEVvq2O4n72O
   lcvPWfxRA7Oxo6OmTeXs/V0VR7pJ1eNdkBpD8QgyHbNcjsNj44ooZtqpo
   tdQTLQIQg9a70ZrH7g6sC+FUEacYVKBZY04R2EuuLmr8/1IegtJpiGQIe
   v2xU4PkFQDKs7NUL+P1Kor9bgVpoKRJfpBLjV9h+QiYdVyZw8XqNxoqvq
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10212"; a="228914825"
X-IronPort-AV: E=Sophos;i="5.88,247,1635231600"; 
   d="scan'208";a="228914825"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Dec 2021 18:59:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,247,1635231600"; 
   d="scan'208";a="572770818"
Received: from andromeda02.png.intel.com ([10.221.183.11])
  by fmsmga008.fm.intel.com with ESMTP; 29 Dec 2021 18:59:56 -0800
From: "Teoh, Jay Shen" <jay.shen.teoh@intel.com>
To: poky@lists.yoctoproject.org
Subject: [hardknott][meta-yocto][PATCH 2/2] linux-yocto/5.10: update genericx86* machines to v5.10.82
Date: Thu, 30 Dec 2021 10:59:52 +0800
Message-Id: <20211230025952.9532-2-jay.shen.teoh@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211230025952.9532-1-jay.shen.teoh@intel.com>
References: <20211230025952.9532-1-jay.shen.teoh@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Teoh Jay Shen <jay.shen.teoh@intel.com>

Signed-off-by: Teoh Jay Shen <jay.shen.teoh@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index 347a411341..21f99ea452 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,8 +7,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "164ed895bc1e94722e80fe6496b176f6bb815cd4"
-SRCREV_machine_genericx86-64 ?= "164ed895bc1e94722e80fe6496b176f6bb815cd4"
+SRCREV_machine_genericx86 ?= "1bb9d730ac6630d3f41c2ef529fab09f12bcf07d"
+SRCREV_machine_genericx86-64 ?= "1bb9d730ac6630d3f41c2ef529fab09f12bcf07d"
 SRCREV_machine_edgerouter ?= "4ab94e777d8b41ee1ee4c279259e9733bc8049b1"
 SRCREV_machine_beaglebone-yocto ?= "941cc9c3849f96f7eaf109b1e35e05ba366aca56"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.10.63"
-LINUX_VERSION_genericx86-64 = "5.10.63"
+LINUX_VERSION_genericx86 = "5.10.82"
+LINUX_VERSION_genericx86-64 = "5.10.82"
 LINUX_VERSION_edgerouter = "5.10.63"
 LINUX_VERSION_beaglebone-yocto = "5.10.63"
-- 
2.33.1

