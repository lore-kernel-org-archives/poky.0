Return-Path: <edwin.zhai@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C80FF4C80AC5
	for <poky@yoctoproject.org>; Wed, 13 Apr 2011 19:15:59 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Apr 2011 17:15:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,207,1301900400"; d="scan'208";a="628243112"
Received: from yocto-build8.sh.intel.com (HELO localhost) ([10.239.48.1])
	by orsmga002.jf.intel.com with ESMTP; 13 Apr 2011 17:15:59 -0700
Message-Id: <593bdd97f1164ba95e4215d7571d49f26c860ec2.1302739788.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1302739788.git.edwin.zhai@intel.com>
References: <cover.1302739788.git.edwin.zhai@intel.com>
Old-Date: Wed, 13 Apr 2011 13:18:28 +0800
Date: Thu, 14 Apr 2011  8:13:26 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 6/9] xz: Upgrade to 5.0.2 (from 5.0.0)
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
X-List-Received-Date: Thu, 14 Apr 2011 00:16:00 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../xz/{xz_5.0.0.bb => xz_5.0.2.bb}                |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-extended/xz/{xz_5.0.0.bb => xz_5.0.2.bb} (82%)

diff --git a/meta/recipes-extended/xz/xz_5.0.0.bb b/meta/recipes-extended/xz/xz_5.0.2.bb
similarity index 82%
rename from meta/recipes-extended/xz/xz_5.0.0.bb
rename to meta/recipes-extended/xz/xz_5.0.2.bb
index 629ea9a..549c116 100644
--- a/meta/recipes-extended/xz/xz_5.0.0.bb
+++ b/meta/recipes-extended/xz/xz_5.0.2.bb
@@ -11,8 +11,8 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=c475b6c7dca236740ace4bba553e8e1c \
 
 SRC_URI = "http://tukaani.org/xz/xz-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "f3c0706d100ad2b6d63327584d026c50"
-SRC_URI[sha256sum] = "eba9211990a642fc2c35ea02618b710c7fa898d78ccca48b546a07bdde03c44d"
+SRC_URI[md5sum] = "03d139cc14294fd45504989b914335ff"
+SRC_URI[sha256sum] = "57e979baaa40147dde1bbb284e3618f8f18b6532c932648bd57b5aee674b98a7"
 
 PR = "r0"
 
-- 
1.7.1


