Return-Path: <emilia.maria.silvia.ciobanu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B977E013A2
	for <poky@yoctoproject.org>; Thu, 25 Jul 2013 06:15:21 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 25 Jul 2013 06:15:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,743,1367996400"; d="scan'208";a="273118962"
Received: from ema-vostro-460.rb.intel.com ([10.237.105.147])
	by AZSMGA002.ch.intel.com with ESMTP; 25 Jul 2013 06:15:20 -0700
From: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
To: poky@yoctoproject.org
Date: Thu, 25 Jul 2013 16:23:07 +0300
Message-Id: <1374758587-17767-1-git-send-email-emilia.maria.silvia.ciobanu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] maintainers.inc: Update maintainer for lsb recipe
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
X-List-Received-Date: Thu, 25 Jul 2013 13:15:22 -0000

Signed-off-by: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index db50531..9413ed1 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -480,7 +480,7 @@ RECIPE_MAINTAINER_pn-lrzsz = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-lsbinitscripts = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-lsbsetup = "Yi Zhao <yi.zhao@windriver.com>"
 RECIPE_MAINTAINER_pn-lsbtest = "Yi Zhao <yi.zhao@windriver.com>"
-RECIPE_MAINTAINER_pn-lsb = "Yi Zhao <yi.zhao@windriver.com>"
+RECIPE_MAINTAINER_pn-lsb = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-lsof = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-ltp = "Mihai Lindner <mihaix.lindner@linux.intel.com>"
 RECIPE_MAINTAINER_pn-lttng-modules = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
-- 
1.7.9.5


