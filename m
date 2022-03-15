Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web08.12014.1647356335188999750
 for <poky@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 07:58:56 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=k6CLSrp+;
 spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647356335; x=1678892335;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=UAznkZLzks55TipxW7UPntWXl2dKfnHto6Mr/W5awEk=;
  b=k6CLSrp+euZcdLuwZ0+4Ev+KKit3QQDO5LHP87esYwdWLvqzCMo/U8Zx
   jBjF5RhlnENROUHiOjmqZaKfo7FpOmI5i8XLh97/9pUwCzijK3kbP9Hvv
   113Fj+JVH449MOFv1FZP5EFrM7cO59TE+RTplk6AUKXN4G8MZQIdIvlEc
   BQcMhU9igc7CWlPpstzXTjK2MrMNeNAZSi/UlRSMHF2LbqXu3ynupJ5g8
   godDrsRNykqzhZs8G/rWAkRJOzELS9zOwJdq+MRLTGDmzp2urYC1sxFzc
   7NWcFG+V0QapdSyMYhyhnN5jzQOjsa9l4rxF36kMW4IgnWgeWqwmSzW0a
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="256050764"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; 
   d="scan'208";a="256050764"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Mar 2022 07:58:52 -0700
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; 
   d="scan'208";a="498045922"
Received: from ezulkifl-mobl.gar.corp.intel.com (HELO anmitta2-mobl3.intel.com) ([10.215.233.253])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Mar 2022 07:58:50 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [hardknott][meta-yocto][PATCH 0/3] Pull request
Date: Tue, 15 Mar 2022 22:58:43 +0800
Message-Id: <20220315145846.5535-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Please merge these changes.

Thanks,

Anuj

Bindhu V (2):
  linux-yocto/5.10: update genericx86* machines to v5.10.99
  linux-yocto/5.4: update genericx86* machines to v5.4.178

Christian Eggers (1):
  gcsections: add nativesdk-cairo to exclude list

 meta-poky/conf/distro/include/gcsections.inc              | 2 ++
 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 3 files changed, 10 insertions(+), 8 deletions(-)

-- 
2.35.1

