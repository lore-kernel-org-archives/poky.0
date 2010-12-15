Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E1C534C811AB
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 09:46:32 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Dec 2010 07:46:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,349,1288594800"; d="scan'208";a="362069522"
Received: from unknown (HELO localhost) ([10.255.16.78])
	by azsmga001.ch.intel.com with ESMTP; 15 Dec 2010 07:46:31 -0800
Message-Id: <4c8edc9b0ae4b4d41a492cb7e7dc2157590c5321.1292427843.git.josh@linux.intel.com>
In-Reply-To: <cover.1292427843.git.josh@linux.intel.com>
References: <cover.1292427843.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Wed, 15 Dec 2010 15:39:47 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/2] chrpath: add nativesdk variant
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
X-List-Received-Date: Wed, 15 Dec 2010 15:46:33 -0000

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta/recipes-devtools/chrpath/chrpath_0.13.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/chrpath/chrpath_0.13.bb b/meta/recipes-devtools/chrpath/chrpath_0.13.bb
index 19cdadf..9726ad7 100644
--- a/meta/recipes-devtools/chrpath/chrpath_0.13.bb
+++ b/meta/recipes-devtools/chrpath/chrpath_0.13.bb
@@ -18,4 +18,4 @@ S = "${WORKDIR}/chrpath-${PV}"
 # so must use the one we've just built
 CHRPATH_BIN_virtclass-native = "${S}/chrpath"
 
-BBCLASSEXTEND = "native"
+BBCLASSEXTEND = "native nativesdk"
-- 
1.7.3.3


