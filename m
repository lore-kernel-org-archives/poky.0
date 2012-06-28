Return-Path: <valentin.popa@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4AD6E013E5
	for <poky@yoctoproject.org>; Thu, 28 Jun 2012 06:39:21 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 28 Jun 2012 06:39:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="171110444"
Received: from valentin-desktop (HELO localhost.localdomain) ([10.237.105.52])
	by fmsmga001.fm.intel.com with ESMTP; 28 Jun 2012 06:39:18 -0700
From: Valentin Popa <valentin.popa@intel.com>
To: poky@yoctoproject.org
Date: Thu, 28 Jun 2012 15:46:19 +0300
Message-Id: <1340887579-30748-1-git-send-email-valentin.popa@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] build-appliance-image: rename from self-hosted-image
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
X-List-Received-Date: Thu, 28 Jun 2012 13:39:22 -0000

(-) rename it also in maintainers.inc

[YOCTO #2636]

Signed-off-by: Valentin Popa <valentin.popa@intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index b88fe2e..d60ee93 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -577,7 +577,7 @@ RECIPE_MAINTAINER_pn-screen = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-screenshot = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-scrnsaverproto = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-sed = "Valentin Popa <valentin.popa@intel.com>"
-RECIPE_MAINTAINER_pn-self-hosted-image = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-build-appliance-image = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-setserial = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-settings-daemon = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-sgml-common = "Scott Garman <scott.a.garman@intel.com>"
-- 
1.7.9.5


