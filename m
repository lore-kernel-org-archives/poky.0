Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web09.9744.1626796135546990040
 for <poky@lists.yoctoproject.org>;
 Tue, 20 Jul 2021 08:48:55 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.126, mailfrom: anuj.mittal@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="198534101"
X-IronPort-AV: E=Sophos;i="5.84,255,1620716400"; 
   d="scan'208";a="198534101"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jul 2021 08:48:54 -0700
X-IronPort-AV: E=Sophos;i="5.84,255,1620716400"; 
   d="scan'208";a="564454030"
Received: from kimkeech-mobl.gar.corp.intel.com (HELO anmitta2-mobl1.gar.corp.intel.com) ([10.215.226.28])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jul 2021 08:48:53 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [hardknott][meta-yocto][PATCH] poky.conf: bump version for 3.3.2 hardknott release
Date: Tue, 20 Jul 2021 23:48:47 +0800
Message-Id: <20210720154847.11643-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index dac8f4d..4a08f28 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.3.1"
+DISTRO_VERSION = "3.3.2"
 DISTRO_CODENAME = "hardknott"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"
-- 
2.31.1

