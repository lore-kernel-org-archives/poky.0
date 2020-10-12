Received: from mga04.intel.com (mga04.intel.com [])
 by mx.groups.io with SMTP id smtpd.web11.32868.1602474794462594598
 for <poky@lists.yoctoproject.org>;
 Sun, 11 Oct 2020 20:53:15 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: K/uw9n9I4mj4WNiRe1B0YZusQ3Vp2famd7+lHTEI9pHYvKG0Hn9yy3hlxArT73iAFPlncWV0jv
 QVDsZvgth/9Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9771"; a="163047401"
X-IronPort-AV: E=Sophos;i="5.77,365,1596524400"; 
   d="scan'208";a="163047401"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Oct 2020 20:53:14 -0700
IronPort-SDR: alV9JDlnjIqF567TM9rMuo0sNHJTtCXuvbIGo3m7qA+mezWrYwYrOTe/e6VHzQW1LfdJI4Ma7o
 kJMi6YnIAmvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,365,1596524400"; 
   d="scan'208";a="345709049"
Received: from andromeda02.png.intel.com ([10.221.183.11])
  by orsmga008.jf.intel.com with ESMTP; 11 Oct 2020 20:53:14 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: poky@lists.yoctoproject.org,
	richard.purdie@linuxfoundation.org
Subject: [meta-yocto-bsp][PATCH 2/2] linux-yocto: update genericx86* SRCREV for 5.8
Date: Mon, 12 Oct 2020 11:53:07 +0800
Message-Id: <1602474787-62052-2-git-send-email-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1602474787-62052-1-git-send-email-naveen.kumar.saini@intel.com>
References: <1602474787-62052-1-git-send-email-naveen.kumar.saini@intel.com>

Bump to kernel release v5.8.13

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.8.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.8.bbappend
index 5d844423af..a04f332cfa 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.8.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.8.bbappend
@@ -7,8 +7,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "912adf166eb0688e011154048f5fa0e5863249c3"
-SRCREV_machine_genericx86-64 ?= "912adf166eb0688e011154048f5fa0e5863249c3"
+SRCREV_machine_genericx86 ?= "5981001bf03f0d0c1cf641a2287ab6368baf628a"
+SRCREV_machine_genericx86-64 ?= "5981001bf03f0d0c1cf641a2287ab6368baf628a"
 SRCREV_machine_edgerouter ?= "912adf166eb0688e011154048f5fa0e5863249c3"
 SRCREV_machine_beaglebone-yocto ?= "912adf166eb0688e011154048f5fa0e5863249c3"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.8.2"
-LINUX_VERSION_genericx86-64 = "5.8.2"
+LINUX_VERSION_genericx86 = "5.8.13"
+LINUX_VERSION_genericx86-64 = "5.8.13"
 LINUX_VERSION_edgerouter = "5.8.2"
 LINUX_VERSION_beaglebone-yocto = "5.8.2"
-- 
2.27.0

