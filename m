Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web12.6234.1646125669959445039
 for <poky@lists.yoctoproject.org>;
 Tue, 01 Mar 2022 01:07:50 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=UYROUoGv;
 spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1646125669; x=1677661669;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=7eYU1J2KSplLEzvVu9G/zmF/PyHsePopCWFCoFjNdvc=;
  b=UYROUoGvP6BpSPZH8I4SdnMszTl394Yu6y1SMGws9j0CWQVCd3GVSC9F
   7tiT7tX+mL25EtC1t0Zb3ey6YB2jyGRfyg/VBsrCZBSXGdsVSaW0J0pzy
   w50EIJsoQYOqUIYqeqgSDK6E3RPGd5jO9TWDdC4JedKr2oOwIO615a9Ks
   /gp16Em3uQy5e08U4mYforEBuY8sCTRFCJ35+P/a+RlS+6AhqR9D2Icew
   Qw7xja7tzUj2sH7fIwlDsNWbucTvbxxU9NcJ65p1u1X0kuB9jWa+wkfLO
   ykBLG8lwt/N5x+Vvl63ii79yX52YZYm3sqfsCqHkkMPpqVVSjCbVaAhBw
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10272"; a="250675807"
X-IronPort-AV: E=Sophos;i="5.90,145,1643702400"; 
   d="scan'208";a="250675807"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Mar 2022 01:07:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,145,1643702400"; 
   d="scan'208";a="608741130"
Received: from cheeyang-desk1.png.intel.com ([10.158.87.104])
  by fmsmga004.fm.intel.com with ESMTP; 01 Mar 2022 01:07:48 -0800
From: "Lee Chee Yang" <chee.yang.lee@intel.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky.conf: update tested distro
Date: Tue,  1 Mar 2022 17:05:54 +0800
Message-Id: <20220301090554.2653181-1-chee.yang.lee@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lee Chee Yang <chee.yang.lee@intel.com>

drop opensuseleap-15.2 and fedora-33

add fedora-35, opensuseleap-15.3 and almalinux-8.5

Signed-off-by: Lee Chee Yang <chee.yang.lee@intel.com>
---
 meta-poky/conf/distro/poky.conf | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 47ef9fa2ee..27641edd3d 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -46,14 +46,16 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-16.04 \n \
             ubuntu-18.04 \n \
             ubuntu-20.04 \n \
-            fedora-33 \n \
+            ubuntu-21.10 \n \
             fedora-34 \n \
+            fedora-35 \n \
             centos-7 \n \
             centos-8 \n \
             debian-9 \n \
             debian-10 \n \
             debian-11 \n \
-            opensuseleap-15.2 \n \
+            opensuseleap-15.3 \n \
+            almalinux-8.5 \n \
             "
 # add poky sanity bbclass
 INHERIT += "poky-sanity"
-- 
2.25.1

