Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web09.5098.1615355915308493447
 for <poky@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 21:58:35 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.20, mailfrom: anuj.mittal@intel.com)
IronPort-SDR: 975++efaKT2RoKxi5jHjZbmujrdIZvbNqI3ibJ0R/nzjAZEbgM8NIK36UVdBEb2Pj1+CLrbHP/
 mpIq+paB6qMw==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="175498318"
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; 
   d="scan'208";a="175498318"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2021 21:58:34 -0800
IronPort-SDR: u/+roySf42nYDBznHyRu/Emi78pOqi2Bu8CMGa36uRqYFQvIm6o1D2tqnuS2bWET7mrdnTL0Xq
 cvkC0PfxOfOg==
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; 
   d="scan'208";a="447786886"
Received: from zulkifl2-mobl.gar.corp.intel.com (HELO anmitta2-mobl1.gar.corp.intel.com) ([10.255.187.199])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2021 21:58:32 -0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][gatesgarth][PATCH] linux-yocto: update genericx86* to v5.4.94
Date: Wed, 10 Mar 2021 13:58:28 +0800
Message-Id: <20210310055828.4028-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

(From meta-yocto rev: b05a89a04002ddce2d82a22874def608e7748871)

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 488e39b623b73b6c7d9f0e3498c699069339d21b)
Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index 91500b8e9c..35147d2da8 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,8 +7,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "292d752af8e4015e40e7c523641983bac543e2b4"
-SRCREV_machine_genericx86-64 ?= "292d752af8e4015e40e7c523641983bac543e2b4"
+SRCREV_machine_genericx86 ?= "31db2b47ac7d8508080fbb7344399b501216de66"
+SRCREV_machine_genericx86-64 ?= "31db2b47ac7d8508080fbb7344399b501216de66"
 SRCREV_machine_edgerouter ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 SRCREV_machine_beaglebone-yocto ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.87"
-LINUX_VERSION_genericx86-64 = "5.4.87"
+LINUX_VERSION_genericx86 = "5.4.94"
+LINUX_VERSION_genericx86-64 = "5.4.94"
 LINUX_VERSION_edgerouter = "5.4.58"
 LINUX_VERSION_beaglebone-yocto = "5.4.58"
-- 
2.29.2

