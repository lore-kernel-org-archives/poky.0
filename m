Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1C0724C811F0
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 20:30:01 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 29 Dec 2010 18:30:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,247,1291622400"; d="scan'208";a="872900715"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga001.fm.intel.com with ESMTP; 29 Dec 2010 18:29:24 -0800
Message-Id: <51f7c0261b8da9da63b0b523039140a87f3de273.1293676328.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1293676328.git.dongxiao.xu@intel.com>
References: <cover.1293676328.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Wed, 29 Dec 2010 13:29:35 +0800
Date: Thu, 30 Dec 2010 10:39:09 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 10/19] telepathy-python: upgrade to version 0.15.19
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
X-List-Received-Date: Thu, 30 Dec 2010 02:30:01 -0000

upgrade from 0.15.18 to 0.15.19

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 ...thon_0.15.18.bb => telepathy-python_0.15.19.bb} |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-connectivity/telepathy/{telepathy-python_0.15.18.bb => telepathy-python_0.15.19.bb} (78%)

diff --git a/meta/recipes-connectivity/telepathy/telepathy-python_0.15.18.bb b/meta/recipes-connectivity/telepathy/telepathy-python_0.15.19.bb
similarity index 78%
rename from meta/recipes-connectivity/telepathy/telepathy-python_0.15.18.bb
rename to meta/recipes-connectivity/telepathy/telepathy-python_0.15.19.bb
index 8d7c766..aefde8c 100644
--- a/meta/recipes-connectivity/telepathy/telepathy-python_0.15.18.bb
+++ b/meta/recipes-connectivity/telepathy/telepathy-python_0.15.19.bb
@@ -8,12 +8,12 @@ RDEPENDS_${PN} += "python-dbus"
 
 SRC_URI = "http://telepathy.freedesktop.org/releases/${PN}/${P}.tar.gz "
 
-PR = "r1"
+PR = "r0"
 
 inherit autotools
 
-SRC_URI[md5sum] = "51da78a77681b0652d9b4ca941da0658"
-SRC_URI[sha256sum] = "f9f5c260188e9e27af9152bfc6d622cc5c0ea48d63d5fa9985abbdd69fda0e87"
+SRC_URI[md5sum] = "f7ca25ab3c88874015b7e9728f7f3017"
+SRC_URI[sha256sum] = "244c0e1bf4bbd78ae298ea659fe10bf3a73738db550156767cc2477aedf72376"
 
 FILES_${PN} += "\
     ${libdir}/python*/site-packages/telepathy/*.py \
-- 
1.6.3.3


