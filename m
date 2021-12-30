Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web08.60577.1640833196635274479
 for <poky@lists.yoctoproject.org>;
 Wed, 29 Dec 2021 18:59:56 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=h45hed2A;
 spf=pass (domain: intel.com, ip: 134.134.136.20, mailfrom: jay.shen.teoh@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1640833196; x=1672369196;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=5PtyX+bEMuq83TvXYaMD48eFTLfuBqJLEmlKz/gZqxA=;
  b=h45hed2ApCqKnsXzzimFHMNzyADw3hh3hxC82HDqGsKZTEO1U4D+5tWL
   nf/c9LW+3i7LyVCo3Xb80FMevf9ynCx8Y6ZtwENd/xR2D4kRSGDKA4x9M
   TwVbIzKv4EC0zKczGvMx0hc9uvbs1NkPiLFj2G16CkoyahMl4PqrLJHzy
   HT0L3IpLtOIZbcEYITFbJYN1XiTpYmzfgGPuFIGcYLLe2PI+W9Z6FRdkj
   KGIuJrg3HjGNbw3uL4UHJvZ7PUe3V2CAsB9zKG0uhqg1ZS9jDF60hX98q
   O5UFdoLbe+1lNdHhHenOkxwZCYyFxRmm+OM/0NfeFOIW5C0DWHlxCoasy
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10212"; a="228914823"
X-IronPort-AV: E=Sophos;i="5.88,247,1635231600"; 
   d="scan'208";a="228914823"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Dec 2021 18:59:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,247,1635231600"; 
   d="scan'208";a="572770815"
Received: from andromeda02.png.intel.com ([10.221.183.11])
  by fmsmga008.fm.intel.com with ESMTP; 29 Dec 2021 18:59:54 -0800
From: "Teoh, Jay Shen" <jay.shen.teoh@intel.com>
To: poky@lists.yoctoproject.org
Subject: [hardknott][meta-yocto][PATCH 1/2] linux-yocto/5.4: update genericx86* machines to v5.4.158
Date: Thu, 30 Dec 2021 10:59:51 +0800
Message-Id: <20211230025952.9532-1-jay.shen.teoh@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Teoh Jay Shen <jay.shen.teoh@intel.com>

Signed-off-by: Teoh Jay Shen <jay.shen.teoh@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index 35147d2da8..cd059c06c4 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,8 +7,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "31db2b47ac7d8508080fbb7344399b501216de66"
-SRCREV_machine_genericx86-64 ?= "31db2b47ac7d8508080fbb7344399b501216de66"
+SRCREV_machine_genericx86 ?= "76404f1ae59698b6a446dba29c885ca78c69c330"
+SRCREV_machine_genericx86-64 ?= "76404f1ae59698b6a446dba29c885ca78c69c330"
 SRCREV_machine_edgerouter ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 SRCREV_machine_beaglebone-yocto ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.94"
-LINUX_VERSION_genericx86-64 = "5.4.94"
+LINUX_VERSION_genericx86 = "5.4.158"
+LINUX_VERSION_genericx86-64 = "5.4.158"
 LINUX_VERSION_edgerouter = "5.4.58"
 LINUX_VERSION_beaglebone-yocto = "5.4.58"
-- 
2.33.1

