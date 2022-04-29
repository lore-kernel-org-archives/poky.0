Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by mx.groups.io with SMTP id smtpd.web09.10625.1651242106433271603
 for <poky@lists.yoctoproject.org>;
 Fri, 29 Apr 2022 07:21:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=NaE1+805;
 spf=pass (domain: intel.com, ip: 192.55.52.136, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1651242106; x=1682778106;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Se1evrldczRL5Bzt17Ri+4Ygyq74IS8HlBu9JyFFVUk=;
  b=NaE1+805wIxpoxSxKoh6Xs3NsL5vDlCPf/JK9NosKzXOXriXwbIWEymE
   5lf7ERiYb9bVjL2J/JY9PEMzlmIUkkn2dMZW4eakuZw+aXsAYwglXwfbY
   uRIT2y7hIZ+8SiQuuDQxpNN+OPqZ7Ui51UnY/SyLWuFFkxnoETwjZtvf3
   t452tvMzAJ/IGhM98NMqccWHKeO4I2pIN5lCmJ0btCNlEsRsJv/aDDApS
   YFERknVlJiAyo8ciXj/3KjQhgqmWNvsqMoxa3P3HbA55cOlmcHPjx+uJY
   Mr7IavLzqPJ+jxoy405N1sG0YfvbOWCjkCLh1kyPVJCF/Yt16EvBSWier
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10331"; a="246571234"
X-IronPort-AV: E=Sophos;i="5.91,185,1647327600"; 
   d="scan'208";a="246571234"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Apr 2022 07:21:27 -0700
X-IronPort-AV: E=Sophos;i="5.91,185,1647327600"; 
   d="scan'208";a="582149629"
Received: from weihouli-mobl.gar.corp.intel.com (HELO anmitta2-mobl3.intel.com) ([10.215.252.167])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Apr 2022 07:21:25 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][honister][PATCH] poky.conf: bump version for 3.4.4 release
Date: Fri, 29 Apr 2022 22:21:16 +0800
Message-Id: <20220429142116.9823-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 5e176e1..6a21404 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.4.3"
+DISTRO_VERSION = "3.4.4"
 DISTRO_CODENAME = "honister"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"
-- 
2.35.1

