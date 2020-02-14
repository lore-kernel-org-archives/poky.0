Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web11.2025.1581653654535253009
 for <poky@lists.yoctoproject.org>;
 Thu, 13 Feb 2020 20:14:14 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.20, mailfrom: anuj.mittal@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Feb 2020 20:14:13 -0800
X-IronPort-AV: E=Sophos;i="5.70,439,1574150400"; 
   d="scan'208";a="222889697"
Received: from anmitta2-mobl1.gar.corp.intel.com ([10.255.166.163])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Feb 2020 20:14:12 -0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH] linux-yocto: update genericx86 SRCREVs for v5.4
Date: Fri, 14 Feb 2020 12:14:06 +0800
Message-Id: <20200214041406.21979-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend      | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index fdcf8a7..49bf9ef 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -1,13 +1,23 @@
+KBRANCH_genericx86  = "v5.4/standard/base"
+KBRANCH_genericx86-64  = "v5.4/standard/base"
 KBRANCH_edgerouter = "v5.4/standard/edgerouter"
 KBRANCH_beaglebone-yocto = "v5.4/standard/beaglebone"
 
+KMACHINE_genericx86 ?= "common-pc"
+KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
+SRCREV_machine_genericx86    ?= "cdda35317561d2741b396efa623ace0bd2212c16"
+SRCREV_machine_genericx86-64 ?= "cdda35317561d2741b396efa623ace0bd2212c16"
 SRCREV_machine_edgerouter ?= "cdda35317561d2741b396efa623ace0bd2212c16"
 SRCREV_machine_beaglebone-yocto ?= "cdda35317561d2741b396efa623ace0bd2212c16"
 
+COMPATIBLE_MACHINE_genericx86 = "genericx86"
+COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
+LINUX_VERSION_genericx86 = "5.4.15"
+LINUX_VERSION_genericx86-64 = "5.4.15"
 LINUX_VERSION_edgerouter = "5.4.15"
 LINUX_VERSION_beaglebone-yocto = "5.4.15"
-- 
2.24.1

