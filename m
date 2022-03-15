Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web09.11925.1647356336747031510
 for <poky@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 07:58:57 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=CTOWfM4Y;
 spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647356336; x=1678892336;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=4u/UFmplIOIbk8j/E/qejDKNQD2e9JMi4D435M411ys=;
  b=CTOWfM4YrlF3d0Z23f6di2UoV5g31ADdMhgDqUjxl9/2XQg56bK+/8pY
   7OalrwNcnRfvl8ntIJocwRyM/481BvnFPHlyTYmm6FBBjcJRIMaBC+DgW
   77GFOmww8weNeXJgfRR129IEh/STkYSO+p/QLYyL/84prx1cInG6GxkZi
   +dXsYI/cvn7SHnu9d+SrcoExPSryU8TZQ7bJME5eASsTiAazbbpp6XyS/
   t7lMpqb3vohoUuqxlFQHqj0/t6h6Klc4Ra7yo6mXVJfPGTEW53+qltb+x
   lisvJX5E3qZKrpPr7IeHDp9fXtfJNMVQNS5Xkzoh1yCSgahAOjoQPlhSD
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="256050772"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; 
   d="scan'208";a="256050772"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Mar 2022 07:58:54 -0700
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; 
   d="scan'208";a="498045948"
Received: from ezulkifl-mobl.gar.corp.intel.com (HELO anmitta2-mobl3.intel.com) ([10.215.233.253])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Mar 2022 07:58:53 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [hardknott][meta-yocto][PATCH 2/3] linux-yocto/5.4: update genericx86* machines to v5.4.178
Date: Tue, 15 Mar 2022 22:58:45 +0800
Message-Id: <20220315145846.5535-3-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220315145846.5535-1-anuj.mittal@intel.com>
References: <20220315145846.5535-1-anuj.mittal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bindhu V <bindhux.v@intel.com>

Signed-off-by: Bindhu V <bindhux.v@intel.com>
Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index cd059c0..b2824cb 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,8 +7,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "76404f1ae59698b6a446dba29c885ca78c69c330"
-SRCREV_machine_genericx86-64 ?= "76404f1ae59698b6a446dba29c885ca78c69c330"
+SRCREV_machine_genericx86 ?= "e2020dbe2ccaef50d7e8f37a5bf08c68a006a064"
+SRCREV_machine_genericx86-64 ?= "e2020dbe2ccaef50d7e8f37a5bf08c68a006a064"
 SRCREV_machine_edgerouter ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 SRCREV_machine_beaglebone-yocto ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.158"
-LINUX_VERSION_genericx86-64 = "5.4.158"
+LINUX_VERSION_genericx86 = "5.4.178"
+LINUX_VERSION_genericx86-64 = "5.4.178"
 LINUX_VERSION_edgerouter = "5.4.58"
 LINUX_VERSION_beaglebone-yocto = "5.4.58"
-- 
2.35.1

