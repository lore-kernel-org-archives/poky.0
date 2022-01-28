Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by mx.groups.io with SMTP id smtpd.web08.7181.1643378731690502184
 for <poky@lists.yoctoproject.org>;
 Fri, 28 Jan 2022 06:05:32 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=FjcNjSfN;
 spf=pass (domain: intel.com, ip: 134.134.136.31, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1643378731; x=1674914731;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=72aBBpEpprtxDrqRVsVNrUGpjbN8+35ql3vqKcXum/g=;
  b=FjcNjSfNdENDDlmb/5uDh1Gpkyncg8yTDHROCH2G79bb0VrrMa9JddNV
   ui6Sc1KJvprVZCDR3CqK0mh0RrXiTFuQEyzAqcI5T3J8ccV1Xn1TD7frC
   bZN8aABuHAE9kvrLHAICWSkAoDF2Yr3xHFbZ+C3ImOBKgIkaYXfTx9j64
   B4i7D3T/xSvFlYdE0/ZrSG3qhStrOqlcGPS+51qb7Y13INdOQxYapCXW+
   +1fLsoLmfPpIGJDLFjpfVFjwNWHnZVljhS25avHskJ58/W+QCqmwyBuWB
   rrp2I7HdWqJIkDnnYso0nsSWk5Sgo+3aBIbPBilRqkFJtVvUYJA0A2hBA
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="307839859"
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; 
   d="scan'208";a="307839859"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jan 2022 06:05:30 -0800
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; 
   d="scan'208";a="770117573"
Received: from zbinaunx-mobl.gar.corp.intel.com (HELO anmitta2-mobl3.intel.com) ([10.215.226.205])
  by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jan 2022 06:05:28 -0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][hardknott][PATCH] poky.conf: add debian11 to supported distros
Date: Fri, 28 Jan 2022 22:05:16 +0800
Message-Id: <20220128140516.6490-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 1b4389f..d12908c 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -55,6 +55,7 @@ SANITY_TESTED_DISTROS ?= " \
             debian-8 \n \
             debian-9 \n \
             debian-10 \n \
+            debian-11 \n \
             opensuseleap-15.1 \n \
             opensuseleap-15.2 \n \
             "
-- 
2.34.1

