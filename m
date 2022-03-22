Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web09.4230.1647910545706141133
 for <poky@lists.yoctoproject.org>;
 Mon, 21 Mar 2022 17:55:46 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=O/b2AQ3R;
 spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647910545; x=1679446545;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=OHXcq7O42v3duB/sF0UEsN54nLRnhM1aD7Jf49147i4=;
  b=O/b2AQ3RBRlx3yivimB5Xr0fdPWIBRdSCDPQfb23PKsVUNm0PUeCjjDf
   qf6YtgyejjcGefV3MGOEWIEo9XIOfkihK+K9G2i70ZHz6fOJWYDFth75Q
   tEW3U5kqChAboQKfr+S86nclubfe6vqOpVHA4yIXZd4GkwIA8dDEYev3h
   NFhqELBE9Sxl+C/kvUAe2LA19ZM/QSd8cHFYAS5m2hZr7mIeC3hT3uv6Z
   qPtlVozQptaOc0zaByoAXFcmCovusSqN2zothc79X+bDWEFNFvGPAVNL1
   UKV6/CZ5GISI6fDN4100KZ6hQzgPqKMCtWRJWNEytEc9z0Ez0lOSzgFBg
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="282518117"
X-IronPort-AV: E=Sophos;i="5.90,200,1643702400"; 
   d="scan'208";a="282518117"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Mar 2022 17:55:44 -0700
X-IronPort-AV: E=Sophos;i="5.90,200,1643702400"; 
   d="scan'208";a="518656731"
Received: from mchong5-mobl1.gar.corp.intel.com (HELO anmitta2-mobl3.intel.com) ([10.213.138.6])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Mar 2022 17:55:42 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][honister][PATCH] poky.conf: bump version for 3.4.3 honister release
Date: Tue, 22 Mar 2022 08:55:32 +0800
Message-Id: <20220322005532.9488-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 51df0b6..5e176e1 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.4.2"
+DISTRO_VERSION = "3.4.3"
 DISTRO_CODENAME = "honister"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"
-- 
2.35.1

