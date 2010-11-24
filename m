Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id BA9EF4C80BEF
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 05:03:10 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 24 Nov 2010 03:03:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,247,1288594800"; d="scan'208";a="860917301"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga001.fm.intel.com with ESMTP; 24 Nov 2010 03:03:10 -0800
Message-Id: <f35839e4d6242fa9392838549f4354eb9f11bc64.1290596255.git.lei.mei@intel.com>
In-Reply-To: <cover.1290596255.git.lei.mei@intel.com>
References: <cover.1290596255.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Wed, 24 Nov 2010 18:50:21 +0800
To: poky@yoctoproject.org
Subject: [PATCH 20/20] makedepend:Add license checksum to bb file
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
X-List-Received-Date: Wed, 24 Nov 2010 11:03:10 -0000

Add COPYING file checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../recipes-graphics/xorg-util/makedepend_1.0.2.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/xorg-util/makedepend_1.0.2.bb b/meta/recipes-graphics/xorg-util/makedepend_1.0.2.bb
index 7d6a535..0051f2c 100644
--- a/meta/recipes-graphics/xorg-util/makedepend_1.0.2.bb
+++ b/meta/recipes-graphics/xorg-util/makedepend_1.0.2.bb
@@ -4,5 +4,5 @@ DESCRIPTION = "create dependencies in makefiles"
 DEPENDS = "xproto util-macros"
 PR = "r2"
 PE = "1"
-
+LIC_FILES_CHKSUM = "file://COPYING;md5=43a6eda34b48ee821b3b66f4f753ce4f"
 BBCLASSEXTEND = "native"
-- 
1.6.3.3


