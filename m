Return-Path: <edwin.zhai@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id F2A544C811CC
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 05:21:30 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 19 Nov 2010 03:21:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,222,1288594800"; d="scan'208";a="350821175"
Received: from gzhai-nhm.sh.intel.com (HELO localhost) ([10.239.36.111])
	by azsmga001.ch.intel.com with ESMTP; 19 Nov 2010 03:21:30 -0800
Message-Id: <0f7dadf0201b70ba00c6dda070e07449c5fdec8a.1290165996.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290165996.git.edwin.zhai@intel.com>
References: <cover.1290165996.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 19 Nov 2010 08:00:36 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 06/17] avahi: Update to 0.6.28
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
X-List-Received-Date: Fri, 19 Nov 2010 11:21:31 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../avahi/{avahi_0.6.27.bb => avahi_0.6.28.bb}     |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)
 rename meta/recipes-connectivity/avahi/{avahi_0.6.27.bb => avahi_0.6.28.bb} (98%)

diff --git a/meta/recipes-connectivity/avahi/avahi_0.6.27.bb b/meta/recipes-connectivity/avahi/avahi_0.6.28.bb
similarity index 98%
rename from meta/recipes-connectivity/avahi/avahi_0.6.27.bb
rename to meta/recipes-connectivity/avahi/avahi_0.6.28.bb
index 8793d67..736c615 100644
--- a/meta/recipes-connectivity/avahi/avahi_0.6.27.bb
+++ b/meta/recipes-connectivity/avahi/avahi_0.6.28.bb
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=2d5025d4aa3495befef8f17206a5b0a1 \
                     file://avahi-client/client.h;endline=23;md5=f4ac741a25c4f434039ba3e18c8674cf"
 
 RDEPENDS_avahi-daemon = "sysvinit-pidof"
-PR = "r2"
+PR = "r0"
 
 EXTRA_OECONF += "--disable-gtk3"
 
-- 
1.6.3.3


