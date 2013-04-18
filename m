Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 508F6E014B5
	for <poky@yoctoproject.org>; Thu, 18 Apr 2013 09:55:52 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Apr 2013 09:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,502,1363158000"; d="scan'208";a="321250737"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.14.2])
	by fmsmga001.fm.intel.com with ESMTP; 18 Apr 2013 09:55:51 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 18 Apr 2013 09:55:51 -0700
Message-Id: <1366304151-30926-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.0.2
Subject: [PATCH] init-ifupdown: move network interfaces file for the beagleboard
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 18 Apr 2013 16:55:52 -0000

With the splite of netbase and init-ifupdown, the interfaces file needs to get
moved for the beagleboard

[YOCTO #4334]

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../init-ifupdown-1.0}/beagleboard/interfaces                          |    0
 .../netbase_5.0.bbappend => init-ifupdown/init-ifupdown_1.0.bbappend}  |    0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename meta-yocto-bsp/recipes-core/{netbase/netbase-5.0 => init-ifupdown/init-ifupdown-1.0}/beagleboard/interfaces (100%)
 rename meta-yocto-bsp/recipes-core/{netbase/netbase_5.0.bbappend => init-ifupdown/init-ifupdown_1.0.bbappend} (100%)

diff --git a/meta-yocto-bsp/recipes-core/netbase/netbase-5.0/beagleboard/interfaces b/meta-yocto-bsp/recipes-core/init-ifupdown/init-ifupdown-1.0/beagleboard/interfaces
similarity index 100%
rename from meta-yocto-bsp/recipes-core/netbase/netbase-5.0/beagleboard/interfaces
rename to meta-yocto-bsp/recipes-core/init-ifupdown/init-ifupdown-1.0/beagleboard/interfaces
diff --git a/meta-yocto-bsp/recipes-core/netbase/netbase_5.0.bbappend b/meta-yocto-bsp/recipes-core/init-ifupdown/init-ifupdown_1.0.bbappend
similarity index 100%
rename from meta-yocto-bsp/recipes-core/netbase/netbase_5.0.bbappend
rename to meta-yocto-bsp/recipes-core/init-ifupdown/init-ifupdown_1.0.bbappend
-- 
1.7.10.4


