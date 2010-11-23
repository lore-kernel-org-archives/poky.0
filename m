Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB29B4C81065
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 04:07:39 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 23 Nov 2010 02:07:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="860503729"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga001.fm.intel.com with ESMTP; 23 Nov 2010 02:07:38 -0800
Message-Id: <d5f948926beb6c0599ff35e39118cb8cb5c8bca2.1290506494.git.lei.mei@intel.com>
In-Reply-To: <cover.1290506494.git.lei.mei@intel.com>
References: <cover.1290506494.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Tue, 23 Nov 2010 16:40:08 +0800
To: poky@yoctoproject.org
Subject: [PATCH 20/25] chrpath:Add license checksum and update the GPL to bb file
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
X-List-Received-Date: Tue, 23 Nov 2010 10:07:39 -0000

Add COPYING checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-devtools/chrpath/chrpath_0.13.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/chrpath/chrpath_0.13.bb b/meta/recipes-devtools/chrpath/chrpath_0.13.bb
index 38ae2f7..b812175 100644
--- a/meta/recipes-devtools/chrpath/chrpath_0.13.bb
+++ b/meta/recipes-devtools/chrpath/chrpath_0.13.bb
@@ -1,7 +1,8 @@
 DESCRIPTION = "chrpath allows you to change the rpath (where the application \
 looks for libraries) in an application. It does not (yet) allow you to add an \
 rpath if there isn't one already."
-LICENSE = "GPL"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 PR = "r2"
 
 SRC_URI = "${DEBIAN_MIRROR}/main/c/chrpath/chrpath_${PV}.orig.tar.gz"
-- 
1.6.3.3


