Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web08.5430.1644283852809923907
 for <poky@lists.yoctoproject.org>;
 Mon, 07 Feb 2022 17:30:52 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=NZ/xQV7r;
 spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1644283852; x=1675819852;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=oeVA8t6o/dwY3jyCrXqr0m2hENXjZ++s97Uop1+m7gY=;
  b=NZ/xQV7r8wtlvJajaQosmqFTdkBkphgX1Um7yccskP02v0oZ0WEP793n
   x27NiKYujTb62H1+8mM7/JL/83b01C7+EDGWizRTg1Rty5z8tf9PAqYII
   ctFe0ZKNfn0PTr6WPWAoGEYzB11iLCpKZ8R+NyncDEc5oqQ0MNt6yQkJI
   GWj0lE1AE2QBXqz2nD6+N8IeTNZAW0u9SyAwxGS2C/aEdgaLsdI1diBAw
   iUxUyh+9H0aoLHvGVNkqLQKyU51ZQyopGBSoVQrxreMLxACMHJ9G/LcF0
   xg2BtzcHD+gL+e2aeXhjND9RmDqzrm8fQlGavPdnC/qPU7FFJA2JkQWdD
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="273372893"
X-IronPort-AV: E=Sophos;i="5.88,351,1635231600"; 
   d="scan'208";a="273372893"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Feb 2022 17:30:52 -0800
X-IronPort-AV: E=Sophos;i="5.88,351,1635231600"; 
   d="scan'208";a="481774562"
Received: from koonwang-mobl1.gar.corp.intel.com (HELO anmitta2-mobl3.intel.com) ([10.215.238.62])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Feb 2022 17:30:50 -0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [honister][meta-yocto][PATCH] poky.conf: bump version for 3.4.2 release
Date: Tue,  8 Feb 2022 09:30:45 +0800
Message-Id: <20220208013045.9961-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 1884fd1..51df0b6 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.4.1"
+DISTRO_VERSION = "3.4.2"
 DISTRO_CODENAME = "honister"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"
-- 
2.34.1

