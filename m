Return-Path: <qing.he@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 70F9E4C81001
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 03:49:20 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Nov 2010 01:49:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,260,1288594800"; d="scan'208";a="577806846"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by orsmga002.jf.intel.com with ESMTP; 26 Nov 2010 01:49:19 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PLuqt-00053W-Uk; Fri, 26 Nov 2010 17:44:24 +0800
Message-Id: <b143452c672bc707432a91e5a5e055e5a97805d1.1290764498.git.qing.he@intel.com>
In-Reply-To: <cover.1290764497.git.qing.he@intel.com>
References: <cover.1290764497.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Fri, 26 Nov 2010 16:15:08 +0800
To: poky@yoctoproject.org
Subject: [PATCH 01/15] aspell: update license
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
X-List-Received-Date: Fri, 26 Nov 2010 09:49:20 -0000

Signed-off-by: Qing He <qing.he@intel.com>
---
 meta/recipes-support/aspell/aspell_0.60.6.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-support/aspell/aspell_0.60.6.bb b/meta/recipes-support/aspell/aspell_0.60.6.bb
index 8d43a70..3b8b08a 100644
--- a/meta/recipes-support/aspell/aspell_0.60.6.bb
+++ b/meta/recipes-support/aspell/aspell_0.60.6.bb
@@ -1,7 +1,8 @@
 SRC_URI = "ftp://ftp.gnu.org/gnu/aspell/aspell-${PV}.tar.gz"
 DESCRIPTION = "GNU Aspell spell-checker"
 SECTION = "console/utils"
-LICENSE="LGPL"
+LICENSE="LGPLv2 | LGPLv2.1"
+LIC_FILES_CHKSUM = "file://COPYING;md5=7fbc338309ac38fefcd64b04bb903e34"
 
 PACKAGES += "libaspell libpspell libpspell-dev aspell-utils"
 
-- 
1.7.0


