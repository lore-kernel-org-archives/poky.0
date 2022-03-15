Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web08.12014.1647356335188999750
 for <poky@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 07:58:57 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=c1DvaCO1;
 spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647356337; x=1678892337;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=cEvX0oty8jovj5Vg8qgKwMugMnnIo9nYqkho/mGnSw4=;
  b=c1DvaCO1ZdZzgd+qr+aF7AfMcZ1qOihx1ogwHE/55/S9VBgjOmD/0Uqp
   0W/2f5fewmaBtr6WgkV39h4jovZYSzWVeKpbH/1elc38ISV8AFiPwo6QW
   GBCnoPwh4BAxAiWcWCl+9WqcXlD68C8v6SIYJ1G4BuTPqMnWDydy8rXlT
   JfOKg/3OV0OjAPAbi2M6/A6dfUxNs90j/3HIPtGmNUV7RPDu4u/jherTj
   HJmXIWGlVNEf8HSpFL5RevS/dc9Fh/dA7peJp0b1eEMv0SGV1X00dc5+O
   bgt8Az6g0UTt85atnhTdzgYPk8cqg0Tnavoe5HM10M2grVsI0lUxq1hc1
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="256050778"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; 
   d="scan'208";a="256050778"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Mar 2022 07:58:56 -0700
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; 
   d="scan'208";a="498045952"
Received: from ezulkifl-mobl.gar.corp.intel.com (HELO anmitta2-mobl3.intel.com) ([10.215.233.253])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Mar 2022 07:58:54 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [hardknott][meta-yocto][PATCH 3/3] gcsections: add nativesdk-cairo to exclude list
Date: Tue, 15 Mar 2022 22:58:46 +0800
Message-Id: <20220315145846.5535-4-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220315145846.5535-1-anuj.mittal@intel.com>
References: <20220315145846.5535-1-anuj.mittal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Christian Eggers <ceggers@arri.de>

configure fails with the following error if gcsections is active during
build of nativesdk-cairo:

| checking whether float word ordering is bigendian... unknown
| configure: error:
|
| Unknown float word ordering. You need to manually preset
| ax_cv_c_float_words_bigendian=no (or yes) according to your system.

(From meta-yocto rev: 45f97f55ae181b3fe5436276b36f5ed48d7437de)

Signed-off-by: Christian Eggers <ceggers@arri.de>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 meta-poky/conf/distro/include/gcsections.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-poky/conf/distro/include/gcsections.inc b/meta-poky/conf/distro/include/gcsections.inc
index 7157373..75d8613 100644
--- a/meta-poky/conf/distro/include/gcsections.inc
+++ b/meta-poky/conf/distro/include/gcsections.inc
@@ -16,6 +16,8 @@ LDFLAGS_SECTION_REMOVAL_pn-grub = ""
 # SDK packages with build problems using sections
 CFLAGS_SECTION_REMOVAL_pn-nativesdk-glibc = ""
 LDFLAGS_SECTION_REMOVAL_pn-nativesdk-glibc = ""
+CFLAGS_SECTION_REMOVAL_pn-nativesdk-cairo = ""
+LDFLAGS_SECTION_REMOVAL_pn-nativesdk-cairo = ""
 CFLAGS_SECTION_REMOVAL_pn-nativesdk-mingw-w64-runtime = ""
 LDFLAGS_SECTION_REMOVAL_pn-nativesdk-mingw-w64-runtime = ""
 CFLAGS_SECTION_REMOVAL_pn-nativesdk-perl = ""
-- 
2.35.1

