Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id BDB604C811EA
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 20:29:25 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Dec 2010 18:29:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,247,1291622400"; d="scan'208";a="588237342"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga002.jf.intel.com with ESMTP; 29 Dec 2010 18:29:25 -0800
Message-Id: <a7a90e5e7faeaabcbd91c3b7f7f1fd51cc26a8b3.1293676328.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1293676328.git.dongxiao.xu@intel.com>
References: <cover.1293676328.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Wed, 29 Dec 2010 14:09:51 +0800
Date: Thu, 30 Dec 2010 10:39:10 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 11/19] dpkg: upgrade to version 1.15.8.7
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
X-List-Received-Date: Thu, 30 Dec 2010 02:29:25 -0000

upgrade from 1.15.8.5 to 1.15.8.7

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../dpkg/{dpkg_1.15.8.5.bb => dpkg_1.15.8.7.bb}    |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-devtools/dpkg/{dpkg_1.15.8.5.bb => dpkg_1.15.8.7.bb} (76%)

diff --git a/meta/recipes-devtools/dpkg/dpkg_1.15.8.5.bb b/meta/recipes-devtools/dpkg/dpkg_1.15.8.7.bb
similarity index 76%
rename from meta/recipes-devtools/dpkg/dpkg_1.15.8.5.bb
rename to meta/recipes-devtools/dpkg/dpkg_1.15.8.7.bb
index ed247d4..b2376af 100644
--- a/meta/recipes-devtools/dpkg/dpkg_1.15.8.5.bb
+++ b/meta/recipes-devtools/dpkg/dpkg_1.15.8.7.bb
@@ -5,10 +5,10 @@ SRC_URI += "file://noman.patch;patch=1 \
             file://check_snprintf.patch \
             file://check_version.patch"
 
-SRC_URI[md5sum] = "b9b817389e655ec2c12465de5c619011"
-SRC_URI[sha256sum] = "2ef55e8eb6c1e8c3dfb54c8ccc9a883fec7540b705c5179ca7a198bebe2f18bc"
+SRC_URI[md5sum] = "d1731d4147c1ea3b537a4d094519a6dc"
+SRC_URI[sha256sum] = "1ec1376471b04717a4497e5d7a27cd545248c92116898ce0c53ced8ea94267b5"
 
-PR = "r3"
+PR = "r0"
 
 EXTRA_OECONF = "--without-static-progs \
 		--without-dselect \
-- 
1.6.3.3


