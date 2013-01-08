Return-Path: <bogdan.a.marinescu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 176A7E0145C
	for <poky@yoctoproject.org>; Tue,  8 Jan 2013 03:53:48 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 08 Jan 2013 03:53:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,430,1355126400"; d="scan'208";a="274218013"
Received: from bogdanm (HELO localhost.localdomain) ([10.237.105.166])
	by fmsmga002.fm.intel.com with ESMTP; 08 Jan 2013 03:53:46 -0800
From: Bogdan Marinescu <bogdan.a.marinescu@intel.com>
To: poky@yoctoproject.org
Date: Tue,  8 Jan 2013 13:57:00 +0200
Message-Id: <1357646220-16384-1-git-send-email-bogdan.a.marinescu@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] maintainers.inc: updated package owners
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
X-List-Received-Date: Tue, 08 Jan 2013 11:53:48 -0000

The linux-libc-headers and linux-libc-headers-yocto packages are currently
maintained by Bruce Ashfield. The maintainers.inc file was updated with
this information.

Signed-off-by: Bogdan Marinescu <bogdan.a.marinescu@intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 5efb7d0..0627e99 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -476,8 +476,8 @@ RECIPE_MAINTAINER_pn-lighttpd = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-linuxdoc-tools = "Scott Garman <scott.a.garman@intel.com>"
 RECIPE_MAINTAINER_pn-linux-dummy = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-linux-firmware = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-linux-libc-headers = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
-RECIPE_MAINTAINER_pn-linux-libc-headers-yocto = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
+RECIPE_MAINTAINER_pn-linux-libc-headers = "Bruce Ashfield <bruce.ashfield@windriver.com>"
+RECIPE_MAINTAINER_pn-linux-libc-headers-yocto = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-linux-yocto = "Darren Hart <dvhart@linux.intel.com>"
 RECIPE_MAINTAINER_pn-linux-yocto-rt = "Darren Hart <dvhart@linux.intel.com>"
 RECIPE_MAINTAINER_pn-linux-yocto-tiny = "Saul Wold <sgw@linux.intel.com>"
-- 
1.7.10.4


