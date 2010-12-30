Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1D0BF4C811EA
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 20:29:26 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 29 Dec 2010 18:28:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,247,1291622400"; d="scan'208";a="872900671"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga001.fm.intel.com with ESMTP; 29 Dec 2010 18:28:55 -0800
Message-Id: <a64e75d4a7a5ba8d20af41dcc0afe0b9a9b16f8b.1293676328.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1293676328.git.dongxiao.xu@intel.com>
References: <cover.1293676328.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Tue, 28 Dec 2010 08:13:11 +0800
Date: Thu, 30 Dec 2010 10:38:21 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 03/19] netbase: upgrade to version 4.44
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
X-List-Received-Date: Thu, 30 Dec 2010 02:29:26 -0000

upgrade from 0.43 to 0.44

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../colinux/interfaces                             |    0
 .../{netbase-4.43 => netbase-4.44}/epia/interfaces |    0
 .../netbase/{netbase-4.43 => netbase-4.44}/hosts   |    0
 .../netbase/{netbase-4.43 => netbase-4.44}/init    |    0
 .../{netbase-4.43 => netbase-4.44}/interfaces      |    0
 .../mtx-1/interfaces                               |    0
 .../netbase/{netbase-4.43 => netbase-4.44}/nfsroot |    0
 .../nokia800/interfaces                            |    0
 .../{netbase-4.43 => netbase-4.44}/openmn/hosts    |    0
 .../openmn/interfaces                              |    0
 .../qemuarm/interfaces                             |    0
 .../qemuarmv6/interfaces                           |    0
 .../qemuarmv7/interfaces                           |    0
 .../qemux86-64/interfaces                          |    0
 .../qemux86/interfaces                             |    0
 .../{netbase-4.43 => netbase-4.44}/tosa/interfaces |    0
 .../wrt54/interfaces                               |    0
 .../xxs1500/interfaces                             |    0
 .../netbase/{netbase_4.43.bb => netbase_4.44.bb}   |    4 ++--
 19 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/colinux/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/epia/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/hosts (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/init (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/mtx-1/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/nfsroot (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/nokia800/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/openmn/hosts (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/openmn/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/qemuarm/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/qemuarmv6/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/qemuarmv7/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/qemux86-64/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/qemux86/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/tosa/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/wrt54/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase-4.43 => netbase-4.44}/xxs1500/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase_4.43.bb => netbase_4.44.bb} (94%)

diff --git a/meta/recipes-core/netbase/netbase-4.43/colinux/interfaces b/meta/recipes-core/netbase/netbase-4.44/colinux/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase-4.43/colinux/interfaces
rename to meta/recipes-core/netbase/netbase-4.44/colinux/interfaces
diff --git a/meta/recipes-core/netbase/netbase-4.43/epia/interfaces b/meta/recipes-core/netbase/netbase-4.44/epia/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase-4.43/epia/interfaces
rename to meta/recipes-core/netbase/netbase-4.44/epia/interfaces
diff --git a/meta/recipes-core/netbase/netbase-4.43/hosts b/meta/recipes-core/netbase/netbase-4.44/hosts
similarity index 100%
rename from meta/recipes-core/netbase/netbase-4.43/hosts
rename to meta/recipes-core/netbase/netbase-4.44/hosts
diff --git a/meta/recipes-core/netbase/netbase-4.43/init b/meta/recipes-core/netbase/netbase-4.44/init
similarity index 100%
rename from meta/recipes-core/netbase/netbase-4.43/init
rename to meta/recipes-core/netbase/netbase-4.44/init
diff --git a/meta/recipes-core/netbase/netbase-4.43/interfaces b/meta/recipes-core/netbase/netbase-4.44/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase-4.43/interfaces
rename to meta/recipes-core/netbase/netbase-4.44/interfaces
diff --git a/meta/recipes-core/netbase/netbase-4.43/mtx-1/interfaces b/meta/recipes-core/netbase/netbase-4.44/mtx-1/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase-4.43/mtx-1/interfaces
rename to meta/recipes-core/netbase/netbase-4.44/mtx-1/interfaces
diff --git a/meta/recipes-core/netbase/netbase-4.43/nfsroot b/meta/recipes-core/netbase/netbase-4.44/nfsroot
similarity index 100%
rename from meta/recipes-core/netbase/netbase-4.43/nfsroot
rename to meta/recipes-core/netbase/netbase-4.44/nfsroot
diff --git a/meta/recipes-core/netbase/netbase-4.43/nokia800/interfaces b/meta/recipes-core/netbase/netbase-4.44/nokia800/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase-4.43/nokia800/interfaces
rename to meta/recipes-core/netbase/netbase-4.44/nokia800/interfaces
diff --git a/meta/recipes-core/netbase/netbase-4.43/openmn/hosts b/meta/recipes-core/netbase/netbase-4.44/openmn/hosts
similarity index 100%
rename from meta/recipes-core/netbase/netbase-4.43/openmn/hosts
rename to meta/recipes-core/netbase/netbase-4.44/openmn/hosts
diff --git a/meta/recipes-core/netbase/netbase-4.43/openmn/interfaces b/meta/recipes-core/netbase/netbase-4.44/openmn/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase-4.43/openmn/interfaces
rename to meta/recipes-core/netbase/netbase-4.44/openmn/interfaces
diff --git a/meta/recipes-core/netbase/netbase-4.43/qemuarm/interfaces b/meta/recipes-core/netbase/netbase-4.44/qemuarm/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase-4.43/qemuarm/interfaces
rename to meta/recipes-core/netbase/netbase-4.44/qemuarm/interfaces
diff --git a/meta/recipes-core/netbase/netbase-4.43/qemuarmv6/interfaces b/meta/recipes-core/netbase/netbase-4.44/qemuarmv6/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase-4.43/qemuarmv6/interfaces
rename to meta/recipes-core/netbase/netbase-4.44/qemuarmv6/interfaces
diff --git a/meta/recipes-core/netbase/netbase-4.43/qemuarmv7/interfaces b/meta/recipes-core/netbase/netbase-4.44/qemuarmv7/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase-4.43/qemuarmv7/interfaces
rename to meta/recipes-core/netbase/netbase-4.44/qemuarmv7/interfaces
diff --git a/meta/recipes-core/netbase/netbase-4.43/qemux86-64/interfaces b/meta/recipes-core/netbase/netbase-4.44/qemux86-64/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase-4.43/qemux86-64/interfaces
rename to meta/recipes-core/netbase/netbase-4.44/qemux86-64/interfaces
diff --git a/meta/recipes-core/netbase/netbase-4.43/qemux86/interfaces b/meta/recipes-core/netbase/netbase-4.44/qemux86/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase-4.43/qemux86/interfaces
rename to meta/recipes-core/netbase/netbase-4.44/qemux86/interfaces
diff --git a/meta/recipes-core/netbase/netbase-4.43/tosa/interfaces b/meta/recipes-core/netbase/netbase-4.44/tosa/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase-4.43/tosa/interfaces
rename to meta/recipes-core/netbase/netbase-4.44/tosa/interfaces
diff --git a/meta/recipes-core/netbase/netbase-4.43/wrt54/interfaces b/meta/recipes-core/netbase/netbase-4.44/wrt54/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase-4.43/wrt54/interfaces
rename to meta/recipes-core/netbase/netbase-4.44/wrt54/interfaces
diff --git a/meta/recipes-core/netbase/netbase-4.43/xxs1500/interfaces b/meta/recipes-core/netbase/netbase-4.44/xxs1500/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase-4.43/xxs1500/interfaces
rename to meta/recipes-core/netbase/netbase-4.44/xxs1500/interfaces
diff --git a/meta/recipes-core/netbase/netbase_4.43.bb b/meta/recipes-core/netbase/netbase_4.44.bb
similarity index 94%
rename from meta/recipes-core/netbase/netbase_4.43.bb
rename to meta/recipes-core/netbase/netbase_4.44.bb
index 198a8d7..dbb7e83 100644
--- a/meta/recipes-core/netbase/netbase_4.43.bb
+++ b/meta/recipes-core/netbase/netbase_4.44.bb
@@ -57,5 +57,5 @@ PACKAGE_ARCH_qemuarm = "${MACHINE_ARCH}"
 PACKAGE_ARCH_qemux86 = "${MACHINE_ARCH}"
 PACKAGE_ARCH_qemux86-64 = "${MACHINE_ARCH}"
 
-SRC_URI[md5sum] = "875d6db52cc8cef565a77ef898ed47cf"
-SRC_URI[sha256sum] = "5a6da788356776330b77eda97157285e1c426c2d3bd9136407373965365e9dbf"
+SRC_URI[md5sum] = "a8d0bfed8a67273a276fc792524bc103"
+SRC_URI[sha256sum] = "eb2d4db2e3ec20eeea1e22962bce46f9651bf63e8add2ba6d4e996f0befb2823"
-- 
1.6.3.3


