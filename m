Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE431E00747
	for <poky@yoctoproject.org>; Wed, 21 Aug 2013 22:52:58 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 21 Aug 2013 22:52:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,932,1367996400"; d="scan'208";a="384730494"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.14.105])
	by fmsmga001.fm.intel.com with ESMTP; 21 Aug 2013 22:52:54 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 21 Aug 2013 22:52:53 -0700
Message-Id: <1377150774-3285-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [PATCH 1/2] maintainers: give guilt-native to Bruce
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
X-List-Received-Date: Thu, 22 Aug 2013 05:53:01 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index ebd4d7a..87e7eaf 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -228,7 +228,7 @@ RECIPE_MAINTAINER_pn-gtk-update-icon-cache-native = "Valentin Popa <valentin.pop
 RECIPE_MAINTAINER_pn-gtk+ = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-gtk+3 = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-guile = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
-RECIPE_MAINTAINER_pn-guilt-native = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-guilt-native = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-gzip = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-hal = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-harfbuzz = "Cristian Iorga <cristian.iorga@intel.com>"
-- 
1.8.3.1


