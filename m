Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web09.22163.1647223305645288334
 for <poky@lists.yoctoproject.org>;
 Sun, 13 Mar 2022 19:01:45 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=cYPCeHpu;
 spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647223305; x=1678759305;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=59pNc8IKddro9vPP4V4jm98zxFfmNyni2kqGIahz7GE=;
  b=cYPCeHpuFpTsR5jywOCra7Ivvsehx2PJFw5wSrlXinpBWmrS5+DYdblj
   9x7Ga7klnH4aw+YeSFwMRrKK+YbWlIRxERVFmZrJTht+W0hm6KwKBfq6p
   eBA38uWPeIEEEf3kCUSOvvx73EWDHrTtS8Qn/ilrrQPqFzFc+2gL13wEP
   PnorkDk2TKy9at3RT3OsfvbzMLBRd3pYzNEM8XINHSUG3OXvfPuzGt0aD
   OlTxwiF1ZWxGey3y1Ewj6EZwzzubzuEuR+1GvY2/I7p+iBabzNGUq7XwS
   MESDMB7eLzx4VIHLgwcv5e1ooyTxmtfgcvcM/Af95UWz2IVdjcp1PuKyY
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="255647246"
X-IronPort-AV: E=Sophos;i="5.90,179,1643702400"; 
   d="scan'208";a="255647246"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Mar 2022 19:01:44 -0700
X-IronPort-AV: E=Sophos;i="5.90,179,1643702400"; 
   d="scan'208";a="689660116"
Received: from lsim7-mobl1.gar.corp.intel.com (HELO anmitta2-mobl3.intel.com) ([10.215.229.232])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Mar 2022 19:01:43 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [honister][meta-yocto][PATCH 0/2] Pull request
Date: Mon, 14 Mar 2022 10:01:35 +0800
Message-Id: <20220314020137.9783-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Please merge these changes.

Thanks,

Anuj

Christian Eggers (1):
  gcsections: add nativesdk-cairo to exclude list

Tamizharasan Kumar (1):
  linux-yocto/5.10: update genericx86* machines to v5.10.99

 meta-poky/conf/distro/include/gcsections.inc              | 2 ++
 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 2 files changed, 6 insertions(+), 4 deletions(-)

-- 
2.35.1

