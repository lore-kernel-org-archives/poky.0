Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7A16B4C811DD
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 05:02:55 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Nov 2010 03:02:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,247,1288594800"; d="scan'208";a="577108275"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga002.jf.intel.com with ESMTP; 24 Nov 2010 03:02:54 -0800
Message-Id: <dae033177976bf035e092edac5ae081887c03b2f.1290596255.git.lei.mei@intel.com>
In-Reply-To: <cover.1290596255.git.lei.mei@intel.com>
References: <cover.1290596255.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Wed, 24 Nov 2010 17:12:51 +0800
To: poky@yoctoproject.org
Subject: [PATCH 09/20] autoconf:Add license checksum and add the GPL information
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
X-List-Received-Date: Wed, 24 Nov 2010 11:02:55 -0000

Add COPYING file and COPYINGv3 file checksum to bb file and add the "GPLv2" "GPLv3" according to the license file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-devtools/autoconf/autoconf_2.65.bb |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/autoconf/autoconf_2.65.bb b/meta/recipes-devtools/autoconf/autoconf_2.65.bb
index 5adb975..5af973c 100644
--- a/meta/recipes-devtools/autoconf/autoconf_2.65.bb
+++ b/meta/recipes-devtools/autoconf/autoconf_2.65.bb
@@ -6,7 +6,9 @@ PARALLEL_MAKE = ""
 
 DEPENDS += "m4-native"
 RDEPENDS_${PN} = "m4 gnu-config"
-
+LICENSE = "GPLv2|GPLv3"
+LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
+		    file://COPYINGv3;md5=d32239bcb673463ab874e80d47fae504"
 SRC_URI += "file://autoreconf-include.patch;patch=1 \
 	   file://autoreconf-exclude.patch;patch=1 \
 	   file://autoreconf-foreign.patch;patch=1 \
-- 
1.6.3.3


