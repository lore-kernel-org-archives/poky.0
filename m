Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web11.5734.1648779644432759557
 for <poky@lists.yoctoproject.org>;
 Thu, 31 Mar 2022 19:20:44 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=RwuCartc;
 spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648779644; x=1680315644;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=5MBfM3UpfcvYueJHNDRtK9f3YMU4gGcy7yCt4/2so2g=;
  b=RwuCartcC/tXSlwh9bipJ6hL6gukEUCB+ob/wh5ljc1x40vpNJIRPZmg
   I437ml2JhKwjbv6Q211mSG/FNkOyarLzbL7EgzgwZ/UjHTwL0BdXKlGBO
   DlXWWVtRcX548roKp6evQSYGKi2rdYI0G0eyJwkgdYoCBFLEXDWALhrEa
   1lnaquXcIsnsT2PSqp1cvyh/sGQLSfD7Fgbl8LUzi0mXF1kfvC0DZqwuu
   HY5vSQoFPCU1HWK9XI0l7lJuN4gwSEWzplt1amEw0UUzsvnPzKaBuG0+I
   o+Qvfl2LZe11wS2ny5+sP/rLYdCIqxRLnJ/OvlexurrCzhMYKOf6RJPTD
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="258853383"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; 
   d="scan'208";a="258853383"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2022 19:20:43 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; 
   d="scan'208";a="547609315"
Received: from ktee1-mobl1.gar.corp.intel.com (HELO anmitta2-mobl3.intel.com) ([10.215.235.187])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2022 19:20:42 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][hardknott][PATCH] poky.conf: bump version for 3.3.6 release
Date: Fri,  1 Apr 2022 10:20:36 +0800
Message-Id: <20220401022036.4437-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 773e80c..0b78d65 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.3.5"
+DISTRO_VERSION = "3.3.6"
 DISTRO_CODENAME = "hardknott"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"
-- 
2.35.1

