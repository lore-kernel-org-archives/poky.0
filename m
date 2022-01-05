Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web12.1714.1641395901948371702
 for <poky@lists.yoctoproject.org>;
 Wed, 05 Jan 2022 07:18:23 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=BBLTfORe;
 spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1641395901; x=1672931901;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=71u9MKD75qB9M8+G/LDcVC6aFoI5z975OLRGqmj1UEU=;
  b=BBLTfORexFlL/pCxhipHS9yPNowx3VsBE++MFRVx702BsK9hVg7NLWIr
   IZby0vjSRWtGAtJJYf0wauCzjK25jxbcYAM5vVjtAOwM7Pwx1V6n7d3jZ
   jGeqqkheD4hFtJaWZ8e+4sPmI0NGskGsiX08OMz4xHI9yjSO88wUX4mrT
   dyWnSTrzyWXPHQpHK58SPdIznnAbwIuGT5OOPLZ8eBx3VcHbfbMguhyfz
   GXsBYLI7XTCJBjpCkeLLA+djqbXW8up2Zrmm9f2eDgxxv9C5el1jtDzdK
   gw+as2BHWc2AwdBS2IOV1v9L8u9rqni/FuYwm4cdOZMNAnG5rePFeTX8U
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="241282873"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; 
   d="scan'208";a="241282873"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jan 2022 07:18:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; 
   d="scan'208";a="526649851"
Received: from hanwenlx-mobl1.gar.corp.intel.com (HELO anmitta2-mobl3.intel.com) ([10.213.129.44])
  by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jan 2022 07:18:19 -0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [hardknott][meta-yocto][PATCH 0/3] Pull request
Date: Wed,  5 Jan 2022 23:18:12 +0800
Message-Id: <20220105151815.9684-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Please merge these changes.

Thanks,

Anuj

Anuj Mittal (1):
  poky.conf: add fedora 34 to supported distros

Teoh Jay Shen (2):
  linux-yocto/5.4: update genericx86* machines to v5.4.158
  linux-yocto/5.10: update genericx86* machines to v5.10.82

 meta-poky/conf/distro/poky.conf                           | 1 +
 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 3 files changed, 9 insertions(+), 8 deletions(-)

-- 
2.33.1

