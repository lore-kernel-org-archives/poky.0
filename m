Return-Path: <edwin.zhai@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C92D54C805A8
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 08:13:05 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Apr 2011 06:13:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,232,1301900400"; d="scan'208";a="911082408"
Received: from yocto-build8.sh.intel.com (HELO localhost) ([10.239.48.1])
	by fmsmga001.fm.intel.com with ESMTP; 18 Apr 2011 06:13:05 -0700
Message-Id: <1afec4d81832f83fb5746845b35e934d9d8c1571.1303131764.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1303131764.git.edwin.zhai@intel.com>
References: <cover.1303131764.git.edwin.zhai@intel.com>
Old-Date: Tue, 12 Apr 2011 16:25:54 +0800
Date: Mon, 18 Apr 2011 21:10:03 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 1/5] tasks: Upgrade to 0.19 (from 0.18)
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
X-List-Received-Date: Mon, 18 Apr 2011 13:13:05 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../pimlico/{tasks_0.18.bb => tasks_0.19.bb}       |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-sato/pimlico/{tasks_0.18.bb => tasks_0.19.bb} (78%)

diff --git a/meta/recipes-sato/pimlico/tasks_0.18.bb b/meta/recipes-sato/pimlico/tasks_0.19.bb
similarity index 78%
rename from meta/recipes-sato/pimlico/tasks_0.18.bb
rename to meta/recipes-sato/pimlico/tasks_0.19.bb
index fd7edb3..8326643 100644
--- a/meta/recipes-sato/pimlico/tasks_0.18.bb
+++ b/meta/recipes-sato/pimlico/tasks_0.19.bb
@@ -7,8 +7,8 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 
 SRC_URI = "http://pimlico-project.org/sources/${BPN}/${BPN}-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "d40c0227e496b51be6fde10f387215ed"
-SRC_URI[sha256sum] = "08802003da2517c6e0b2defd66bcaf466edd0ce7188373f564d629af6b93cc91"
+SRC_URI[md5sum] = "0afd969758561599fd782e1effb39c08"
+SRC_URI[sha256sum] = "1a7fdc5f95a2193a1a25fdb13f071867fb7e42245ce19ccee4bcccb69e557f2e"
 
 OWL_poky = "--with-owl"
 
-- 
1.7.1


