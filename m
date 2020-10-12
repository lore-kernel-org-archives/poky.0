Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web11.32868.1602474794462594598
 for <poky@lists.yoctoproject.org>;
 Sun, 11 Oct 2020 20:53:14 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: d0HrLUkSp0GPcFV9o6p8cjhMtuiYL8enXpWN2mHi7O5qqzT6vTpDD8kaN81geZ3XMLhF5nu4by
 b8QdTJH6G1+g==
X-IronPort-AV: E=McAfee;i="6000,8403,9771"; a="163047400"
X-IronPort-AV: E=Sophos;i="5.77,365,1596524400"; 
   d="scan'208";a="163047400"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Oct 2020 20:53:14 -0700
IronPort-SDR: hPyOG/ADwK0kcYr9casfoDNkZNgFwu7cHopzVZzweY6wNTGFzWcfF41gHGnQ6Bl3Bo7kgHXvK7
 SCV3ZAFpXouQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,365,1596524400"; 
   d="scan'208";a="345709046"
Received: from andromeda02.png.intel.com ([10.221.183.11])
  by orsmga008.jf.intel.com with ESMTP; 11 Oct 2020 20:53:13 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: poky@lists.yoctoproject.org,
	richard.purdie@linuxfoundation.org
Subject: [meta-yocto-bsp][PATCH 1/2] linux-yocto: update genericx86* SRCREV for 5.4
Date: Mon, 12 Oct 2020 11:53:06 +0800
Message-Id: <1602474787-62052-1-git-send-email-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.7.4

Bump to kernel release v5.4.69

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index 9c37f91bc1..4ee895dbdc 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,8 +7,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
-SRCREV_machine_genericx86-64 ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
+SRCREV_machine_genericx86 ?= "cfcdd63145c0d741e57ee3e3e58f794229c6c09c"
+SRCREV_machine_genericx86-64 ?= "cfcdd63145c0d741e57ee3e3e58f794229c6c09c"
 SRCREV_machine_edgerouter ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 SRCREV_machine_beaglebone-yocto ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.58"
-LINUX_VERSION_genericx86-64 = "5.4.58"
+LINUX_VERSION_genericx86 = "5.4.69"
+LINUX_VERSION_genericx86-64 = "5.4.69"
 LINUX_VERSION_edgerouter = "5.4.58"
 LINUX_VERSION_beaglebone-yocto = "5.4.58"
-- 
2.27.0

