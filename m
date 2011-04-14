Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 87F0C4C80852
	for <poky@yoctoproject.org>; Wed, 13 Apr 2011 19:15:54 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Apr 2011 17:15:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,207,1301900400"; d="scan'208";a="628243086"
Received: from yocto-build8.sh.intel.com (HELO localhost) ([10.239.48.1])
	by orsmga002.jf.intel.com with ESMTP; 13 Apr 2011 17:15:53 -0700
Message-Id: <35d68dc3f364c28cc758ff5d0f3e72a6d4d03f0a.1302739788.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1302739788.git.edwin.zhai@intel.com>
References: <cover.1302739788.git.edwin.zhai@intel.com>
Old-Date: Tue, 12 Apr 2011 16:25:54 +0800
Date: Thu, 14 Apr 2011  8:13:21 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 2/9] tasks: Upgrade to 0.19 (from 0.18)
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
X-List-Received-Date: Thu, 14 Apr 2011 00:15:54 -0000

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


