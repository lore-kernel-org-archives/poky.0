Return-Path: <cristian.iorga@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8591E0127D
	for <poky@yoctoproject.org>; Tue,  7 May 2013 06:58:39 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 May 2013 06:58:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,628,1363158000"; d="scan'208";a="309593730"
Received: from sentry.rb.intel.com ([10.237.105.54])
	by orsmga001.jf.intel.com with ESMTP; 07 May 2013 06:58:37 -0700
From: Cristian Iorga <cristian.iorga@intel.com>
To: poky@yoctoproject.org
Date: Tue,  7 May 2013 16:59:28 +0300
Message-Id: <1367935168-27586-1-git-send-email-cristian.iorga@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] maintainers.inc: update alsa-utils-alsaconf pkg maintainer
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
X-List-Received-Date: Tue, 07 May 2013 13:58:40 -0000

alsa-utils-alsaconf package maintainer is Cristian Iorga.

Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index e11b9ed..4ac93a4 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -34,6 +34,7 @@ RECIPE_MAINTAINER_pn-alsa-lib = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-alsa-state = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-alsa-tools = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-alsa-utils = "Cristian Iorga <cristian.iorga@intel.com>"
+RECIPE_MAINTAINER_pn-alsa-utils-alsaconf = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-anjuta-remote-run = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-apmd = "Andrei Dinu <andrei.adrianx.dinu@intel.com>"
 RECIPE_MAINTAINER_pn-apr = "Radu Moisan <radu.moisan@intel.com>"
-- 
1.7.10.4


