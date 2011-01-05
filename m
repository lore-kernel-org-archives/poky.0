Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 548B64C811E7
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 07:06:01 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Jan 2011 05:06:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,278,1291622400"; d="scan'208";a="590091917"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga002.jf.intel.com with ESMTP; 05 Jan 2011 05:06:00 -0800
Message-Id: <5f8c9128568c59ff21bb082160f9f642891539e1.1294232460.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1294232460.git.dexuan.cui@intel.com>
References: <cover.1294232460.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Wed, 5 Jan 2011 20:12:45 +0800
Date: Wed, 05 Jan 2011 21:05:44 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 04/12] compositeproto: upgrade from 0.4 to 0.4.2
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
X-List-Received-Date: Wed, 05 Jan 2011 13:06:01 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 ...mpositeproto_0.4.bb => compositeproto_0.4.2.bb} |    7 +++++--
 1 files changed, 5 insertions(+), 2 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{compositeproto_0.4.bb => compositeproto_0.4.2.bb} (62%)

diff --git a/meta/recipes-graphics/xorg-proto/compositeproto_0.4.bb b/meta/recipes-graphics/xorg-proto/compositeproto_0.4.2.bb
similarity index 62%
rename from meta/recipes-graphics/xorg-proto/compositeproto_0.4.bb
rename to meta/recipes-graphics/xorg-proto/compositeproto_0.4.2.bb
index 37bbe31..8f1e9e6 100644
--- a/meta/recipes-graphics/xorg-proto/compositeproto_0.4.bb
+++ b/meta/recipes-graphics/xorg-proto/compositeproto_0.4.2.bb
@@ -5,7 +5,10 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=f8cdfa47489609f305b91521f3a8803f \
                     file://composite.h;endline=43;md5=11420a347713de702a1fe60949085464"
 
 CONFLICTS = "compositeext"
+
+PR = "r0"
 PE = "1"
 
-SRC_URI[md5sum] = "6281344d656d4e0c8e9db4918efe3d1d"
-SRC_URI[sha256sum] = "6013d1ca63b2b7540f6f99977090812b899852acfbd9df123b5ebaa911e30003"
+SRC_URI[md5sum] = "98482f65ba1e74a08bf5b056a4031ef0"
+SRC_URI[sha256sum] = "049359f0be0b2b984a8149c966dd04e8c58e6eade2a4a309cf1126635ccd0cfc"
+
-- 
1.7.2


