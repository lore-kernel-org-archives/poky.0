Return-Path: <lei.mei@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 49C184C811E4
	for <poky@yoctoproject.org>; Thu, 25 Nov 2010 04:50:41 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 25 Nov 2010 02:50:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,253,1288594800"; d="scan'208";a="353142987"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by azsmga001.ch.intel.com with ESMTP; 25 Nov 2010 02:50:40 -0800
Message-Id: <4f24c5345fbe0235c1b9a3e79e436d6f9738a63f.1290681886.git.lei.mei@intel.com>
In-Reply-To: <cover.1290681886.git.lei.mei@intel.com>
References: <cover.1290681886.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Thu, 25 Nov 2010 14:50:37 +0800
To: poky@yoctoproject.org
Subject: [PATCH 12/20] make:Add license checksum and update the GPL information
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
X-List-Received-Date: Thu, 25 Nov 2010 10:50:41 -0000

Add COPYING file and COPYING.LIB file checksum to bb file and add the "GPLv3" "GPLv2" according to the license file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-devtools/make/make_3.82.bb |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/make/make_3.82.bb b/meta/recipes-devtools/make/make_3.82.bb
index 797d26b..e8a0865 100644
--- a/meta/recipes-devtools/make/make_3.82.bb
+++ b/meta/recipes-devtools/make/make_3.82.bb
@@ -1,3 +1,5 @@
 PR = "r0"
-
+LICENSE="GPLv3&LGPLv2"
+LIC_FILES_CHKSUM = "file://tests/COPYING;md5=d32239bcb673463ab874e80d47fae504 \
+                    file://glob/COPYING.LIB;md5=4a770b67e6be0f60da244beb2de0fce4"
 require make.inc
-- 
1.6.3.3


