Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6E2F14C811D0
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 09:36:07 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 26 Nov 2010 07:36:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,261,1288594800"; d="scan'208";a="681304701"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga001.jf.intel.com with ESMTP; 26 Nov 2010 07:36:06 -0800
Message-Id: <3fd895ffbc72506407200397bf8dd7f2dcb11446.1290785519.git.lei.mei@intel.com>
In-Reply-To: <cover.1290785519.git.lei.mei@intel.com>
References: <cover.1290785519.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Fri, 26 Nov 2010 22:26:13 +0800
To: poky@yoctoproject.org
Subject: [PATCH 13/14] gdb:Add license checksum and update the GPL information
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
X-List-Received-Date: Fri, 26 Nov 2010 15:36:07 -0000

Add COPYING COPYING3 COPYING.LIB COPYING3.LIB files checksum to bb file and add the "GPLv3" "GPLv2" "LGPLv2" "LGPLv3" information according
to the COPYING file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-devtools/gdb/gdb_7.2.bb |    6 +++++-
 1 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/gdb/gdb_7.2.bb b/meta/recipes-devtools/gdb/gdb_7.2.bb
index ec413a1..4d3d9d4 100644
--- a/meta/recipes-devtools/gdb/gdb_7.2.bb
+++ b/meta/recipes-devtools/gdb/gdb_7.2.bb
@@ -1,3 +1,7 @@
 require gdb.inc
-
+LICENSE="GPLv2&GPLv3&LGPLv2&LGPLv3"
+LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
+		    file://COPYING3;md5=d32239bcb673463ab874e80d47fae504 \
+		    file://COPYING3.LIB;md5=6a6a8e020838b23406c81b19c1d46df6 \
+		    file://COPYING.LIB;md5=9f604d8a4f8e74f4f5140845a21b6674"
 PR = "r0"
-- 
1.6.3.3


