Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 109CD4C811FD
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 20:29:31 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 29 Dec 2010 18:29:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,247,1291622400"; d="scan'208";a="588237371"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga002.jf.intel.com with ESMTP; 29 Dec 2010 18:29:31 -0800
Message-Id: <cb62242e9fe4f0662e7b999a6c474661acc09c7c.1293676328.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1293676328.git.dongxiao.xu@intel.com>
References: <cover.1293676328.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Wed, 29 Dec 2010 19:17:11 +0800
Date: Thu, 30 Dec 2010 10:39:16 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 16/19] tremor: upgrade to rev 17636
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
X-List-Received-Date: Thu, 30 Dec 2010 02:29:32 -0000

upgrade from 17572 to 17636

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../{tremor_20101027.bb => tremor_20101121.bb}     |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)
 rename meta/recipes-multimedia/tremor/{tremor_20101027.bb => tremor_20101121.bb} (88%)

diff --git a/meta/recipes-multimedia/tremor/tremor_20101027.bb b/meta/recipes-multimedia/tremor/tremor_20101121.bb
similarity index 88%
rename from meta/recipes-multimedia/tremor/tremor_20101027.bb
rename to meta/recipes-multimedia/tremor/tremor_20101121.bb
index c0a2464..157b302 100644
--- a/meta/recipes-multimedia/tremor/tremor_20101027.bb
+++ b/meta/recipes-multimedia/tremor/tremor_20101121.bb
@@ -9,7 +9,7 @@ DEPENDS = "libogg"
 SRCDATE = "${PV}"
 PR = "r0"
 
-SRC_URI = "svn://svn.xiph.org/trunk;module=Tremor;rev=17572;proto=http"
+SRC_URI = "svn://svn.xiph.org/trunk;module=Tremor;rev=17636;proto=http"
 
 S = "${WORKDIR}/Tremor"
 
-- 
1.6.3.3


