Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3AD8A4C811CC
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 05:02:53 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Nov 2010 03:02:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,247,1288594800"; d="scan'208";a="680587275"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga001.jf.intel.com with ESMTP; 24 Nov 2010 03:02:52 -0800
Message-Id: <0b87aa1eaa22b6b35153f730f7db0539647bc6d2.1290596255.git.lei.mei@intel.com>
In-Reply-To: <cover.1290596255.git.lei.mei@intel.com>
References: <cover.1290596255.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Wed, 24 Nov 2010 15:17:40 +0800
To: poky@yoctoproject.org
Subject: [PATCH 08/20] psmisc:Add license checksum to bb file
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
X-List-Received-Date: Wed, 24 Nov 2010 11:02:54 -0000

Add COPYING file checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-extended/psmisc/psmisc_22.2.bb |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-extended/psmisc/psmisc_22.2.bb b/meta/recipes-extended/psmisc/psmisc_22.2.bb
index 62327fa..c9db90e 100644
--- a/meta/recipes-extended/psmisc/psmisc_22.2.bb
+++ b/meta/recipes-extended/psmisc/psmisc_22.2.bb
@@ -1,2 +1,4 @@
 require psmisc.inc
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3"
 PR = "r1"
-- 
1.6.3.3


