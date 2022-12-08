Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web11.5651.1670473710367793110
 for <poky@lists.yoctoproject.org>;
 Wed, 07 Dec 2022 20:28:33 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=ZocbUnnv;
 spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: adhityax.siddartha.ravula@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1670473713; x=1702009713;
  h=from:to:subject:date:message-id:in-reply-to:references;
  bh=T5TKy7z1NpNvYx5sRmddzSo4sROEWvefwhDaKBeUXnU=;
  b=ZocbUnnvPHQpEo9U50PiOw2Y0oUMNd7VrF3XBY60IadkTkraTEhbsWXt
   RdHBUE/nY78D3k7/vAurtSy7szPgr4PTUgMgWGh0XP/3pBAEm9aWzg3LU
   0T25ZDblqhJ2haT+52mUO3ZHDi/8bkD2vV0d/ChH+uQDPEUC3Yqq3yyD8
   47Z8oKtxUNLzaHkEHFuH2TeOlKeCsP/TdzErzEDCTaWMWEQWwJOZeBSrx
   Kvia+0Q+uH2DB6FvZLi4byk8DUzPx1JKE5j/BN2iIZqdGZ7EdBUVcZQVa
   7QzV4coUjWVaoOC/nw5WzsrnyBiJnx0Vxh2eD4liIkHXaFZ+bIq3Jx0G1
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="314715233"
X-IronPort-AV: E=Sophos;i="5.96,226,1665471600"; 
   d="scan'208";a="314715233"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Dec 2022 20:28:33 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="975710334"
X-IronPort-AV: E=Sophos;i="5.96,226,1665471600"; 
   d="scan'208";a="975710334"
Received: from inlubt0314.iind.intel.com ([10.67.198.223])
  by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Dec 2022 20:28:32 -0800
From: adhityax.siddartha.ravula@intel.com
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone][PATCH 2/2] linux-yocto/5.15: update genericx86* machines to v5.15.72
Date: Thu,  8 Dec 2022 09:58:18 +0530
Message-Id: <20221208042818.841-2-adhityax.siddartha.ravula@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221208042818.841-1-adhityax.siddartha.ravula@intel.com>
References: <20221208042818.841-1-adhityax.siddartha.ravula@intel.com>

From: Ravula Adhitya Siddartha <adhityax.siddartha.ravula@intel.com>

Signed-off-by: Ravula Adhitya Siddartha <adhityax.siddartha.ravula@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.15.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
index e6826203e3..3ad175dc84 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
@@ -7,8 +7,8 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "efe20512212b0e85b5f884b1bfc8fbba2b43541a"
-SRCREV_machine:genericx86-64 ?= "efe20512212b0e85b5f884b1bfc8fbba2b43541a"
+SRCREV_machine:genericx86 ?= "0b628306d1f9ea28c0e86369ce9bb87a47893c9c"
+SRCREV_machine:genericx86-64 ?= "0b628306d1f9ea28c0e86369ce9bb87a47893c9c"
 SRCREV_machine:edgerouter ?= "90f1ee6589264545f548d731c2480b08a007230f"
 SRCREV_machine:beaglebone-yocto ?= "9aabbaa89fcb21af7028e814c1f5b61171314d5a"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.15.59"
-LINUX_VERSION:genericx86-64 = "5.15.59"
+LINUX_VERSION:genericx86 = "5.15.72"
+LINUX_VERSION:genericx86-64 = "5.15.72"
 LINUX_VERSION:edgerouter = "5.15.54"
 LINUX_VERSION:beaglebone-yocto = "5.15.54"
-- 
2.17.1

