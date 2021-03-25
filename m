Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web12.2527.1616638884655918924
 for <poky@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 19:21:24 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.20, mailfrom: anuj.mittal@intel.com)
IronPort-SDR: HpeSzwA65PumxJygU/6RZVU31JWrjRmC4ZvsXL8WlapnwcWOERWGZ7SXYYpmV5Wig3CH1/ZVsx
 vmlzJ3kjd81A==
X-IronPort-AV: E=McAfee;i="6000,8403,9933"; a="177948335"
X-IronPort-AV: E=Sophos;i="5.81,276,1610438400"; 
   d="scan'208";a="177948335"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2021 19:21:23 -0700
IronPort-SDR: QuB7vDsGRf/xxSxnFmef105pcLpgUYY09TNwFT+65F74yr2ouFlGqLAT0OavGnqymNCt1+SP91
 0dD632kOvFAQ==
X-IronPort-AV: E=Sophos;i="5.81,276,1610438400"; 
   d="scan'208";a="452845943"
Received: from ivytee-mobl.gar.corp.intel.com (HELO anmitta2-mobl1.gar.corp.intel.com) ([10.214.173.221])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2021 19:21:22 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][gatesgarth][PATCH] poky.conf: bump version for 3.2.3 release
Date: Thu, 25 Mar 2021 10:21:18 +0800
Message-Id: <20210325022118.17895-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 4351dcc..41bb0b0 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.2.2"
+DISTRO_VERSION = "3.2.3"
 DISTRO_CODENAME = "gatesgarth"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.30.2

