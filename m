Return-Path: <lianhao.lu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 16FAE4C805BB
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 04:43:42 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 15 Mar 2011 02:43:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,321,1297065600"; d="scan'208";a="613110563"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.87])
	by orsmga002.jf.intel.com with ESMTP; 15 Mar 2011 02:43:41 -0700
Message-Id: <4a490a871b3f42f995e4ae2ebc103b731b03e33d.1300182097.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1300182097.git.lianhao.lu@intel.com>
References: <cover.1300182097.git.lianhao.lu@intel.com>
Old-Date: Tue, 15 Mar 2011 17:37:11 +0800
Date: Tue, 15 Mar 2011 17:42:47 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 1/1] package-index.bb: Added missing dependencies.
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
X-List-Received-Date: Tue, 15 Mar 2011 09:43:42 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

[YOCTO #871] Added missing dependencies to opkg-utils-native and
opkg-native.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/recipes-core/meta/package-index.bb |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-core/meta/package-index.bb b/meta/recipes-core/meta/package-index.bb
index c9e9694..3c642cb 100644
--- a/meta/recipes-core/meta/package-index.bb
+++ b/meta/recipes-core/meta/package-index.bb
@@ -20,6 +20,9 @@ do_populate_sysroot[noexec] = "1"
 
 do_package_index[nostamp] = "1"
 do_package_index[dirs] = "${DEPLOY_DIR_IPK}"
+do_package_index[depends] += "opkg-utils-native:do_populate_sysroot"
+do_package_index[depends] += "opkg-native:do_populate_sysroot"
+
 do_package_index() {
 	set -ex
 	package_update_index_ipk
-- 
1.7.0.4


