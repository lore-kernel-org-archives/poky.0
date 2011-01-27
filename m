Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 29B3B4C8123C
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 17:41:28 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 Jan 2011 15:41:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="651922256"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by fmsmga002.fm.intel.com with ESMTP; 27 Jan 2011 15:41:24 -0800
Message-Id: <3e1d4efc8b176130dd2b9604cc8980385ace7f51.1296171288.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1296171287.git.dexuan.cui@intel.com>
References: <cover.1296171287.git.dexuan.cui@intel.com>
Old-Date: Thu, 27 Jan 2011 19:37:18 +0800
Date: Fri, 28 Jan 2011  7:40:43 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [Dexuan: Jan 28: PULL 03/16] liburcu: upgrade from 0.4.8 to 0.5.2
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
X-List-Received-Date: Thu, 27 Jan 2011 23:41:28 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../liburcu/{liburcu_0.4.8.bb => liburcu_0.5.2.bb} |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-support/liburcu/{liburcu_0.4.8.bb => liburcu_0.5.2.bb} (86%)

diff --git a/meta/recipes-support/liburcu/liburcu_0.4.8.bb b/meta/recipes-support/liburcu/liburcu_0.5.2.bb
similarity index 86%
rename from meta/recipes-support/liburcu/liburcu_0.4.8.bb
rename to meta/recipes-support/liburcu/liburcu_0.5.2.bb
index 655685a..fa9ddb3 100644
--- a/meta/recipes-support/liburcu/liburcu_0.4.8.bb
+++ b/meta/recipes-support/liburcu/liburcu_0.5.2.bb
@@ -11,8 +11,8 @@ PR = "r0"
 
 SRC_URI = "http://lttng.org/files/urcu/userspace-rcu-${PV}.tar.bz2"
 
-SRC_URI[md5sum] = "408b67506808a1bff2313d83607dbcfe"
-SRC_URI[sha256sum] = "43783a298b5adcfe273878194b28b9dcb95cbe8948a918caaf492c7bcb8c2ff6"
+SRC_URI[md5sum] = "a2978395806eed5d9a2de1e22efe70e0"
+SRC_URI[sha256sum] = "2f22966fe4b00ef547976a31c1c6a7c7bea3449ffa838806d9610e7424e184dd"
 
 S = "${WORKDIR}/userspace-rcu-${PV}"
 
-- 
1.7.2


