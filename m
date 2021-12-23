Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web12.30544.1640246880657467956
 for <poky@lists.yoctoproject.org>;
 Thu, 23 Dec 2021 00:08:02 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=niIj2XiQ;
 spf=pass (domain: intel.com, ip: 134.134.136.126, mailfrom: jay.shen.teoh@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1640246881; x=1671782881;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=nzVBPWTcCCaWFhd0EqyBS12k3/itq7CinVAbzICdD/g=;
  b=niIj2XiQetj3gYtR7Jj4obXDP5mkvB34z8Xt/yS4x5B52PLpEt3BkKuy
   yw6uEFGdZUQJFSrDAbaHYkHD2y3DvPygUpru8o2jxS1UhxNngYQ0jf3HG
   f/wIL798csDuSS+bgFfLnObilSnF0lN2U85zeFrfn/c2818TmIjRmqJb5
   W7j4BQELAkuWLIN6H2B6mmB39DeEfWtSfs230IhjWVJHhsOJLE4IHKQr2
   Zsst++C0FHY8H1Svo2/mS3RwfqMt9iYoPbgP5tdW/mLIIR3Z4gZjCyL+g
   Upens93emjAyqXUkEKNvEknSIQ/Ol2sJzBYHneIWsH4ONWirsDtQ+rVAm
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10206"; a="227625091"
X-IronPort-AV: E=Sophos;i="5.88,228,1635231600"; 
   d="scan'208";a="227625091"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Dec 2021 00:07:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,228,1635231600"; 
   d="scan'208";a="550577356"
Received: from andromeda02.png.intel.com ([10.221.183.11])
  by orsmga001.jf.intel.com with ESMTP; 23 Dec 2021 00:07:57 -0800
From: "Teoh, Jay Shen" <jay.shen.teoh@intel.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto] [PATCH 2/2] linux-yocto/5.14: update genericx86* machines to v5.14.21
Date: Thu, 23 Dec 2021 16:07:52 +0800
Message-Id: <20211223080752.71819-2-jay.shen.teoh@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211223080752.71819-1-jay.shen.teoh@intel.com>
References: <20211223080752.71819-1-jay.shen.teoh@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Teoh Jay Shen <jay.shen.teoh@intel.com>

Signed-off-by: Teoh Jay Shen <jay.shen.teoh@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.14.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.14.bbappend
index 52371ff66a..af4a7392f0 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.14.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.14.bbappend
@@ -7,8 +7,8 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "7ae156be3bdbf033839f7f3ec2e9a0ffffb18818"
-SRCREV_machine:genericx86-64 ?= "7ae156be3bdbf033839f7f3ec2e9a0ffffb18818"
+SRCREV_machine:genericx86 ?= "9d5572038eacda2e2a86e3f743f35ec415319fb4"
+SRCREV_machine:genericx86-64 ?= "9d5572038eacda2e2a86e3f743f35ec415319fb4"
 SRCREV_machine:edgerouter ?= "7ae156be3bdbf033839f7f3ec2e9a0ffffb18818"
 SRCREV_machine:beaglebone-yocto ?= "7ae156be3bdbf033839f7f3ec2e9a0ffffb18818"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.14.6"
-LINUX_VERSION:genericx86-64 = "5.14.6"
+LINUX_VERSION:genericx86 = "5.14.21"
+LINUX_VERSION:genericx86-64 = "5.14.21"
 LINUX_VERSION:edgerouter = "5.14.6"
 LINUX_VERSION:beaglebone-yocto = "5.14.6"
-- 
2.33.1

