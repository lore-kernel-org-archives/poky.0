Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web12.1714.1641395901948371702
 for <poky@lists.yoctoproject.org>;
 Wed, 05 Jan 2022 07:18:27 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=SvqReHpg;
 spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1641395907; x=1672931907;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=eMDOKTo0jK1Uf+o8RIY4l/ihML4UDLWo6qprXSJ9c+U=;
  b=SvqReHpgaipL+KpXsEJrSy4Vjl2/c5sY6f+YlSLYit8MzXbrYQoVzcAZ
   jh6YZcthZHXdBcdSy1P/PMlaF1KEXXN+JAudn3CV8U9fGC/yAGdNVRNdd
   lKiuOS23X7kM4xtJOf4CsyGl/ByzUWT/karPTke4lusLYiCTYFIAFRSXJ
   r0AvUIgSp8ntF6H/BYuPCl8Mlo3HBTnREWwLNrMk3AvK8IWBEfBoKSOIw
   js5Mbpb1ieo6Tm9PDpvlPHvH1jJHj7ZLMNtlSIIUMZCX/UcsHQbjOsCQI
   FtKvWoeqGwfRzImg0AbCUZOkyEepATReE5omj5A97E069DgqgCmljaiNu
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="241282890"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; 
   d="scan'208";a="241282890"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jan 2022 07:18:27 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; 
   d="scan'208";a="526649862"
Received: from hanwenlx-mobl1.gar.corp.intel.com (HELO anmitta2-mobl3.intel.com) ([10.213.129.44])
  by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jan 2022 07:18:25 -0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [hardknott][meta-yocto][PATCH 2/3] linux-yocto/5.4: update genericx86* machines to v5.4.158
Date: Wed,  5 Jan 2022 23:18:14 +0800
Message-Id: <20220105151815.9684-3-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220105151815.9684-1-anuj.mittal@intel.com>
References: <20220105151815.9684-1-anuj.mittal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Teoh Jay Shen <jay.shen.teoh@intel.com>

Signed-off-by: Teoh Jay Shen <jay.shen.teoh@intel.com>
Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index 35147d2da82..cd059c06c42 100644
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

