Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web12.1714.1641395901948371702
 for <poky@lists.yoctoproject.org>;
 Wed, 05 Jan 2022 07:18:25 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=boH6zK4V;
 spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1641395904; x=1672931904;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=nQQWwRw0uCmFO4o4XSKTC7MLeWtVeJOHWf45me6BPNA=;
  b=boH6zK4V1PCnHCB0snAIT/MayXupropr5UsmMwVO0mndKEGDgqdaMHbY
   ero/xuNy8Yl/JKABtf30jPmy13erBxUpRUTfPdL6wV/jyl8OCaoLFJBpx
   XnA8JPjQwkc0FWuVJgwVIhgQepNihRmQ8Zfxgj7DXRUroKWEOCMRxKxEh
   taQSOH6hMyQZZWH/mb58LogZHcS0oee0bLDHFmxQnSUqWpYhZuZLkLTjz
   ssF7XWpzyx/R58QwQMPelztY+dQtbl55CXYKB/vPmvTWRAjA8MpgNfvcg
   KekeqEECUol3dnIJSkqgarRlnCrPpd/C1nz/Uve/JOl7X7qoEhIim6Ylk
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="241282883"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; 
   d="scan'208";a="241282883"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jan 2022 07:18:24 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; 
   d="scan'208";a="526649858"
Received: from hanwenlx-mobl1.gar.corp.intel.com (HELO anmitta2-mobl3.intel.com) ([10.213.129.44])
  by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jan 2022 07:18:21 -0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [hardknott][meta-yocto][PATCH 1/3] poky.conf: add fedora 34 to supported distros
Date: Wed,  5 Jan 2022 23:18:13 +0800
Message-Id: <20220105151815.9684-2-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220105151815.9684-1-anuj.mittal@intel.com>
References: <20220105151815.9684-1-anuj.mittal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 966e66d149d..1b4389fc48d 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -49,6 +49,7 @@ SANITY_TESTED_DISTROS ?= " \
             fedora-31 \n \
             fedora-32 \n \
             fedora-33 \n \
+            fedora-34 \n \
             centos-7 \n \
             centos-8 \n \
             debian-8 \n \
-- 
2.33.1

