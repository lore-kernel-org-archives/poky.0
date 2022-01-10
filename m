Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web09.28718.1641797906636572759
 for <poky@lists.yoctoproject.org>;
 Sun, 09 Jan 2022 22:58:26 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=fbX/AyoC;
 spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1641797906; x=1673333906;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=xDL7xDKsv9WwRV7Tc7/52n2z2tBcQXSjIoz5HMJBXzU=;
  b=fbX/AyoCgZHopzyLuFvN3SNva7/6DXp+heyptZx+aV5yomwrYuGOZA8Z
   7JYLG/JRVdbBmsUsGv4GifsnBZRGL9nFGR/vkfRzgCKTUAiSyHwhG/m9t
   NbQJo5b3FVnGssza2N9I5aPxUmJsvkVgIRzU3tjfCr/Y1FPFoZYo6GAg6
   p1Adq8e/iaA2hqaJeu+pWmsDXQ0S4W8tM/ZlGiQqNik0zpy1oAi/csMqZ
   PcRxjh0F5JPYlH3Q5UNq4e+ko4tPn2dM4UApQsAB9GoigQwXycX1EmfK9
   uqmrZOfclieR+Zl0/TU4mv8yRuHUgnWNb8o9bVdQFDKgXcQiyhXbAVR+V
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="242963383"
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; 
   d="scan'208";a="242963383"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jan 2022 22:58:26 -0800
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; 
   d="scan'208";a="557893995"
Received: from bboox-mobl.gar.corp.intel.com (HELO anmitta2-mobl3.intel.com) ([10.213.135.82])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jan 2022 22:58:25 -0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [honister][meta-yocto][PATCH 2/2] linux-yocto/5.14: update genericx86* machines to v5.14.21
Date: Mon, 10 Jan 2022 14:58:17 +0800
Message-Id: <20220110065817.22633-3-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220110065817.22633-1-anuj.mittal@intel.com>
References: <20220110065817.22633-1-anuj.mittal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Teoh Jay Shen <jay.shen.teoh@intel.com>

(From meta-yocto rev: 937ecc5586d3d9067835223d32a0673b19698ed4)

Signed-off-by: Teoh Jay Shen <jay.shen.teoh@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 4bcf4ef32c109cd0702c06e82706707765008da5)
Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.14.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.14.bbappend
index 52371ff66af..af4a7392f07 100644
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
2.34.1

