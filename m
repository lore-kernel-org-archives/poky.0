Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web12.2942.1611716953014247315
 for <poky@lists.yoctoproject.org>;
 Tue, 26 Jan 2021 19:09:13 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: anuj.mittal@intel.com)
IronPort-SDR: UpWLqzly0X1xNtt7btM2Hg3ZTTEmLVgPDN+PJ8MBGTTTRrYwHqQh+PLeZfZ9+sUKwC4A2jW0kh
 ZTq2mzjhZtTA==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="264831050"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; 
   d="scan'208";a="264831050"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jan 2021 19:09:11 -0800
IronPort-SDR: KxHMjZS+V9xDV3yfLOxQKZ7yoxHDQRQppkMfPPQnsmzrxcvTkx8Fwffcb/GCYfWOk3lszWKqjc
 dzQ3G7mCuOAw==
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; 
   d="scan'208";a="429940607"
Received: from yfong-mobl1.gar.corp.intel.com (HELO anmitta2-mobl1.gar.corp.intel.com) ([10.255.184.89])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jan 2021 19:09:09 -0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org,
	richard.purdie@linuxfoundation.org
Subject: [PATCH][meta-yocto][gatesgarth] linux-yocto: update genericx86 to v5.4.87
Date: Wed, 27 Jan 2021 11:09:05 +0800
Message-Id: <20210127030905.868920-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

(From meta-yocto rev: 5b5498295bfbe3ca7b2adf9e23228262c3e38f2d)

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit d4d1898664f4e3d0e20dfbf8c7deb2c4ef570432)
Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index 4ee895dbdc..91500b8e9c 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,8 +7,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "cfcdd63145c0d741e57ee3e3e58f794229c6c09c"
-SRCREV_machine_genericx86-64 ?= "cfcdd63145c0d741e57ee3e3e58f794229c6c09c"
+SRCREV_machine_genericx86 ?= "292d752af8e4015e40e7c523641983bac543e2b4"
+SRCREV_machine_genericx86-64 ?= "292d752af8e4015e40e7c523641983bac543e2b4"
 SRCREV_machine_edgerouter ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 SRCREV_machine_beaglebone-yocto ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.69"
-LINUX_VERSION_genericx86-64 = "5.4.69"
+LINUX_VERSION_genericx86 = "5.4.87"
+LINUX_VERSION_genericx86-64 = "5.4.87"
 LINUX_VERSION_edgerouter = "5.4.58"
 LINUX_VERSION_beaglebone-yocto = "5.4.58"
-- 
2.29.2

