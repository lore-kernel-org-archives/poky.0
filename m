Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 72E564C80ACD
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 00:36:02 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 14 Apr 2011 22:36:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,216,1301900400"; d="scan'208";a="733679677"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by orsmga001.jf.intel.com with ESMTP; 14 Apr 2011 22:36:01 -0700
Message-Id: <d1466bc044aad0767fc7179b79d7520d70ac52e0.1302845703.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1302845703.git.dongxiao.xu@intel.com>
References: <cover.1302845703.git.dongxiao.xu@intel.com>
Old-Date: Wed, 13 Apr 2011 16:04:47 +0800
Date: Fri, 15 Apr 2011 13:36:55 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 11/14] telepathy-mission-control: upgrade to version 5.7.9
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
X-List-Received-Date: Fri, 15 Apr 2011 05:36:02 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 ...5.7.1.bb => telepathy-mission-control_5.7.9.bb} |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-connectivity/telepathy/{telepathy-mission-control_5.7.1.bb => telepathy-mission-control_5.7.9.bb} (92%)

diff --git a/meta/recipes-connectivity/telepathy/telepathy-mission-control_5.7.1.bb b/meta/recipes-connectivity/telepathy/telepathy-mission-control_5.7.9.bb
similarity index 92%
rename from meta/recipes-connectivity/telepathy/telepathy-mission-control_5.7.1.bb
rename to meta/recipes-connectivity/telepathy/telepathy-mission-control_5.7.9.bb
index f5c2745..7805db6 100644
--- a/meta/recipes-connectivity/telepathy/telepathy-mission-control_5.7.1.bb
+++ b/meta/recipes-connectivity/telepathy/telepathy-mission-control_5.7.9.bb
@@ -40,5 +40,5 @@ FILES_libmissioncontrol-dbg = "${libdir}/.debug/libmissioncontrol.so.*"
 FILES_libmissioncontrol-config-dbg = "${libdir}/.debug/libmissioncontrol-config.so.*"
 FILES_libmissioncontrol-server-dbg = "${libdir}/.debug/libmissioncontrol-server.so.*"
 
-SRC_URI[md5sum] = "9688a3f75c080eaa2dbf6b4d75876dc9"
-SRC_URI[sha256sum] = "c58f07ee801b023bc5d5a8ec0fce49058a0372b6727e6516fb56d100dacd07fe"
+SRC_URI[md5sum] = "df7e63d857676fab9ec2261cffe5eb4a"
+SRC_URI[sha256sum] = "bc430238d2fb6663d8376702a43251000a75b741ab55af88006cbdb37d8cc086"
-- 
1.7.1


