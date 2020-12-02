Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web09.739.1606871611495511225
 for <poky@lists.yoctoproject.org>;
 Tue, 01 Dec 2020 17:13:31 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: anuj.mittal@intel.com)
IronPort-SDR: ktvrbLg+JF4zgVJnVB18Ry8r8Q1jb7w72aUS9WNawwD7izpM95TcMZzC8AhcQkmL04z3NTZ6uh
 JX8k8PyNNSBg==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="257644922"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; 
   d="scan'208";a="257644922"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Dec 2020 17:13:27 -0800
IronPort-SDR: /vaygRf30JMeTeQw3WSX6/1dt9U+J4emIULxMAchm+XKT35B37CjcDw6UPvyMj++Z+WpJyWjvn
 UFUksEr/6CKQ==
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; 
   d="scan'208";a="549815788"
Received: from kshekara-mobl2.amr.corp.intel.com (HELO anmitta2-mobl1.gar.corp.intel.com) ([10.215.112.62])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Dec 2020 17:13:25 -0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][PATCH] poky.conf: bump version for 3.2.1 release
Date: Wed,  2 Dec 2020 09:13:14 +0800
Message-Id: <20201202011314.18932-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 5fbd550..1760f22 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.2"
+DISTRO_VERSION = "3.2.1"
 DISTRO_CODENAME = "gatesgarth"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.28.0

