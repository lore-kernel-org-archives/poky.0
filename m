Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51CDFE005B1
	for <poky@yoctoproject.org>; Fri, 13 Dec 2013 08:21:30 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Dec 2013 08:17:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,479,1384329600"; d="scan'208";a="424292405"
Received: from qana.jf.intel.com ([10.7.201.146])
	by orsmga001.jf.intel.com with ESMTP; 13 Dec 2013 08:20:58 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 66DAE5F82859; Fri, 13 Dec 2013 08:18:23 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: poky@yoctoproject.org
Date: Fri, 13 Dec 2013 08:18:17 -0800
Message-Id: <1386951497-28045-1-git-send-email-elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH] poky.conf: Flip DISTRO_VERSION for 1.4.3
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
X-List-Received-Date: Fri, 13 Dec 2013 16:21:30 -0000

From: Beth Flanagan <elizabeth.flanagan@intel.com>

With 1.4.3 we need to flip vars in 1.4.3

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 meta-yocto/conf/distro/poky.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index a16522d..d90ec5b 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
-DISTRO_NAME = "Poky 9.0.2 (Yocto Project 1.4 Reference Distro)"
-DISTRO_VERSION = "1.4.2"
+DISTRO_NAME = "Poky 9.0.3 (Yocto Project 1.4.3 Reference Distro)"
+DISTRO_VERSION = "1.4.3"
 DISTRO_CODENAME = "dylan"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION := "${@'${DISTRO_VERSION}'}"
-- 
1.8.1.2


