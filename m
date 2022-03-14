Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web09.22163.1647223305645288334
 for <poky@lists.yoctoproject.org>;
 Sun, 13 Mar 2022 19:01:48 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=Xqj32qu3;
 spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647223307; x=1678759307;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=jaN/sBorc5QtUivjsg+MXOgqR4w1kCwjZ14jAygsG40=;
  b=Xqj32qu35G+aaiUFxZsQtQ618Ya4acVHJU8KM3k3wHakD4cCuhCEbz6x
   9rgcKMa3UM7227Wiqrh0NuqjyzFD9UoTEnAWk2xx2/CG2f9KHABLTOVu/
   HU1BKjbR0NyrvKvsir3027a6ZcI0yQ34WHtW1kJVGeWyIkWuhbPUZi9fj
   cTfRzGo5YekXSKVuxddvrmQIqsFtXa+bBdPipnfQyXG2NphYUX7FKHr3v
   MzzGa4gvL0atMy7VkQSc3EN2AITKyCl2vL2dM7plGuMWy+4hnYXIrjxd6
   0yNhWnvMkVXpubik08YJaMXvPpGLtD0iuhpENjZnbnLZETBH1NAG/L7sc
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="255647253"
X-IronPort-AV: E=Sophos;i="5.90,179,1643702400"; 
   d="scan'208";a="255647253"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Mar 2022 19:01:47 -0700
X-IronPort-AV: E=Sophos;i="5.90,179,1643702400"; 
   d="scan'208";a="689660125"
Received: from lsim7-mobl1.gar.corp.intel.com (HELO anmitta2-mobl3.intel.com) ([10.215.229.232])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Mar 2022 19:01:46 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [honister][meta-yocto][PATCH 2/2] gcsections: add nativesdk-cairo to exclude list
Date: Mon, 14 Mar 2022 10:01:37 +0800
Message-Id: <20220314020137.9783-3-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220314020137.9783-1-anuj.mittal@intel.com>
References: <20220314020137.9783-1-anuj.mittal@intel.com>
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

Signed-off-by: Christian Eggers <ceggers@arri.de>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 45f97f55ae181b3fe5436276b36f5ed48d7437de)
Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 meta-poky/conf/distro/include/gcsections.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-poky/conf/distro/include/gcsections.inc b/meta-poky/conf/distro/include/gcsections.inc
index 886a005..a1f8651 100644
--- a/meta-poky/conf/distro/include/gcsections.inc
+++ b/meta-poky/conf/distro/include/gcsections.inc
@@ -16,6 +16,8 @@ LDFLAGS_SECTION_REMOVAL:pn-grub = ""
 # SDK packages with build problems using sections
 CFLAGS_SECTION_REMOVAL:pn-nativesdk-glibc = ""
 LDFLAGS_SECTION_REMOVAL:pn-nativesdk-glibc = ""
+CFLAGS_SECTION_REMOVAL:pn-nativesdk-cairo = ""
+LDFLAGS_SECTION_REMOVAL:pn-nativesdk-cairo = ""
 CFLAGS_SECTION_REMOVAL:pn-nativesdk-mingw-w64-runtime = ""
 LDFLAGS_SECTION_REMOVAL:pn-nativesdk-mingw-w64-runtime = ""
 CFLAGS_SECTION_REMOVAL:pn-nativesdk-perl = ""
-- 
2.35.1

