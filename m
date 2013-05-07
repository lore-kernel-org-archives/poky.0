Return-Path: <cristian.iorga@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D60AAE01472
	for <poky@yoctoproject.org>; Tue,  7 May 2013 05:35:06 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 07 May 2013 05:35:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,628,1363158000"; d="scan'208";a="333839348"
Received: from sentry.rb.intel.com ([10.237.105.54])
	by fmsmga002.fm.intel.com with ESMTP; 07 May 2013 05:34:44 -0700
From: Cristian Iorga <cristian.iorga@intel.com>
To: poky@yoctoproject.org
Date: Tue,  7 May 2013 15:35:35 +0300
Message-Id: <1367930135-26506-1-git-send-email-cristian.iorga@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] maintainers.inc: update sbc pkg maintainer
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
X-List-Received-Date: Tue, 07 May 2013 12:35:07 -0000

sbc package maintainer is Cristian Iorga.

Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index db50531..c51e5f0 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -707,6 +707,7 @@ RECIPE_MAINTAINER_pn-run-postinsts = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-rxvt-unicode = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-sato-icon-theme = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-sato-screenshot = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-sbc = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-screenshot = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-screen = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-scrnsaverproto = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
-- 
1.7.10.4


