Return-Path: <cristian.iorga@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3997CE0127D
	for <poky@yoctoproject.org>; Tue,  7 May 2013 06:44:28 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 07 May 2013 06:42:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,628,1363158000"; d="scan'208";a="309587886"
Received: from sentry.rb.intel.com ([10.237.105.54])
	by orsmga001.jf.intel.com with ESMTP; 07 May 2013 06:44:26 -0700
From: Cristian Iorga <cristian.iorga@intel.com>
To: poky@yoctoproject.org
Date: Tue,  7 May 2013 16:45:17 +0300
Message-Id: <1367934317-27500-1-git-send-email-cristian.iorga@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] maintainers.inc: update neard pkg maintainer
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
X-List-Received-Date: Tue, 07 May 2013 13:44:28 -0000

neard package maintainer is Cristian Iorga.

Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index c51e5f0..e11b9ed 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -559,6 +559,7 @@ RECIPE_MAINTAINER_pn-nativesdk-qt4-tools = "Paul Eggleton <paul.eggleton@linux.i
 RECIPE_MAINTAINER_pn-nativesdk-unfs-server = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-nativesdk-util-macros = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-ncurses = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-neard = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-neon = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-netbase = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-net-tools = "Cristian Iorga <cristian.iorga@intel.com>"
-- 
1.7.10.4


