Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web12.1714.1641395901948371702
 for <poky@lists.yoctoproject.org>;
 Wed, 05 Jan 2022 07:18:33 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=WLkEDvYL;
 spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1641395912; x=1672931912;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=oO/LrKVZTcQl8iPGWNllnK/oqSmpujyXuQWO70CmJwk=;
  b=WLkEDvYLui314Ml9yUvWzK9dvLi4lLPWnddnAhr612Jya6YE9k2qibHx
   4vt7rw8R0JhvlkI+trXCePra/QG9nbYp14kRA/sv71NGNJx8mLb0vBL8B
   7bBWK6NDd9HD/XPHfCHHNIHEXqVho1NBostN6ZFahrFPjdRyJ2pPr3/m5
   JQqLTHLLYARJTY6rHRTOxFQzHAymzO7w0xmr4UVsHd/+DzJMTyvKiFz2x
   zW+QWTZHMyKjLu+PKgOuUOekQQ5JGwlOUlPFDka7XHszkZZTkB7UwGRHJ
   UaKoMsx3cbbDb2T3YNqGslHthySAdSdsOzJmhexD9sqg3Y+e19rkto5mK
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="241282895"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; 
   d="scan'208";a="241282895"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jan 2022 07:18:31 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; 
   d="scan'208";a="526649864"
Received: from hanwenlx-mobl1.gar.corp.intel.com (HELO anmitta2-mobl3.intel.com) ([10.213.129.44])
  by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jan 2022 07:18:27 -0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [hardknott][meta-yocto][PATCH 3/3] linux-yocto/5.10: update genericx86* machines to v5.10.82
Date: Wed,  5 Jan 2022 23:18:15 +0800
Message-Id: <20220105151815.9684-4-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220105151815.9684-1-anuj.mittal@intel.com>
References: <20220105151815.9684-1-anuj.mittal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Teoh Jay Shen <jay.shen.teoh@intel.com>

Signed-off-by: Teoh Jay Shen <jay.shen.teoh@intel.com>
Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index 347a411341e..21f99ea452e 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,8 +7,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "164ed895bc1e94722e80fe6496b176f6bb815cd4"
-SRCREV_machine_genericx86-64 ?= "164ed895bc1e94722e80fe6496b176f6bb815cd4"
+SRCREV_machine_genericx86 ?= "1bb9d730ac6630d3f41c2ef529fab09f12bcf07d"
+SRCREV_machine_genericx86-64 ?= "1bb9d730ac6630d3f41c2ef529fab09f12bcf07d"
 SRCREV_machine_edgerouter ?= "4ab94e777d8b41ee1ee4c279259e9733bc8049b1"
 SRCREV_machine_beaglebone-yocto ?= "941cc9c3849f96f7eaf109b1e35e05ba366aca56"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.10.63"
-LINUX_VERSION_genericx86-64 = "5.10.63"
+LINUX_VERSION_genericx86 = "5.10.82"
+LINUX_VERSION_genericx86-64 = "5.10.82"
 LINUX_VERSION_edgerouter = "5.10.63"
 LINUX_VERSION_beaglebone-yocto = "5.10.63"
-- 
2.33.1

