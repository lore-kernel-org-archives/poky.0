Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by mx.groups.io with SMTP id smtpd.web10.3466.1625559965392503740
 for <poky@lists.yoctoproject.org>;
 Tue, 06 Jul 2021 01:26:05 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.31, mailfrom: anuj.mittal@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10036"; a="270198363"
X-IronPort-AV: E=Sophos;i="5.83,328,1616482800"; 
   d="scan'208";a="270198363"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jul 2021 01:26:03 -0700
X-IronPort-AV: E=Sophos;i="5.83,328,1616482800"; 
   d="scan'208";a="460600967"
Received: from sho7-mobl2.gar.corp.intel.com (HELO anmitta2-mobl1.gar.corp.intel.com) ([10.255.151.151])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jul 2021 01:26:02 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][hardknott][PATCH] bsps/5.10: update to v5.10.43
Date: Tue,  6 Jul 2021 16:25:54 +0800
Message-Id: <20210706082554.1158313-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Updating linux-yocto/5.10 to the latest korg -stable release, and to
match the qemu BSPs in oe-core

(From meta-yocto rev: c4d4fd958ace34f050d2830895470dacc2435b1f)

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit dfed30ed734891915c08c9ddf1691641720686e9)
Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 .../linux/linux-yocto_5.10.bbappend              | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index bc2b3bf..f8362b6 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,17 +7,17 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "8c516ced69f41563404ada0bea315a55bcf1df6f"
-SRCREV_machine_genericx86-64 ?= "8c516ced69f41563404ada0bea315a55bcf1df6f"
-SRCREV_machine_edgerouter ?= "965ab3ab746ae8a1158617b6302d9c218ffbbb66"
-SRCREV_machine_beaglebone-yocto ?= "8c516ced69f41563404ada0bea315a55bcf1df6f"
+SRCREV_machine_genericx86 ?= "ab49d2db98bdee2c8c6e17fb59ded9e5292b0f41"
+SRCREV_machine_genericx86-64 ?= "ab49d2db98bdee2c8c6e17fb59ded9e5292b0f41"
+SRCREV_machine_edgerouter ?= "274d63799465eebfd201b3e8251f16d29e93a978"
+SRCREV_machine_beaglebone-yocto ?= "ab49d2db98bdee2c8c6e17fb59ded9e5292b0f41"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.10.21"
-LINUX_VERSION_genericx86-64 = "5.10.21"
-LINUX_VERSION_edgerouter = "5.10.21"
-LINUX_VERSION_beaglebone-yocto = "5.10.21"
+LINUX_VERSION_genericx86 = "5.10.43"
+LINUX_VERSION_genericx86-64 = "5.10.43"
+LINUX_VERSION_edgerouter = "5.10.43"
+LINUX_VERSION_beaglebone-yocto = "5.10.43"
-- 
2.31.1

