Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web12.4760.1613459031501007199
 for <poky@lists.yoctoproject.org>;
 Mon, 15 Feb 2021 23:03:52 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.126, mailfrom: anuj.mittal@intel.com)
IronPort-SDR: fzzqPTMSgw8gXvMMwRP7z5hek3VVrTtm0EzGs4AwFDu/MeFvgR5u5QaKp3u7Uoza6swmhm5Thi
 2uOEpbwnlXlg==
X-IronPort-AV: E=McAfee;i="6000,8403,9896"; a="170483208"
X-IronPort-AV: E=Sophos;i="5.81,183,1610438400"; 
   d="scan'208";a="170483208"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Feb 2021 23:03:49 -0800
IronPort-SDR: SXWlQsOX3uSmIq4/xbFyX5WZNx0TO3pp+WsaJgiPP6KtnfjUQBYgCiFBCeQLfCMK+3OL0VJtWU
 vTqeOJhGGWAg==
X-IronPort-AV: E=Sophos;i="5.81,183,1610438400"; 
   d="scan'208";a="589060738"
Received: from aarshad-mobl.gar.corp.intel.com (HELO anmitta2-mobl1.gar.corp.intel.com) ([10.255.146.132])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Feb 2021 23:03:48 -0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][PATCH] linux-yocto: update genericx86* to v5.4.94
Date: Tue, 16 Feb 2021 15:03:35 +0800
Message-Id: <20210216070335.24341-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

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

