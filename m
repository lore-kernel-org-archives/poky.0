Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 686024C8123C
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 17:41:28 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 Jan 2011 15:41:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="651922281"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by fmsmga002.fm.intel.com with ESMTP; 27 Jan 2011 15:41:26 -0800
Message-Id: <45eed1d7c707fbcd06843d5274f71692c6bf2852.1296171289.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1296171287.git.dexuan.cui@intel.com>
References: <cover.1296171287.git.dexuan.cui@intel.com>
Old-Date: Thu, 27 Jan 2011 20:16:11 +0800
Date: Fri, 28 Jan 2011  7:40:46 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [Dexuan: Jan 28: PULL 05/16] lttng-viewer: upgrade from 0.12.35 to 0.12.36
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
 ...g-viewer_0.12.35.bb => lttng-viewer_0.12.36.bb} |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-kernel/lttng/{lttng-viewer_0.12.35.bb => lttng-viewer_0.12.36.bb} (85%)

diff --git a/meta/recipes-kernel/lttng/lttng-viewer_0.12.35.bb b/meta/recipes-kernel/lttng/lttng-viewer_0.12.36.bb
similarity index 85%
rename from meta/recipes-kernel/lttng/lttng-viewer_0.12.35.bb
rename to meta/recipes-kernel/lttng/lttng-viewer_0.12.36.bb
index 94c6155..e305495 100644
--- a/meta/recipes-kernel/lttng/lttng-viewer_0.12.35.bb
+++ b/meta/recipes-kernel/lttng/lttng-viewer_0.12.36.bb
@@ -14,12 +14,12 @@ DEPENDS = "gtk+ pango popt"
 
 SECTION = "devel"
 
-ALTNAME = "lttv-${PV}-20082010"
+ALTNAME = "lttv-${PV}-18112010"
 
 SRC_URI = "http://lttng.org/files/packages/${ALTNAME}.tar.gz"
 
-SRC_URI[md5sum] = "ebcbc4e21184b4b0dcb0611b4977dad8"
-SRC_URI[sha256sum] = "d258b13cd76c37e4f8395c06159986dd45517bef312895ffa59722087a2879e7"
+SRC_URI[md5sum] = "967f7c9c843a43e2ec2ef9216edabc70"
+SRC_URI[sha256sum] = "a7d14ae84f9bb123298840922730d3121fa073dc036dccac63083d9686adeacd"
 S = "${WORKDIR}/${ALTNAME}"
 
 inherit autotools
-- 
1.7.2


