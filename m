Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C4E5E002A6
	for <poky@yoctoproject.org>; Fri, 17 Aug 2012 03:55:30 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Aug 2012 03:55:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,784,1336374000"; d="scan'208";a="181906680"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.90])
	by orsmga001.jf.intel.com with ESMTP; 17 Aug 2012 03:55:28 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 17 Aug 2012 11:55:25 +0100
Message-Id: <1345200925-3178-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] poky.conf: update distro ID string for Ubuntu 12.04.1 LTS
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 17 Aug 2012 10:55:30 -0000

If you have 12.04 LTS it will now have been updated to 12.04.1.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index cc9fa6c..711087b 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -69,7 +69,7 @@ SANITY_TESTED_DISTROS ?= " \
             Yocto (Built by Poky 7.0) 1.2 \n \
             Ubuntu 10.04.4 LTS \n \
             Ubuntu 11.10 \n \
-            Ubuntu 12.04 LTS \n \
+            Ubuntu 12.04.1 LTS \n \
             Fedora release 15 (Lovelock) \n \
             Fedora release 16 (Verne) \n \
             Fedora release 17 (Beefy Miracle) \n \
-- 
1.7.9.5


