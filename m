Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web10.48104.1640759926831386592
 for <poky@lists.yoctoproject.org>;
 Tue, 28 Dec 2021 22:38:47 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=XJEe+c61;
 spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: jay.shen.teoh@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1640759926; x=1672295926;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=5PtyX+bEMuq83TvXYaMD48eFTLfuBqJLEmlKz/gZqxA=;
  b=XJEe+c61SK+HO96ATeyH/xt242zXpygYpvimF9JC3Ak5/Eqo8e3J6FNm
   /ljAylF3PKan8G8Q/zj2zma2CW59dmHwIEGKBm1gwjap7YaTbOpMIlez0
   sWOJvX8nEODzoaYnkvM+jCOid8/aHCm3vt1AlJy9ELn/JS7BqSnMSRHAQ
   dbdhnj3beY99gGLEloZgDqt0QoHYvjWl2trpj50vMhrRN7YJdjlieEAKf
   5BaNWNqpyuYaojMTt2GoMa2P9TOqKhyq9xBGqiflS1I/xXx2u0o/Jw09R
   ByRuhSSF6V7BfGLAe83Q8HE4TtdB8aD0T33oS4TxZ51gXNL72eaNAR3nV
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10211"; a="265708300"
X-IronPort-AV: E=Sophos;i="5.88,244,1635231600"; 
   d="scan'208";a="265708300"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Dec 2021 22:38:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,244,1635231600"; 
   d="scan'208";a="554438186"
Received: from andromeda02.png.intel.com ([10.221.183.11])
  by orsmga001.jf.intel.com with ESMTP; 28 Dec 2021 22:38:45 -0800
From: "Teoh, Jay Shen" <jay.shen.teoh@intel.com>
To: poky@lists.yoctoproject.org
Subject: [dunfell][meta-yocto][PATCH] linux-yocto/5.4: update genericx86* machines to v5.4.158
Date: Wed, 29 Dec 2021 14:38:42 +0800
Message-Id: <20211229063842.51540-1-jay.shen.teoh@intel.com>
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

