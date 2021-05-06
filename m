Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by mx.groups.io with SMTP id smtpd.web08.2766.1620263644984952805
 for <poky@lists.yoctoproject.org>;
 Wed, 05 May 2021 18:14:05 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.136, mailfrom: anuj.mittal@intel.com)
IronPort-SDR: mm36veo+lxyRw447Gsz0j+kh59uNx1CiD4c9vjODla39Oq1Y5BeLfmDShEP2czCPw/XjaQ/9v2
 I39t89MxVeEQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9975"; a="177903287"
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; 
   d="scan'208";a="177903287"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 May 2021 18:14:01 -0700
IronPort-SDR: 26sU5dUvl4ms6sWld8P8u5G3qvfCkFUhDGhaJ8OttEU9ckeCSETox4hLAG/PzknafwMURskvK7
 pu6XUDZPtHFQ==
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; 
   d="scan'208";a="434093655"
Received: from hanpinon-mobl.gar.corp.intel.com (HELO anmitta2-mobl1.gar.corp.intel.com) ([10.213.47.180])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 May 2021 18:13:59 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org,
	richard.purdie@linuxfoundation.org
Subject: [meta-yocto][gatesgarth][PATCH] poky.conf: bump version for 3.2.4 release
Date: Thu,  6 May 2021 09:13:53 +0800
Message-Id: <20210506011353.14357-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 41bb0b0..ccfbf6d 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.2.3"
+DISTRO_VERSION = "3.2.4"
 DISTRO_CODENAME = "gatesgarth"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.30.2

